char *specialized DOCColumnViewController.init(configuration:)(void *a1)
{
  v3 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___DOCColumnViewController_containerControllers] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___DOCColumnViewController_additionalLeadingNavigationBarButtonItems] = v3;
  *&v1[OBJC_IVAR___DOCColumnViewController_additionalTrailingNavigationBarButtonItems] = v3;
  *&v1[OBJC_IVAR___DOCColumnViewController_diffableDataSource] = 0;
  v1[OBJC_IVAR___DOCColumnViewController_needsUpdateDiffableSnapshot] = 0;
  *&v1[OBJC_IVAR___DOCColumnViewController_columnViewSpecs] = 0;
  v4 = OBJC_IVAR___DOCColumnViewController_pendingScrollToItem;
  v5 = type metadata accessor for ScrollToItem(0);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = OBJC_IVAR___DOCColumnViewController_activeScrollToItemContext;
  active = type metadata accessor for ActiveScrollItemContext(0);
  (*(*(active - 8) + 56))(&v1[v6], 1, 1, active);
  *&v1[OBJC_IVAR___DOCColumnViewController____lazy_storage___notificationsController] = 0;
  v1[OBJC_IVAR___DOCColumnViewController_showsHierarchyIndicator] = 0;
  *&v1[OBJC_IVAR___DOCColumnViewController_fakeLeadingSeparator] = 0;
  *&v1[OBJC_IVAR___DOCColumnViewController_configuration] = a1;
  v8 = objc_allocWithZone(type metadata accessor for DOCColumnLayout());
  v9 = a1;
  v10 = [v8 init];
  [v10 setScrollDirection_];
  [v10 setMinimumLineSpacing_];
  [v10 setMinimumInteritemSpacing_];
  v27.receiver = v1;
  v27.super_class = type metadata accessor for DOCColumnViewController(0);
  v11 = objc_msgSendSuper2(&v27, sel_initWithCollectionViewLayout_, v10);
  v12 = DOCColumnViewController.notificationsController.getter();
  if (one-time initialization token for DOCItemCollectionViewDidLoadContents != -1)
  {
    swift_once();
  }

  v13 = static NSNotificationName.DOCItemCollectionViewDidLoadContents;
  v14 = objc_opt_self();
  v15 = [v14 mainQueue];
  (*(*v12 + 152))(v13, &v26, v15, closure #1 in DOCColumnViewController.init(configuration:), 0);

  outlined destroy of CharacterSet?(&v26, &_sypSgMd, &_sypSgMR);
  v16 = OBJC_IVAR___DOCColumnViewController____lazy_storage___notificationsController;
  v17 = *&v11[OBJC_IVAR___DOCColumnViewController____lazy_storage___notificationsController];
  v18 = one-time initialization token for DOCItemCollectionViewDidLayoutSubviews;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = static NSNotificationName.DOCItemCollectionViewDidLayoutSubviews;
  v20 = [v14 mainQueue];
  (*(*v17 + 152))(v19, &v26, v20, closure #2 in DOCColumnViewController.init(configuration:), 0);

  outlined destroy of CharacterSet?(&v26, &_sypSgMd, &_sypSgMR);
  v21 = *&v11[v16];
  v22 = one-time initialization token for DOCItemCollectionViewDidUpdateContents;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static NSNotificationName.DOCItemCollectionViewDidUpdateContents;
  v24 = [v14 mainQueue];
  (*(*v21 + 152))(v23, &v26, v24, closure #3 in DOCColumnViewController.init(configuration:), 0);

  outlined destroy of CharacterSet?(&v26, &_sypSgMd, &_sypSgMR);
  return v11;
}

void specialized DOCColumnViewController.init(coder:)()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR___DOCColumnViewController_containerControllers) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR___DOCColumnViewController_additionalLeadingNavigationBarButtonItems) = v1;
  *(v0 + OBJC_IVAR___DOCColumnViewController_additionalTrailingNavigationBarButtonItems) = v1;
  *(v0 + OBJC_IVAR___DOCColumnViewController_diffableDataSource) = 0;
  *(v0 + OBJC_IVAR___DOCColumnViewController_needsUpdateDiffableSnapshot) = 0;
  *(v0 + OBJC_IVAR___DOCColumnViewController_columnViewSpecs) = 0;
  v2 = OBJC_IVAR___DOCColumnViewController_pendingScrollToItem;
  v3 = type metadata accessor for ScrollToItem(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR___DOCColumnViewController_activeScrollToItemContext;
  active = type metadata accessor for ActiveScrollItemContext(0);
  (*(*(active - 8) + 56))(v0 + v4, 1, 1, active);
  *(v0 + OBJC_IVAR___DOCColumnViewController____lazy_storage___notificationsController) = 0;
  *(v0 + OBJC_IVAR___DOCColumnViewController_showsHierarchyIndicator) = 0;
  *(v0 + OBJC_IVAR___DOCColumnViewController_fakeLeadingSeparator) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized DOCColumnViewController.collectionView(_:willDisplay:forItemAt:)(void *a1)
{
  v3 = IndexPath.item.getter();
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0xB0))();
  if (v5 >> 62)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v6, 1))
  {
    __break(1u);
LABEL_19:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (v3 == v6 - 1)
  {
    DOCColumnViewController.updateContainerNavigationItem()();
  }

  type metadata accessor for DOCColumnViewCell();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = a1;
  DOCColumnViewController.ensureCellHasBrowserContainerController(_:indexPath:)(v8);
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
  swift_beginAccess();
  v11 = *&v8[v10];
  if (v11)
  {
    v12 = *((*v4 & *v11) + 0xE8);
    v13 = v11;
    v14 = v12();

    if (v14)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = *((*v4 & *v15) + 0xBE0);
        v17 = v14;
        v16(3);
      }

      if (_UISolariumEnabled())
      {
        [v14 beginAppearanceTransition:1 animated:0];
        [v14 endAppearanceTransition];
      }
    }

    v18 = *&v8[v10];
    if (v18)
    {
      [v18 _doc_ipi_updateContentOverlayInsetsForSelfAndChildren];
    }
  }

  DOCColumnViewCell.updatePreferredFocusCell(_:)(0);
}

void specialized DOCColumnViewController.collectionView(_:didEndDisplaying:forItemAt:)(void *a1)
{
  type metadata accessor for DOCColumnViewCell();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_browserContainerController;
    swift_beginAccess();
    v5 = *(v3 + v4);
    if (v5)
    {
      v6 = a1;
      v7 = v5;
      v8 = DOCColumnViewCell.isBrowserContainerControllerStillOwnedByUs(_:)(v7);

      if (v8)
      {
        v9 = *(v3 + v4);
        if (v9)
        {
          v10 = *((*MEMORY[0x277D85000] & *v9) + 0x240);
          v11 = v9;
          v10(0);
        }
      }
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void type metadata completion function for DOCColumnViewController(uint64_t a1)
{
  type metadata accessor for ScrollToItem?(319, &lazy cache variable for type metadata for ScrollToItem?, type metadata accessor for ScrollToItem);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ScrollToItem?(319, &lazy cache variable for type metadata for ActiveScrollItemContext?, type metadata accessor for ActiveScrollItemContext);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for ScrollToItem?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for ActiveScrollItemContext(uint64_t a1)
{
  result = type metadata accessor for ScrollToItem(319);
  if (v2 <= 0x3F)
  {
    type metadata accessor for DOCColumnViewControllerCollectionView();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for ScrollToItem(uint64_t a1)
{
  type metadata accessor for IndexPath();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (())?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for (())?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (())?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (())?);
    }
  }
}

uint64_t outlined init with copy of ScrollToItem(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ScrollToItem(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ActiveScrollItemContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void partial apply for closure #1 in DOCColumnViewController.performPendingScrollToItem(immediate:)()
{
  v1 = *(type metadata accessor for ScrollToItem(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in DOCColumnViewController.performPendingScrollToItem(immediate:)(v3, v0 + v2, v4);
}

uint64_t _s10Foundation9IndexPathVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

DocumentManagerExecutables::DOCUSBRenamingErrorCode_optional __swiftcall DOCUSBRenamingErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DOCUSBRenamingErrorCode.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCUSBRenamingErrorCode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x24C1FCBD0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DOCUSBRenamingErrorCode()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x24C1FCBD0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCUSBRenamingErrorCode(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x24C1FCBD0](v3);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance DOCUSBRenamingErrorCode@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DOCUSBRenamingErrorCode(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t DOCUSBRenameOperation_StorageKit.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(27);

  v2 = [*(v0 + 16) description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x24C1FAEA0](v3, v5);

  MEMORY[0x24C1FAEA0](0xD000000000000010, 0x8000000249BE83D0);
  MEMORY[0x24C1FAEA0](*(v1 + 24), *(v1 + 32));
  return 0x3D656372756F73;
}

void DOCUSBRenameOperation_StorageKit.perform()()
{
  v1 = v0;
  v2 = [*(v0 + 16) identifier];
  v3 = objc_opt_self();

  v4 = [v3 sharedManager];
  if (v4)
  {
    v5 = v4;
    v6 = specialized SKManager.doc_disk(forDomainIdentifier:)(v2);

    if (v6)
    {
      v7 = specialized DOCUSBRenameOperation_StorageKit.trimInvalidCharacters(proposedName:disk:)(v1[3], v1[4], v6);
      v8 = MEMORY[0x24C1FAD20](v7);

      v24 = partial apply for closure #1 in DOCUSBRenameOperation_StorageKit.perform();
      v25 = v1;
      aBlock = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v22 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
      v23 = &block_descriptor_22_4;
      v9 = _Block_copy(&aBlock);

      [v6 rename:v8 withCompletionBlock:v9];
      _Block_release(v9);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249B9A480;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v11;
      aBlock = 0;
      v21 = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      MEMORY[0x24C1FAEA0](0xD000000000000036, 0x8000000249BE83F0);
      v26 = v2;
      type metadata accessor for FPProviderDomainID(0);
      _print_unlocked<A, B>(_:_:)();
      *(inited + 48) = 0;
      *(inited + 56) = 0xE000000000000000;
      v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of (String, String)(inited + 32);
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v12);

      v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v14 = MEMORY[0x24C1FAD20](0xD00000000000002BLL, 0x8000000249BFABF0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v16 = [v13 initWithDomain:v14 code:1 userInfo:isa];

      v17 = v1[5];
      if (v17)
      {
        v18 = v1[6];
        outlined copy of (@escaping @callee_guaranteed (@guaranteed DOCRenameOperation, @guaranteed Error) -> ())?(v1[5], v18);
        v19 = v16;
        v17(0, v16);

        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v17, v18);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in DOCUSBRenameOperation_StorageKit.perform()(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.Rename);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x286D726F66726570, 0xE900000000000029, &v25);
      *(v9 + 12) = 2080;
      v11 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v25);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_2493AC000, v7, v8, "%s: Rename failed with error: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v10, -1, -1);
      MEMORY[0x24C1FE850](v9, -1, -1);
    }

    v15 = *(a2 + 40);
    if (v15)
    {
      v16 = *(a2 + 48);
      v17 = a1;
      outlined copy of (@escaping @callee_guaranteed (@guaranteed DOCRenameOperation, @guaranteed Error) -> ())?(v15, v16);
      v15(0, a1);

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v15, v16);
    }
  }

  else
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
      v25 = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x286D726F66726570, 0xE900000000000029, &v25);
      _os_log_impl(&dword_2493AC000, v19, v20, "%s: Rename completed on disk", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x24C1FE850](v22, -1, -1);
      MEMORY[0x24C1FE850](v21, -1, -1);
    }

    v23 = *(a2 + 40);
    if (v23)
    {
      v24 = *(a2 + 48);

      v23(0, 0);

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v23, v24);
    }
  }
}

uint64_t DOCUSBRenameOperation_StorageKit.__deallocating_deinit()
{

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t DOCUSBRenaming.__allocating_init()()
{
  v0 = swift_allocObject();
  DOCUSBRenaming.init()();
  return v0;
}

double static DOCUSBRenaming.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t DOCUSBRenaming.canRename.getter()
{
  v0 = [objc_opt_self() usbRenameErase];
  v1 = [v0 isEnabled];

  if (v1)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v2 = (*(*static DOCUSBFormatting.shared + 128))() ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

double DOCUSBRenaming.performRename(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v15 - 8);
  v45 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v42 = *(v19 - 8);
  v43 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DOCUSBRenameOperation_StorageKit();
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a2;
  v23[4] = a3;
  v24 = swift_allocObject();
  v24[2] = v8;
  v24[3] = a2;
  v24[4] = a3;
  v24[5] = a4;
  v24[6] = a6;
  v24[7] = a7;
  v23[5] = partial apply for closure #1 in DOCUSBRenaming.performRename(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:);
  v23[6] = v24;
  swift_bridgeObjectRetain_n();
  v25 = a1;

  v26 = a4;

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(0, 0);
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.Rename);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136315394;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000068, 0x8000000249BFAC20, aBlock);
    *(v30 + 12) = 2080;

    v32 = DOCUSBRenameOperation_StorageKit.description.getter();
    v34 = v33;

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, aBlock);

    *(v30 + 14) = v35;
    _os_log_impl(&dword_2493AC000, v28, v29, "%s: Adding USB Rename Operation %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v31, -1, -1);
    MEMORY[0x24C1FE850](v30, -1, -1);
  }

  v36 = *(v8 + 16);
  aBlock[4] = partial apply for closure #2 in DOCUSBRenaming.performRename(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_152;
  v37 = _Block_copy(aBlock);

  v38 = v36;
  static DispatchQoS.unspecified.getter();
  v46 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v39 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v22, v18, v37);
  _Block_release(v37);

  (*(v44 + 8))(v18, v39);
  (*(v42 + 8))(v22, v43);

  return result;
}

double closure #1 in DOCUSBRenaming.performRename(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  v15[6] = a6;
  v15[7] = a7;
  v15[8] = a8;
  v16 = a2;

  v17 = a6;

  DOCRunInMainThread(_:)();

  return result;
}

uint64_t closure #1 in closure #1 in DOCUSBRenaming.performRename(source:newDisplayName:alertPresenting:requiresAlertPresentation:completion:finishedBlock:)(id a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(id, uint64_t, uint64_t, uint64_t, void *))
{
  if (a1)
  {
    v11 = a1;
    v12 = _convertErrorToNSError(_:)();
    v13 = specialized DOCUSBRenaming.createInvalidNameError(newName:underlyingError:)(a3, a4, v12);

    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = a5;
    v15 = v13;
    v16 = a5;
    DOCRunInMainThread(_:)();
  }

  return a6(a1, a2, a3, a4, a5);
}

uint64_t DOCUSBRenaming.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DOCUSBRenaming.init()()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v0, v1);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v7 - 8, v8);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.userInitiated.getter();
  (*(v3 + 104))(v6, *MEMORY[0x277D85268], v2);
  v12[1] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = v12[0];
  *(v12[0] + 16) = v9;
  return v10;
}

unint64_t lazy protocol witness table accessor for type DOCUSBRenamingErrorCode and conformance DOCUSBRenamingErrorCode()
{
  result = lazy protocol witness table cache variable for type DOCUSBRenamingErrorCode and conformance DOCUSBRenamingErrorCode;
  if (!lazy protocol witness table cache variable for type DOCUSBRenamingErrorCode and conformance DOCUSBRenamingErrorCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCUSBRenamingErrorCode and conformance DOCUSBRenamingErrorCode);
  }

  return result;
}

uint64_t specialized DOCUSBRenameOperation_StorageKit.trimInvalidCharacters(proposedName:disk:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a3 filesystemType];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v16)
    {
      if (v17 == v14 && v16 == v18)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          if (static String._unconditionallyBridgeFromObjectiveC(_:)() != v14 || v16 != v21)
          {
            _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          goto LABEL_15;
        }
      }

      v24[0] = a1;
      v24[1] = a2;
      static CharacterSet.whitespacesAndNewlines.getter();
      lazy protocol witness table accessor for type String and conformance String();
      a1 = StringProtocol.trimmingCharacters(in:)();
      (*(v7 + 8))(v11, v6);
      return a1;
    }
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_15:

  return a1;
}

id specialized DOCUSBRenaming.createInvalidNameError(newName:underlyingError:)(uint64_t a1, uint64_t a2, void *a3)
{
  result = _DocumentManagerBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  v47._object = 0x8000000249BFADA0;
  v8._object = 0x8000000249BFAD70;
  v47._countAndFlagsBits = 0xD000000000000042;
  v8._countAndFlagsBits = 0xD00000000000002BLL;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v47);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_249B9A480;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  v12 = static String.localizedStringWithFormat(_:_:)();
  v43 = v13;

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v14 = result;
  v48._object = 0x8000000249BFAE40;
  v15._countAndFlagsBits = 0xD000000000000045;
  v15._object = 0x8000000249BFADF0;
  v48._countAndFlagsBits = 0xD000000000000045;
  v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v16.value._object = 0xEB00000000656C62;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v48);

  _StringGuts.grow(_:)(59);
  MEMORY[0x24C1FAEA0](0xD000000000000023, 0x8000000249BFAE90);
  MEMORY[0x24C1FAEA0](a1, a2);
  MEMORY[0x24C1FAEA0](0xD000000000000014, 0x8000000249BFAEC0);
  *&v44[0] = a3;
  v42 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7NSErrorCSgMd, &_sSo7NSErrorCSgMR);
  v19 = String.init<A>(describing:)();
  MEMORY[0x24C1FAEA0](v19);

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  v23 = MEMORY[0x277D837D0];
  v46 = MEMORY[0x277D837D0];
  v45._countAndFlagsBits = v12;
  v45._object = v43;
  outlined init with take of Any(&v45, v44);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44, v20, v22, isUniquelyReferenced_nonNull_native);

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  v46 = v23;
  v45 = v18;
  outlined init with take of Any(&v45, v44);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44, v25, v27, v28);

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  v46 = v23;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  outlined init with take of Any(&v45, v44);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44, v29, v31, v32);

  if (a3)
  {
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;
    v46 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    v45._countAndFlagsBits = v42;
    outlined init with take of Any(&v45, v44);
    v36 = v42;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44, v33, v35, v37);
  }

  v38 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v39 = MEMORY[0x24C1FAD20](0xD00000000000002BLL, 0x8000000249BFABF0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v41 = [v38 initWithDomain:v39 code:2 userInfo:isa];

  return v41;
}

double specialized RawRepresentable<>.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();

  return result;
}

id DOCItemGroupingBehavior.localizedName.getter(uint64_t a1)
{
  v2 = *v1;
  if (v2 <= 4)
  {
    if (*v1 > 2u)
    {
      if (v2 == 3)
      {
        v3 = 2;
      }

      else
      {
        v3 = 3;
      }

      goto LABEL_16;
    }

    if (v2 >= 2)
    {
      v3 = 1;
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (*v1 <= 6u)
  {
    if (v2 == 5)
    {
      v3 = 4;
    }

    else
    {
      v3 = 5;
    }

    goto LABEL_16;
  }

  if (v2 - 7 < 2)
  {
LABEL_8:
    v3 = 0;
    goto LABEL_16;
  }

  if (v2 == 9)
  {
    v3 = 6;
LABEL_16:
    v10[1] = v3;
    v10[0] = 0;
    return DOCItemSortMode.DisplayableMode.localizedName(for:)(v10)._countAndFlagsBits;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v5 = result;
    v11._object = 0x8000000249BFAEE0;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v7._countAndFlagsBits = 1701736270;
    v7._object = 0xE400000000000000;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0xD00000000000003FLL;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v11)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCItemGroupingBehavior.accessibilityIdentifierComponent.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    if (*v0 <= 2u)
    {
      if (v1 >= 2)
      {
        return 1701667182;
      }

      return 1702125924;
    }

    v3 = v1 == 3;
    v4 = 6775156;
    v5 = 1702521203;
  }

  else
  {
    if (*v0 > 6u)
    {
      if (v1 - 7 >= 2)
      {
        if (v1 == 9)
        {
          return 0x732064756F6C6369;
        }

        else
        {
          return 1701736302;
        }
      }

      return 1702125924;
    }

    v3 = v1 == 5;
    v4 = 1684957547;
    v5 = 0x7942646572616873;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t static DOCItemGroupingBehavior.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 10)
  {
    return v3 == 10;
  }

  if (v3 == 10)
  {
    return 0;
  }

  return specialized == infix<A>(_:_:)(v2, v3);
}

uint64_t DOCItemGroupingBehavior.init(enabled:groupingMode:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  if (result)
  {
    v3 = *a2;
  }

  else
  {
    v3 = 11;
  }

  if (*a2 == 10)
  {
    v4 = 10;
  }

  else
  {
    v4 = v3;
  }

  *a3 = v4;
  return result;
}

double DOCItemGroupingBehavior.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (v3 == 10)
  {
    MEMORY[0x24C1FCBD0](0);
  }

  else
  {
    MEMORY[0x24C1FCBD0](1);

    return specialized RawRepresentable<>.hash(into:)(a1, v3);
  }

  return result;
}

Swift::Int DOCItemGroupingBehavior.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 10)
  {
    MEMORY[0x24C1FCBD0](0);
  }

  else
  {
    MEMORY[0x24C1FCBD0](1);
    specialized RawRepresentable<>.hash(into:)(v3, v1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCItemGroupingBehavior()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 10)
  {
    MEMORY[0x24C1FCBD0](0);
  }

  else
  {
    MEMORY[0x24C1FCBD0](1);
    specialized RawRepresentable<>.hash(into:)(v3, v1);
  }

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance DOCItemGroupingBehavior(uint64_t a1)
{
  v3 = *v1;
  if (v3 == 10)
  {
    MEMORY[0x24C1FCBD0](0);
  }

  else
  {
    MEMORY[0x24C1FCBD0](1);

    return specialized RawRepresentable<>.hash(into:)(a1, v3);
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCItemGroupingBehavior(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2 == 10)
  {
    MEMORY[0x24C1FCBD0](0);
  }

  else
  {
    MEMORY[0x24C1FCBD0](1);
    specialized RawRepresentable<>.hash(into:)(v4, v2);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCItemGroupingBehavior(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 10)
  {
    return v3 == 10;
  }

  if (v3 == 10)
  {
    return 0;
  }

  return specialized == infix<A>(_:_:)(v2, v3);
}

uint64_t DOCInteractionManager.alertIfNodeCanNotBeDownloaded(_:configuration:alertPresenting:)(void *a1, void *a2, uint64_t a3)
{
  swift_getObjectType();

  return specialized DOCInteractionManager.alertIfNodeCanNotBeDownloaded(_:configuration:alertPresenting:)(a1, a2, a3);
}

uint64_t DOCInteractionManagerContext.init(actionReportingDelegate:itemDownloadHandler:itemFetchedHandler:isCommittingPreview:useSharedQuickLook:isColumnMode:initialLocation:itemSelectedInUI:shouldSkipDownload:alertPresentingViewController:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 41) = a7;
  *(a9 + 42) = a8;
  *(a9 + 48) = a10;
  *(a9 + 56) = a11;
  *(a9 + 57) = a12;
  *(a9 + 64) = a13;
  return result;
}

double DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(void *a1, __int128 *a2)
{
  ObjectType = swift_getObjectType();

  return specialized DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(a1, a2, v2, ObjectType);
}

uint64_t DOCInteractionManagerContext.actionReportingDelegate.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t key path getter for DOCInteractionManagerContext.itemDownloadHandler : DOCInteractionManagerContext@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCBackdropConfiguration) -> ();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3, v4);
}

uint64_t key path setter for DOCInteractionManagerContext.itemDownloadHandler : DOCInteractionManagerContext(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCBackdropConfiguration) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v7, v8);
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  return result;
}

uint64_t DOCInteractionManagerContext.itemDownloadHandler.getter()
{
  v1 = *(v0 + 8);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1, *(v0 + 16));
  return v1;
}

uint64_t DOCInteractionManagerContext.itemDownloadHandler.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t key path getter for DOCInteractionManagerContext.itemFetchedHandler : DOCInteractionManagerContext@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCItemCollectionViewSectionHeader, @in_guaranteed DOCItemSortMode) -> ();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3, v4);
}

uint64_t key path setter for DOCInteractionManagerContext.itemFetchedHandler : DOCInteractionManagerContext(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCItemCollectionViewSectionHeader, @in_guaranteed DOCItemSortMode) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v7, v8);
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  return result;
}

uint64_t DOCInteractionManagerContext.itemFetchedHandler.getter()
{
  v1 = *(v0 + 24);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1, *(v0 + 32));
  return v1;
}

uint64_t DOCInteractionManagerContext.itemFetchedHandler.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void *DOCInteractionManagerContext.initialLocation.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void DOCInteractionManager.downloadItem(item:alertPresenting:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249BA0290;
  *(v9 + 32) = a1;
  v10 = objc_allocWithZone(MEMORY[0x277CC63C0]);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
  v11 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v10 initWithItems_];

  [v13 setQualityOfService_];
  v14 = *((*MEMORY[0x277D85000] & *v4) + 0x80);
  v15 = swift_unknownObjectRetain();
  v14(v15);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v20[4] = partial apply for closure #1 in DOCInteractionManager.downloadItem(item:alertPresenting:completionHandler:);
  v20[5] = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed (@guaranteed [FPItem], @guaranteed Error?) -> ();
  v20[3] = &block_descriptor_153;
  v17 = _Block_copy(v20);
  v18 = a2;

  [v13 setDownloadCompletionBlock_];
  _Block_release(v17);
  v19 = [objc_opt_self() defaultManager];
  [v19 scheduleAction_];
}

void closure #1 in DOCInteractionManager.downloadItem(item:alertPresenting:completionHandler:)(unint64_t a1, uint64_t a2, void *a3, void (*a4)(void, __n128), uint64_t a5)
{
  if (a2)
  {
    v8 = _convertErrorToNSError(_:)();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v9 = static DOCLog.UI;
    v10 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_249B9A480;
    *(v11 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v11 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v11 + 32) = v8;
    v33 = v8;
    os_log(_:dso:log:type:_:)("Got a nil item from createDOCItemBookmark while attempting to access a file. %@", 79, 2, &dword_2493AC000, v9, v10, v11);

    v12 = [v33 domain];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if ([v33 code] == 3072)
    {
      v22 = static os_log_type_t.error.getter();
      v23 = swift_allocObject();
      *(v23 + 16) = v32;
      *(v23 + 56) = MEMORY[0x277D837D0];
      *(v23 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v23 + 32) = 0xD000000000000035;
      *(v23 + 40) = 0x8000000249BFAF60;
      os_log(_:dso:log:type:_:)("%@: Download operation canceled", 31, 2, &dword_2493AC000, v9, v22, v23);

LABEL_19:
      (a4)(0);

      return;
    }

LABEL_18:
    v24 = swift_allocObject();
    *(v24 + 16) = v33;
    *(v24 + 24) = a3;
    v25 = v33;
    v26 = a3;
    DOCRunInMainThread(_:)();

    goto LABEL_19;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_23:
    if (one-time initialization token for UI == -1)
    {
LABEL_24:
      v29 = static DOCLog.UI;
      v30 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_249B9A480;
      *(v31 + 56) = MEMORY[0x277D837D0];
      *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v31 + 32) = 0xD000000000000035;
      *(v31 + 40) = 0x8000000249BFAF60;
      os_log(_:dso:log:type:_:)("%@: Download operation did not return any new item", 50, 2, &dword_2493AC000, v29, v30, v31);

      (a4)(0);
      return;
    }

LABEL_27:
    swift_once();
    goto LABEL_24;
  }

  v27 = a1;
  v28 = __CocoaSet.count.getter();
  a1 = v27;
  if (!v28)
  {
    goto LABEL_23;
  }

LABEL_9:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x24C1FC540](0, a1, a3);
    goto LABEL_12;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_27;
  }

  v17 = *(a1 + 32);
LABEL_12:
  v18 = v17;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = v18;

  v20 = v18;
  DOCRunInMainThread(_:)();
}

void closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v7 = static DOCLog.UI;
    v8 = static os_log_type_t.default.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_249B9A480;
    v10 = [a1 displayName];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    *(v9 + 56) = MEMORY[0x277D837D0];
    v14 = lazy protocol witness table accessor for type String and conformance String();
    *(v9 + 64) = v14;
    *(v9 + 32) = v11;
    *(v9 + 40) = v13;
    os_log(_:dso:log:type:_:)("[TAP] [Interaction] notifying Delegate for %@.", 46, 2, &dword_2493AC000, v7, v8, v9);

    if ((*(a3 + 40) & 1) == 0)
    {
      v15 = *((*MEMORY[0x277D85000] & *v6) + 0x68);
      v16 = swift_unknownObjectRetain();
      v15(v16);
      v17 = static os_log_type_t.default.getter();
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_249B9A480;
      *(v18 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
      *(v18 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
      *(v18 + 32) = a1;
      v19 = a1;
      os_log(_:dso:log:type:_:)("[Interaction] Keeping track of last opened item in 'prepareItemAndOpenIfNeeded()': %@", 85, 2, &dword_2493AC000, v7, v17, v18);
    }

    v20 = static os_log_type_t.default.getter();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_249B9A480;
    v22 = [a1 displayName];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = v14;
    *(v21 + 32) = v23;
    *(v21 + 40) = v25;
    os_log(_:dso:log:type:_:)("[TAP] [Interaction] Fetching URL for item %@.", 45, 2, &dword_2493AC000, v7, v20, v21);

    v26 = [objc_opt_self() defaultManager];
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = a1;
    v29 = *(a3 + 48);
    *(v28 + 64) = *(a3 + 32);
    *(v28 + 80) = v29;
    *(v28 + 96) = *(a3 + 64);
    v30 = *(a3 + 16);
    *(v28 + 32) = *a3;
    *(v28 + 48) = v30;
    aBlock[4] = partial apply for closure #1 in closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_33_3;
    v31 = _Block_copy(aBlock);
    v32 = a1;
    outlined init with copy of DOCInteractionManagerContext(a3, v33);

    [v26 fetchURLForItem:v32 completionHandler:v31];
    _Block_release(v31);
  }
}

double closure #1 in closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8, v11);
  v13 = &v25[-v12];
  v14 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  outlined init with copy of URL?(a1, v13);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  outlined init with take of URL?(v13, v19 + v16);
  *(v19 + v17) = a4;
  *(v19 + v18) = v14;
  v20 = v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = *(a5 + 48);
  *(v20 + 32) = *(a5 + 32);
  *(v20 + 48) = v21;
  *(v20 + 64) = *(a5 + 64);
  v22 = *(a5 + 16);
  *v20 = *a5;
  *(v20 + 16) = v22;
  v23 = a4;

  outlined init with copy of DOCInteractionManagerContext(a5, v25);
  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in closure #1 in closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for URL();
  if ((*(*(v7 - 8) + 48))(a1, 1, v7) == 1 && ([a2 doc_isCollaborationInvitation] & 1) == 0)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v26 = static DOCLog.UI;
    v27 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_249B9A480;
    v29 = [a2 displayName];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    *(v28 + 56) = MEMORY[0x277D837D0];
    *(v28 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v28 + 32) = v30;
    *(v28 + 40) = v32;
    os_log(_:dso:log:type:_:)("[TAP] [Interaction]  Got a nil url returned from fetchURL for %@, clearing lastOpenedNode", 89, 2, &dword_2493AC000, v26, v27, v28);

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v34 = Strong;
      (*((*MEMORY[0x277D85000] & *Strong) + 0x68))(0);
    }
  }

  else
  {
    v8 = *(a4 + 24);
    if (v8)
    {
      v8(a2, a1);
    }

    if (*(a4 + 40))
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v9 = static DOCLog.UI;
      v10 = static os_log_type_t.default.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_249B9A480;
      v12 = [a2 displayName];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      *(v11 + 56) = MEMORY[0x277D837D0];
      *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v11 + 32) = v13;
      *(v11 + 40) = v15;
      os_log(_:dso:log:type:_:)("[TAP] [Interaction] Did commit Preview of %@.", 45, 2, &dword_2493AC000, v9, v10, v11);

      v16 = *a4;
      if (*a4)
      {
        v17 = sel_didCommitPreviewOf_;
        v18 = a2;

LABEL_11:
        [v16 v17];
      }
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v19 = static DOCLog.UI;
      v20 = static os_log_type_t.default.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_249B9A480;
      v22 = [a2 displayName];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      *(v21 + 56) = MEMORY[0x277D837D0];
      *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v21 + 32) = v23;
      *(v21 + 40) = v25;
      os_log(_:dso:log:type:_:)("[TAP] [Interaction] Reporting Selection of %@ to actionReportingDelegate.", 73, 2, &dword_2493AC000, v19, v20, v21);

      v16 = *a4;
      if (*a4)
      {
        v17 = sel_didSelectItem_atParentLocation_wasAlreadySelected_onlyRevealIfColumn_;
        v18 = a2;

        goto LABEL_11;
      }
    }
  }
}

void closure #3 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      v5 = a1;
      specialized DOCInteractionManager.cancelDownload(item:)(v5);

      v4 = v5;
    }
  }
}

void closure #4 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a1)
    {
      v13 = *(a3 + 64);
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      *(v15 + 16) = a4;
      *(v15 + 24) = v14;
      v16 = *(a3 + 48);
      *(v15 + 64) = *(a3 + 32);
      *(v15 + 80) = v16;
      v17 = *(a3 + 64);
      v18 = *(a3 + 16);
      *(v15 + 32) = *a3;
      *(v15 + 48) = v18;
      *(v15 + 96) = v17;
      *(v15 + 104) = a5;
      *(v15 + 112) = a6;
      v19 = a1;
      swift_unknownObjectRetain();

      outlined init with copy of DOCInteractionManagerContext(a3, &v20);

      DOCInteractionManager.downloadItem(item:alertPresenting:completionHandler:)(v19, v13, partial apply for closure #1 in closure #4 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:), v15);
    }

    else
    {
    }
  }
}

void closure #1 in closure #4 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(id))
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v7 = static DOCLog.UI;
  v8 = static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249B9A480;
  v10 = [a2 displayName];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v15 = lazy protocol witness table accessor for type String and conformance String();
  *(v9 + 64) = v15;
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  v16 = v7;

  if (a1)
  {
    v17 = a1;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      v20 = v16;
      v21 = *((*MEMORY[0x277D85000] & *Strong) + 0x78);
      v22 = v17;
      v23 = v21();
      if (v23)
      {
        v24 = v23;
        swift_getObjectType();
        v25 = v22;
        v26 = specialized DOCNode.isEqualTo(node:)(v24, v25);

        swift_unknownObjectRelease();
        if (v26)
        {
          v66 = static os_log_type_t.default.getter();
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_249B9A480;
          v28 = [a2 displayName];
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;

          *(v27 + 56) = MEMORY[0x277D837D0];
          *(v27 + 64) = v15;
          *(v27 + 32) = v29;
          *(v27 + 40) = v31;

          v32 = *(a4 + 8);
          if (v32)
          {
            v33 = v25;
            v32(v17);
          }

          a5(v25);

          return;
        }
      }
    }

    else
    {
      v41 = a1;
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.UI);
    v43 = v17;

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v67 = v47;
      *v46 = 136315650;
      v48 = [v43 displayName];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v67);

      *(v46 + 4) = v52;
      *(v46 + 12) = 2080;
      v53 = v43;
      v54 = [v53 description];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v67);

      *(v46 + 14) = v58;
      *(v46 + 22) = 2080;
      swift_beginAccess();
      v59 = swift_unknownObjectWeakLoadStrong();
      if (v59)
      {
        v60 = v59;
        (*((*MEMORY[0x277D85000] & *v59) + 0x78))();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd, &_sSo7DOCNode_pSgMR);
      v61 = String.init<A>(describing:)();
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v67);

      *(v46 + 24) = v63;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v47, -1, -1);
      MEMORY[0x24C1FE850](v46, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v34 = static os_log_type_t.error.getter();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_249B9A480;
    v36 = [a2 displayName];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v14;
    v40 = v39;

    *(v35 + 56) = v38;
    *(v35 + 64) = v15;
    *(v35 + 32) = v37;
    *(v35 + 40) = v40;
  }
}

double specialized DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v75 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v72 = &v71 - v8;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v9 = static DOCLog.UI;
  v10 = static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v11 = swift_allocObject();
  v73 = xmmword_249B9A480;
  *(v11 + 16) = xmmword_249B9A480;
  v12 = [a1 displayName];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v11 + 56) = MEMORY[0x277D837D0];
  v16 = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 64) = v16;
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  v74 = v9;

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = *a2;
  *(v18 + 40) = a2[1];
  v20 = a2[3];
  *(v18 + 56) = a2[2];
  *(v18 + 72) = v20;
  *(v18 + 88) = *(a2 + 8);
  *(v18 + 24) = v19;
  outlined init with copy of DOCInteractionManagerContext(a2, v76);
  if ([a1 isDownloading] && !objc_msgSend(a1, sel_isDownloaded))
  {
    v21 = 1;
  }

  else
  {
    v21 = [a1 isExternalDownloadPlaceholder];
  }

  if ([a1 isCloudItem])
  {
    v22 = [a1 isDownloaded] ^ 1;
  }

  else
  {
    v22 = 0;
  }

  if (![a1 isFolder])
  {
    if ((*(a2 + 42) & 1) != 0 && (*(a2 + 56) & 1) == 0)
    {
      v49 = static os_log_type_t.default.getter();
      v50 = swift_allocObject();
      *(v50 + 16) = v73;
      v51 = [a1 displayName];
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      *(v50 + 56) = MEMORY[0x277D837D0];
      *(v50 + 64) = v16;
      *(v50 + 32) = v52;
      *(v50 + 40) = v54;

      v43 = swift_allocObject();
      *(v43 + 16) = partial apply for closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
      *(v43 + 24) = v18;

      v44 = partial apply for closure #2 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
    }

    else
    {
      if ((*(a2 + 57) & 1) == 0)
      {
        if (v21)
        {
          if ([a1 isExternalDownloadPlaceholder])
          {
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v45 = type metadata accessor for Logger();
            __swift_project_value_buffer(v45, static Logger.UI);
            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              *v48 = 0;
              _os_log_impl(&dword_2493AC000, v46, v47, "[TAP] [Interaction] Item is a Safari download in progress, don't cancel the D/L, but don't open either", v48, 2u);
              MEMORY[0x24C1FE850](v48, -1, -1);
            }
          }

          else if ((*(a2 + 40) & 1) == 0)
          {
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v66 = type metadata accessor for Logger();
            __swift_project_value_buffer(v66, static Logger.UI);
            v67 = Logger.logObject.getter();
            v68 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v67, v68))
            {
              v69 = swift_slowAlloc();
              *v69 = 0;
              _os_log_impl(&dword_2493AC000, v67, v68, "[TAP] [Interaction] Item is a Download in progress, Cancelling D/L", v69, 2u);
              MEMORY[0x24C1FE850](v69, -1, -1);
            }

            v70 = swift_allocObject();
            swift_unknownObjectWeakInit();

            DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #3 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:), v70);
          }

          goto LABEL_36;
        }

        if (v22)
        {
          v55 = static os_log_type_t.default.getter();
          v56 = swift_allocObject();
          *(v56 + 16) = v73;
          v57 = [a1 displayName];
          v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v59;

          *(v56 + 56) = MEMORY[0x277D837D0];
          *(v56 + 64) = v16;
          *(v56 + 32) = v58;
          *(v56 + 40) = v60;

          v61 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v62 = swift_allocObject();
          v63 = *a2;
          *(v62 + 40) = a2[1];
          v64 = a2[3];
          *(v62 + 56) = a2[2];
          *(v62 + 72) = v64;
          *(v62 + 16) = v61;
          v65 = *(a2 + 8);
          *(v62 + 24) = v63;
          *(v62 + 88) = v65;
          *(v62 + 96) = a1;
          *(v62 + 104) = partial apply for closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
          *(v62 + 112) = v18;
          outlined init with copy of DOCInteractionManagerContext(a2, v76);

          swift_unknownObjectRetain();
          DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #4 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:), v62);

          goto LABEL_35;
        }
      }

      v37 = static os_log_type_t.default.getter();
      v38 = swift_allocObject();
      *(v38 + 16) = v73;
      v39 = [a1 displayName];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      *(v38 + 56) = MEMORY[0x277D837D0];
      *(v38 + 64) = v16;
      *(v38 + 32) = v40;
      *(v38 + 40) = v42;

      v43 = swift_allocObject();
      *(v43 + 16) = partial apply for closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:);
      *(v43 + 24) = v18;

      v44 = _s26DocumentManagerExecutables014DOCInteractionB0C26prepareNodeAndOpenIfNeeded_7contextySo7DOCNode_p_AA0dB7ContextVtFySo6FPItemCSgcfU3_TA_0;
    }

    DOCNode.fpfs_fetchFPItem(completion:)(v44, v43);
LABEL_35:

LABEL_36:

    return result;
  }

  v23 = [a1 fpfs_fpItem];
  if (v23)
  {
    v24 = v23;
    v25 = one-time initialization token for restorableSettingsCache;
    v26 = v23;
    if (v25 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for RestorableSettings(0);
    v28 = v72;
    (*(*(v27 - 8) + 56))(v72, 1, 1, v27);
    swift_beginAccess();
    v29 = v26;
    specialized Dictionary.subscript.setter(v28, v24, 0);
    swift_endAccess();
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.UI);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2493AC000, v31, v32, "[TAP] [Interaction] Node is a folder, navigating to the next location.", v33, 2u);
    MEMORY[0x24C1FE850](v33, -1, -1);
  }

  v34 = DOCNode.sourceIdentifier.getter();
  v35 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v34 node:a1];

  if (*a2)
  {
    [*a2 didSelectLocation:v35 atParentLocation:*(a2 + 6)];
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCInteractionManagerContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCInteractionManagerContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void specialized DOCInteractionManager.cancelDownload(item:)(void *a1)
{
  v2 = [a1 downloadingProgress];
  [v2 cancel];

  v3 = [objc_opt_self() defaultManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249BA0290;
  *(v4 + 32) = a1;
  v5 = objc_allocWithZone(MEMORY[0x277CC63D0]);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
  v6 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v5 initWithItems_];

  [v3 scheduleAction_];
}

void partial apply for closure #1 in closure #1 in closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);

  closure #1 in closure #1 in closure #1 in DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(v0 + v2, v5, v6, v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t NSURL.bumpLastOpenDate(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v18 - v11;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = [objc_opt_self() defaultManager];
  (*(v5 + 16))(v8, v12, v4);
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  (*(v5 + 32))(v16 + v14, v8, v4);
  *(v16 + v15) = 0;

  specialized FPItemManager.doc_fetchItem(for:completionHandler:)(v12, _s10Foundation3URLV26DocumentManagerExecutablesE16bumpLastOpenDate5delay17completionHandlerySd_ySo6FPItemCSgcSgtFyAJ_s5Error_pSgtcfU_TA_0, v16);

  return (*(v5 + 8))(v12, v4);
}

uint64_t @objc NSURL.bumpLastOpenDate(completionHandler:)(void *a1, uint64_t a2, const void *a3)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v9 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v23 - v12;
  v14 = _Block_copy(a3);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = objc_opt_self();
  v17 = a1;
  v18 = [v16 defaultManager];
  (*(v6 + 16))(v9, v13, v5);
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v20 = (v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCSourceByType) -> ();
  *(v21 + 24) = v15;
  (*(v6 + 32))(v21 + v19, v9, v5);
  *(v21 + v20) = 0;

  specialized FPItemManager.doc_fetchItem(for:completionHandler:)(v13, closure #1 in URL.bumpLastOpenDate(delay:completionHandler:)partial apply, v21);

  return (*(v6 + 8))(v13, v5);
}

uint64_t NSURL.fetchItem(bumpLastOpenDate:configuration:completionHandler:)(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultManager];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = a2;
  *(v14 + 40) = a1;

  v15 = a2;
  specialized FPItemManager.doc_fetchItem(for:completionHandler:)(v12, partial apply for closure #1 in NSURL.fetchItem(bumpLastOpenDate:configuration:completionHandler:), v14);

  return (*(v9 + 8))(v12, v8);
}

void closure #1 in NSURL.fetchItem(bumpLastOpenDate:configuration:completionHandler:)(void *a1, uint64_t a2, void (*a3)(void, uint64_t, double), uint64_t a4, void *a5, char a6)
{
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = aBlock - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18 = a1;
    if ([a5 interactionModeForPreparing] && (objc_msgSend(a5, sel_neverCreateBookmarkForOpenInPlace) & 1) == 0)
    {
      v25 = [a5 hostIdentifier];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v26;

      if ((a6 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v19 = 0;
      v20 = 0;
      if ((a6 & 1) == 0)
      {
LABEL_6:
        v21 = swift_allocObject();
        *(v21 + 16) = a3;
        *(v21 + 24) = a4;
        v22 = swift_allocObject();
        v22[2] = partial apply for closure #1 in closure #1 in NSURL.fetchItem(bumpLastOpenDate:configuration:completionHandler:);
        v22[3] = v21;
        v22[4] = v19;
        v22[5] = v20;
        v22[6] = v18;
        aBlock[4] = partial apply for specialized closure #1 in DOCNode.createDOCItemBookmark(bookmark:completion:);
        aBlock[5] = v22;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_52_1;
        v23 = _Block_copy(aBlock);
        v24 = v18;

        [v24 fetchURL_];
        _Block_release(v23);

        return;
      }
    }

    Date.init()();
    FPItem.setLastOpenDate(_:delay:)(v17, 0.0);
    (*(v13 + 8))(v17, v12);
    goto LABEL_6;
  }

  a3(0, a2, v15);
}

void closure #1 in closure #1 in NSURL.fetchItem(bumpLastOpenDate:configuration:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  if (a3)
  {
    a4(0, a3);
  }

  else if (a1)
  {
    v6 = a1;
    a4(a1, 0);
  }

  else
  {
    type metadata accessor for related decl 'e' for UIDocumentBrowserErrorCode(0);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_14(&lazy protocol witness table cache variable for type related decl 'e' for UIDocumentBrowserErrorCode and conformance related decl 'e' for UIDocumentBrowserErrorCode, type metadata accessor for related decl 'e' for UIDocumentBrowserErrorCode, &protocol conformance descriptor for related decl 'e' for UIDocumentBrowserErrorCode);
    _BridgedStoredNSError.init(_:userInfo:)();
    (a4)(0);
  }
}

void DOCNode.createDOCItemBookmark(bookmark:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = v9;
  v10[6] = v8;
  v10[7] = v4;
  v12[4] = partial apply for closure #1 in DOCNode.createDOCItemBookmark(bookmark:completion:);
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  v12[3] = &block_descriptor_154;
  v11 = _Block_copy(v12);

  swift_unknownObjectRetain();

  [v4 fetchURL_];
  _Block_release(v11);
}

uint64_t @objc NSURL.fetchItem(bumpLastOpenDate:configuration:completionHandler:)(void *a1, uint64_t a2, char a3, void *a4, const void *a5)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a5);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = objc_opt_self();
  v17 = a4;
  v18 = a1;
  v19 = [v16 defaultManager];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = swift_allocObject();
  *(v20 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned FPSandboxingURLWrapper?, @unowned NSError?) -> ();
  *(v20 + 24) = v15;
  *(v20 + 32) = v17;
  *(v20 + 40) = a3;
  v21 = v17;

  specialized FPItemManager.doc_fetchItem(for:completionHandler:)(v13, closure #1 in NSURL.fetchItem(bumpLastOpenDate:configuration:completionHandler:)partial apply, v20);

  return (*(v10 + 8))(v13, v9);
}

void URL.createDOCItemBookmark(bookmark:node:qos:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a2;
  v41 = a5;
  v39 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v17 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a1[1];
  if ([objc_opt_self() isMainThread])
  {
    type metadata accessor for OS_dispatch_queue();
    v34 = static OS_dispatch_queue.global(qos:)();
    (*(v14 + 16))(&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v13);
    v20 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v21 = (v15 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = v7;
    v22 = swift_allocObject();
    *(v22 + 16) = v18;
    *(v22 + 24) = v19;
    (*(v14 + 32))(v22 + v20, v17, v13);
    v23 = (v22 + v21);
    v24 = v40;
    v25 = v41;
    *v23 = v39;
    v23[1] = v25;
    *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = v24;
    aBlock[4] = partial apply for closure #1 in URL.createDOCItemBookmark(bookmark:node:qos:completion:);
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_12_3;
    v26 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    v42 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_14(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v27 = v36;
    v28 = v33;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v29 = v34;
    MEMORY[0x24C1FB9A0](0, v12, v27, v26);
    _Block_release(v26);

    (*(v38 + 8))(v27, v28);
    (*(v35 + 8))(v12, v37);
  }

  else
  {
    v30 = v39;
    v31 = v40;
    v32 = v41;

    createBookmark #1 () in URL.createDOCItemBookmark(bookmark:node:qos:completion:)(v18, v19, v5, v30, v32, v31);
  }
}

void createBookmark #1 () in URL.createDOCItemBookmark(bookmark:node:qos:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, char *, void), uint64_t a5, uint64_t a6)
{
  v32 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v31 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  if (a2)
  {
    URL.startAccessingSecurityScopedResource()();
    URL._bridgeToObjectiveC()(v19);
    v21 = v20;
    v22 = MEMORY[0x24C1FAD20](a1, a2);
    (*(v16 + 16))(&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v15);
    v23 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v32;
    *(v24 + 24) = a5;
    (*(v16 + 32))(v24 + v23, &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
    *(v24 + ((v17 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = a6;
    aBlock[4] = partial apply for closure #1 in createBookmark #1 () in URL.createDOCItemBookmark(bookmark:node:qos:completion:);
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFURLRef?, @guaranteed CFErrorRef?) -> ();
    aBlock[3] = &block_descriptor_36_1;
    v25 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    FPExtendBookmarkForDocumentURL();
    _Block_release(v25);
  }

  else
  {
    v26 = objc_allocWithZone(MEMORY[0x277D05EE0]);
    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    v30 = [v26 initWithURL:v28 node:a6];

    (*(v16 + 16))(v14, a3, v15);
    (*(v16 + 56))(v14, 0, 1, v15);
    v32(v30, v14, 0);

    outlined destroy of CharacterSet?(v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }
}

void closure #1 in createBookmark #1 () in URL.createDOCItemBookmark(bookmark:node:qos:completion:)(uint64_t a1, void *a2, void (*a3)(void, char *, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = type metadata accessor for URL();
  v12 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v59 - v22;
  if (a2)
  {
    v64 = &v59 - v22;
    v65 = a4;
    v63 = a3;
    if (one-time initialization token for Picker != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.Picker);
    v25 = v66;
    v62 = *(v12 + 16);
    v62(v15, a5, v66);
    v26 = a2;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v61 = a5;
      v30 = v29;
      v31 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v68 = v60;
      *v30 = 138412546;
      URL._bridgeToObjectiveC()(&off_249B9A000);
      v33 = v32;
      (*(v12 + 8))(v15, v66);
      *(v30 + 4) = v33;
      *v31 = v33;
      *(v30 + 12) = 2080;
      v67 = a2;
      v34 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10CFErrorRefaSgMd, &_sSo10CFErrorRefaSgMR);
      v35 = String.init<A>(describing:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v68);

      *(v30 + 14) = v37;
      _os_log_impl(&dword_2493AC000, v27, v28, "Error while extending bookmark for %@ with error %s", v30, 0x16u);
      outlined destroy of CharacterSet?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v38 = v31;
      v25 = v66;
      MEMORY[0x24C1FE850](v38, -1, -1);
      v39 = v60;
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x24C1FE850](v39, -1, -1);
      v40 = v30;
      a5 = v61;
      MEMORY[0x24C1FE850](v40, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v15, v25);
    }

    v43 = v64;
    v62(v64, a5, v25);
    (*(v12 + 56))(v43, 0, 1, v25);
    v63(0, v43, 0);
    v44 = v43;
  }

  else
  {
    if (a1)
    {
      v41 = [objc_allocWithZone(MEMORY[0x277D05EE0]) initWithBookmarkableString:a1 node:a6];
      v42 = v66;
      (*(v12 + 16))(v23, a5, v66);
      (*(v12 + 56))(v23, 0, 1, v42);
      a3(v41, v23, 0);
      outlined destroy of CharacterSet?(v23, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      URL.stopAccessingSecurityScopedResource()();

      return;
    }

    v64 = &v59 - v22;
    v65 = a4;
    if (one-time initialization token for Picker != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.Picker);
    v46 = *(v12 + 16);
    v47 = v66;
    v46(v19, a5, v66);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v63 = a3;
      v51 = v50;
      v52 = swift_slowAlloc();
      v62 = v46;
      v53 = v52;
      *v51 = 138412290;
      URL._bridgeToObjectiveC()(&off_249B9A000);
      v55 = v54;
      (*(v12 + 8))(v19, v47);
      *(v51 + 4) = v55;
      *v53 = v55;
      _os_log_impl(&dword_2493AC000, v48, v49, "bookmark for %@ is nil", v51, 0xCu);
      outlined destroy of CharacterSet?(v53, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v56 = v53;
      v46 = v62;
      MEMORY[0x24C1FE850](v56, -1, -1);
      v57 = v51;
      a3 = v63;
      MEMORY[0x24C1FE850](v57, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v19, v47);
    }

    v58 = v64;
    v46(v64, a5, v47);
    (*(v12 + 56))(v58, 0, 1, v47);
    a3(0, v58, 0);
    v44 = v58;
  }

  outlined destroy of CharacterSet?(v44, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  URL.stopAccessingSecurityScopedResource()();
}

void DOCNode.newFolderButtonMode(for:)(void *a1@<X0>, char *a3@<X8>)
{
  if (![v3 isFolder])
  {
    goto LABEL_16;
  }

  v6 = [a1 identifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
    goto LABEL_15;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
LABEL_7:

    goto LABEL_16;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {
    goto LABEL_15;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    goto LABEL_7;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {
    goto LABEL_15;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_7;
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {
    goto LABEL_15;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    goto LABEL_7;
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
  {
    goto LABEL_15;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
    goto LABEL_7;
  }

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;
  if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
  {
    goto LABEL_15;
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v39)
  {
    goto LABEL_7;
  }

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;
  if (v40 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v42 == v43)
  {
LABEL_15:

    goto LABEL_16;
  }

  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v44 & 1) == 0 && ([v3 isTrashed] & 1) == 0)
  {
    type metadata accessor for DOCActionManager(0);
    v23 = specialized static DOCActionManager.canCreateNewFolder(in:)(v3) & 1;
    goto LABEL_17;
  }

LABEL_16:
  v23 = 2;
LABEL_17:
  *a3 = v23;
}

void closure #1 in DOCNode.createDOCItemBookmark(bookmark:completion:)(char *a1, void *a2, void (*a3)(id, char *, void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v78 = a6;
  v79 = a7;
  v77 = a5;
  v83 = a3;
  v84 = a4;
  v80 = a1;
  v73 = type metadata accessor for DispatchWorkItemFlags();
  v76 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v8);
  v75 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v74 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v81 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v82 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v67 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  MEMORY[0x28223BE20](v29, v30);
  if (a2)
  {
    if (one-time initialization token for Picker != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.Picker);
    v34 = a2;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136315138;
      swift_getErrorValue();
      v39 = Error.localizedDescription.getter();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, aBlock);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_2493AC000, v35, v36, "Error while fetching item : %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x24C1FE850](v38, -1, -1);
      MEMORY[0x24C1FE850](v37, -1, -1);
    }

    v42 = v82;
    (*(v26 + 56))(v82, 1, 1, v25);
    v43 = v42;
    v44 = a2;
LABEL_13:
    v83(0, v43, v44);
    outlined destroy of CharacterSet?(v42, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return;
  }

  v45 = v32;
  v46 = &v67 - v31;
  v71 = v13;
  v47 = v81;
  v72 = v10;
  outlined init with copy of URL?(v80, v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    outlined destroy of CharacterSet?(v24, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for Picker != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.Picker);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2493AC000, v49, v50, "Error while fetching item URL is nil", v51, 2u);
      MEMORY[0x24C1FE850](v51, -1, -1);
    }

    v42 = v82;
    (*(v26 + 56))(v82, 1, 1, v25);
    v43 = v42;
    v44 = 0;
    goto LABEL_13;
  }

  v52 = *(v26 + 32);
  v70 = v46;
  v82 = v52;
  (v52)(v46, v24, v25);
  (*(v47 + 104))(v17, *MEMORY[0x277D851D0], v14);
  if ([objc_opt_self() isMainThread])
  {
    type metadata accessor for OS_dispatch_queue();
    v68 = static OS_dispatch_queue.global(qos:)();
    (*(v26 + 16))(v45, v70, v25);
    v53 = *(v26 + 80);
    v80 = v17;
    v54 = (v53 + 32) & ~v53;
    v55 = (v27 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = v25;
    v56 = swift_allocObject();
    v57 = v78;
    *(v56 + 16) = v77;
    *(v56 + 24) = v57;
    (v82)(v56 + v54, v45, v25);
    v58 = (v56 + v55);
    v59 = v14;
    v60 = v84;
    *v58 = v83;
    v58[1] = v60;
    *(v56 + ((v55 + 23) & 0xFFFFFFFFFFFFFFF8)) = v79;
    aBlock[4] = closure #1 in URL.createDOCItemBookmark(bookmark:node:qos:completion:)partial apply;
    aBlock[5] = v56;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_43_2;
    v61 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    v62 = v71;
    static DispatchQoS.unspecified.getter();
    v85 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_14(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v63 = v75;
    v64 = v73;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v65 = v68;
    MEMORY[0x24C1FB9A0](0, v62, v63, v61);
    _Block_release(v61);

    (*(v76 + 8))(v63, v64);
    (*(v74 + 8))(v62, v72);
    (*(v81 + 8))(v80, v59);
    (*(v26 + 8))(v70, v69);
  }

  else
  {
    v66 = v70;
    createBookmark #1 () in URL.createDOCItemBookmark(bookmark:node:qos:completion:)(v77, v78, v70, v83, v84, v79);
    (*(v47 + 8))(v17, v14);
    (*(v26 + 8))(v66, v25);
  }
}

uint64_t getEnumTagSinglePayload for BookmarkInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BookmarkInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for BookmarkInfo(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t objectdestroy_2Tm_4()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t objectdestroyTm_15()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 32) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

void partial apply for closure #1 in createBookmark #1 () in URL.createDOCItemBookmark(bookmark:node:qos:completion:)(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in createBookmark #1 () in URL.createDOCItemBookmark(bookmark:node:qos:completion:)(a1, a2, v7, v8, v2 + v6, v9);
}

uint64_t objectdestroy_8Tm_1()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void partial apply for closure #1 in URL.createDOCItemBookmark(bookmark:node:qos:completion:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + v3;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v0 + v4);

  createBookmark #1 () in URL.createDOCItemBookmark(bookmark:node:qos:completion:)(v5, v6, v0 + v2, v8, v9, v10);
}

Swift::Int DOCProgressCollectionListViewController.Style.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

uint64_t key path setter for DOCProgressCollectionListViewController.cancelAccessoryDisplayedState : DOCProgressCollectionListViewController(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for UICellAccessory.DisplayedState();
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xC8))(v8);
}

uint64_t DOCProgressCollectionListViewController.cancelAccessoryDisplayedState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_cancelAccessoryDisplayedState;
  swift_beginAccess();
  v4 = type metadata accessor for UICellAccessory.DisplayedState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

double DOCProgressCollectionListViewController.cancelAccessoryDisplayedState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_cancelAccessoryDisplayedState;
  swift_beginAccess();
  v4 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  swift_endAccess();
  return result;
}

void *DOCProgressCollectionListViewController.dismissButton.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_dismissButton;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCProgressCollectionListViewController.dismissButton.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_dismissButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  DOCProgressCollectionListViewController.updateNavigationItems()();
}

void (*DOCProgressCollectionListViewController.dismissButton.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCProgressCollectionListViewController.dismissButton.modify;
}

void DOCProgressCollectionListViewController.dismissButton.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    DOCProgressCollectionListViewController.updateNavigationItems()();
  }
}

id DOCProgressCollectionListViewController.init(_:style:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_cancelAccessoryDisplayedState;
  v8 = *MEMORY[0x277D74A88];
  v9 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v9 - 8) + 104))(&v3[v7], v8, v9);
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_dismissButton] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_additionalTopInset] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController____lazy_storage___collectionView] = 0;
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_collectionViewTopConstraint;
  *&v3[v10] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_reloadGuardian;
  type metadata accessor for DOCUpdateGuardian();
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x277D84FA0];
  *&v3[v11] = v12;
  *(v12 + 24) = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_diffable] = 0;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_isDisplayingProgress] = 0;
  v13 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_source];
  *v13 = a1;
  v13[1] = a2;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_style] = v6;
  v22.receiver = v3;
  v22.super_class = type metadata accessor for DOCProgressCollectionListViewController(0);
  swift_unknownObjectRetain();
  v14 = objc_msgSendSuper2(&v22, sel_init);
  result = _DocumentManagerBundle();
  if (result)
  {
    v16 = result;
    v23._object = 0x8000000249BEF280;
    v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v17.value._object = 0xEB00000000656C62;
    v18._countAndFlagsBits = 0x73736572676F7250;
    v19._object = 0x8000000249BEF260;
    v23._countAndFlagsBits = 0xD000000000000040;
    v19._countAndFlagsBits = 0xD00000000000001CLL;
    v18._object = 0xE800000000000000;
    v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v17, v16, v18, v23);

    v21 = MEMORY[0x24C1FAD20](v20._countAndFlagsBits, v20._object);

    [v14 setTitle_];
    swift_unknownObjectRelease();

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double DOCProgressCollectionListViewController.additionalTopInset.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_additionalTopInset;
  swift_beginAccess();
  return *(v0 + v1);
}

id DOCProgressCollectionListViewController.additionalTopInset.setter(double a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_additionalTopInset;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_collectionViewTopConstraint) setConstant_];
}

uint64_t (*DOCProgressCollectionListViewController.additionalTopInset.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_additionalTopInset;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCProgressCollectionListViewController.additionalTopInset.modify;
}

void DOCProgressCollectionListViewController.additionalTopInset.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v3[3] + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_collectionViewTopConstraint) setConstant_];
  }

  free(v3);
}

Swift::Void __swiftcall DOCProgressCollectionListViewController.ProgressListingView.layoutSubviews()()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView_fittingHeightUpdateDisabledCount;
  v2 = *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView_fittingHeightUpdateDisabledCount];
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView_fittingHeightUpdateDisabledCount] = v4;
    v8.receiver = v0;
    v8.super_class = type metadata accessor for DOCProgressCollectionListViewController.ProgressListingView();
    objc_msgSendSuper2(&v8, sel_layoutSubviews);
    v5 = *&v0[v1];
    if (v5 == 1)
    {
      [v0 contentSize];
      [v0 setFittingHeight_];
      v5 = *&v0[v1];
    }

    v3 = __OFSUB__(v5, 1);
    v7 = v5 - 1;
    if (!v3)
    {
      *&v0[v1] = v7;
      return;
    }
  }

  __break(1u);
}

id DOCProgressCollectionListViewController.ProgressListingView.__allocating_init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];

  return v7;
}

id DOCProgressCollectionListViewController.ProgressListingView.init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = OBJC_IVAR____TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView_fittingHeight;
  swift_beginAccess();
  *&v5[v11] = static DOCProgressCollectionListViewController.ProgressListingView.minimumFittingHeight;
  *&v5[OBJC_IVAR____TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView_fittingHeightUpdateDisabledCount] = 0;
  v14.receiver = v5;
  v14.super_class = type metadata accessor for DOCProgressCollectionListViewController.ProgressListingView();
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_collectionViewLayout_, a1, a2, a3, a4, a5);

  return v12;
}

id DOCProgressCollectionListViewController.ProgressListingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCProgressCollectionListViewController.ProgressListingView.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView_fittingHeight;
  swift_beginAccess();
  *&v1[v3] = static DOCProgressCollectionListViewController.ProgressListingView.minimumFittingHeight;
  *&v1[OBJC_IVAR____TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView_fittingHeightUpdateDisabledCount] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DOCProgressCollectionListViewController.ProgressListingView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id DOCProgressCollectionListViewController.collectionView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController____lazy_storage___collectionView;
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController____lazy_storage___collectionView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController____lazy_storage___collectionView];
LABEL_5:
    v17 = v2;
    return v3;
  }

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
    v15 = [objc_allocWithZone(type metadata accessor for DOCProgressCollectionListViewController.ProgressListingView()) initWithFrame:v14 collectionViewLayout:{v7, v9, v11, v13}];

    v16 = *&v0[v1];
    *&v0[v1] = v15;
    v3 = v15;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall DOCProgressCollectionListViewController.viewDidLoad()()
{
  v36.receiver = v0;
  v36.super_class = type metadata accessor for DOCProgressCollectionListViewController(0);
  objc_msgSendSuper2(&v36, sel_viewDidLoad);
  v1 = DOCProgressCollectionListViewController.collectionView.getter();
  v2 = MEMORY[0x24C1FAD20](0xD000000000000010, 0x8000000249BFB280);
  [v1 setAccessibilityIdentifier_];

  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController____lazy_storage___collectionView;
  [v3 addSubview_];

  [*(v0 + v5) setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [*(v0 + v5) topAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v7 topAnchor];

  v10 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0xF8))();
  v11 = [v6 constraintEqualToAnchor:v9 constant:?];

  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_collectionViewTopConstraint;
  v13 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_collectionViewTopConstraint);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_collectionViewTopConstraint) = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_249BA0470;
  v15 = [*(v0 + v5) leadingAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v17 = v16;
  v18 = [v16 leadingAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(v14 + 32) = v19;
  v20 = [*(v0 + v5) trailingAnchor];
  v21 = [v0 view];
  if (!v21)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v22 = v21;
  v23 = [v21 trailingAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  v25 = *(v0 + v12);
  *(v14 + 40) = v24;
  *(v14 + 48) = v25;
  v26 = *(v0 + v5);
  v27 = v25;
  v28 = [v26 bottomAnchor];
  v29 = [v0 view];
  if (v29)
  {
    v30 = v29;
    v31 = objc_opt_self();
    v32 = [v30 bottomAnchor];

    v33 = [v28 constraintEqualToAnchor_];
    *(v14 + 56) = v33;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v31 activateConstraints_];

    v35 = (*((*v10 & *v0) + 0x190))();
    (*((*v10 & *v0) + 0x1A0))(v35);
    DOCProgressCollectionListViewController.updateNavigationItems()();
    return;
  }

LABEL_11:
  __break(1u);
}

Swift::Void __swiftcall DOCProgressCollectionListViewController.prepareForPresenting()()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in DOCProgressCollectionListViewController.prepareForPresenting();
  *(v3 + 24) = v2;
  v5[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v5[5] = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed () -> ();
  v5[3] = &block_descriptor_155;
  v4 = _Block_copy(v5);
  v0;

  [v1 performWithoutAnimation_];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();

    specialized Set._Variant.insert(_:)();
    swift_endAccess();
  }
}

void closure #1 in DOCProgressCollectionListViewController.prepareForPresenting()(void *a1)
{
  DOCProgressCollectionListViewController.reloadFromSourceIfNecessary(itemIdentifiersToForceDrop:animate:)(MEMORY[0x277D84F90], 0);
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    [v2 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall DOCProgressCollectionListViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for DOCProgressCollectionListViewController(0);
  objc_msgSendSuper2(&v8, sel_viewWillAppear_, a1);
  DOCProgressCollectionListViewController.reloadFromSourceIfNecessary(itemIdentifiersToForceDrop:animate:)(MEMORY[0x277D84F90], 0);
  swift_beginAccess();

  specialized Set._Variant.insert(_:)();
  swift_endAccess();

  v4 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_source + 8];
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = *(v4 + 16);

  v7(v2, partial apply for closure #1 in DOCProgressCollectionListViewController.viewWillAppear(_:), v6, ObjectType, v4);
}

void closure #1 in DOCProgressCollectionListViewController.viewWillAppear(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for progressUI != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.progressUI;
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2493AC000, v3, v4, "Progress listing received 'didUpdate' from source", v5, 2u);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    DOCProgressCollectionListViewController.reloadFromSourceIfNecessary(itemIdentifiersToForceDrop:animate:)(MEMORY[0x277D84F90], 1);
  }
}

Swift::Void __swiftcall DOCProgressCollectionListViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for DOCProgressCollectionListViewController(0);
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1);
  v4 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_reloadGuardian];
  swift_beginAccess();

  specialized Set._Variant.remove(_:)();
  swift_endAccess();
  if (!*(*(v4 + 16) + 16) && *(v4 + 24) == 1)
  {
    closure #1 in DOCProgressCollectionListViewController.viewDidAppear(_:)(v2);
  }
}

void closure #1 in DOCProgressCollectionListViewController.viewDidAppear(_:)(uint64_t a1)
{
  if (one-time initialization token for progressUI != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.progressUI;
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2493AC000, v1, v2, "Progress listing received 'didUpdate' while appearing.  Performing now!", v3, 2u);
    MEMORY[0x24C1FE850](v3, -1, -1);
  }

  DOCProgressCollectionListViewController.reloadFromSourceIfNecessary(itemIdentifiersToForceDrop:animate:)(MEMORY[0x277D84F90], 1);
}

void DOCProgressCollectionListViewController.updateNavigationItems()()
{
  v1 = v0;
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xD8);
  v3 = v2();
  if (v3 && (v4 = v3, v5 = [v3 systemItem], v4, v5 == 24))
  {
    v6 = [v1 editButtonItem];
    v7 = (v2)(v6);
  }

  else
  {
    v6 = v2();
    v8 = v6;
    v7 = [v1 editButtonItem];
  }

  v9 = v7;
  v21 = v7;
  v10 = [v1 navigationItem];
  v11 = [v10 leftBarButtonItem];

  v12 = v21;
  if (!v9)
  {
    v12 = v11;
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (!v11)
  {
LABEL_10:

    goto LABEL_11;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x277D751E0);
  v13 = static NSObject.== infix(_:_:)();

  if ((v13 & 1) == 0)
  {
LABEL_11:
    v14 = [v1 navigationItem];
    [v14 setLeftBarButtonItem_];
  }

LABEL_12:
  v15 = [v1 navigationItem];
  v16 = [v15 rightBarButtonItem];

  if (!v6)
  {
    v19 = v21;
    if (!v16)
    {
      goto LABEL_22;
    }

    v6 = 0;
    goto LABEL_19;
  }

  if (!v16)
  {
    v16 = v6;
LABEL_19:

    goto LABEL_20;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x277D751E0);
  v17 = static NSObject.== infix(_:_:)();

  if ((v17 & 1) == 0)
  {
LABEL_20:
    v20 = [v1 navigationItem];
    [v20 setRightBarButtonItem_];

    v18 = v6;
    v6 = v20;
    goto LABEL_21;
  }

  v18 = v21;
LABEL_21:

  v19 = v6;
LABEL_22:
}

id DOCProgressCollectionListViewController.primaryScrollView.getter()
{

  return DOCProgressCollectionListViewController.collectionView.getter();
}

Swift::Void __swiftcall DOCProgressCollectionListViewController.configureCollectionView()()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UICollectionLayoutListConfiguration();
  v8 = *(v7 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v7, v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_style;
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_style))
  {
    v14 = MEMORY[0x277D74D60];
  }

  else
  {
    v14 = MEMORY[0x277D74D50];
  }

  (*(v3 + 104))(v6, *v14, v2, v10);
  UICollectionLayoutListConfiguration.init(appearance:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  if (*(v1 + v13) == 1)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
  }

  v15 = objc_opt_self();
  v16 = [v15 clearColor];
  UICollectionLayoutListConfiguration.backgroundColor.setter();
  v17 = DOCProgressCollectionListViewController.collectionView.getter();
  v18 = [v15 clearColor];
  [v17 setBackgroundColor_];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v19 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController____lazy_storage___collectionView);
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 effectWithStyle_];
    v23 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

    [v21 setBackgroundView_];
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCompositionalLayout, 0x277D752B8);
  v24 = static UICollectionViewCompositionalLayout.list(using:)();
  v25 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController____lazy_storage___collectionView;
  [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController____lazy_storage___collectionView) setCollectionViewLayout_];
  [*(v1 + v25) setDelegate_];

  (*(v8 + 8))(v12, v7);
}

char *closure #1 in DOCProgressCollectionListViewController.configureCollectionView()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIContextualAction, 0x277D753C0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3 = objc_opt_self();
  v4 = [v3 configurationWithActions_];

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return v4;
  }

  v6 = result;
  v7 = *&result[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_diffable];
  if (!v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;

  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
  if (!v35)
  {

    outlined destroy of CharacterSet?(aBlock, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
    return v4;
  }

  outlined init with copy of DOCSidebarItemIconProvider(v37, v38);
  outlined destroy of CharacterSet?(aBlock, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
  outlined init with take of DOCDSCopyEngineConnection(v38, v39);
  v9 = v40;
  v10 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  (*(v10 + 8))(aBlock, v9, v10);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for DOCProgressCollectionListViewController.NullProgress(0);
  v12 = __swift_project_value_buffer(v11, static DOCProgressCollectionListViewController.NullProgress.shared);
  v13 = MEMORY[0x24C1FC430](aBlock, v12 + 80);
  outlined destroy of AnyHashable(aBlock);
  if ((v13 & 1) != 0 || (v14 = v40, v15 = v41, __swift_project_boxed_opaque_existential_1(v39, v40), v16 = (*(v15 + 24))(v14, v15), LODWORD(v14) = [v16 isCancellable], v16, !v14))
  {

    __swift_destroy_boxed_opaque_existential_0(v39);
    return v4;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v17 = result;
    v42._object = 0x8000000249BD2AF0;
    v18._countAndFlagsBits = 0x6C65636E6143;
    v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v19.value._object = 0xEB00000000656C62;
    v18._object = 0xE600000000000000;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v42._countAndFlagsBits = 0xD00000000000001BLL;
    v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v42);

    v22 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    outlined init with copy of DOCSidebarItemIconProvider(v39, v38);
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    outlined init with take of DOCDSCopyEngineConnection(v38, v24 + 24);

    v25 = MEMORY[0x24C1FAD20](v21._countAndFlagsBits, v21._object);

    v36 = partial apply for closure #1 in closure #1 in DOCProgressCollectionListViewController.configureCollectionView();
    v37[0] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIContextualAction, @guaranteed UIView, @guaranteed @escaping @callee_guaranteed (@unowned Bool) -> ()) -> ();
    v35 = &block_descriptor_72_1;
    v26 = _Block_copy(aBlock);
    v27 = [objc_opt_self() contextualActionWithStyle:1 title:v25 handler:v26];

    _Block_release(v26);

    if (_UISolariumEnabled())
    {
      v28 = MEMORY[0x24C1FAD20](0x69632E6B72616D78, 0xEC000000656C6372);
      v29 = [objc_opt_self() systemImageNamed_];

      [v27 setImage_];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_249BA0290;
    *(v30 + 32) = v27;
    v31 = v27;
    v32 = Array._bridgeToObjectiveC()().super.isa;

    v33 = [v3 configurationWithActions_];

    [v33 setPerformsFirstActionWithFullSwipe_];
    __swift_destroy_boxed_opaque_existential_0(v39);
    return v33;
  }

LABEL_16:
  __break(1u);
  return result;
}

void closure #1 in closure #1 in DOCProgressCollectionListViewController.configureCollectionView()(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;
    v12 = *((*MEMORY[0x277D85000] & *v10) + 0x198);

    v12(a6, _sSo36DOCFullDocumentManagerViewControllerC0bC11ExecutablesE6reveal4node19showEnclosingFolder15completionBlockySo7DOCNode_p_SbySbctFyycfU_TA_0, v11);
  }

  else
  {
    a3();
  }
}

void closure #2 in DOCProgressCollectionListViewController.configureCollectionView()(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v4 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v31 = &v28 - v11;
  v12 = type metadata accessor for UIListSeparatorConfiguration();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v30 = v8;
    v19 = DOCProgressCollectionListViewController.collectionView.getter();
    v20 = [v19 numberOfItemsInSection_];

    if (__OFSUB__(v20, 1))
    {
      __break(1u);
    }

    else
    {
      v28 = v20 - 1;
      (*(v13 + 16))(v16, a1, v12);
      v21 = IndexPath.row.getter();
      v22 = *(v5 + 104);
      v23 = *MEMORY[0x277D74C98];
      v29 = v12;
      v24 = v4;
      v25 = *MEMORY[0x277D74CA0];
      if (v21)
      {
        v26 = v25;
      }

      else
      {
        v26 = v23;
      }

      v22(v31, v26, v24);
      UIListSeparatorConfiguration.topSeparatorVisibility.setter();
      if (IndexPath.row.getter() == v28)
      {
        v27 = v23;
      }

      else
      {
        v27 = v25;
      }

      v22(v30, v27, v24);
      UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();

      (*(v13 + 32))(v32, v16, v29);
    }
  }

  else
  {
    (*(v13 + 16))(v32, a1, v12);
  }
}

uint64_t DOCProgressCollectionListViewController.cancelOperation(_:completion:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v32 = a2;
  v6 = type metadata accessor for Date();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables21DOCDiffableIdentifierVySSGAFyAD29DOCProgressProvidingOperation_pGGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables21DOCDiffableIdentifierVySSGAFyAD29DOCProgressProvidingOperation_pGGMR);
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v31 - v12;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 24))(v14, v15);
  [v16 cancel];

  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  (*(v18 + 8))(v36, v17, v18);
  outlined init with copy of DOCSidebarItemIconProvider(a1, &v37);
  v19 = [objc_opt_self() mainRunLoop];
  Current = CFAbsoluteTimeGetCurrent();
  v21 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_diffable;
  v22 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_diffable);
  if (v22)
  {
    v23 = Current;
    v24 = v4;
    v25 = (v33 + 8);
    v26 = (v34 + 8);
    while (1)
    {
      v27 = v22;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v28 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
      (*v25)(v13, v10);
      LOBYTE(v27) = specialized Sequence<>.contains(_:)(v36, v28);

      if ((v27 & 1) == 0 || CFAbsoluteTimeGetCurrent() - v23 > 0.5)
      {
        break;
      }

      Date.init(timeIntervalSinceNow:)();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*v26)(v9, v35);
      [v19 runUntilDate_];

      v22 = *(v24 + v21);
      if (!v22)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    __break(1u);
  }

  v32();
  return outlined destroy of CharacterSet?(v36, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
}

Swift::Void __swiftcall DOCProgressCollectionListViewController.configureDataSource()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_26DocumentManagerExecutables025DOCProgressCollectionListD0CAF0I18ProvidingOperation_pGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_26DocumentManagerExecutables025DOCProgressCollectionListD0CAF0I18ProvidingOperation_pGMR);
  v2 = *(v1 - 8);
  v37 = v1;
  v38 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v5 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v36 - v8;
  MEMORY[0x28223BE20](v10, v11);
  v13 = v36 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = v36 - v16;
  swift_allocObject();
  v18 = v0;
  swift_unknownObjectWeakInit();
  type metadata accessor for DOCProgressCollectionListCell(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pMd, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pMR);
  UICollectionView.CellRegistration.init(handler:)();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for DOCProgressCollectionListViewController.NullProgress(0);
  v20 = __swift_project_value_buffer(v19, static DOCProgressCollectionListViewController.NullProgress.shared);
  UICollectionView.CellRegistration.init(handler:)();
  v36[1] = DOCProgressCollectionListViewController.collectionView.getter();
  outlined init with copy of DOCGridLayout.Spec?(v20, v39, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
  v21 = v37;
  v22 = v38;
  v23 = *(v38 + 16);
  v23(v9, v13, v37);
  v23(v5, v17, v21);
  v24 = *(v22 + 80);
  v25 = (v24 + 96) & ~v24;
  v26 = (v3 + v24 + v25) & ~v24;
  v27 = swift_allocObject();
  v28 = v39[3];
  *(v27 + 3) = v39[2];
  *(v27 + 4) = v28;
  *(v27 + 5) = v39[4];
  v29 = v39[1];
  *(v27 + 1) = v39[0];
  *(v27 + 2) = v29;
  v36[0] = v17;
  v30 = *(v22 + 32);
  v30(&v27[v25], v9, v21);
  v30(&v27[v26], v5, v21);
  v31 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables21DOCDiffableIdentifierVySSGAFyAD29DOCProgressProvidingOperation_pGGMd, &_s5UIKit34UICollectionViewDiffableDataSourceCy26DocumentManagerExecutables21DOCDiffableIdentifierVySSGAFyAD29DOCProgressProvidingOperation_pGGMR));
  v32 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  v33 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_diffable;
  v34 = *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_diffable);
  *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_diffable) = v32;

  if (*(v18 + v33))
  {
    [*(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController____lazy_storage___collectionView) setDataSource_];
    v35 = *(v38 + 8);
    v35(v13, v21);
    v35(v36[0], v21);
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in DOCProgressCollectionListViewController.configureDataSource()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for UICellAccessory.DisplayedState();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    outlined init with copy of DOCSidebarItemIconProvider(a3, v14);
    v12 = MEMORY[0x277D85000];
    v13 = (*((*MEMORY[0x277D85000] & *a1) + 0x120))(v14);
    (*((*v12 & *v11) + 0xC0))(v13);
    (*((*v12 & *a1) + 0x108))(v9);
  }
}

uint64_t closure #3 in DOCProgressCollectionListViewController.configureDataSource()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  outlined init with copy of DOCGridLayout.Spec?(a3, v19, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
  outlined init with copy of DOCGridLayout.Spec?(v19, v12, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
  outlined init with copy of DOCGridLayout.Spec?(a4, &v14, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
  if (!v13)
  {
    outlined destroy of CharacterSet?(v19, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
    if (!*(&v15 + 1))
    {
      outlined destroy of CharacterSet?(v12, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
      goto LABEL_8;
    }

LABEL_7:
    outlined destroy of CharacterSet?(v12, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSg_AFtMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSg_AFtMR);
    goto LABEL_8;
  }

  outlined init with copy of DOCGridLayout.Spec?(v12, v11, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
  if (!*(&v15 + 1))
  {
    outlined destroy of CharacterSet?(v19, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
    outlined destroy of CharacterSet?(v11, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
    goto LABEL_7;
  }

  v10[2] = v16;
  v10[3] = v17;
  v10[4] = v18;
  v10[0] = v14;
  v10[1] = v15;
  MEMORY[0x24C1FC430](v11, v10);
  outlined destroy of CharacterSet?(v10, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
  outlined destroy of CharacterSet?(v19, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
  outlined destroy of CharacterSet?(v11, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
  outlined destroy of CharacterSet?(v12, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
LABEL_8:
  outlined init with copy of DOCSidebarItemIconProvider(a3 + 40, v12);
  type metadata accessor for DOCProgressCollectionListCell(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pMd, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pMR);
  v8 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  outlined destroy of CharacterSet?(v12, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMd, &_s26DocumentManagerExecutables29DOCProgressProvidingOperation_pSgMR);
  return v8;
}

void DOCProgressCollectionListViewController.reloadFromSourceIfNecessary(itemIdentifiersToForceDrop:animate:)(uint64_t a1, int a2)
{
  v130 = a2;
  *&v139 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v127 = *(v3 - 8);
  v128 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v125 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for DispatchQoS();
  v124 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v6);
  v129 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v132 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v113 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables21DOCDiffableIdentifierVySSGAFyAD29DOCProgressProvidingOperation_pGGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables21DOCDiffableIdentifierVySSGAFyAD29DOCProgressProvidingOperation_pGGMR);
  v133 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v113 - v22;
  v24 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_reloadGuardian;
  v25 = v2;
  v26 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_reloadGuardian);
  swift_beginAccess();
  if (*(*(v26 + 16) + 16))
  {
    LOBYTE(v27) = 1;
LABEL_3:
    *(v26 + 24) = v27;
    return;
  }

  v138 = v23;
  v119 = v8;
  v120 = v11;
  v123 = v19;
  v117 = v24;
  v131 = v16;
  v115 = v15;
  v28 = *(v25 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_source + 8);
  ObjectType = swift_getObjectType();
  v30 = (*(v28 + 8))(ObjectType, v28);
  v31 = *(v30 + 16);
  v121 = v30;
  if (v31)
  {
    v32 = v30;
    v150 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v33 = v150;
    v34 = v32 + 32;
    v35 = v133;
    do
    {
      outlined init with copy of DOCSidebarItemIconProvider(v34, &v140);
      v36 = *(&v141 + 1);
      v37 = v142;
      __swift_project_boxed_opaque_existential_1(&v140, *(&v141 + 1));
      (*(v37 + 8))(&v145, v36, v37);
      __swift_destroy_boxed_opaque_existential_0(&v140);
      v150 = v33;
      v39 = *(v33 + 16);
      v38 = *(v33 + 24);
      if (v39 >= v38 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
        v33 = v150;
      }

      *(v33 + 16) = v39 + 1;
      v40 = v33 + 40 * v39;
      v41 = v145;
      v42 = v146;
      *(v40 + 64) = v147;
      *(v40 + 32) = v41;
      *(v40 + 48) = v42;
      v34 += 40;
      --v31;
    }

    while (v31);
    v137 = v33;
  }

  else
  {
    v137 = MEMORY[0x277D84F90];
    v35 = v133;
  }

  v43 = specialized _arrayForceCast<A, B>(_:)(v139);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDiffableIdentifierVyAC29DOCProgressProvidingOperation_pGSgGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDiffableIdentifierVyAC29DOCProgressProvidingOperation_pGSgGMR);
  inited = swift_initStackObject();
  v139 = xmmword_249B9A480;
  inited[1] = xmmword_249B9A480;
  v45 = v138;
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v46 = type metadata accessor for DOCProgressCollectionListViewController.NullProgress(0);
    v47 = __swift_project_value_buffer(v46, static DOCProgressCollectionListViewController.NullProgress.shared);
    outlined init with copy of DOCGridLayout.Spec?(v47, (inited + 2), &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
    *&v145 = v43;
    specialized Array.append<A>(contentsOf:)(inited);
    v122 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_diffable;
    v48 = *(v25 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_diffable);
    if (!v48)
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v114 = v47;
    v49 = v25;
    v134 = v145;
    v50 = v48;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    v51 = v131;
    v43 = v45;
    inited = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
    v52 = v35[1];
    v133 = v35 + 1;
    v116 = v52;
    v52(v45, v51);
    v53 = *(inited + 2);
    if (!v53)
    {
      break;
    }

    v54 = 0;
    v138 = (inited + 2);
    v136 = v137 + 32;
    v135 = MEMORY[0x277D84F90];
    v35 = &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd;
    v25 = _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR;
    while (v54 < *(inited + 2))
    {
      outlined init with copy of DOCGridLayout.Spec?(v138 + 80 * v54, &v145, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
      v56 = *(&v149 + 1);
      v55 = v149;
      __swift_project_boxed_opaque_existential_1(&v147 + 1, v149);
      v43 = (*(v56 + 24))(v55, v56);
      v45 = [v43 isCancelled];

      if (v45)
      {
        goto LABEL_15;
      }

      v57 = *(&v149 + 1);
      v45 = v149;
      __swift_project_boxed_opaque_existential_1(&v147 + 1, v149);
      (*(v57 + 8))(&v140, v45, v57);
      v58 = v136;
      v43 = *(v137 + 16) + 1;
      while (--v43)
      {
        v45 = v58 + 40;
        v59 = MEMORY[0x24C1FC430]();
        v58 = v45;
        if (v59)
        {
          outlined destroy of AnyHashable(&v140);
          goto LABEL_15;
        }
      }

      outlined destroy of AnyHashable(&v140);
      outlined init with copy of DOCGridLayout.Spec?(&v145, &v140, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
      v43 = specialized Sequence<>.contains(_:)(&v140, v134);
      outlined destroy of CharacterSet?(&v140, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
      if (v43)
      {
LABEL_15:
        outlined destroy of CharacterSet?(&v145, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
      }

      else
      {
        v142 = v147;
        v143 = v148;
        v144 = v149;
        v140 = v145;
        v141 = v146;
        v43 = v135;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v150 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 16) + 1, 1);
          v43 = v150;
        }

        v62 = *(v43 + 16);
        v61 = *(v43 + 24);
        v45 = v62 + 1;
        if (v62 >= v61 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
          v43 = v150;
        }

        *(v43 + 16) = v45;
        v135 = v43;
        v63 = (v43 + 80 * v62);
        v63[2] = v140;
        v64 = v141;
        v65 = v142;
        v66 = v144;
        v63[5] = v143;
        v63[6] = v66;
        v63[3] = v64;
        v63[4] = v65;
      }

      if (++v54 == v53)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_58:
    swift_once();
  }

  v135 = MEMORY[0x277D84F90];
LABEL_30:

  if (!*(v49 + v122))
  {
    goto LABEL_60;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCDiffableIdentifierVySSGMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVySSGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type DOCDiffableIdentifier<String> and conformance DOCDiffableIdentifier<A>, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVySSGMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVySSGMR, &protocol conformance descriptor for DOCDiffableIdentifier<A>);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type DOCDiffableIdentifier<DOCProgressProvidingOperation> and conformance DOCDiffableIdentifier<A>, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR, &protocol conformance descriptor for DOCDiffableIdentifier<A>);
  v67 = v123;
  NSDiffableDataSourceSnapshot.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDiffableIdentifierVySSGGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDiffableIdentifierVySSGGMR);
  v68 = swift_allocObject();
  *(v68 + 16) = v139;
  *&v145 = 0x746365536E69616DLL;
  *(&v145 + 1) = 0xEB000000006E6F69;
  AnyHashable.init<A>(_:)();
  *(v68 + 72) = 0x746365536E69616DLL;
  *(v68 + 80) = 0xEB000000006E6F69;
  NSDiffableDataSourceSnapshot.appendSections(_:)(v68);

  v69 = v135;
  v70 = *(v135 + 16);
  v71 = MEMORY[0x277D84F90];
  v118 = v49;
  v136 = v70;
  if (v70)
  {
    v150 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70, 0);
    v71 = v150;
    v72 = v69 + 32;
    v73 = v70;
    do
    {
      outlined init with copy of DOCGridLayout.Spec?(v72, &v145, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
      outlined init with copy of DOCSidebarItemIconProvider(&v147 + 8, &v140);
      outlined destroy of CharacterSet?(&v145, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
      v150 = v71;
      v75 = *(v71 + 16);
      v74 = *(v71 + 24);
      if (v75 >= v74 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1);
      }

      v76 = *(&v141 + 1);
      v77 = v142;
      v78 = __swift_mutable_project_boxed_opaque_existential_1(&v140, *(&v141 + 1));
      v79 = MEMORY[0x28223BE20](v78, v78);
      v81 = &v113 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v82 + 16))(v81, v79);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v75, v81, &v150, v76, v77);
      __swift_destroy_boxed_opaque_existential_0(&v140);
      v71 = v150;
      v72 += 80;
      --v73;
    }

    while (v73);
    v83 = v118;
    v67 = v123;
  }

  else
  {
    v83 = v49;
  }

  *&v145 = v121;

  specialized Array.append<A>(contentsOf:)(v71);
  v138 = v145;

  inited = 0;
  specialized MutableCollection<>.sort(by:)(&v145);
  v84 = v132;
  v85 = v120;
  v86 = *(v145 + 16);
  if (v86)
  {
    v113 = v145;
    v87 = v145 + 32;
    v88 = v67;
    do
    {
      outlined init with copy of DOCSidebarItemIconProvider(v87, &v140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDiffableIdentifierVyAC29DOCProgressProvidingOperation_pGGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDiffableIdentifierVyAC29DOCProgressProvidingOperation_pGGMR);
      v89 = swift_allocObject();
      *(v89 + 16) = v139;
      inited = *(&v141 + 1);
      v90 = v142;
      __swift_project_boxed_opaque_existential_1(&v140, *(&v141 + 1));
      (*(v90 + 8))(inited, v90);
      outlined init with copy of DOCSidebarItemIconProvider(&v140, v89 + 72);
      *&v148 = 0;
      v146 = 0u;
      v147 = 0u;
      v145 = 0u;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

      outlined destroy of CharacterSet?(&v145, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVySSGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVySSGSgMR);
      __swift_destroy_boxed_opaque_existential_0(&v140);
      v87 += 40;
      --v86;
    }

    while (v86);

    v84 = v132;
    v67 = v88;
    v83 = v118;
    v85 = v120;
  }

  else
  {
  }

  v91 = *(v138 + 16);
  v92 = v129;
  if (!v91)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDiffableIdentifierVyAC29DOCProgressProvidingOperation_pGGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDiffableIdentifierVyAC29DOCProgressProvidingOperation_pGGMR);
    inited = swift_allocObject();
    inited[1] = v139;
    outlined init with copy of DOCGridLayout.Spec?(v114, &v145, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
    if (*(&v146 + 1))
    {
      v93 = v146;
      v94 = v148;
      v95 = v149;
      inited[4] = v147;
      inited[5] = v94;
      inited[6] = v95;
      inited[2] = v145;
      inited[3] = v93;
      *&v148 = 0;
      v146 = 0u;
      v147 = 0u;
      v145 = 0u;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

      outlined destroy of CharacterSet?(&v145, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVySSGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVySSGSgMR);
      goto LABEL_46;
    }

LABEL_63:
    __break(1u);

    __break(1u);
    return;
  }

LABEL_46:
  v96 = *(v83 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_isDisplayingProgress);
  v97 = v91 != 0;
  *(v83 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_isDisplayingProgress) = v97;
  if (v97 == v96)
  {
    v99 = v119;
    goto LABEL_51;
  }

  v98 = [v83 view];
  v99 = v119;
  if (!v98)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v100 = v98;
  inited = [v98 window];

  if (inited)
  {
  }

LABEL_51:
  v101 = *(v83 + v122);
  if (!v101)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v102 = v101;

  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  if (v136)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v138 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v103 = v115;
    + infix(_:_:)();
    v104 = *(v84 + 8);
    v132 = v84 + 8;
    *&v139 = v104;
    v104(v85, v99);
    v105 = swift_allocObject();
    v106 = v135;
    *(v105 + 16) = v83;
    *(v105 + 24) = v106;
    *&v147 = partial apply for closure #6 in DOCProgressCollectionListViewController.reloadFromSourceIfNecessary(itemIdentifiersToForceDrop:animate:);
    *(&v147 + 1) = v105;
    *&v145 = MEMORY[0x277D85DD0];
    *(&v145 + 1) = 1107296256;
    *&v146 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v146 + 1) = &block_descriptor_81_1;
    v107 = _Block_copy(&v145);
    v108 = v83;

    static DispatchQoS.unspecified.getter();
    *&v145 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DOCProgressCollectionListViewController.NullProgress and conformance DOCProgressCollectionListViewController.NullProgress(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v109 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v110 = v125;
    v111 = v128;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v112 = v138;
    MEMORY[0x24C1FB940](v103, v92, v110, v107);
    _Block_release(v107);

    (*(v127 + 8))(v110, v111);
    v83 = v109;
    (*(v124 + 8))(v92, v126);
    (v139)(v103, v119);
    v116(v123, v131);
  }

  else
  {
    v116(v67, v131);
  }

  v26 = *(v83 + v117);
  swift_beginAccess();
  v27 = *(*(v26 + 16) + 16);
  if (!v27)
  {
    goto LABEL_3;
  }
}

uint64_t DOCProgressCollectionListViewController.NullProgress.init()@<X0>(_OWORD *a1@<X8>)
{
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  strcpy(v8, "NullProgress");
  BYTE5(v8[1]) = 0;
  HIWORD(v8[1]) = -5120;
  AnyHashable.init<A>(_:)();
  v2 = type metadata accessor for DOCProgressCollectionListViewController.NullProgress(0);
  static Date.distantPast.getter();
  v3 = *(v2 + 28);
  *(a1 + v3) = [objc_allocWithZone(MEMORY[0x277CCAC48]) init];
  static UTType.data.getter();
  type metadata accessor for DOCProgressProvidingOperationIconType(0);
  swift_storeEnumTagMultiPayload();
  v10 = v2;
  v11 = &protocol witness table for DOCProgressCollectionListViewController.NullProgress;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  outlined init with copy of DOCProgressProvidingOperationIconType(a1, boxed_opaque_existential_1, type metadata accessor for DOCProgressCollectionListViewController.NullProgress);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (v6[1])(v8, v5, v6);
  return outlined assign with take of DOCDiffableIdentifier<DOCProgressProvidingOperation>?(v8, a1);
}

void DOCProgressCollectionListViewController.NullProgress.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DOCProgressProvidingOperationIconType(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(v1, &v14, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
  if (*(&v15 + 1))
  {
    v13[2] = v16;
    v13[3] = v17;
    v13[4] = v18;
    v13[0] = v14;
    v13[1] = v15;
    Hasher._combine(_:)(1u);
    AnyHashable.hash(into:)();
    outlined destroy of CharacterSet?(v13, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  AnyHashable.hash(into:)();
  v11 = type metadata accessor for DOCProgressCollectionListViewController.NullProgress(0);
  type metadata accessor for Date();
  lazy protocol witness table accessor for type DOCProgressCollectionListViewController.NullProgress and conformance DOCProgressCollectionListViewController.NullProgress(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  dispatch thunk of Hashable.hash(into:)();
  NSObject.hash(into:)();
  outlined init with copy of DOCProgressProvidingOperationIconType(v1 + *(v11 + 32), v10, type metadata accessor for DOCProgressProvidingOperationIconType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x24C1FCBD0](2);
      String.hash(into:)();
    }

    else
    {
      MEMORY[0x24C1FCBD0](0);
    }
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x24C1FCBD0](1);
    lazy protocol witness table accessor for type DOCProgressCollectionListViewController.NullProgress and conformance DOCProgressCollectionListViewController.NullProgress(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578], MEMORY[0x277D85588]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }
}

Swift::Int DOCProgressCollectionListViewController.NullProgress.hashValue.getter()
{
  v1 = type metadata accessor for UTType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DOCProgressProvidingOperationIconType(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  outlined init with copy of DOCGridLayout.Spec?(v0, &v14, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
  if (*(&v15 + 1))
  {
    v13[2] = v16;
    v13[3] = v17;
    v13[4] = v18;
    v13[1] = v15;
    v13[0] = v14;
    Hasher._combine(_:)(1u);
    AnyHashable.hash(into:)();
    outlined destroy of CharacterSet?(v13, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  AnyHashable.hash(into:)();
  v10 = type metadata accessor for DOCProgressCollectionListViewController.NullProgress(0);
  type metadata accessor for Date();
  lazy protocol witness table accessor for type DOCProgressCollectionListViewController.NullProgress and conformance DOCProgressCollectionListViewController.NullProgress(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  dispatch thunk of Hashable.hash(into:)();
  NSObject.hash(into:)();
  outlined init with copy of DOCProgressProvidingOperationIconType(v0 + *(v10 + 32), v9, type metadata accessor for DOCProgressProvidingOperationIconType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x24C1FCBD0](2);
      String.hash(into:)();
    }

    else
    {
      MEMORY[0x24C1FCBD0](0);
    }
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x24C1FCBD0](1);
    lazy protocol witness table accessor for type DOCProgressCollectionListViewController.NullProgress and conformance DOCProgressCollectionListViewController.NullProgress(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578], MEMORY[0x277D85588]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCProgressCollectionListViewController.NullProgress(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DOCProgressProvidingOperationIconType(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  outlined init with copy of DOCGridLayout.Spec?(v2, &v16, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
  if (*(&v17 + 1))
  {
    v15[2] = v18;
    v15[3] = v19;
    v15[4] = v20;
    v15[1] = v17;
    v15[0] = v16;
    Hasher._combine(_:)(1u);
    AnyHashable.hash(into:)();
    outlined destroy of CharacterSet?(v15, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  AnyHashable.hash(into:)();
  type metadata accessor for Date();
  lazy protocol witness table accessor for type DOCProgressCollectionListViewController.NullProgress and conformance DOCProgressCollectionListViewController.NullProgress(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  dispatch thunk of Hashable.hash(into:)();
  NSObject.hash(into:)();
  outlined init with copy of DOCProgressProvidingOperationIconType(v2 + *(a2 + 32), v12, type metadata accessor for DOCProgressProvidingOperationIconType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x24C1FCBD0](2);
      String.hash(into:)();
    }

    else
    {
      MEMORY[0x24C1FCBD0](0);
    }
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    MEMORY[0x24C1FCBD0](1);
    lazy protocol witness table accessor for type DOCProgressCollectionListViewController.NullProgress and conformance DOCProgressCollectionListViewController.NullProgress(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578], MEMORY[0x277D85588]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v8, v4);
  }

  return Hasher._finalize()();
}

id DOCProgressCollectionListViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void DOCProgressCollectionListViewController.__ivar_destroyer()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_cancelAccessoryDisplayedState;
  v2 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_diffable);
}

id DOCProgressCollectionListViewController.ProgressListingView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t DOCUpdateGuardian.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void specialized Set._Variant.remove(_:)(uint64_t a1@<X0>, int64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = *v4;
  Hasher.init(_seed:)();
  v24 = a3;
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v9 = 3;
      }

      else
      {
        v9 = 4;
      }

      goto LABEL_20;
    }

    if (!a2)
    {
      v9 = 0;
      goto LABEL_20;
    }

    if (a2 == 1)
    {
      v9 = 2;
      goto LABEL_20;
    }

LABEL_63:
    MEMORY[0x24C1FCBD0](1);
    String.hash(into:)();
    goto LABEL_21;
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      v9 = 5;
    }

    else
    {
      v9 = 6;
    }

    goto LABEL_20;
  }

  if (a2 == 6)
  {
    v9 = 7;
    goto LABEL_20;
  }

  if (a2 == 7)
  {
    v9 = 8;
    goto LABEL_20;
  }

  if (a2 != 8)
  {
    goto LABEL_63;
  }

  v9 = 9;
LABEL_20:
  MEMORY[0x24C1FCBD0](v9);
LABEL_21:
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_62:
    *v24 = xmmword_249BB7D40;
    return;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = (*(v8 + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    if (v16 <= 3)
    {
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          if (a2 == 2)
          {
            v20 = *v14;
            v21 = 2;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a1, a2);
          v17 = 2;
        }

        else
        {
          if (a2 == 3)
          {
            v20 = *v14;
            v21 = 3;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a1, a2);
          v17 = 3;
        }

        goto LABEL_53;
      }

      if (!v16)
      {
        if (!a2)
        {
          v20 = *v14;
          v21 = 0;
          goto LABEL_74;
        }

        outlined copy of ColumnType(a1, a2);
        v17 = 0;
        goto LABEL_53;
      }

      if (v16 == 1)
      {
        if (a2 == 1)
        {
          v20 = *v14;
          v21 = 1;
          goto LABEL_74;
        }

        outlined copy of ColumnType(a1, a2);
        v17 = 1;
        goto LABEL_53;
      }
    }

    else
    {
      if (v16 <= 5)
      {
        if (v16 == 4)
        {
          if (a2 == 4)
          {
            v20 = *v14;
            v21 = 4;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a1, a2);
          v17 = 4;
        }

        else
        {
          if (a2 == 5)
          {
            v20 = *v14;
            v21 = 5;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a1, a2);
          v17 = 5;
        }

        goto LABEL_53;
      }

      switch(v16)
      {
        case 6:
          if (a2 == 6)
          {
            v20 = *v14;
            v21 = 6;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a1, a2);
          v17 = 6;
          goto LABEL_53;
        case 7:
          if (a2 == 7)
          {
            v20 = *v14;
            v21 = 7;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a1, a2);
          v17 = 7;
          goto LABEL_53;
        case 8:
          if (a2 == 8)
          {
            v20 = *v14;
            v21 = 8;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a1, a2);
          v17 = 8;
          goto LABEL_53;
      }
    }

    if (a2 < 9)
    {
      outlined copy of ColumnType(a1, a2);
      outlined copy of ColumnType(v15, v16);
      v17 = v16;
LABEL_53:
      outlined consume of ColumnType(v15, v17);
      outlined consume of ColumnType(a1, a2);
      goto LABEL_54;
    }

    if (v15 == a1 && v16 == a2)
    {
      break;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of ColumnType(a1, a2);
    outlined copy of ColumnType(v15, v16);
    outlined consume of ColumnType(v15, v16);
    outlined consume of ColumnType(a1, a2);
    if (v19)
    {
      goto LABEL_75;
    }

LABEL_54:
    v12 = (v12 + 1) & v13;
    if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  outlined copy of ColumnType(a1, a2);
  outlined copy of ColumnType(a1, a2);
  v20 = a1;
  v21 = a2;
LABEL_74:
  outlined consume of ColumnType(v20, v21);
  outlined consume of ColumnType(a1, a2);
LABEL_75:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v4;
  v25 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v23 = v25;
  }

  *v24 = *(*(v23 + 48) + 16 * v12);
  specialized _NativeSet._delete(at:)(v12);
  *v4 = v25;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (1)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
    {
      break;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      goto LABEL_11;
    }

    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v18 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v16 = v18;
  }

  v14 = *(*(v16 + 48) + 8 * v6);
  specialized _NativeSet._delete(at:)(v6);
  *v2 = v18;
  return v14;
}

uint64_t specialized Set._Variant.remove(_:)(char a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 2;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != (a1 & 1))
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 2;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  specialized _NativeSet._delete(at:)(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *v1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 6;
  }

  v24 = v1;
  v8 = ~v6;
  v9 = a1;
  while (1)
  {
    v10 = *(*(v4 + 48) + v7);
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        v11 = 0x6E6F697461636F6CLL;
        v12 = 0xE900000000000073;
      }

      else
      {
        if (v10 == 4)
        {
          v11 = 0x73726576726573;
        }

        else
        {
          v11 = 1936154996;
        }

        if (v10 == 4)
        {
          v12 = 0xE700000000000000;
        }

        else
        {
          v12 = 0xE400000000000000;
        }
      }
    }

    else if (*(*(v4 + 48) + v7))
    {
      if (v10 == 1)
      {
        v11 = 0x796C746E65636572;
      }

      else
      {
        v11 = 0x657469726F766166;
      }

      if (v10 == 1)
      {
        v12 = 0xEC00000064657355;
      }

      else
      {
        v12 = 0xE900000000000073;
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      v11 = 7368564;
    }

    v13 = 0x73726576726573;
    if (v9 != 4)
    {
      v13 = 1936154996;
    }

    v14 = 0xE700000000000000;
    if (v9 != 4)
    {
      v14 = 0xE400000000000000;
    }

    if (v9 == 3)
    {
      v13 = 0x6E6F697461636F6CLL;
      v14 = 0xE900000000000073;
    }

    v15 = 0x796C746E65636572;
    if (v9 != 1)
    {
      v15 = 0x657469726F766166;
    }

    v16 = 0xEC00000064657355;
    if (v9 != 1)
    {
      v16 = 0xE900000000000073;
    }

    if (!v9)
    {
      v15 = 7368564;
      v16 = 0xE300000000000000;
    }

    v17 = v9 <= 2 ? v15 : v13;
    v18 = v9 <= 2 ? v16 : v14;
    if (v11 == v17 && v12 == v18)
    {
      break;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_44;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 6;
    }
  }

LABEL_44:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v2;
  v25 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v22 = v25;
  }

  v20 = *(*(v22 + 48) + v7);
  specialized _NativeSet._delete(at:)(v7);
  *v24 = v25;
  return v20;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  specialized _NativeSet._delete(at:)(v8);
  *v2 = v16;
  return v12;
}

void specialized Set._Variant.remove(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1(a1 + 1, a1[4]);
  dispatch thunk of Hashable.hash(into:)();
  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      outlined init with copy of DOCIdentityHashableLocation(*(v4 + 48) + 56 * v7, v17);
      Hasher.init(_seed:)();
      __swift_project_boxed_opaque_existential_1(v18, v18[3]);
      dispatch thunk of Hashable.hash(into:)();
      v9 = Hasher._finalize()();
      Hasher.init(_seed:)();
      __swift_project_boxed_opaque_existential_1(a1 + 1, a1[4]);
      dispatch thunk of Hashable.hash(into:)();
      v10 = Hasher._finalize()();
      outlined destroy of DOCIdentityHashableLocation(v17);
      if (v9 == v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v15;
    v19 = *v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v12 = v19;
    }

    v13 = *(v12 + 48) + 56 * v7;
    v14 = *(v13 + 16);
    *a2 = *v13;
    *(a2 + 16) = v14;
    *(a2 + 32) = *(v13 + 32);
    *(a2 + 48) = *(v13 + 48);
    specialized _NativeSet._delete(at:)(v7);
    *v15 = v19;
  }

  else
  {
LABEL_5:
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }
}

uint64_t specialized Set._Variant.remove(_:)(void *a1)
{
  return specialized Set._Variant.remove(_:)(a1, &lazy cache variable for type metadata for UITouch, 0x277D75C68, specialized _NativeSet.copy(), _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo7UITouchC_Tt1g5);
}

{
  return specialized Set._Variant.remove(_:)(a1, &lazy cache variable for type metadata for FINode, 0x277D04700, specialized _NativeSet.copy(), _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo6FINodeC_Tt1g5);
}

{
  return specialized Set._Variant.remove(_:)(a1, &lazy cache variable for type metadata for DOCTag, 0x277D06260, specialized _NativeSet.copy(), _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo6DOCTagC_Tt1g5);
}

void specialized Set._Variant.remove(_:)(uint64_t a1@<X8>)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  DOCSidebarItem.hashComparableValue.getter();
  String.hash(into:)();

  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  v7 = 0uLL;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v8 = ~v5;
    while (1)
    {
      v9 = (*(v3 + 48) + 48 * v6);
      v10 = *(v9 + 25);
      v11 = v9[1];
      v26 = *v9;
      v27[0] = v11;
      *(v27 + 9) = v10;
      outlined init with copy of DOCSidebarItem(&v26, v25);
      v12 = DOCSidebarItem.hashComparableValue.getter();
      v14 = v13;
      if (v12 == DOCSidebarItem.hashComparableValue.getter() && v14 == v15)
      {
        break;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined destroy of DOCSidebarItem(&v26);
      if (v16)
      {
        goto LABEL_10;
      }

      v6 = (v6 + 1) & v8;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        v17 = 0;
        v18 = -1;
        v19 = 0uLL;
        v7 = 0uLL;
        goto LABEL_13;
      }
    }

    outlined destroy of DOCSidebarItem(&v26);
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v1;
    v25[0] = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v21 = v25[0];
    }

    v22 = *(v21 + 48) + 48 * v6;
    v23 = *(v22 + 16);
    v24 = *v22;
    v17 = *(v22 + 32);
    v18 = *(v22 + 40);
    specialized _NativeSet._delete(at:)(v6);
    v19 = v23;
    v7 = v24;
    *v1 = v25[0];
  }

  else
  {
    v17 = 0;
    v18 = -1;
    v19 = 0uLL;
  }

LABEL_13:
  *a1 = v7;
  *(a1 + 16) = v19;
  *(a1 + 32) = v17;
  *(a1 + 40) = v18;
}

uint64_t specialized Set._Variant.remove(_:)(void *a1, unint64_t *a2, void *a3, void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v11 = *v5;
    }

    else
    {
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = a1;
    v13 = __CocoaSet.contains(_:)();

    if (v13)
    {
      v14 = specialized Set._Variant._migrateToNative(_:removing:)(v11, v12, a5, a2, a3);

      return v14;
    }

    return 0;
  }

  v17 = v5;
  type metadata accessor for NSMutableAttributedString(0, a2, a3);
  v18 = NSObject._rawHashValue(seed:)(*(v7 + 40));
  v19 = -1 << *(v7 + 32);
  v20 = v18 & ~v19;
  if (((*(v7 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
    return 0;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v7 + 48) + 8 * v20);
    v23 = static NSObject.== infix(_:_:)();

    if (v23)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v7 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v17;
  v27 = *v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4();
    v25 = v27;
  }

  v26 = *(*(v25 + 48) + 8 * v20);
  specialized _NativeSet._delete(at:)(v20);
  result = v26;
  *v17 = v27;
  return result;
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, void *a5)
{
  v9 = v5;

  v10 = __CocoaSet.count.getter();
  v11 = swift_unknownObjectRetain();
  v12 = a3(v11, v10);
  v22 = v12;
  v13 = *(v12 + 40);

  v14 = NSObject._rawHashValue(seed:)(v13);
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    type metadata accessor for NSMutableAttributedString(0, a4, a5);
    while (1)
    {
      v18 = *(*(v12 + 48) + 8 * v16);
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v20 = *(*(v12 + 48) + 8 * v16);
  specialized _NativeSet._delete(at:)(v16);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v9 = v22;
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized _NativeSet._delete(at:)(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        Hasher.init(_seed:)();
        if (v12 <= 3)
        {
          if (v12 > 1)
          {
            if (v12 == 2)
            {
              v13 = 3;
            }

            else
            {
              v13 = 4;
            }

            goto LABEL_25;
          }

          if (!v12)
          {
            v13 = 0;
            goto LABEL_25;
          }

          if (v12 == 1)
          {
            v13 = 2;
            goto LABEL_25;
          }
        }

        else
        {
          if (v12 <= 5)
          {
            if (v12 == 4)
            {
              v13 = 5;
            }

            else
            {
              v13 = 6;
            }

            goto LABEL_25;
          }

          switch(v12)
          {
            case 6:
              v13 = 7;
              goto LABEL_25;
            case 7:
              v13 = 8;
              goto LABEL_25;
            case 8:
              v13 = 9;
LABEL_25:
              MEMORY[0x24C1FCBD0](v13);
              goto LABEL_26;
          }
        }

        MEMORY[0x24C1FCBD0](1);

        String.hash(into:)();
LABEL_26:
        v14 = Hasher._finalize()();
        outlined consume of ColumnType(v11, v12);
        v15 = v14 & v7;
        if (v2 >= v9)
        {
          if (v15 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v9)
        {
          goto LABEL_31;
        }

        if (v2 >= v15)
        {
LABEL_31:
          v16 = *(v3 + 48);
          v17 = (v16 + 16 * v2);
          v18 = (v16 + 16 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        Hasher.init(_seed:)();
        if (v12 <= 4)
        {
          if (v12 > 1)
          {
            if (v12 == 2)
            {
              v13 = 2;
            }

            else if (v12 == 3)
            {
              v13 = 3;
            }

            else
            {
              v13 = 4;
            }

            goto LABEL_29;
          }

          if (!v12)
          {
            v13 = 0;
            goto LABEL_29;
          }

          if (v12 == 1)
          {
            v13 = 1;
            goto LABEL_29;
          }
        }

        else
        {
          if (v12 <= 7)
          {
            if (v12 == 5)
            {
              v13 = 5;
            }

            else if (v12 == 6)
            {
              v13 = 6;
            }

            else
            {
              v13 = 7;
            }

            goto LABEL_29;
          }

          switch(v12)
          {
            case 8:
              v13 = 8;
              goto LABEL_29;
            case 9:
              v13 = 9;
              goto LABEL_29;
            case 10:
              v13 = 11;
LABEL_29:
              MEMORY[0x24C1FCBD0](v13);
              goto LABEL_30;
          }
        }

        MEMORY[0x24C1FCBD0](10);

        String.hash(into:)();
LABEL_30:
        v14 = Hasher._finalize()();
        outlined consume of DOCItemFileTypeGroupCategory(v11, v12);
        v15 = v14 & v7;
        if (v2 >= v9)
        {
          if (v15 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v9)
        {
          goto LABEL_35;
        }

        if (v2 >= v15)
        {
LABEL_35:
          v16 = *(v3 + 48);
          v17 = (v16 + 16 * v2);
          v18 = (v16 + 16 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        Hasher.init(_seed:)();
        v11 = v10;
        String.hash(into:)();
        v12 = Hasher._finalize()();

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        MEMORY[0x24C1FCBD0](v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        String.hash(into:)();

        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      while (1)
      {
        v10 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        if (v10 == 2)
        {
          v11 = 1;
          goto LABEL_12;
        }

        if (v10 == 3)
        {
          break;
        }

        if (v10 == 4)
        {
          v11 = 3;
LABEL_12:
          MEMORY[0x24C1FCBD0](v11);
          goto LABEL_14;
        }

        MEMORY[0x24C1FCBD0](0);
        Hasher._combine(_:)(v10 & 1);
LABEL_14:
        v12 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v12 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v12 >= v9)
        {
          goto LABEL_19;
        }

        if (v2 >= v12)
        {
LABEL_19:
          v13 = *(v3 + 48);
          v14 = (v13 + v2);
          v15 = (v13 + v6);
          if (v2 != v6 || v14 >= v15 + 1)
          {
            *v14 = *v15;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v11 = 2;
      goto LABEL_12;
    }

LABEL_22:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        outlined init with copy of DOCIdentityHashableLocation(*(v3 + 48) + 56 * v6, v21);
        Hasher.init(_seed:)();
        __swift_project_boxed_opaque_existential_1(v22, v23);
        dispatch thunk of Hashable.hash(into:)();
        v13 = Hasher._finalize()();
        outlined destroy of DOCIdentityHashableLocation(v21);
        v14 = v13 & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = v15 + 56 * v2;
          v17 = (v15 + 56 * v6);
          if (v2 != v6 || v16 >= v17 + 56)
          {
            v10 = *v17;
            v11 = v17[1];
            v12 = v17[2];
            *(v16 + 48) = *(v17 + 6);
            *(v16 + 16) = v11;
            *(v16 + 32) = v12;
            *v16 = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v12 = 48 * v6;
        v13 = (*(v3 + 48) + 48 * v6);
        v15 = *v13;
        v14 = v13[1];
        *(v26 + 9) = *(v13 + 25);
        v25 = v15;
        v26[0] = v14;
        Hasher.init(_seed:)();
        outlined init with copy of DOCSidebarItem(&v25, v24);
        DOCSidebarItem.hashComparableValue.getter();
        String.hash(into:)();

        v16 = Hasher._finalize()();
        outlined destroy of DOCSidebarItem(&v25);
        v17 = v16 & v7;
        if (v2 >= v9)
        {
          if (v17 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v17 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v17)
        {
LABEL_11:
          v18 = *(v3 + 48);
          v19 = (v18 + 48 * v2);
          v20 = (v18 + v12);
          if (48 * v2 < v12 || v19 >= v20 + 3 || v2 != v6)
          {
            v10 = *v20;
            v11 = v20[2];
            v19[1] = v20[1];
            v19[2] = v11;
            *v19 = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        MEMORY[0x24C1FCBD0](0);
        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }
}

uint64_t specialized static DOCProgressCollectionListViewController.NullProgress.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of DOCGridLayout.Spec?(a1, v10, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
  outlined init with copy of DOCGridLayout.Spec?(a2, &v12, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
  if (!v11)
  {
    if (!*(&v13 + 1))
    {
      outlined destroy of CharacterSet?(v10, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
      goto LABEL_7;
    }

LABEL_12:
    outlined destroy of CharacterSet?(v10, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSg_AFtMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSg_AFtMR);
LABEL_13:
    v6 = 0;
    return v6 & 1;
  }

  outlined init with copy of DOCGridLayout.Spec?(v10, v9, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
  if (!*(&v13 + 1))
  {
    outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
    goto LABEL_12;
  }

  v8[2] = v14;
  v8[3] = v15;
  v8[4] = v16;
  v8[0] = v12;
  v8[1] = v13;
  v4 = MEMORY[0x24C1FC430](v9, v8);
  outlined destroy of CharacterSet?(v8, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
  outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
  outlined destroy of CharacterSet?(v10, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
  if ((v4 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((MEMORY[0x24C1FC430](a1 + 80, a2 + 80) & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = type metadata accessor for DOCProgressCollectionListViewController.NullProgress(0);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = specialized static DOCProgressProvidingOperationIconType.== infix(_:_:)(a1 + *(v5 + 32), a2 + *(v5 + 32));
  return v6 & 1;
}

BOOL specialized Set._Variant.remove(_:)()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](0);
  v2 = Hasher._finalize()() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeSet.copy()();
    }

    specialized _NativeSet._delete(at:)(v2);
    *v0 = v6;
  }

  return v3 == 0;
}

uint64_t partial apply for closure #3 in DOCProgressCollectionListViewController.configureDataSource()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_26DocumentManagerExecutables025DOCProgressCollectionListD0CAF0I18ProvidingOperation_pGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_26DocumentManagerExecutables025DOCProgressCollectionListD0CAF0I18ProvidingOperation_pGMR) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 96) & ~v8;
  v10 = v3 + ((*(v7 + 64) + v8 + v9) & ~v8);

  return closure #3 in DOCProgressCollectionListViewController.configureDataSource()(a1, a2, a3, v3 + 16, v3 + v9, v10);
}

unint64_t lazy protocol witness table accessor for type DOCProgressCollectionListViewController.Style and conformance DOCProgressCollectionListViewController.Style()
{
  result = lazy protocol witness table cache variable for type DOCProgressCollectionListViewController.Style and conformance DOCProgressCollectionListViewController.Style;
  if (!lazy protocol witness table cache variable for type DOCProgressCollectionListViewController.Style and conformance DOCProgressCollectionListViewController.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCProgressCollectionListViewController.Style and conformance DOCProgressCollectionListViewController.Style);
  }

  return result;
}

uint64_t type metadata completion function for DOCProgressCollectionListViewController(uint64_t a1)
{
  result = type metadata accessor for UICellAccessory.DisplayedState();
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

void type metadata completion function for DOCProgressCollectionListViewController.NullProgress(uint64_t a1)
{
  type metadata accessor for DOCDiffableIdentifier<DOCProgressProvidingOperation>?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      type metadata accessor for NSMutableAttributedString(319, &lazy cache variable for type metadata for NSProgress, 0x277CCAC48);
      if (v3 <= 0x3F)
      {
        type metadata accessor for DOCProgressProvidingOperationIconType(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for DOCDiffableIdentifier<DOCProgressProvidingOperation>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DOCDiffableIdentifier<DOCProgressProvidingOperation>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for DOCDiffableIdentifier<DOCProgressProvidingOperation>?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DOCUpdateGuardian.UpdatesDisabledReason and conformance DOCUpdateGuardian.UpdatesDisabledReason()
{
  result = lazy protocol witness table cache variable for type DOCUpdateGuardian.UpdatesDisabledReason and conformance DOCUpdateGuardian.UpdatesDisabledReason;
  if (!lazy protocol witness table cache variable for type DOCUpdateGuardian.UpdatesDisabledReason and conformance DOCUpdateGuardian.UpdatesDisabledReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCUpdateGuardian.UpdatesDisabledReason and conformance DOCUpdateGuardian.UpdatesDisabledReason);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DOCProgressCollectionListViewController.NullProgress and conformance DOCProgressCollectionListViewController.NullProgress(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of DOCProgressProvidingOperationIconType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of DOCDiffableIdentifier<DOCProgressProvidingOperation>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void default argument 2 of DOCMetadataFolderSizingViewModel.init(isCloudItem:itemCount:folderSize:)(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
}

__n128 DOCMetadataFolderSizingViewModel.init(isCloudItem:itemCount:folderSize:)@<Q0>(unsigned __int8 a1@<W0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3[1].n128_u64[0];
  v5 = a3[1].n128_u8[8];
  v6 = a3[1].n128_u8[9];
  a4->n128_u8[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  a4[2].n128_u64[0] = v4;
  a4[2].n128_u8[8] = v5;
  a4[2].n128_u8[9] = v6;
  return result;
}

uint64_t DOCMetadataFolderSizingViewModel.sizeText.getter(uint64_t a1)
{
  if ((v1[41] & 1) != 0 || (*(v1 + 6) & 1) != 0 || (v1[40] & 1) != 0 || ((v2 = *(v1 + 2), v3 = *(v1 + 4), v2 != -1) ? (v4 = v3 == -1) : (v4 = 1), v4))
  {
    result = _DocumentManagerBundle();
    if (result)
    {
      v6 = result;
      v7._countAndFlagsBits = 0xD000000000000010;
      v73._object = 0x8000000249BD07E0;
      v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v8.value._object = 0xEB00000000656C62;
      v7._object = 0x8000000249BD07C0;
      v73._countAndFlagsBits = 0xD00000000000004DLL;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v73)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v11 = *v1;
  v12 = *(v1 + 1);
  if (v3 < 0)
  {
    v11 = 0;
  }

  if (v11 == 1)
  {
    v13 = objc_opt_self();
    v14 = [v13 stringFromByteCount:v3 countStyle:0];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if ((v2 & 0x8000000000000000) == 0)
    {
      v18 = [v13 stringFromByteCount:v2 countStyle:0];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      if ((v12 & 0x8000000000000000) == 0)
      {
        result = _DocumentManagerBundle();
        if (result)
        {
          v22 = result;
          v74._object = 0x8000000249BFB720;
          v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v23.value._object = 0xEB00000000656C62;
          v24._object = 0x8000000249BFB650;
          v74._countAndFlagsBits = 0xD00000000000004ELL;
          v24._countAndFlagsBits = 0xD00000000000001DLL;
          v25._countAndFlagsBits = 0;
          v25._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v23, v22, v25, v74);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_249BA08C0;
          v27 = MEMORY[0x277D837D0];
          *(v26 + 56) = MEMORY[0x277D837D0];
          v28 = lazy protocol witness table accessor for type String and conformance String();
          *(v26 + 32) = v19;
          *(v26 + 40) = v21;
          *(v26 + 96) = v27;
          *(v26 + 104) = v28;
          *(v26 + 64) = v28;
          *(v26 + 72) = v15;
          v29 = MEMORY[0x277D83B88];
          *(v26 + 80) = v17;
LABEL_30:
          v54 = MEMORY[0x277D83C10];
          *(v26 + 136) = v29;
          *(v26 + 144) = v54;
          *(v26 + 112) = v12;
          countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();

          goto LABEL_36;
        }

        goto LABEL_40;
      }
    }

    v30 = [objc_opt_self() stringFromByteCount:v3 countStyle:0];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    if ((v12 & 0x8000000000000000) == 0)
    {
      result = _DocumentManagerBundle();
      if (result)
      {
        v34 = result;
        v35._countAndFlagsBits = 0xD00000000000001BLL;
        v75._object = 0x8000000249BFB6D0;
        v36.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v36.value._object = 0xEB00000000656C62;
        v35._object = 0x8000000249BFB6B0;
        v75._countAndFlagsBits = 0xD000000000000041;
        v37._countAndFlagsBits = 0;
        v37._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v35, v36, v34, v37, v75);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_249B9FA70;
        *(v38 + 56) = MEMORY[0x277D837D0];
        v39 = lazy protocol witness table accessor for type String and conformance String();
        *(v38 + 32) = v31;
        *(v38 + 40) = v33;
        v40 = MEMORY[0x277D83C10];
        *(v38 + 96) = MEMORY[0x277D83B88];
        *(v38 + 104) = v40;
        *(v38 + 64) = v39;
        *(v38 + 72) = v12;
        countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();

LABEL_36:

        return countAndFlagsBits;
      }

      goto LABEL_41;
    }
  }

  if (v2 < 0)
  {
    return 11565;
  }

  v41 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  [v41 setAllowedUnits_];
  [v41 setAllowsNonnumericFormatting_];
  v42 = [v41 stringFromByteCount_];
  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  if ((v3 & 0x8000000000000000) == 0)
  {
    v45 = [objc_opt_self() stringFromByteCount:v3 countStyle:0];
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    if ((v12 & 0x8000000000000000) == 0)
    {
      result = _DocumentManagerBundle();
      if (result)
      {
        v48 = result;
        v76._object = 0x8000000249BFB670;
        v49.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v49.value._object = 0xEB00000000656C62;
        v50._object = 0x8000000249BFB650;
        v76._countAndFlagsBits = 0xD00000000000003CLL;
        v50._countAndFlagsBits = 0xD00000000000001DLL;
        v51._countAndFlagsBits = 0;
        v51._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v50, v49, v48, v51, v76);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_249BA08C0;
        v52 = MEMORY[0x277D837D0];
        *(v26 + 56) = MEMORY[0x277D837D0];
        v53 = lazy protocol witness table accessor for type String and conformance String();
        *(v26 + 32) = v72;
        *(v26 + 40) = v44;
        *(v26 + 96) = v52;
        *(v26 + 104) = v53;
        *(v26 + 64) = v53;
        *(v26 + 72) = v71;
        v29 = MEMORY[0x277D83B88];
        *(v26 + 80) = v47;
        goto LABEL_30;
      }

      goto LABEL_42;
    }
  }

  v55 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  [v55 setAllowedUnits_];
  [v55 setAllowsNonnumericFormatting_];
  v56 = [v55 stringFromByteCount_];
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  if (v3 < 0)
  {

    return 11565;
  }

  v60 = [objc_opt_self() stringFromByteCount:v3 countStyle:0];
  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;

  result = _DocumentManagerBundle();
  if (result)
  {
    v64 = result;
    v77._object = 0x8000000249BFB610;
    v65._countAndFlagsBits = 0x6F20402528204025;
    v65._object = 0xEF296B736964206ELL;
    v66.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v66.value._object = 0xEB00000000656C62;
    v77._countAndFlagsBits = 0xD00000000000003FLL;
    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v65, v66, v64, v67, v77);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_249B9FA70;
    v69 = MEMORY[0x277D837D0];
    *(v68 + 56) = MEMORY[0x277D837D0];
    v70 = lazy protocol witness table accessor for type String and conformance String();
    *(v68 + 32) = v57;
    *(v68 + 40) = v59;
    *(v68 + 96) = v69;
    *(v68 + 104) = v70;
    *(v68 + 64) = v70;
    *(v68 + 72) = v61;
    *(v68 + 80) = v63;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();

    goto LABEL_36;
  }

LABEL_43:
  __break(1u);
  return result;
}

BOOL DOCMetadataFolderSizingViewModel.shouldGrayTextOut.getter()
{
  if (*(v0 + 41))
  {
    return 1;
  }

  if (*(v0 + 24))
  {
    return 1;
  }

  if (*(v0 + 40))
  {
    return 1;
  }

  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v5 = v2 == -1 || v3 == -1;
  v7 = v2 < 0 && v3 >= 0;
  if ((*v0 ^ 1))
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v5)
  {
    return v5;
  }

  else
  {
    return v8;
  }
}

uint64_t DOCMetadataFolderSizingViewModel.updateFolderSize(_:)(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

__n128 DOCMetadataFolderSizingViewModel.folderSize.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u64[0];
  v3 = v1[2].n128_u8[8];
  v4 = v1[2].n128_u8[9];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  a1[1].n128_u8[9] = v4;
  return result;
}

__n128 DOCMetadataFolderSizingViewModel.folderSize.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = a1[1].n128_u8[9];
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v2;
  v1[2].n128_u8[8] = v3;
  v1[2].n128_u8[9] = v4;
  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCMetadataFolderSizingViewModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[42])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCMetadataFolderSizingViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void UIDevice.doc_preferredAuthenticationMechanism.getter(char *a1@<X8>)
{
  v3 = MobileGestalt_get_current_device();
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = v3;
  if ((MobileGestalt_get_pearlIDCapability() & 1) == 0)
  {
    if (MobileGestalt_get_touchIDCapability())
    {

      v10 = [objc_opt_self() currentUser];
      v11 = [v10 state];

      v12 = [v11 biometry];
      if (v12)
      {
        v13 = [v12 isEnrolled];

        if (v13)
        {
          v9 = 2;
          goto LABEL_15;
        }
      }
    }

    else
    {
      oysterCapability = MobileGestalt_get_oysterCapability();

      if (oysterCapability)
      {
        v15 = [objc_opt_self() currentUser];
        v16 = [v15 state];

        v17 = [v16 biometry];
        if (v17)
        {
          v18 = [v17 isEnrolled];

          if (v18)
          {
            v9 = 4;
            goto LABEL_15;
          }
        }
      }
    }

LABEL_14:
    v9 = 1;
    goto LABEL_15;
  }

  v5 = [objc_opt_self() currentUser];
  v6 = [v5 state];

  v7 = [v6 biometry];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = [v7 isEnrolled];

  if ((v8 & 1) == 0)
  {
    goto LABEL_14;
  }

  v9 = 3;
LABEL_15:
  *a1 = v9;
}

objc_class *DOCAuthenticationMechanism.localizedDescription.getter(uint64_t a1)
{
  v2 = *v1;
  result = _DocumentManagerBundle();
  v4 = result;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (!result)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v14 = 0x8000000249BFB7F0;
      v6 = 0x64695F6863756F74;
      v7 = 0x617A696C61636F4CLL;
      v8 = 0xEB00000000656C62;
      v9 = 0x4449206863756F54;
    }

    else
    {
      if (v2 == 3)
      {
        if (result)
        {
          v5 = 0xD000000000000038;
          v14 = 0x8000000249BFB7B0;
          v6 = 0x64695F65636166;
          v7 = 0x617A696C61636F4CLL;
          v8 = 0xEB00000000656C62;
          v9 = 0x2044492065636146;
          v10 = 0xE700000000000000;
          v11.super.isa = v4;
          v12 = 0xE800000000000000;
LABEL_16:
          countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, *&v7, v11, *&v9, *&v5)._countAndFlagsBits;

          return countAndFlagsBits;
        }

        goto LABEL_18;
      }

      if (!result)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v14 = 0x8000000249BFB770;
      v6 = 0x64695F726573796FLL;
      v7 = 0x617A696C61636F4CLL;
      v8 = 0xEB00000000656C62;
      v9 = 0x444920636974704FLL;
    }

LABEL_15:
    v10 = 0xE800000000000000;
    v11.super.isa = v4;
    v12 = 0xE800000000000000;
    v5 = 0xD000000000000039;
    goto LABEL_16;
  }

  if (!v2)
  {
    if (result)
    {
      v14 = 0x8000000249BFB870;
      v7 = 0x617A696C61636F4CLL;
      v8 = 0xEB00000000656C62;
      v6 = 1701736302;
      v5 = 0xD000000000000044;
      v10 = 0xE400000000000000;
      v11.super.isa = v4;
      v9 = 1701736270;
      v12 = 0xE400000000000000;
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (result)
  {
    v9 = 0x65646F6373736150;
    v14 = 0x8000000249BFB830;
    v7 = 0x617A696C61636F4CLL;
    v8 = 0xEB00000000656C62;
    v6 = 0x65646F6373736170;
    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
  return result;
}

void static DOCAuthenticationMechanism.current.getter(char *a1@<X8>)
{
  v3 = MobileGestalt_get_current_device();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  if (!MobileGestalt_get_pearlIDCapability())
  {
    if (MobileGestalt_get_touchIDCapability())
    {

      v5 = 2;
      goto LABEL_9;
    }

    oysterCapability = MobileGestalt_get_oysterCapability();

    if (oysterCapability)
    {
      v5 = 4;
      goto LABEL_9;
    }

LABEL_8:
    v5 = 1;
    goto LABEL_9;
  }

  v5 = 3;
LABEL_9:
  *a1 = v5;
}

Swift::Int DOCAuthenticationMechanism.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

id specialized static UIImage.doc_executablesFrameworkImage(named:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x24C1FAD20](0xD000000000000024, 0x8000000249BCF430);
  v5 = [objc_opt_self() bundleWithIdentifier_];

  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = MEMORY[0x24C1FAD20](a1, a2);
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6 compatibleWithTraitCollection:0];

  return v8;
}

unint64_t lazy protocol witness table accessor for type DOCAuthenticationMechanism and conformance DOCAuthenticationMechanism()
{
  result = lazy protocol witness table cache variable for type DOCAuthenticationMechanism and conformance DOCAuthenticationMechanism;
  if (!lazy protocol witness table cache variable for type DOCAuthenticationMechanism and conformance DOCAuthenticationMechanism)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCAuthenticationMechanism and conformance DOCAuthenticationMechanism);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t DOCFileProviderSource.isRootWritable.getter()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v32 - v14;
  v16 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  if (!v16)
  {
    return 0;
  }

  if ([*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain) isReadOnly])
  {
    return 1;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v33 = (v18 + 16);
  v35 = v16;
  v19 = dispatch_semaphore_create(0);
  v36 = v7;
  v20 = v19;
  v34 = [objc_opt_self() defaultManager];
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v20;
  aBlock[4] = partial apply for closure #1 in closure #1 in static DOCFileProviderSource.createSource(from:with:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_156;
  v22 = _Block_copy(aBlock);
  v37 = v18;
  v23 = v35;

  v24 = v20;

  v25 = v34;
  [v34 doc:v23 fetchRootNodeForProviderDomain:v22 completionHandler:?];
  _Block_release(v22);

  static DispatchTime.now()();
  *v5 = 1;
  (*(v2 + 104))(v5, *MEMORY[0x277D85188], v1);
  MEMORY[0x24C1FAA90](v10, v5);
  (*(v2 + 8))(v5, v1);
  v26 = *(v36 + 8);
  v26(v10, v6);
  MEMORY[0x24C1FBB60](v15);
  v26(v15, v6);
  if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) != 0 && (v27 = v33, swift_beginAccess(), *v27))
  {
    v28 = [*v27 isWritable];
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v29 = static DOCLog.UI;
    v30 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_249B9A480;
    *(v31 + 56) = MEMORY[0x277D837D0];
    *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
    strcpy((v31 + 32), "isRootWritable");
    *(v31 + 47) = -18;
    os_log(_:dso:log:type:_:)("%@: Failed to fetch root item", 29, 2, &dword_2493AC000, v29, v30, v31);

    v28 = 0;
  }

  return v28;
}

id DOCSidebarItem.underlyingFPItem.getter()
{
  v1 = *(v0 + 40);
  if (v1 != 3 && v1 != 0)
  {
    return 0;
  }

  v4 = *v0;
  v3 = *v0;
  return v4;
}

BOOL DOCSidebarViewController.canReorderItemsInSection(_:proposedItemToReorder:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x440))();
  v6 = (*(a2 + 72))(v5, ObjectType, a2);
  if ((*(a2 + 56))(ObjectType, a2) & 1) != 0 && (DOCSidebarItem.movable.getter())
  {
    v7 = *(v6 + 16);

    return v7 > 1;
  }

  else
  {

    return 0;
  }
}

void DOCSidebarViewController.commitUpdateItemOrderingInSection(_:newItemOrdering:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v3) + 0x520))();
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    ObjectType = swift_getObjectType();
    v12 = (*(a2 + 16))(ObjectType, a2);
    v13 = *(**(v4 + OBJC_IVAR___DOCSidebarViewController__mutableSectionsData) + 184);

    v14 = v13(v12);

    swift_beginAccess();
    v15 = *(v10 + 16) + 1;
    if (__OFADD__(*(v10 + 16), 1))
    {
      __break(1u);
    }

    else
    {
      *(v10 + 16) = v15;
      if (v15 == 1)
      {
        v16._countAndFlagsBits = 0x655274696D6D6F63;
        v16._object = 0xED0000726564726FLL;
        DOCSidebarViewController.beginDeferReloadsForUIChange(logID:)(v16);
      }

      v17 = (*((*v7 & *v4) + 0x440))();
      v18 = swift_allocObject();
      *(v18 + 16) = v10;
      *(v18 + 24) = v4;
      v19 = *(*v14 + 416);

      v20 = v4;
      v19(a3, v17, v9, partial apply for closure #1 in closure #1 in DOCSidebarViewController.commitUpdateItemOrderingInSection(_:newItemOrdering:), v18);
    }
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log, 0x277D86200);
    v22 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Unexpected nil value for source observer", 40, 2, &dword_2493AC000, v22, v21, MEMORY[0x277D84F90]);
  }
}

uint64_t specialized NSDiffableDataSourceSnapshot<>.indexPathForAppendingItem(toSection:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  v5 = NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  if (v6)
  {
    v7 = 1;
LABEL_8:
    v15 = type metadata accessor for IndexPath();
    return (*(*(v15 - 8) + 56))(a3, v7, 1, v15);
  }

  v8 = v5;
  ObjectType = swift_getObjectType();
  v10 = *(a2 + 64);
  v16 = v10(ObjectType, a2) & 1;
  NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = NSDiffableDataSourceSnapshot.numberOfItems(inSection:)();
    v12 = v13 - (v10(ObjectType, a2) & (v13 > 0));
  }

  result = v12 + v16;
  if (!__OFADD__(v12, v16))
  {
    MEMORY[0x24C1F80E0](result, v8);
    v7 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t DOCSidebarDropProposal.debugInfo.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(21);
  type metadata accessor for IndexPath();
  _s10Foundation9IndexPathVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();

  MEMORY[0x24C1FAEA0](0x28746E65746E6920, 0xE800000000000000);
  v3 = [v1 intent];
  v4 = 1061109567;
  if (v3 == 2)
  {
    v4 = 1330925129;
  }

  if (v3 == 1)
  {
    v5 = 710164778;
  }

  else
  {
    v5 = v4;
  }

  MEMORY[0x24C1FAEA0](v5, 0xE400000000000000);

  v6 = 0xE600000000000000;
  MEMORY[0x24C1FAEA0](0x28706F202C29, 0xE600000000000000);
  v7 = [v1 operation];
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v6 = 0xE400000000000000;
      v8 = 2037411651;
      goto LABEL_16;
    }

    if (v7 == 3)
    {
      v6 = 0xE400000000000000;
      v8 = 1702260557;
      goto LABEL_16;
    }

LABEL_13:
    v6 = 0x8000000249BEF570;
    v8 = 0xD000000000000014;
    goto LABEL_16;
  }

  if (!v7)
  {
    v8 = 0x6C65636E6143;
    goto LABEL_16;
  }

  if (v7 != 1)
  {
    goto LABEL_13;
  }

  v6 = 0xE90000000000006ELL;
  v8 = 0x6564646962726F46;
LABEL_16:
  MEMORY[0x24C1FAEA0](v8, v6);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  return v2;
}

Swift::Void __swiftcall DOCSidebarViewController.configureForHandlingDragAndDrop()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DOCSidebarViewController(0);
  v1 = objc_msgSendSuper2(&v3, sel_collectionView);
  if (v1)
  {
    v2 = v1;
    [v1 setDropDelegate_];
    [v2 setSpringLoaded_];
  }
}

uint64_t UIDropOperation.debugInfo.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 1702260557;
      }

      return 0xD000000000000014;
    }

    return 2037411651;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6564646962726F46;
      }

      return 0xD000000000000014;
    }

    return 0x6C65636E6143;
  }
}

BOOL UIDropSession.hasDOCNode(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    swift_unknownObjectRetain();
    static UTType.item.getter();
    v11 = specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(v2, v9, v10, a2);
    (*(v6 + 8))(v9, v5);
    swift_getObjectType();
    v12 = swift_unknownObjectRetain();
    v13 = specialized Array<A>.contains(node:)(v12, v11);

    swift_unknownObjectRelease_n();
  }

  else
  {
    return 0;
  }

  return v13;
}

double DOCSidebarViewController.collectionView(_:targetIndexPathForMoveFromItemAt:toProposedIndexPath:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v29 - v13;
  if ([a1 _hasActiveDrop])
  {
    DOCSidebarViewController.dropReorderTargetIndexPathForMoveFromItemAt(_:toProposedIndexPath:)(a3, a4);
    v15 = 0xE400000000000000;
    v16 = 1886351972;
  }

  else
  {
    DOCSidebarViewController.reorderTargetIndexPathForMoveFromItemAt(_:toProposedIndexPath:)(a2, a4);
    v15 = 0xE700000000000000;
    v16 = 0x726564726F6572;
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  MEMORY[0x24C1FAEA0](0x6F46746567726174, 0xEF5B2065766F4D72);
  MEMORY[0x24C1FAEA0](v16, v15);

  MEMORY[0x24C1FAEA0](0x203A6D6F7266205DLL, 0xE800000000000000);
  v17 = type metadata accessor for IndexPath();
  _s10Foundation9IndexPathVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v18);

  MEMORY[0x24C1FAEA0](0x203A6F74202CLL, 0xE600000000000000);
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v19);

  MEMORY[0x24C1FAEA0](0x75746572202D2D20, 0xEE0020676E696E72);
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v20);

  v21 = v29;
  v22 = v30;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v23 = *(*static DOCSidebarViewController.dbg.shared + 152);

  v23(0xD000000000000015, 0x8000000249BFB8F0, v21, v22);

  v25 = (*((*MEMORY[0x277D85000] & *v5) + 0x3D8))(v24);
  if (v25)
  {
    v27 = *(v25 + 32);

    v28 = *(v17 - 8);
    (*(v28 + 16))(v14, a4, v17);
    (*(v28 + 56))(v14, 0, 1, v17);
    (*(*v27 + 104))(v14);
  }

  return result;
}

uint64_t DOCSidebarViewController.reorderTargetIndexPathForMoveFromItemAt(_:toProposedIndexPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (IndexPath.row.getter())
  {
    v9 = IndexPath.row.getter();
  }

  else
  {
    v9 = 1;
  }

  v10 = IndexPath.section.getter();
  MEMORY[0x24C1F80E0](v9, v10);
  if (!DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(a1, 0))
  {
    (*(v5 + 8))(v8, v4);
    return (*(v5 + 16))(a2, a1, v4);
  }

  v12 = v11;
  v26 = a2;
  v13 = DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(v8, 0);
  if (!v13)
  {
    (*(v5 + 8))(v8, v4);
LABEL_15:
    swift_unknownObjectRelease();
    return (*(v5 + 16))(v26, a1, v4);
  }

  v15 = v13;
  v16 = v14;
  ObjectType = swift_getObjectType();
  if (((*(v12 + 104))(v15, v16, ObjectType, v12) & 1) == 0)
  {
LABEL_14:
    (*(v5 + 8))(v8, v4);
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v18 = swift_getObjectType();
  if ((*(v16 + 16))(v18, v16) == 3)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v21 = DOCSidebarViewController.indexOfLastReorderableItem(in:)(v15, v16);
  if (v22)
  {
    goto LABEL_14;
  }

  v23 = v21;
  if (v21 < IndexPath.row.getter())
  {
    v24 = IndexPath.section.getter();
    MEMORY[0x24C1F80E0](v23, v24);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return (*(v5 + 8))(v8, v4);
  }

LABEL_18:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return (*(v5 + 32))(v26, v8, v4);
}

uint64_t DOCSidebarViewController.dropReorderTargetIndexPathForMoveFromItemAt(_:toProposedIndexPath:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IndexPath();
  v15 = *(v5 - 8);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v5, v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*((*MEMORY[0x277D85000] & *v2) + 0x3D8))(v7);
  if (v10 && (v11 = (*(*v10 + 112))(), , v11))
  {
    (*(v15 + 16))(v9, v11 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath, v5);

    return (*(v15 + 32))(a2, v9, v5);
  }

  else
  {
    v13 = *(v15 + 16);

    return v13(a2, a1, v5);
  }
}

void DOCSidebarViewController.performDrop(in:with:)(void *a1, char *a2)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v9, v10);
  v13 = v122 - v12;
  v14 = (*((*MEMORY[0x277D85000] & *v2) + 0x3D8))(v11);
  if (!v14 || (v15 = (*(*v14 + 112))(v14), , !v15))
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v19 = *(*static DOCSidebarViewController.dbg.shared + 144);

    v19(0xD000000000000020, 0x8000000249BFBBF0);

    return;
  }

  v16 = *(v6 + 16);
  v126 = v6 + 16;
  v125 = v16;
  v16(v13, &v15[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v5);
  v17 = IndexPath.row.getter();
  v134 = v2;
  if (v17 < 1)
  {
    v123 = NSNotFound.getter();
  }

  else
  {
    v18 = IndexPath.row.getter();
    if (__OFSUB__(v18, 1))
    {
      __break(1u);
      goto LABEL_80;
    }

    v123 = v18 - 1;
  }

  v124 = v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = a1;
  v135 = v13;
  v136 = v15;
  v133 = v5;
  v131 = v6;
  v130 = [a2 session];
  v20 = a2;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v21 = static DOCLog.UI;
  LODWORD(v132) = static os_log_type_t.debug.getter();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_249B9FA70;
  *(v23 + 56) = MEMORY[0x277D837D0];
  v24 = lazy protocol witness table accessor for type String and conformance String();
  *(v23 + 64) = v24;
  *(v23 + 32) = 0xD000000000000015;
  *(v23 + 40) = 0x8000000249BFBC20;
  v129 = 0x8000000249BFBC20;
  objc_opt_self();
  v25 = swift_dynamicCastObjCClassUnconditional();
  *(v23 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  *(v23 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSObject and conformance NSObject, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  *(v23 + 72) = v25;
  v128 = v20;
  swift_unknownObjectRetain();
  v26 = v21;
  os_log(_:dso:log:type:_:)("%@: %@", 6, 2, &dword_2493AC000, v21, v132, v23);

  v28 = v136;
  v132 = *((*MEMORY[0x277D85000] & *v136) + 0x60);
  v29 = (v132)(v27);
  v30 = v135;
  v31 = DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(v135, v29 & 1);
  if (!v31)
  {
    v42 = static os_log_type_t.debug.getter();
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_249B9A480;
    *(v43 + 56) = MEMORY[0x277D837D0];
    *(v43 + 64) = v24;
    v44 = v129;
    *(v43 + 32) = 0xD000000000000015;
    *(v43 + 40) = v44;
    os_log(_:dso:log:type:_:)("%@: unable to determine sidebar section", 39, 2, &dword_2493AC000, v21, v42, v43);

    swift_unknownObjectRelease();

    (*(v131 + 8))(v30, v133);
    return;
  }

  v33 = v31;
  v34 = v32;
  v122[2] = v22;
  v129 = v24;
  v35 = v26;
  ObjectType = swift_getObjectType();
  v37 = *(v34 + 16);
  v38 = ObjectType;
  v39 = v34;
  v40 = v37();
  if (v40 <= 2)
  {
    if (v40 - 1 >= 2)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      (*(v131 + 8))(v135, v133);
      return;
    }

    v41 = (v37)(v38, v34);
    v122[1] = v33;
    if (!v41)
    {
      goto LABEL_40;
    }

    v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v70 & 1) == 0)
    {
      if ((v37)(v38, v34) == 1)
      {
LABEL_40:

        goto LABEL_54;
      }

      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v81 & 1) == 0)
      {
        v71 = (v132)(v71);
        if (v71)
        {
          v82 = v128;
          v83 = [v128 items];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24UICollectionViewDropItem_pMd, &_sSo24UICollectionViewDropItem_pMR);
          v84 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v84 >> 62)
          {
            v85 = __CocoaSet.count.getter();
          }

          else
          {
            v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v86 = v131;
          v87 = v133;

          if (v85 >= 1)
          {
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
            v88 = v124;
            v89 = v135;
            v125(v124, v135, v87);
            v90 = (*(v86 + 80) + 24) & ~*(v86 + 80);
            v91 = (v7 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
            v92 = swift_allocObject();
            v93 = v88;
            v94 = v134;
            *(v92 + 16) = v134;
            (*(v86 + 32))(v92 + v90, v93, v87);
            *(v92 + v91) = v82;
            *(v92 + ((v91 + 15) & 0xFFFFFFFFFFFFFFF8)) = v123;
            swift_unknownObjectRetain();
            v95 = v94;
            static FPItem.folderDragInfoFromDropSession(_:alertPresenting:completion:)(v130, v95, partial apply for closure #1 in DOCSidebarViewController.performDrop(in:with:), v92);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            (*(v86 + 8))(v89, v87);
            return;
          }

          (*(v86 + 8))(v135, v87);

          goto LABEL_60;
        }
      }
    }

LABEL_54:
    v96 = v136;
    v97 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v136) + 0x68))(v71))
    {
      v98 = v135;
      v99 = v128;
      specialized animateDropToRow #1 () in DOCSidebarViewController.performDrop(in:with:)(v134, v135, v127, v128);
      DOCSidebarViewController.sidebarItem(at:logIfMissing:)(v98, 1, &v138);
      v100 = v130;
      v101 = v131;
      v102 = v133;
      if (v143)
      {
        if (v143 != 3)
        {
          if (v143 == 255)
          {
            v103 = v133;
            v104 = static os_log_type_t.debug.getter();
            v105 = swift_allocObject();
            *(v105 + 16) = xmmword_249B9A480;
            v106 = v129;
            *(v105 + 56) = MEMORY[0x277D837D0];
            *(v105 + 64) = v106;
            *(v105 + 32) = 0xD00000000000001ELL;
            *(v105 + 40) = 0x8000000249BFBB60;
            os_log(_:dso:log:type:_:)("%@: unable to determine sidebar item, no drop to perform", 56, 2, &dword_2493AC000, v35, v104, v105);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            (*(v101 + 8))(v135, v103);
          }

          else
          {

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            outlined destroy of CharacterSet?(&v138, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
            (*(v101 + 8))(v135, v102);
          }

          return;
        }

        v107 = v138;
        outlined copy of DOCSidebarItem(v138, v139, v140, v141, v142, 3u);
      }

      else
      {
        v107 = v138;
        outlined copy of DOCSidebarItem(v138, v139, v140, v141, v142, 0);
      }

      v108 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
      v109 = swift_getObjectType();
      v110 = swift_unknownObjectRetain();
      LOBYTE(v109) = specialized static FPItem.sessionContainsDOCNode(_:)(v110, v108, v109);
      v111 = swift_unknownObjectRelease();
      if (v109)
      {
        v112 = v107;
        specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(v100, v134, v108, v112);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_68:
        outlined destroy of CharacterSet?(&v138, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
        (*(v101 + 8))(v135, v133);
        return;
      }

      v113 = (*((*v97 & *v134) + 0x440))(v111);
      v114 = DOCImmutableSidebarSection.fpItems(forEditingMode:)(v113, v38, v39);
      if (v114 >> 62)
      {
        v121 = __CocoaSet.count.getter();

        if (v121)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v115 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v115)
        {
LABEL_67:
          v116 = [objc_msgSend(v99 session)];
          swift_unknownObjectRelease();
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
          v117 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v118 = v107;
          _sSo6FPItemC26DocumentManagerExecutablesE19performExternalDrop_9underItem15alertPresenting10completionySaySo06UIDragI0CG_So7DOCNode_pSo16UIViewControllerCySaySoAK_pGSgcSgtFZTf4nennn_nAB_Tt3g5(v117, v118, v134, 0, 0);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          goto LABEL_68;
        }
      }

      (*(v101 + 8))(v135, v133);
      outlined destroy of CharacterSet?(&v138, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    (*(v131 + 8))(v135, v133);

LABEL_60:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  v45 = v26;
  if (v40 == 3)
  {
    v46 = v136;
    v47 = MEMORY[0x277D85000];
    v48 = (*((*MEMORY[0x277D85000] & *v136) + 0x68))();
    v49 = v135;
    if ((v48 & 1) == 0)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      (*(v131 + 8))(v49, v133);
      return;
    }

    DOCSidebarViewController.sidebarItem(at:logIfMissing:)(v135, 1, &v138);
    v51 = v130;
    v50 = v131;
    v52 = v133;
    if (v143 == 1)
    {
      type metadata accessor for DOCFileProviderSource();
      v72 = swift_dynamicCastClass();
      if (v72)
      {
        v73 = (*((*v47 & *v72) + 0xE0))();
        if (!v73)
        {

          outlined destroy of CharacterSet?(&v138, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
          goto LABEL_77;
        }

        v75 = v73;
        v76 = v74;
        v77 = v134;
        v78 = v128;
        specialized animateDropToRow #1 () in DOCSidebarViewController.performDrop(in:with:)(v134, v49, v127, v128);
        v79 = [v78 proposal];
        v80 = [v79 operation];

        v75(v51, v80, v77);
        outlined destroy of CharacterSet?(&v138, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v75, v76);
      }

      else
      {
        outlined destroy of CharacterSet?(&v138, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
      }
    }

    else
    {
      if (v143 == 255)
      {
        v53 = static os_log_type_t.debug.getter();
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_249B9A480;
        v55 = v129;
        *(v54 + 56) = MEMORY[0x277D837D0];
        *(v54 + 64) = v55;
        *(v54 + 32) = 0xD00000000000001ELL;
        *(v54 + 40) = 0x8000000249BFBB60;
        os_log(_:dso:log:type:_:)("%@: unable to determine sidebar item, no drop to perform", 56, 2, &dword_2493AC000, v45, v53, v54);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_78:
        (*(v50 + 8))(v49, v52);
        return;
      }

      outlined destroy of CharacterSet?(&v138, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
    }

LABEL_77:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_78;
  }

  v13 = v135;
  a2 = v136;
  if (v40 == 4)
  {
LABEL_22:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v131 + 8))(v13, v133);
    return;
  }

  if (v132())
  {
    if (one-time initialization token for UI == -1)
    {
LABEL_30:
      v56 = type metadata accessor for Logger();
      __swift_project_value_buffer(v56, static Logger.UI);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.fault.getter();
      v59 = os_log_type_enabled(v57, v58);
      v60 = v131;
      v61 = v133;
      if (v59)
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_2493AC000, v57, v58, "Unexpected drag operation. Tag section only supports drop onto existing items", v62, 2u);
        MEMORY[0x24C1FE850](v62, -1, -1);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      (*(v60 + 8))(v13, v61);
      return;
    }

LABEL_80:
    swift_once();
    goto LABEL_30;
  }

  if (((*((*MEMORY[0x277D85000] & *a2) + 0x68))() & 1) == 0)
  {
    goto LABEL_22;
  }

  v63 = v134;
  DOCSidebarViewController.sidebarItem(at:logIfMissing:)(v13, 1, &v138);
  v64 = v130;
  v65 = v131;
  v66 = v133;
  if (v143 == 2)
  {
    v119 = v138;
    specialized animateDropToRow #1 () in DOCSidebarViewController.performDrop(in:with:)(v63, v13, v127, v128);
    v120 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    outlined init with copy of DOCGridLayout.Spec?(&v138, v137, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
    specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(v64, v63, v120, v119);
    outlined destroy of CharacterSet?(&v138, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    outlined destroy of CharacterSet?(&v138, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
  }

  else if (v143 == 255)
  {
    v67 = static os_log_type_t.debug.getter();
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_249B9A480;
    v69 = v129;
    *(v68 + 56) = MEMORY[0x277D837D0];
    *(v68 + 64) = v69;
    *(v68 + 32) = 0xD00000000000001ELL;
    *(v68 + 40) = 0x8000000249BFBB60;
    os_log(_:dso:log:type:_:)("%@: unable to determine sidebar item, no drop to perform", 56, 2, &dword_2493AC000, v45, v67, v68);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    outlined destroy of CharacterSet?(&v138, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  (*(v65 + 8))(v13, v66);
}

void DOCSidebarViewController.updateDropPointIndicatorView()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x3D8))();
  if (v2)
  {
    v3 = v2;
    v4 = [v0 view];
    if (!v4)
    {
      goto LABEL_19;
    }

    v5 = v4;
    v6 = [v4 window];

    if (v6)
    {

      v7 = [objc_opt_self() standardUserDefaults];
      v8 = MEMORY[0x24C1FAD20](0xD000000000000035, 0x8000000249BEF4C0);
      v9 = [v7 BOOLForKey_];

      if (v9)
      {
        v10 = *((*v1 & *v0) + 0x3C0);
        v11 = v10();
        if (v11)
        {

          v12 = v10();
          if (v12)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v19 = [objc_allocWithZone(type metadata accessor for DOCSidebarViewController.DebugDropIndicatorView()) init];
          v20 = (*((*v1 & *v0) + 0x3C8))(v19);
          v12 = (v10)(v20);
          if (v12)
          {
LABEL_7:
            v13 = v12;
            v14 = [v0 view];
            if (v14)
            {
              v15 = v14;
              v16 = *(v3 + 16);
              v17 = *((*v1 & *v13) + 0x108);
              swift_unknownObjectRetain();
              v17(v15, v16, v3);

              swift_unknownObjectRelease();
              return;
            }

LABEL_20:
            __break(1u);
            return;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }
  }

  v18 = (*((*v1 & *v0) + 0x3C0))(v2);
  if (v18)
  {
    v21 = v18;
    (*((*v1 & *v18) + 0x110))();
  }
}

unint64_t DOCSidebarViewController.dropTargetProposalForUpdatedSession(_:destinationIndexPath:)(void *a1, char *a2, double a3)
{
  v4 = v3;
  v7 = type metadata accessor for DOCDragPasteboardType(0);
  v8 = *(v7 - 8);
  v331 = v7;
  v332 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v336 = &v315 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v335 = &v315 - v13;
  v334 = type metadata accessor for UTType();
  v330 = *(v334 - 8);
  MEMORY[0x28223BE20](v334, v14);
  v333 = &v315 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v349 = (&v315 - v18);
  v19 = type metadata accessor for IndexPath();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v343 = &v315 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v342 = &v315 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v347 = &v315 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy26DocumentManagerExecutables24DOCSidebarViewControllerC14OutlineSectionVAF0L4ItemVGMR);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v31);
  v33 = (&v315 - v32);
  v34 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
  ObjectType = swift_getObjectType();
  v344 = v34;
  v337 = ObjectType;
  LODWORD(v348) = specialized static FPItem.sessionContainsFolder(_:)(a1, v34);
  v352 = swift_allocBox();
  v36 = *(v20 + 2);
  v350 = v37;
  v345 = v36;
  v346 = v20 + 16;
  v36(v37, a2, v19);
  DOCSidebarViewController.diffableSnapshot()();
  specialized NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)(v368);
  v38 = *(v30 + 8);
  v339 = v33;
  v340 = v30 + 8;
  v341 = v29;
  v338 = v38;
  v38(v33, v29);
  if (v368[0])
  {
    v379 = v369;
    *v380 = v370[0];
    *&v380[9] = *(v370 + 9);
    v381[0] = v368[0];
    v381[1] = v368[1];
    outlined destroy of DOCSidebarViewController.OutlineSection(v381);
    if (v380[24] != 255)
    {
      v39 = &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd;
      v40 = &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR;
      v41 = &v379;
LABEL_4:
      outlined destroy of CharacterSet?(v41, v39, v40);
      goto LABEL_9;
    }

    if (v348)
    {
      v42 = IndexPath.section.getter();
      v43 = v349;
      DOCSidebarViewController.indexPathForAppendingToSectionAboveSection(_:)(v42, v349);
      if ((*(v20 + 6))(v43, 1, v19) == 1)
      {
        v39 = &_s10Foundation9IndexPathVSgMd;
        v40 = &_s10Foundation9IndexPathVSgMR;
        v41 = v43;
        goto LABEL_4;
      }

      v44 = v347;
      (*(v20 + 4))(v347, v43, v19);
      (*(v20 + 5))(v350, v44, v19);
    }
  }

LABEL_9:
  v347 = v20;
  v351 = a1;
  v349 = v4;
  v371 = 0;
  v372 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  MEMORY[0x24C1FAEA0](0xD000000000000033, 0x8000000249BFB9B0);
  _s10Foundation9IndexPathVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
  v45 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v45);

  i = v371;
  rawValue = v372;
  v48 = v19;
  if (one-time initialization token for shared != -1)
  {
LABEL_119:
    swift_once();
  }

  v49 = *(*static DOCSidebarViewController.dbg.shared + 152);

  v49(0x6567726154646E64, 0xEB00000000322E74, i, rawValue);

  v371 = 0;
  v372 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  MEMORY[0x24C1FAEA0](0xD000000000000033, 0x8000000249BFB9F0);
  v50 = v350;
  v51 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v51);

  v52 = v371;
  v53 = v372;
  v54 = *(*static DOCSidebarViewController.dbg.shared + 152);

  v54(0x6567726154646E64, 0xEB00000000332E74, v52, v53);

  v55 = v349;
  v56 = DOCSidebarViewController.sidebarSection(at:allowInsertionAtEndIndex:)(v50, 1);
  if (v56)
  {
    i = v56;
    v58 = v57;
    v329 = v48;
    v59 = MEMORY[0x277D85000];
    LODWORD(v328) = (*((*MEMORY[0x277D85000] & *v55) + 0x440))();
    v60 = swift_getObjectType();
    v48 = 0;
    v61 = (*(v58 + 16))(v60, v58);
    rawValue = 0x278FA9000;
    if (v61 <= 2)
    {
      v62 = v351;
      if (!v61)
      {
        goto LABEL_96;
      }

      if (v61 == 1)
      {
        if (((*(v58 + 32))(v60, v58) & 1) != 0 && (v63 = operationIfInsertingInto #1 () in DOCSidebarViewController.dropTargetProposalForUpdatedSession(_:destinationIndexPath:)(v55, v352, v328 != 0, v351), (v64 & 1) == 0))
        {
          v106 = v63;
          swift_beginAccess();
          v107 = v343;
          v108 = v50;
          v109 = v329;
          v110 = v345;
          v345(v343, v108, v329);
          v111 = type metadata accessor for DOCSidebarDropProposal(0);
          v112 = objc_allocWithZone(v111);
          v110(&v112[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v107, v109);
          v364.receiver = v112;
          v59 = MEMORY[0x277D85000];
          v364.super_class = v111;
          rawValue = 0x278FA9000;
          v48 = objc_msgSendSuper2(&v364, sel_initWithDropOperation_intent_, v106, 2);
          (*(v347 + 1))(v107, v109);
          v113 = v48;
        }

        else
        {
          v48 = 0;
        }

        goto LABEL_95;
      }

      v87 = static FPItem.dropSessionContainsSMBItems(_:)(v351);
      destinationItem #1 (logIfMissing:) in DOCSidebarViewController.dropTargetProposalForUpdatedSession(_:destinationIndexPath:)(1, &v371);
      v88 = v376;
      if (((v376 == 255) & v348) == 1)
      {
        swift_beginAccess();
        v89 = v343;
        v90 = v329;
        v91 = v345;
        v345(v343, v50, v329);
        v92 = type metadata accessor for DOCSidebarDropProposal(0);
        v93 = objc_allocWithZone(v92);
        v91(&v93[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v89, v90);
        v361.receiver = v93;
        v361.super_class = v92;
        v48 = objc_msgSendSuper2(&v361, sel_initWithDropOperation_intent_, 3, 1);
        (*(v347 + 1))(v89, v90);
        v94 = v48;
LABEL_93:
        v59 = MEMORY[0x277D85000];
        goto LABEL_94;
      }

      v96 = v371;
      v97 = v372;
      v98 = i;
      v100 = v373;
      v99 = v374;
      v342 = v375;
      v101 = *(v58 + 32);
      v348 = v98;
      if ((v101(v60, v58) & 1) == 0)
      {
LABEL_147:
        outlined destroy of CharacterSet?(&v371, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
        goto LABEL_148;
      }

      v102 = v337;
      if (v87 || (specialized static FPItem.sessionContainsLocations(_:)(v351, v344) & 1) == 0 && (specialized static FPItem.sessionContainsFavorites(_:)(v351), (v115 & 1) == 0))
      {
        v55 = v349;
        v103 = v351;
        v104 = operationIfInsertingInto #1 () in DOCSidebarViewController.dropTargetProposalForUpdatedSession(_:destinationIndexPath:)(v349, v352, v328 != 0, v351);
        if (v105)
        {
          outlined destroy of CharacterSet?(&v371, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
          v48 = 0;
        }

        else
        {
          v117 = v104;
          v118 = v350;
          swift_beginAccess();
          v119 = v343;
          v120 = v329;
          v121 = v345;
          v345(v343, v118, v329);
          v122 = type metadata accessor for DOCSidebarDropProposal(0);
          v123 = objc_allocWithZone(v122);
          v121(&v123[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v119, v120);
          v363.receiver = v123;
          v363.super_class = v122;
          v48 = objc_msgSendSuper2(&v363, sel_initWithDropOperation_intent_, v117, 2);
          outlined destroy of CharacterSet?(&v371, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
          (*(v347 + 1))(v119, v120);
          v124 = v48;
        }

        v59 = MEMORY[0x277D85000];
        rawValue = 0x278FA9000;
        v62 = v103;
        goto LABEL_96;
      }

      v116 = v371;
      if (v376 == 3)
      {
        outlined copy of DOCSidebarItem(v96, v97, v100, v99, v342, v88);
      }

      else if (v376)
      {
        v116 = 0;
      }

      else
      {
        outlined copy of DOCSidebarItem(v96, v97, v100, v99, v342, v88);
      }

      v55 = v349;
      v152 = v350;
      v59 = MEMORY[0x277D85000];
      v153 = v328;
      v154 = UIDropSession.hasDOCNode(_:)(v116, v102);
      swift_unknownObjectRelease();
      if (!v153)
      {
        specialized static FPItem.sessionContainsFavorites(_:)(v351);
        if (((v155 | v154) & 1) == 0)
        {
          v168 = v351;
          v169 = operationIfInsertingInto #1 () in DOCSidebarViewController.dropTargetProposalForUpdatedSession(_:destinationIndexPath:)(v55, v352, 0, v351);
          if (v170)
          {
            v171 = 3;
          }

          else
          {
            v171 = v169;
          }

          swift_beginAccess();
          v48 = DOCSidebarViewController.autoIntent_dropTargetProposalForUpdatedSession(_:destinationIndexPath:operationIfInsertingInto:)(v168, v152, v171);
          swift_endAccess();
          outlined destroy of CharacterSet?(&v371, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
          v172 = v48;
          rawValue = 0x278FA9000;
          v62 = v168;
          goto LABEL_96;
        }
      }

      swift_beginAccess();
      v156 = v343;
      v157 = v329;
      v158 = v345;
      v345(v343, v152, v329);
      v159 = type metadata accessor for DOCSidebarDropProposal(0);
      v160 = objc_allocWithZone(v159);
      v158(&v160[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v156, v157);
      v362.receiver = v160;
      v362.super_class = v159;
      v48 = objc_msgSendSuper2(&v362, sel_initWithDropOperation_intent_, 3, 1);
      outlined destroy of CharacterSet?(&v371, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
      (*(v347 + 1))(v156, v157);
      goto LABEL_72;
    }

    v62 = v351;
    if (v61 == 3)
    {
      v348 = i;
      swift_beginAccess();
      v70 = v342;
      v71 = v329;
      v345(v342, v50, v329);
      v72 = v339;
      DOCSidebarViewController.diffableSnapshot()();
      specialized NSDiffableDataSourceSnapshot<>.itemIdentifier(for:)(&v371);
      v338(v72, v341);
      v73 = *(v347 + 1);
      v347 += 8;
      v73(v70, v71);
      if (!v371)
      {
        v48 = 0;
        v62 = v351;
LABEL_43:
        v59 = MEMORY[0x277D85000];
        goto LABEL_96;
      }

      v339 = v73;
      v74 = v375;
      v48 = v376;
      i = v377;
      LODWORD(v75) = v378;
      v341 = v374;
      v342 = v373;
      v382[0] = v371;
      v382[1] = v372;
      outlined destroy of DOCSidebarViewController.OutlineSection(v382);
      if (v75 != 255)
      {
        v340 = v74;
        if ((*(v58 + 32))(v60, v58))
        {
          specialized static DOCDocumentSource.sourcesFromDropSession(_:)(v351);
          if (v76 >> 62)
          {
            goto LABEL_196;
          }

          v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_30;
        }

        outlined consume of DOCSidebarItem?(v342, v341, v340, v48, i, v75);
      }

LABEL_47:
      v48 = 0;
      v59 = MEMORY[0x277D85000];
LABEL_95:
      v62 = v351;
      goto LABEL_96;
    }

    if (v61 == 4)
    {
      goto LABEL_96;
    }

    v68 = v351;
    destinationItem #1 (logIfMissing:) in DOCSidebarViewController.dropTargetProposalForUpdatedSession(_:destinationIndexPath:)(1, &v371);
    v69 = v376;
    if (v376 != 255)
    {
      if (((*(v58 + 32))(v60, v58) & 1) == 0)
      {
        outlined destroy of CharacterSet?(&v371, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
        v48 = 0;
LABEL_94:
        rawValue = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
        goto LABEL_95;
      }

      if (v69 != 2)
      {
        v114 = v351;
LABEL_49:
        outlined destroy of CharacterSet?(&v371, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
        v62 = v114;
        v48 = 0;
        rawValue = 0x278FA9000;
        goto LABEL_96;
      }

      rawValue = 0x278FA9000;
      if (v328)
      {
        v95 = v351;
        outlined destroy of CharacterSet?(&v371, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
        v62 = v95;
        v48 = 0;
        goto LABEL_96;
      }

      specialized static DOCTag.tagsFromDropSession(_:)(v351);
      if (v137 >> 62)
      {
LABEL_198:
        v138 = __CocoaSet.count.getter();
      }

      else
      {
        v138 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v139 = v344;
      v133 = v337;

      if (v138 >= 1)
      {
        swift_beginAccess();
        v140 = v343;
        v141 = v50;
        v142 = v329;
        v143 = v345;
        v345(v343, v141, v329);
        v144 = type metadata accessor for DOCSidebarDropProposal(0);
        v145 = objc_allocWithZone(v144);
        v143(&v145[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v140, v142);
        v365.receiver = v145;
        v365.super_class = v144;
        v48 = objc_msgSendSuper2(&v365, sel_initWithDropOperation_intent_, 3, 1);
        outlined destroy of CharacterSet?(&v371, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
        (*(v347 + 1))(v140, v142);
LABEL_72:
        v161 = v48;
        goto LABEL_94;
      }

      v68 = v351;
      if (specialized static FPItem.sessionContainsDOCNode(_:)(v351, v139, v133))
      {
        v348 = i;
        v162 = v333;
        static UTType.item.getter();
        rawValue = specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(v68, v162, v139, v133);
        (*(v330 + 8))(v162, v334);
        v344 = (rawValue >> 62);
        if (rawValue >> 62)
        {
          goto LABEL_201;
        }

        for (i = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
        {
          v75 = MEMORY[0x277D84F90];
          if (i)
          {
            v367 = MEMORY[0x277D84F90];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
            if (i < 0)
            {
              __break(1u);
LABEL_203:
              __break(1u);
LABEL_204:
              __break(1u);
              goto LABEL_205;
            }

            v163 = 0;
            v75 = v367;
            do
            {
              if ((rawValue & 0xC000000000000001) != 0)
              {
                v164 = MEMORY[0x24C1FC540](v163, rawValue);
              }

              else
              {
                v164 = *(rawValue + 8 * v163 + 32);
                swift_unknownObjectRetain();
              }

              v165 = [v164 providerDomainID];
              swift_unknownObjectRelease();
              v367 = v75;
              v167 = *(v75 + 16);
              v166 = *(v75 + 24);
              v55 = (v167 + 1);
              if (v167 >= v166 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v166 > 1), v167 + 1, 1);
                v75 = v367;
              }

              ++v163;
              *(v75 + 16) = v55;
              *(v75 + 8 * v167 + 32) = v165;
            }

            while (i != v163);
          }

          else
          {
            v55 = *(MEMORY[0x277D84F90] + 16);
            v186 = MEMORY[0x277D84F90];
            if (!v55)
            {
LABEL_132:

              v193 = *(v186 + 16);

              v342 = v193;
              v48 = rawValue & 0xFFFFFFFFFFFFFF8;
              if (v344)
              {
                v194 = __CocoaSet.count.getter();
              }

              else
              {
                v194 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v59 = 0;
              v60 = (rawValue & 0xC000000000000001);
              v55 = *MEMORY[0x277CC6050];
              v50 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
              while (v194 != v59)
              {
                if (v60)
                {
                  i = MEMORY[0x24C1FC540](v59, rawValue);
                  if (__OFADD__(v59, 1))
                  {
                    goto LABEL_144;
                  }
                }

                else
                {
                  if (v59 >= *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_198;
                  }

                  i = *(rawValue + 8 * v59 + 32);
                  swift_unknownObjectRetain();
                  if (__OFADD__(v59, 1))
                  {
LABEL_144:
                    __break(1u);
                    break;
                  }
                }

                v195 = [i canPerform_];
                swift_unknownObjectRelease();
                ++v59;
                if ((v195 & 1) == 0)
                {

                  goto LABEL_147;
                }
              }

              v55 = v349;
              v59 = MEMORY[0x277D85000];
              if (v342)
              {
                v114 = v351;
                goto LABEL_49;
              }

              v204 = v350;
              swift_beginAccess();
              v205 = v343;
              v206 = v329;
              v207 = v345;
              v345(v343, v204, v329);
              v208 = type metadata accessor for DOCSidebarDropProposal(0);
              v209 = objc_allocWithZone(v208);
              v207(&v209[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v205, v206);
              v366.receiver = v209;
              v366.super_class = v208;
              v48 = objc_msgSendSuper2(&v366, sel_initWithDropOperation_intent_, 3, 2);
              outlined destroy of CharacterSet?(&v371, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
              (*(v347 + 1))(v205, v206);
              v210 = v48;
              v62 = v351;
              rawValue = 0x278FA9000;
              goto LABEL_96;
            }
          }

          v187 = 0;
          v50 = (v75 + 32);
          v188 = v55 - 1;
          v186 = MEMORY[0x277D84F90];
LABEL_122:
          v48 = v187;
          while (v48 < *(v75 + 16))
          {
            v187 = (v48 + 1);
            i = v50[v48];
            if (DOCProviderDomainIDIsSharedServerDomainID())
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v367 = v186;
              v342 = v188;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v186 + 16) + 1, 1);
                v186 = v367;
              }

              v191 = *(v186 + 16);
              v190 = *(v186 + 24);
              v192 = v191 + 1;
              if (v191 >= v190 >> 1)
              {
                v341 = (v191 + 1);
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v190 > 1), v191 + 1, 1);
                v192 = v341;
                v186 = v367;
              }

              *(v186 + 16) = v192;
              *(v186 + 8 * v191 + 32) = i;
              v188 = v342;
              if (v342 == v48)
              {
                goto LABEL_132;
              }

              goto LABEL_122;
            }

            ++v48;
            if (v55 == v187)
            {
              goto LABEL_132;
            }
          }

          __break(1u);
LABEL_196:
          v77 = __CocoaSet.count.getter();
LABEL_30:

          if (v77 >= 1)
          {
            v78 = v343;
            v79 = v50;
            v80 = v329;
            v81 = v48;
            v338 = i;
            v82 = v345;
            v345(v343, v79, v329);
            v83 = type metadata accessor for DOCSidebarDropProposal(0);
            v84 = objc_allocWithZone(v83);
            v82(&v84[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v78, v80);
            v353.receiver = v84;
            v353.super_class = v83;
            v48 = objc_msgSendSuper2(&v353, sel_initWithDropOperation_intent_, 3, 1);
            v85 = outlined consume of DOCSidebarItem?(v342, v341, v340, v81, v338, v75);
            (v339)(v78, v80, v85);
            v86 = v48;
            goto LABEL_93;
          }

          if (v75 != 1)
          {
            v147 = v341;
            v146 = v342;
            v148 = v340;
            v149 = v48;
            v150 = i;
            v151 = v75;
            goto LABEL_91;
          }

          type metadata accessor for DOCFileProviderSource();
          v125 = v342;
          v126 = swift_dynamicCastClass();
          v127 = v340;
          v128 = v341;
          if (!v126)
          {
            break;
          }

          v129 = v126;
          v327 = *((*MEMORY[0x277D85000] & *v126) + 0xE0);
          outlined copy of DOCSidebarItem(v125, v341, v340, v48, i, 1u);
          v130 = outlined copy of DOCSidebarItem(v125, v128, v127, v48, i, 1u);
          v325 = v129;
          v131 = (v327)(v130);
          if (!v131)
          {
            v177 = v340;
            outlined consume of DOCSidebarItem?(v125, v128, v340, v48, i, 1u);
            outlined consume of DOCSidebarItem?(v125, v128, v177, v48, i, 1u);
            outlined consume of DOCSidebarItem(v125, v128, v177, v48, i, 1u);
            goto LABEL_92;
          }

          v133 = v128;
          v134 = v328;
          outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v131, v132);
          rawValue = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
          if (v134)
          {
            v135 = v342;
            v136 = v340;
            outlined consume of DOCSidebarItem?(v342, v133, v340, v48, i, 1u);
            outlined consume of DOCSidebarItem?(v135, v133, v136, v48, i, 1u);
            outlined consume of DOCSidebarItem(v135, v133, v136, v48, i, 1u);
            goto LABEL_47;
          }

          v60 = v351;
          v178 = specialized static FPItem.sessionContainsDOCNode(_:)(v351, v344, v337);
          v326 = v48;
          if (v178)
          {
            v179 = v342;
            v180 = v340;
            outlined consume of DOCSidebarItem?(v342, v133, v340, v48, i, 1u);
            v181 = [v60 localDragSession];
            v338 = i;
            if (!v181)
            {
              v211 = v343;
              v212 = v329;
              v213 = v345;
              v345(v343, v50, v329);
              v214 = v180;
              v215 = type metadata accessor for DOCSidebarDropProposal(0);
              v216 = objc_allocWithZone(v215);
              v213(&v216[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v211, v212);
              v359.receiver = v216;
              v359.super_class = v215;
              rawValue = 0x278FA9000;
              v48 = objc_msgSendSuper2(&v359, sel_initWithDropOperation_intent_, 1, 2);
              v217 = outlined consume of DOCSidebarItem?(v342, v341, v214, v326, v338, 1u);
              (v339)(v211, v212, v217);
              v218 = v48;
              v59 = MEMORY[0x277D85000];
              v62 = v60;
              goto LABEL_96;
            }

            swift_unknownObjectRelease();
            v182 = v333;
            static UTType.item.getter();
            rawValue = specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(v60, v182, v344, v337);
            (*(v330 + 8))(v182, v334);
            v358 = MEMORY[0x277D84F90];
            v337 = rawValue;
            if (!(rawValue >> 62))
            {
              v344 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v344)
              {
LABEL_110:
                v183 = 0;
                i = v337;
                v60 = (v337 & 0xC000000000000001);
                v48 = &lazy protocol witness table cache variable for type FPAction and conformance FPAction;
                while (1)
                {
                  if (v60)
                  {
                    v184 = MEMORY[0x24C1FC540](v183, i);
                    rawValue = v183 + 1;
                    if (__OFADD__(v183, 1))
                    {
LABEL_118:
                      __break(1u);
                      goto LABEL_119;
                    }
                  }

                  else
                  {
                    if (v183 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      goto LABEL_200;
                    }

                    v184 = *(i + 8 * v183 + 32);
                    swift_unknownObjectRetain();
                    rawValue = v183 + 1;
                    if (__OFADD__(v183, 1))
                    {
                      goto LABEL_118;
                    }
                  }

                  v133 = [v184 doc_eligibleActions];
                  type metadata accessor for FPAction(0);
                  _s10Foundation9IndexPathVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction, &protocol conformance descriptor for FPAction);
                  v185 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
                  swift_unknownObjectRelease();

                  specialized Array.append<A>(contentsOf:)(v185);
                  ++v183;
                  if (rawValue == v344)
                  {
                    rawValue = v358;
                    goto LABEL_207;
                  }
                }
              }

LABEL_206:
              rawValue = MEMORY[0x277D84F90];
LABEL_207:
              v264 = v325;
              _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8FPActiona_SayAEGTt0g5Tf4g_n(rawValue);

              if (v264[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8] != 1)
              {
LABEL_213:
                if (DOCFileProviderSource.isRootWritable.getter())
                {
                  if ((specialized Set.contains(_:)() & 1) == 0)
                  {

                    v290 = specialized Set.contains(_:)();

                    if (v290)
                    {
                      v253 = v343;
                      v254 = v329;
                      v291 = v345;
                      v345(v343, v350, v329);
                      v292 = type metadata accessor for DOCSidebarDropProposal(0);
                      v293 = objc_allocWithZone(v292);
                      v291(&v293[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v253, v254);
                      v356.receiver = v293;
                      v356.super_class = v292;
                      v284 = objc_msgSendSuper2(&v356, sel_initWithDropOperation_intent_, 2, 2, v315);
                      goto LABEL_243;
                    }

                    goto LABEL_246;
                  }

                  if (v344)
                  {
                    v272 = 0;
                    v334 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain;
                    v335 = v337 & 0xFFFFFFFFFFFFFF8;
                    v336 = (v337 & 0xC000000000000001);
                    do
                    {
                      if (v336)
                      {
                        v273 = MEMORY[0x24C1FC540](v272, v337);
                        v274 = (v272 + 1);
                        if (__OFADD__(v272, 1))
                        {
LABEL_236:
                          __break(1u);
                          goto LABEL_237;
                        }
                      }

                      else
                      {
                        if (v272 >= *(v335 + 16))
                        {
                          __break(1u);
LABEL_274:
                          __break(1u);
                          goto LABEL_275;
                        }

                        v273 = *(v337 + 8 * v272 + 32);
                        swift_unknownObjectRetain();
                        v274 = (v272 + 1);
                        if (__OFADD__(v272, 1))
                        {
                          goto LABEL_236;
                        }
                      }

                      rawValue = swift_getObjectType();
                      v133 = [v273 providerDomainID];
                      v275 = *&v325[v334];
                      if (v275)
                      {
                        i = v274;
                        v48 = [v275 identifier];
                        v276 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v60 = v277;
                        if (v276 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v60 == v278)
                        {
                          v280 = 1;
                        }

                        else
                        {
                          v280 = _stringCompareWithSmolCheck(_:_:expecting:)();
                        }

                        v133 = v48;
                        v274 = i;
                      }

                      else
                      {
                        v280 = 0;
                      }

                      if ([v273 isRootItem])
                      {
                        swift_unknownObjectRelease();
                        if ((v280 & 1) == 0)
                        {
                          goto LABEL_248;
                        }
                      }

                      else
                      {
                        v133 = DOCNode.isParentRootItem.getter();
                        swift_unknownObjectRelease();
                        if ((v133 & v280 & 1) == 0)
                        {
LABEL_248:
                          LODWORD(v332) = 0;
                          goto LABEL_250;
                        }
                      }

                      ++v272;
                    }

                    while (v274 != v344);
                    LODWORD(v332) = 1;
LABEL_250:
                    v299 = 0;
                    rawValue = v325;
                    v300 = v337;
                    do
                    {
                      if (v336)
                      {
                        v301 = MEMORY[0x24C1FC540](v299, v300);
                        i = v299 + 1;
                        if (__OFADD__(v299, 1))
                        {
                          goto LABEL_265;
                        }
                      }

                      else
                      {
                        if (v299 >= *(v335 + 16))
                        {
                          goto LABEL_274;
                        }

                        v301 = *(v300 + 8 * v299 + 32);
                        swift_unknownObjectRetain();
                        i = v299 + 1;
                        if (__OFADD__(v299, 1))
                        {
LABEL_265:
                          __break(1u);
LABEL_266:

                          swift_unknownObjectRelease();
LABEL_267:

                          if ((v332 & 1) == 0)
                          {
                            v298 = 2;
                            goto LABEL_272;
                          }

LABEL_270:
                          v298 = 1;
                          goto LABEL_272;
                        }
                      }

                      v60 = [v301 providerDomainID];
                      v302 = *(rawValue + v334);
                      if (!v302)
                      {
                        goto LABEL_266;
                      }

                      v48 = [v302 identifier];
                      v303 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v305 = v304;
                      v307 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v308 = v303;
                      v133 = v306;
                      if (v308 == v307 && v305 == v306)
                      {

                        swift_unknownObjectRelease();
                      }

                      else
                      {
                        LODWORD(v333) = _stringCompareWithSmolCheck(_:_:expecting:)();

                        swift_unknownObjectRelease();

                        if ((v333 & 1) == 0)
                        {
                          goto LABEL_267;
                        }
                      }

                      ++v299;
                    }

                    while (i != v344);

                    if (v332)
                    {
                      goto LABEL_270;
                    }

                    v298 = 3;
                  }

                  else
                  {

                    v298 = 1;
                  }

LABEL_272:
                  v310 = v343;
                  v311 = v329;
                  v312 = v345;
                  v345(v343, v350, v329);
                  v313 = type metadata accessor for DOCSidebarDropProposal(0);
                  v314 = objc_allocWithZone(v313);
                  v312(&v314[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v310, v311);
                  v355.receiver = v314;
                  v355.super_class = v313;
                  v48 = objc_msgSendSuper2(&v355, sel_initWithDropOperation_intent_, v298, 2);
                  v294.n128_f64[0] = outlined consume of DOCSidebarItem?(v342, v341, v340, v326, v338, 1u);
                  v295 = v310;
                  v296 = v311;
                }

                else
                {
LABEL_237:

                  v253 = v343;
                  v254 = v329;
                  v281 = v345;
                  v345(v343, v350, v329);
                  v282 = type metadata accessor for DOCSidebarDropProposal(0);
                  v283 = objc_allocWithZone(v282);
                  v281(&v283[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v253, v254);
                  v357.receiver = v283;
                  v357.super_class = v282;
                  v284 = objc_msgSendSuper2(&v357, sel_initWithDropOperation_intent_, 1, 2, v315);
LABEL_243:
                  v48 = v284;
                  v259 = v341;
                  v258 = v342;
                  v260 = v340;
                  v261 = v326;
LABEL_244:
                  v294.n128_f64[0] = outlined consume of DOCSidebarItem?(v258, v259, v260, v261, v338, 1u);
                  v295 = v253;
                  v296 = v254;
                }

                (v339)(v295, v296, v294);
                v297 = v48;
                goto LABEL_149;
              }

              rawValue = *&v264[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type];
              v265 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v133 = v266;
              v267 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v48 = v268;
              if (v265 == v267 && v133 == v268)
              {
                v285 = rawValue;

                outlined consume of DOCFileProviderSourceType(rawValue);
              }

              else
              {
                v270 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v271 = rawValue;

                outlined consume of DOCFileProviderSourceType(rawValue);
                if ((v270 & 1) == 0)
                {
                  goto LABEL_213;
                }
              }

              v286 = specialized Set.contains(_:)();

              if (v286)
              {
                v253 = v343;
                v254 = v329;
                v287 = v345;
                v345(v343, v350, v329);
                v288 = type metadata accessor for DOCSidebarDropProposal(0);
                v289 = objc_allocWithZone(v288);
                v287(&v289[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v253, v254);
                v354.receiver = v289;
                v354.super_class = v288;
                v284 = objc_msgSendSuper2(&v354, sel_initWithDropOperation_intent_, 3, 2, v315);
                goto LABEL_243;
              }

LABEL_246:
              outlined consume of DOCSidebarItem?(v342, v341, v340, v326, v338, 1u);
LABEL_148:
              v48 = 0;
LABEL_149:
              v55 = v349;
              v62 = v351;
              v59 = MEMORY[0x277D85000];
              rawValue = 0x278FA9000;
LABEL_96:
              if ([v62 *(rawValue + 3120)])
              {
                swift_unknownObjectRelease();
                if (v48 && (v173 = *((*v59 & *v48) + 0x68), v174 = v48, LOBYTE(v173) = v173(), v174, v174, (v173 & 1) != 0))
                {
                  v175 = [*(v55 + OBJC_IVAR___DOCSidebarViewController_configuration) isPickerUI];
                  swift_unknownObjectRelease();

                  if (v175)
                  {

                    return 0;
                  }
                }

                else
                {

                  swift_unknownObjectRelease();
                }
              }

              else
              {

                swift_unknownObjectRelease();
              }

              return v48;
            }

LABEL_205:
            v344 = __CocoaSet.count.getter();
            if (v344)
            {
              goto LABEL_110;
            }

            goto LABEL_206;
          }

          if (v325[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8] == 1)
          {
            v196 = *&v325[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type];
            v197 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v199 = v198;
            if (v197 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v199 == v200)
            {
              v201 = v196;

              outlined consume of DOCFileProviderSourceType(v196);
              v202 = v342;
              v203 = v340;
              outlined consume of DOCSidebarItem?(v342, v133, v340, v48, i, 1u);
              outlined consume of DOCSidebarItem?(v202, v133, v203, v48, i, 1u);
              outlined consume of DOCSidebarItem(v202, v133, v203, v48, i, 1u);
              v48 = 0;
              v55 = v349;
              goto LABEL_93;
            }

            v219 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v220 = v196;

            outlined consume of DOCFileProviderSourceType(v196);
            rawValue = 0x278FA9000;
            v60 = v351;
            if (v219)
            {
              v221 = v342;
              v222 = v340;
              outlined consume of DOCSidebarItem?(v342, v133, v340, v48, i, 1u);
              outlined consume of DOCSidebarItem?(v221, v133, v222, v48, i, 1u);
              v223 = v222;
              v224 = v351;
              outlined consume of DOCSidebarItem(v221, v133, v223, v48, i, 1u);
              v62 = v224;
LABEL_194:
              v48 = 0;
              v55 = v349;
              goto LABEL_43;
            }
          }

          v225 = [v60 items];
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
          v226 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v319 = v226;
          if (v226 >> 62)
          {
LABEL_275:
            v227 = __CocoaSet.count.getter();
          }

          else
          {
            v227 = *((v226 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v228 = v351;
          if (!v227)
          {
LABEL_193:

            v262 = v342;
            v263 = v340;
            outlined consume of DOCSidebarItem?(v342, v133, v340, v48, i, 1u);
            outlined consume of DOCSidebarItem?(v262, v133, v263, v48, i, 1u);
            outlined consume of DOCSidebarItem?(v262, v133, v263, v48, i, 1u);
            v62 = v228;
            goto LABEL_194;
          }

          v229 = 0;
          v317 = v319 & 0xFFFFFFFFFFFFFF8;
          v318 = v319 & 0xC000000000000001;
          v316 = v319 + 32;
          v327 = (v330 + 8);
          v328 = (v330 + 32);
          v322 = 0x8000000249BC5FD0;
          v323 = 0x8000000249BC6000;
          v320 = 0x8000000249BC5FA0;
          v330 = 0xD000000000000025;
          v324 = "com.apple.icloud.applecorporate";
          v325 = "ntManager.FINode.File";
          v315 = v227;
          while (1)
          {
            if (v318)
            {
              v344 = MEMORY[0x24C1FC540](v229, v319);
              v230 = v332;
              v232 = __OFADD__(v229, 1);
              v233 = v229 + 1;
              if (v232)
              {
                goto LABEL_203;
              }
            }

            else
            {
              v230 = v332;
              if (v229 >= *(v317 + 16))
              {
                goto LABEL_204;
              }

              v344 = *(v316 + 8 * v229);
              v232 = __OFADD__(v229, 1);
              v233 = v229 + 1;
              if (v232)
              {
                goto LABEL_203;
              }
            }

            v321 = v233;
            if (one-time initialization token for DOCAcceptableDragPasteboardTypes != -1)
            {
              swift_once();
            }

            rawValue = DOCAcceptableDragPasteboardTypes._rawValue;
            v60 = *(DOCAcceptableDragPasteboardTypes._rawValue + 2);
            if (v60)
            {
              break;
            }

LABEL_162:

            v229 = v321;
            v228 = v351;
            rawValue = 0x278FA9000;
            v133 = v341;
            if (v321 == v315)
            {
              goto LABEL_193;
            }
          }

          v234 = 0;
          v337 = DOCAcceptableDragPasteboardTypes._rawValue + ((*(v230 + 80) + 32) & ~*(v230 + 80));
          while (v234 < *(rawValue + 16))
          {
            v235 = v335;
            outlined init with copy of DOCDragPasteboardType(v337 + *(v230 + 72) * v234, v335, v231);
            v133 = [v344 itemProvider];
            outlined init with copy of DOCDragPasteboardType(v235, v336, v236);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload)
            {
              if (EnumCaseMultiPayload == 1)
              {
                if (*v336)
                {
                  if (*v336 == 1)
                  {
                    v238 = v322;
                  }

                  else
                  {
                    v238 = v323;
                  }

                  v239 = 0xD000000000000029;
                }

                else
                {
                  v239 = v330;
                  v238 = v320;
                }
              }

              else
              {
                v241 = v333;
                v242 = v334;
                (*v328)(v333, v336, v334);
                v243 = UTType.identifier.getter();
                v238 = v244;
                v245 = v241;
                v230 = v332;
                (*v327)(v245, v242);
                v239 = v243;
              }
            }

            else
            {
              if (*v336)
              {
                v239 = 0xD000000000000029;
              }

              else
              {
                v239 = v330;
              }

              v240 = v325;
              if (!*v336)
              {
                v240 = v324;
              }

              v238 = v240 | 0x8000000000000000;
            }

            v246 = MEMORY[0x24C1FAD20](v239, v238);

            v247 = [v133 hasRepresentationConformingToTypeIdentifier:v246 fileOptions:0];

            outlined destroy of DOCDragPasteboardType(v335, v248);
            if (v247)
            {
              v249 = v341;
              v250 = v342;
              v251 = v340;
              v252 = v326;
              outlined consume of DOCSidebarItem?(v342, v341, v340, v326, i, 1u);
              outlined consume of DOCSidebarItem?(v250, v249, v251, v252, i, 1u);

              v253 = v343;
              v254 = v329;
              v338 = i;
              v255 = v345;
              v345(v343, v350, v329);
              v256 = type metadata accessor for DOCSidebarDropProposal(0);
              v257 = objc_allocWithZone(v256);
              v255(&v257[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath], v253, v254);
              v360.receiver = v257;
              v360.super_class = v256;
              v48 = objc_msgSendSuper2(&v360, sel_initWithDropOperation_intent_, 2, 2);
              v259 = v341;
              v258 = v342;
              v260 = v251;
              v261 = v252;
              goto LABEL_244;
            }

            ++v234;
            v48 = v326;
            if (v60 == v234)
            {
              goto LABEL_162;
            }
          }

LABEL_200:
          __break(1u);
LABEL_201:
          ;
        }

        v146 = v125;
        v147 = v341;
        v148 = v340;
        v149 = v48;
        v150 = i;
        v151 = 1;
LABEL_91:
        outlined consume of DOCSidebarItem?(v146, v147, v148, v149, v150, v151);
LABEL_92:
        v48 = 0;
        goto LABEL_93;
      }

      outlined destroy of CharacterSet?(&v371, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
    }

    v48 = 0;
    rawValue = 0x278FA9000;
    v62 = v68;
    goto LABEL_96;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v65 = static DOCLog.UI;
  v66 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_249B9A480;
  *(v67 + 56) = MEMORY[0x277D837D0];
  *(v67 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v67 + 32) = 0xD00000000000003CLL;
  *(v67 + 40) = 0x8000000249BFBA60;
  os_log(_:dso:log:type:_:)("%@: unable to determine sidebar section", 39, 2, &dword_2493AC000, v65, v66, v67);

  return 0;
}