double DOCItemCollectionViewController.updateViewOptionsViewModel()()
{
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x1920))();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = DOCItemCollectionViewController.loadViewOptionsModel(isInPopover:)(v10[0]);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___viewOptionsViewModel) = v2;

  v4 = (*((*v1 & *v0) + 0x1948))(v3);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCViewOptionsViewController_viewModel;
    v6 = v4;
    swift_beginAccess();
    *&v6[v5] = v2;

    v7 = dispatch thunk of UIHostingController.rootView.modify();
    *(v8 + 8) = v2;

    v7(v10, 0);
  }

  return result;
}

void *DOCItemCollectionViewController.viewOptionsViewController.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_viewOptionsViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.viewOptionsViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_viewOptionsViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCItemCollectionViewController.enqueuedCreatedFolderToBeRenamed.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedCreatedFolderToBeRenamed;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.enqueuedCreatedFolderToBeRenamed.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedCreatedFolderToBeRenamed;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCItemCollectionViewController.registeredItemCellClassByIdentifier.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

void *DOCItemCollectionViewController.newFolderReadyForRenameTimer.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_newFolderReadyForRenameTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.newFolderReadyForRenameTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_newFolderReadyForRenameTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCItemCollectionViewController.repositionRenamingCellTimer.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_repositionRenamingCellTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.repositionRenamingCellTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_repositionRenamingCellTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCItemCollectionViewController.canUseInlineRename(forItemCell:)(uint64_t a1)
{
  if (a1)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = DOCItemCollectionViewController.defaultItemCellClass.getter();
  }

  return (*(ObjectType + 504))() & 1;
}

uint64_t DOCItemCollectionViewController.defaultItemCellClass.getter()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xBD8))() == 2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionOutlineCellIdentifier);
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionOutlineCellIdentifier + 8);
  }

  else
  {
    v4 = DOCItemCollectionViewController.createCellIdentifier.getter();
    v3 = v4;
    v2 = v5;
  }

  v6 = (*((*v1 & *v0) + 0x920))(v4);
  if (*(v6 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v2);
    v9 = v8;

    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * v7);

      return v10;
    }
  }

  else
  {
  }

  return type metadata accessor for DOCItemCollectionGridCell();
}

void (*vtable thunk for DOCBrowserContainedViewController.isUserInteractionEnabled.modify dispatching to DOCItemCollectionViewController.isUserInteractionEnabled.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x9A8))();
  return protocol witness for DOCUserActivityHosting.currentUserActivity.modify in conformance DOCSmartFolderManager;
}

uint64_t DOCItemCollectionViewController.sectionColumnLimitIfNecessary(for:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = MEMORY[0x277D85000];
  if (!(*((*MEMORY[0x277D85000] & *v1) + 0xBD8))() && ((*((*v7 & *v1) + 0xF10))() & 1) != 0)
  {
    result = (*((*v7 & *v1) + 0x11C0))();
    if (!result)
    {
      return result;
    }

    (*(*result + 160))(v13);

    v10 = (*(*v6 + 136))(v9);
    v12[0] = v2;
    v12[1] = v3;
    v12[2] = v4;
    v12[3] = v5;
    v12[4] = v6;
    v11 = DOCItemCollectionViewController.sectionIsHorizontallyScrollable(for:)(v12);
    outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v13);
    if ((v10 & 1) == 0 && (v11 & 1) == 0)
    {
      return v13[13];
    }
  }

  return 0;
}

Swift::Bool __swiftcall DOCItemCollectionViewController.useOutlineStyleReload()()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xBD8);
  if (v2() == 2 || v2() == 1 && (v4 = [objc_opt_self() outlineDisclosure], v5 = objc_msgSend(v4, sel_isEnabled), v4, v5))
  {
    v3 = (*((*v1 & *v0) + 0xF10))() ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

Swift::Bool __swiftcall DOCItemCollectionViewController.establishFirstResponder()()
{
  [v0 setNeedsFocusUpdate];
  v1 = [objc_opt_self() sharedManager];
  v2 = [v1 requestCurrentFocus_];

  return v2;
}

uint64_t DOCItemCollectionViewController.sectionIsHorizontallyScrollable(for:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = MEMORY[0x277D85000];
  if (!(*((*MEMORY[0x277D85000] & *v1) + 0xBD8))() && ((*((*v7 & *v1) + 0xF10))() & 1) != 0)
  {
    result = (*((*v7 & *v1) + 0x11C0))();
    if (!result)
    {
      return result;
    }

    (*(*result + 160))(v12);

    if ((*(*v6 + 136))(v9))
    {
      outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v12);
    }

    else
    {
      v11[0] = v2;
      v11[1] = v3;
      v11[2] = v4;
      v11[3] = v5;
      v11[4] = v6;
      v10 = DOCItemCollectionViewController.shouldShowShowMoreButton(for:)(v11);
      outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v12);
      if (v10)
      {
        return v13;
      }
    }
  }

  return 0;
}

Swift::Bool __swiftcall DOCItemCollectionViewController.sectionIsHorizontallyScrollable(at:)(Swift::Int at)
{
  if (at < 0 || (v3 = *((*MEMORY[0x277D85000] & *v1) + 0xD60), v4 = *(v3() + 16), v5 = , v4 <= at))
  {
    v13 = 0;
  }

  else
  {
    v6 = (v3)(v5);
    if (*(v6 + 16) <= at)
    {
      __break(1u);
      return v6;
    }

    v7 = (v6 + 40 * at);
    v9 = v7[4];
    v8 = v7[5];
    v11 = v7[6];
    v10 = v7[7];
    v12 = v7[8];

    v15[0] = v9;
    v15[1] = v8;
    v15[2] = v11;
    v15[3] = v10;
    v15[4] = v12;
    v13 = DOCItemCollectionViewController.sectionIsHorizontallyScrollable(for:)(v15);
  }

  LOBYTE(v6) = v13 & 1;
  return v6;
}

uint64_t DOCItemCollectionViewController.shouldShowShowMoreButton(for:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xBD8))() || ((*((*v3 & *v1) + 0xF10))() & 1) == 0)
  {
    return 0;
  }

  result = (*((*v3 & *v1) + 0x11C0))();
  if (!result)
  {
    return result;
  }

  (*(*result + 160))(v9);

  v6 = (*((*v3 & *v1) + 0x1018))(v5);
  if (!v6)
  {
    outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v9);
    return 0;
  }

  v7 = (*(*v2 + 112))();
  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v9);
  return v9[13] < v8;
}

double DOCItemCollectionViewController.configure(sectionHeader:with:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = a2[1];
  v32 = *a2;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = MEMORY[0x277D85000];
  v10 = (*((*MEMORY[0x277D85000] & *v2) + 0xBD8))();
  (*((*v9 & *a1) + 0x3F8))(v10);
  v11 = *((*v9 & *a1) + 0x270);

  v12 = v11(v6, v7);
  v13 = (*(*v8 + 184))(v12);
  v39 = v13;
  v14 = MEMORY[0x277D84F90];
  *&v36 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = v13;
    MEMORY[0x24C1FB090]();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v14 = v36;
  }

  outlined destroy of CharacterSet?(&v39, &_sSo6DOCTagCSgMd, &_sSo6DOCTagCSgMR);
  (*((*v9 & *a1) + 0x258))(v14);
  *&v36 = v32;
  *(&v36 + 1) = v5;
  *&v37 = v6;
  *(&v37 + 1) = v7;
  v38 = v8;
  v16 = *((*v9 & *a1) + 0x418);

  v17 = v16(&v36);
  (*((*v9 & *v3) + 0x1160))(&v36, v17);
  v33 = v36;
  v34 = v37;
  v35 = BYTE8(v37);
  (*((*v9 & *a1) + 0x330))(&v33);
  v18 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics + 32);
  v19 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics + 16);
  v20 = *v9 & *a1;
  v36 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics);
  v37 = v19;
  v38 = v18;
  v21 = (*(v20 + 720))(&v36);
  v22 = (*((*v9 & *v3) + 0x11C0))(v21);
  v23 = (*((*v9 & *a1) + 0x2B8))(v22);
  if (((*((*v9 & *v3) + 0xF10))(v23) & 1) != 0 && ((*((*v9 & *v3) + 0xCE8))(&v36), v36 != 10))
  {
    v24 = DOCItemCollectionViewController.groupBySubmenu(withNoneOption:options:)(0, 0);
  }

  else
  {
    v24 = 0;
  }

  v25 = (*((*v9 & *a1) + 0x360))(v24);
  (*((*v9 & *v3) + 0xCE8))(&v36, v25);
  (*((*v9 & *a1) + 0x288))(*&aDate_8[8 * v36], qword_249BAB8A0[v36]);
  *&v36 = v32;
  *(&v36 + 1) = v5;
  *&v37 = v6;
  *(&v37 + 1) = v7;
  v38 = v8;
  if (DOCItemCollectionViewController.shouldShowShowMoreButton(for:)(&v36))
  {
    v26 = (*(*v8 + 136))();
    (*((*v9 & *a1) + 0x458))(v26 & 1);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = *((*v9 & *a1) + 0x430);

    v28(partial apply for closure #2 in DOCItemCollectionViewController.configure(sectionHeader:with:), v27);
  }

  else
  {
    (*((*v9 & *a1) + 0x458))(0);
    (*((*v9 & *a1) + 0x430))(0, 0);
  }

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = *((*v9 & *a1) + 0x448);

  v30(partial apply for closure #3 in DOCItemCollectionViewController.configure(sectionHeader:with:), v29);

  return result;
}

double DOCItemCollectionViewController.sectionHeaderHeightForItem(at:)()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v4.n128_f64[0] = MEMORY[0x28223BE20](v1, v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D85000];
  Height = 0.0;
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xEF8))(v4))
  {
    v9 = (*((*v7 & *v0) + 0x1010))();
    if (one-time initialization token for sectionHeader != -1)
    {
      swift_once();
    }

    v10 = MEMORY[0x24C1FAD20](static DOCItemCollectionViewController.ElementKind.sectionHeader, *algn_27EF18858);
    v11 = IndexPath.section.getter();
    MEMORY[0x24C1F8100](0, v11);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v2 + 8))(v6, v1);
    v13 = [v9 supplementaryViewForElementKind:v10 atIndexPath:isa];

    if (v13)
    {
      [v13 frame];
      Height = CGRectGetHeight(v16);
    }
  }

  return Height;
}

Swift::Void __swiftcall DOCItemCollectionViewController.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0xB20))();
  if (v5 && (v6 = v5, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIScrollView, 0x277D759D8), v7 = a1, v8 = static NSObject.== infix(_:_:)(), v6, v7, (v8 & 1) != 0))
  {

    DOCItemCollectionViewController.resetButtons()();
  }

  else
  {
    (*((*v4 & *v2) + 0x17E0))();
    v9 = *((*v4 & *v2) + 0xF60);

    v9();
  }
}

void DOCItemCollectionViewController.updateContent(_:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x11C0);
  v6 = v5();
  if (v6)
  {
    (*(*v6 + 184))(&v60);

    v79 = v68;
    v80 = v69;
    v81[0] = v70[0];
    *(v81 + 9) = *(v70 + 9);
    v75 = v64;
    v76 = v65;
    v77 = v66;
    v78 = v67;
    v71 = v60;
    v72 = v61;
    v73 = v62;
    v74 = v63;
    DOCGridLayout.specIconWidth.modify();
    v90 = v79;
    v91 = v80;
    v92[0] = v81[0];
    *(v92 + 9) = *(v81 + 9);
    v86 = v75;
    v87 = v76;
    v88 = v77;
    v89 = v78;
    v82 = v71;
    v83 = v72;
    v84 = v73;
    v85 = v74;
  }

  else
  {
    _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgWOi0_(&v82);
  }

  v79 = v90;
  v80 = v91;
  v81[0] = v92[0];
  *(v81 + 9) = *(v92 + 9);
  v75 = v86;
  v76 = v87;
  v77 = v88;
  v78 = v89;
  v71 = v82;
  v72 = v83;
  v73 = v84;
  v74 = v85;
  v7 = v5();
  if (v7)
  {
    (*(*v7 + 256))(&v44);

    v64 = v48;
    v65 = v49;
    v66 = v50;
    v67 = v51;
    v60 = v44;
    v61 = v45;
    v62 = v46;
    v63 = v47;
    DOCGridLayout.specIconWidth.modify();
    v56 = v64;
    v57 = v65;
    v58 = v66;
    v59 = v67;
    v52 = v60;
    v53 = v61;
    v54 = v62;
    v55 = v63;
  }

  else
  {
    _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgWOi0_(&v52);
  }

  v64 = v56;
  v65 = v57;
  v66 = v58;
  v67 = v59;
  v60 = v52;
  v61 = v53;
  v62 = v54;
  v63 = v55;
  v8 = *((*v4 & *a1) + 0x3D0);
  if (v8())
  {
    swift_unknownObjectRelease();
  }

  v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics + 16);
  v44 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics);
  v45 = v9;
  *&v46 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics + 32);
  v10 = DOCItemCollectionViewController.modelPreloadingAppearance.getter();
  [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) preferLastUsedDate];
  [v1 isEditing];
  v11 = v8();
  if (v11)
  {
    v12 = v11;
    (*((*v4 & *v1) + 0x1790))();
    if ((*((*v4 & *v1) + 0x18C0))(v12))
    {
      DOCItemCollectionViewController.specificallyExcludeFolderPicking(_:)(v12);
    }

    v11 = swift_unknownObjectRelease();
  }

  v13 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v13)
  {
    v14 = (*((*v4 & *v13) + 0x1A8))(v11);
    if (v14)
    {
      v15 = v14;
      objc_opt_self();
      v41 = swift_dynamicCastObjCClass() != 0;
    }

    else
    {
      v41 = 0;
    }

    v16 = (*((*v4 & *v13) + 0x1A8))();
    v42 = v10;
    if (v16)
    {
      v17 = v16;
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v43 = [v18 itemsOrigin];
      }

      else
      {
        v43 = 0;
      }
    }

    else
    {
      v43 = 0;
    }

    v19 = (*((*v4 & *v2) + 0xA68))();
    v20 = [v19 identifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
    {
      v25 = 1;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v28 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
    if (v28)
    {
      v29 = v28;
      v30 = v8();
      if (v30)
      {
        v31 = v30;
        if (v25 & 1 | (v43 == 1) || v41 && ((v36 = [v30 providerDomainID], v37 = DOCProviderDomainIDIsSharedServerDomainID(), v36, (v37) || (v38 = objc_msgSend(v31, sel_providerDomainID), v39 = DOCProviderDomainIDIsExternalDevice(), v38, v39))) && (v32 = *&v29[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_sourceObserver], swift_getObjectType(), v33 = v32, v34 = DOCNode.sourceIdentifier.getter(), v35 = objc_msgSend(v33, sel_cachedDisplayNameForSourceIdentifier_, v34), v33, v34, v35))
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          swift_unknownObjectRelease();
        }

        else
        {

          v26 = swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }

    v40 = MEMORY[0x28223BE20](v26, v27);
    (*((*MEMORY[0x277D85000] & *a1) + 0x2B8))(partial apply for closure #3 in DOCItemCollectionViewController.updateContent(_:), v40);
    outlined destroy of CharacterSet?(&v82, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
    outlined destroy of CharacterSet?(&v52, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #2 in DOCItemCollectionViewController.prefetchCellContent(for:)(void *a1)
{
  v2 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  v4.n128_f64[0] = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *a1) + 0xB70))(v4);
  if (result)
  {
    (*((*v7 & *a1) + 0x6E8))();
    v9 = outlined destroy of RestorableSettings(v6, type metadata accessor for DOCFastLabel.LabelInformation);
    (*((*v7 & *a1) + 0x758))(v9);

    (*((*v7 & *a1) + 0x738))(v10);

    (*((*v7 & *a1) + 0x780))(v11);

    result = (*((*v7 & *a1) + 0x800))(v12);
    if ((result & 1) == 0)
    {
      (*((*v7 & *a1) + 0xA80))();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

double @objc DOCItemCollectionViewController.collectionView(_:prefetchItemsAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  type metadata accessor for IndexPath();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  a5(v8);

  return result;
}

uint64_t closure #3 in DOCItemCollectionViewController.updateContent(_:)(void *a1, uint64_t a2, void *a3, __int128 *a4, __int128 *a5, char a6, __int128 *a7, void *a8, char a9, char a10, char a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16)
{
  v54 = a7[1];
  v55 = *a7;
  v21 = *(a7 + 4);
  v22 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *a1) + 0x408))(a2);
  v23 = DOCItemCollectionViewController.shouldPreserveSpaceForDisclosureButton.getter();
  v24 = (*((*v22 & *a1) + 0x450))(v23 & 1);
  (*((*v22 & *a3) + 0xCE8))(&v60, v24);
  (*((*v22 & *a1) + 0x420))(&v60);
  v25 = *v22 & *a1;
  v26 = a4[9];
  v68 = a4[8];
  v69 = v26;
  v70[0] = a4[10];
  *(v70 + 9) = *(a4 + 169);
  v27 = a4[5];
  v64 = a4[4];
  v65 = v27;
  v28 = a4[7];
  v66 = a4[6];
  v67 = v28;
  v29 = a4[1];
  v60 = *a4;
  v61 = v29;
  v30 = a4[3];
  v62 = a4[2];
  v63 = v30;
  v31 = *(v25 + 736);
  outlined init with copy of DOCGridLayout.Spec?(a4, &v57, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
  v31(&v60);
  v32 = *v22 & *a1;
  v33 = a5[5];
  v64 = a5[4];
  v65 = v33;
  v34 = a5[7];
  v66 = a5[6];
  v67 = v34;
  v35 = a5[1];
  v60 = *a5;
  v61 = v35;
  v36 = a5[3];
  v62 = a5[2];
  v63 = v36;
  v37 = *(v32 + 760);
  outlined init with copy of DOCGridLayout.Spec?(a5, &v57, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
  v38 = v37(&v60);
  v39 = (*((*v22 & *a3) + 0x11C0))(v38);
  if (v39)
  {
    (*(*v39 + 232))(&v60);

    v40.n128_u64[0] = v60;
  }

  else
  {
    v40.n128_u64[0] = 0;
  }

  (*((*v22 & *a1) + 0x310))(v39, v40);
  (*((*v22 & *a1) + 0x468))(a6 & 1);
  v60 = v55;
  v61 = v54;
  *&v62 = v21;
  BYTE8(v62) = 0;
  (*((*v22 & *a1) + 0x528))(&v60);
  v41 = *((*v22 & *a1) + 0x328);
  v42 = a8;
  v41(a8);
  (*((*v22 & *a1) + 0x388))(a9 & 1);
  (*((*v22 & *a1) + 0x510))(a10 & 1);
  (*((*v22 & *a1) + 0x498))(a11 & 1);
  (*((*v22 & *a1) + 0x4E0))(a12 & 1);
  v43 = *(a3 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  v44 = [v43 isPickerUI];
  v45 = [a3 traitCollection];
  if (v44)
  {
    v46 = UITraitCollection.modifyingTraits(_:)();

    v45 = v46;
  }

  (*((*v22 & *a1) + 0x370))(v45);
  (*((*v22 & *a1) + 0x480))(a13, 0);
  (*((*v22 & *a1) + 0x4F8))(a14 & 1);
  v47 = *((*v22 & *a1) + 0x968);

  v47(v48);
  v49 = *((*v22 & *a1) + 0x848);

  v49(a15, a16);
  v50 = (*((*v22 & *a1) + 0x8A0))([v43 isPopoverOrWidget]);
  (*((*v22 & *a3) + 0x1160))(&v60, v50);
  v57 = v60;
  v58 = v61;
  v59 = BYTE8(v61);
  (*((*v22 & *a1) + 0x3F0))(&v57);
  v51 = (*((*v22 & *a1) + 0x3A0))(1);
  v52 = (*((*v22 & *a3) + 0xFE0))(v51);
  return (*((*v22 & *a1) + 0x3B8))(v52 & 1);
}

uint64_t DOCItemCollectionViewController.shouldPreserveSpaceForDisclosureButton.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6, v7);
  v10 = &v31 - v9;
  v11 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xF10))(v8);
  if (result)
  {
    return 0;
  }

  v13 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v13)
  {
    v14 = (*((*v11 & *v13) + 0x1A8))();
    if (v14)
    {
      v15 = v14;
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();

      if (v16)
      {
        return 0;
      }
    }

    v17 = (*((*v11 & *v1) + 0xA68))();
    v18 = [v17 identifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
    {
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        return 1;
      }
    }

    v26 = (*((*v11 & *v1) + 0xC70))(v25);
    if (v26)
    {
      v27 = [v26 nodeURL];
      swift_unknownObjectRelease();
      if (v27)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v28 = type metadata accessor for URL();
        (*(*(v28 - 8) + 56))(v5, 0, 1, v28);
      }

      else
      {
        v28 = type metadata accessor for URL();
        (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
      }

      outlined init with take of (key: URL, value: FPItem)(v5, v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      type metadata accessor for URL();
      v30 = 1;
      if ((*(*(v28 - 8) + 48))(v10, 1, v28) != 1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v29 = type metadata accessor for URL();
      (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
    }

    v30 = 0;
LABEL_20:
    outlined destroy of CharacterSet?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return v30;
  }

  __break(1u);
  return result;
}

CGPoint __swiftcall DOCItemCollectionViewController.collectionView(_:targetContentOffsetForProposedContentOffset:)(UICollectionView *_, CGPoint targetContentOffsetForProposedContentOffset)
{
  v4 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *v2) + 0x1010))(__PAIR128__(v5, *&targetContentOffsetForProposedContentOffset.x), __PAIR128__(v6, *&targetContentOffsetForProposedContentOffset.y));
  (*((*v4 & *v7) + 0x140))();
  v9 = v8;

  [(UICollectionView *)_ contentOffset];
  if (v10 >= v9)
  {
    v10 = v9;
  }

  v11 = 0.0;
  result.y = v10;
  result.x = v11;
  return result;
}

uint64_t DOCItemCollectionViewController.collectionView(_:shouldDeselectItemAt:)(void *a1)
{
  if (([v1 isEditing] & 1) == 0)
  {
    result = [a1 delegate];
    if (!result)
    {
      return result;
    }

    v4 = result;
    if ([result respondsToSelector_])
    {
      swift_unknownObjectRetain();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v6 = [v4 collectionView:a1 shouldSelectItemAtIndexPath:isa];
      swift_unknownObjectRelease_n();

      return v6;
    }

    swift_unknownObjectRelease();
  }

  return 1;
}

unint64_t DOCItemCollectionViewController.collectionView(_:shouldSelectItemAt:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v85 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  *&v88 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = v79 - v10;
  MEMORY[0x28223BE20](v12, v13);
  v15 = v79 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = v79 - v18;
  v20 = type metadata accessor for IndexPath();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  *&v84 = v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  *&v86 = v79 - v26;
  v29.n128_f64[0] = MEMORY[0x28223BE20](v27, v28);
  v31 = v79 - v30;
  v32 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x1448))(v29))
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.UI);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2493AC000, v34, v35, "Inline rename session in progress, skipping cell selection", v36, 2u);
      MEMORY[0x24C1FE850](v36, -1, -1);
    }

    return 0;
  }

  v80 = v11;
  v38 = *((*v32 & *v2) + 0x18A0);
  v39 = (*v32 & *v2) + 6304;
  v87 = a2;
  v81 = v39;
  v82 = v38;
  v38(a2);
  v40 = *(v21 + 48);
  v41 = v40(v19, 1, v20);
  v83 = v21;
  if (v41 == 1)
  {
    v42 = outlined destroy of CharacterSet?(v19, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  }

  else
  {
    (*(v21 + 32))(v31, v19, v20);
    v43 = (*((*v32 & *v2) + 0xD88))(v31, 0);
    if (v43)
    {
      v44 = v43;
      if ((*((*v32 & *v2) + 0x148))())
      {
        v45 = (*((*v32 & *v2) + 0x1790))(v44);
        swift_unknownObjectRelease();
        v42 = (*(v83 + 8))(v31, v20);
        if ((v45 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        (*(v83 + 8))(v31, v20);
        v42 = swift_unknownObjectRelease();
      }
    }

    else
    {
      v42 = (*(v21 + 8))(v31, v20);
    }
  }

  if ((*((*v32 & *v3) + 0x1310))(v42))
  {
    goto LABEL_30;
  }

  v82(v87);
  if (v40(v15, 1, v20) != 1)
  {
    v46 = v83;
    v47 = v86;
    (*(v83 + 32))(v86, v15, v20);
    v48 = (*((*v32 & *v3) + 0xD88))(v47, 0);
    if (!v48)
    {
      (*(v46 + 8))(v47, v20);
      goto LABEL_30;
    }

    v49 = v48;
    v50 = *((*v32 & *v3) + 0x1338);
    v51 = v50();
    if (v51 >> 62)
    {
      v79[1] = v51;
      v52 = __CocoaSet.count.getter();
    }

    else
    {
      v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v52 == 1)
    {
      result = (v50)(v53);
      if (result >> 62)
      {
        v77 = result;
        v78 = __CocoaSet.count.getter();
        result = v77;
        if (v78)
        {
          goto LABEL_25;
        }
      }

      else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_25:
        if ((result & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FC540](0);
        }

        else
        {
          if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          swift_unknownObjectRetain();
        }

        swift_getObjectType();
        v54 = DOCNode.isEqualTo(node:)(v49);
        swift_unknownObjectRelease();
        goto LABEL_50;
      }
    }

    v54 = 0;
LABEL_50:
    v55 = v40;
    (*((*v32 & *v3) + 0x1288))(v54 & 1);
    swift_unknownObjectRelease();
    (*(v83 + 8))(v86, v20);
    goto LABEL_31;
  }

  outlined destroy of CharacterSet?(v15, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
LABEL_30:
  v55 = v40;
  (*((*v32 & *v3) + 0x1288))(0);
LABEL_31:
  v56 = v87;
  if (((*((*v32 & *v3) + 0x1788))(v87) & 1) == 0)
  {
    v67 = v88;
    v82(v56);
    if (v55(v67, 1, v20) == 1)
    {
      outlined destroy of CharacterSet?(v67, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    }

    else
    {
      v68 = v83;
      v69 = v84;
      (*(v83 + 32))(v84, v67, v20);
      v70 = (*((*v32 & *v3) + 0xD88))(v69, 0);
      if (v70)
      {
        v71 = [v70 fpfs_fpItem];
        v72 = swift_unknownObjectRelease();
        if (v71)
        {
          v73 = (*((*v32 & *v3) + 0xE8))(v72);
          if (v73)
          {
            [v73 didTapOnUnselectableItem_];

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }

      (*(v68 + 8))(v69, v20);
    }

    return 0;
  }

  if (!(*((*v32 & *v3) + 0xA98))())
  {
    return 1;
  }

  v58 = v57;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v60 = [v85 layoutAttributesForItemAtIndexPath_];

  if (v60)
  {
    [v60 frame];
    v85 = v61;
    v86 = v62;
    v84 = v63;
    v88 = v64;

    *&v66 = v84;
    *&v65 = v85;
    *(&v65 + 1) = v86;
    *(&v66 + 1) = v88;
  }

  else
  {
    v65 = 0uLL;
    v66 = 0uLL;
  }

  v74 = v83;
  v75 = v80;
  v89[0] = v65;
  v89[1] = v66;
  v90 = v60 == 0;
  ObjectType = swift_getObjectType();
  (*(v74 + 16))(v75, v56, v20);
  (*(v74 + 56))(v75, 0, 1, v20);
  (*(v58 + 16))(v3, v75, v89, ObjectType, v58);
  swift_unknownObjectRelease();
  outlined destroy of CharacterSet?(v75, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  return 1;
}

uint64_t @objc DOCItemCollectionViewController.collectionView(_:shouldDeselectItemAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id, char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a1;
  LOBYTE(a5) = a5(v13, v12);

  (*(v9 + 8))(v12, v8);
  return a5 & 1;
}

uint64_t DOCItemCollectionViewController.fastTitle(forNode:)(void *a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = DOCItemCollectionViewController.modelPreloadingAppearance.getter();
  v8 = [v7 shouldShowFileExtensions];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v10 = static DOCFileExtensionManager.shared;
    v11 = [a1 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v10) = (*(*v10 + 216))(v6);
    (*(v3 + 8))(v6, v2);
    v9 = v10 ^ 1;
  }

  swift_getObjectType();
  return DOCNode.displayName(withHiddenPathExtension:)(v9 & 1)._countAndFlagsBits;
}

double DOCItemCollectionViewController.unarchiveSelectedItem(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.UI);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_2493AC000, v6, v7, "Handling archive item: %@", v8, 0xCu);
    outlined destroy of CharacterSet?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  v11 = [objc_opt_self() defaultManager];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v5;
  *(v13 + 24) = v12;
  v14 = v5;

  FPItemManager.unarchiveInPlace(item:alertPresenting:completion:)(v14, v2, partial apply for closure #1 in DOCItemCollectionViewController.unarchiveSelectedItem(_:), v13);

  return result;
}

void closure #1 in DOCItemCollectionViewController.unarchiveSelectedItem(_:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 || !a1)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.UI);
    v21 = a3;
    v22 = a2;
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v24 = 138412546;
      *(v24 + 4) = v21;
      *v25 = v21;
      *(v24 + 12) = 2080;
      v27 = v21;
      v28 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v29 = String.init<A>(describing:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v33);

      *(v24 + 14) = v31;
      _os_log_impl(&dword_2493AC000, oslog, v23, "Error unarchiving item: %@. Error: %s", v24, 0x16u);
      outlined destroy of CharacterSet?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x24C1FE850](v26, -1, -1);
      MEMORY[0x24C1FE850](v24, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v8 = one-time initialization token for UI;
    swift_unknownObjectRetain();
    if (v8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.UI);
    swift_unknownObjectRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v33 = v13;
      *v12 = 136315138;
      v14 = [a1 description];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v33);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_2493AC000, v10, v11, "Unarchive operation ended with result item: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C1FE850](v13, -1, -1);
      MEMORY[0x24C1FE850](v12, -1, -1);
    }

    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a1;
    swift_unknownObjectRetain();

    DOCRunInMainThread(_:)();
    swift_unknownObjectRelease();
  }
}

void closure #1 in closure #1 in DOCItemCollectionViewController.unarchiveSelectedItem(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_249BA0290;
    *(v5 + 32) = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
    isa = Array._bridgeToObjectiveC()().super.isa;

    aBlock[4] = DOCGridLayout.specIconWidth.modify;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    aBlock[3] = &block_descriptor_1080;
    v7 = _Block_copy(aBlock);

    [v4 revealWithNodes:isa selectEvenIfVisible:0 completionBlock:v7];
    _Block_release(v7);
  }
}

uint64_t @objc DOCItemCollectionViewController.collectionView(_:didSelectItemAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a1;
  a5(v12);

  return (*(v9 + 8))(v12, v8);
}

void DOCItemCollectionViewController.collectionView(_:performPrimaryActionForItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v11, v12);
  v15 = &v46 - v14;
  v16 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v2) + 0xBD8))(v13) == 3)
  {
    if (specialized DOCItemCollectionViewController.isColumnNavigationAction(in:at:)())
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.UI);
      (*(v7 + 16))(v15, a2, v6);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v49[0] = v21;
        *v20 = 136315394;
        *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BDEE20, v49);
        *(v20 + 12) = 2080;
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        v24 = v23;
        (*(v7 + 8))(v15, v6);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v49);

        *(v20 + 14) = v25;
        _os_log_impl(&dword_2493AC000, v18, v19, "%s %s navigation action. Error if this was not handled by didSelect:", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v21, -1, -1);
        MEMORY[0x24C1FE850](v20, -1, -1);
      }

      else
      {

        (*(v7 + 8))(v15, v6);
      }

      return;
    }

    v47 = a1;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.UI);
    (*(v7 + 16))(v10, a2, v6);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v49[0] = v46;
      *v40 = 136315394;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BDEE20, v49);
      *(v40 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      (*(v7 + 8))(v10, v6);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v49);

      *(v40 + 14) = v44;
      _os_log_impl(&dword_2493AC000, v38, v39, "%s %s performing primary action", v40, 0x16u);
      v45 = v46;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v45, -1, -1);
      MEMORY[0x24C1FE850](v40, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    v36 = v47;
LABEL_27:
    DOCItemCollectionViewController._handlePrimaryAction(_:at:)(v36, a2);
    return;
  }

  v26 = [objc_opt_self() doubleTapToOpen];
  v27 = [v26 isEnabled];

  if (!v27 || ![*(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isFilesApp])
  {
    goto LABEL_19;
  }

  if (one-time initialization token for _tapBehavior != -1)
  {
    swift_once();
  }

  v28 = swift_beginAccess();
  if (!static DOCItemCollectionViewController._tapBehavior)
  {
    goto LABEL_19;
  }

  if (static DOCItemCollectionViewController._tapBehavior != 1)
  {
    v29 = (*((*v16 & *v3) + 0x1010))(v28);
    v30 = (*((*v16 & *v29) + 0x188))();

    if ((v30 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.UI);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v48 = v35;
    *v34 = 136315138;
    *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BDEE20, &v48);
    _os_log_impl(&dword_2493AC000, v32, v33, "%s shouldSelectInsteadOfOpen=true selecting instead of opening if not already selected", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x24C1FE850](v35, -1, -1);
    MEMORY[0x24C1FE850](v34, -1, -1);
  }

  if ((*((*v16 & *v3) + 0x1280))())
  {
LABEL_19:
    v36 = a1;
    goto LABEL_27;
  }
}

uint64_t DOCItemCollectionViewController._handlePrimaryAction(_:at:)(void *a1, uint64_t a2)
{
  v323 = type metadata accessor for URL();
  v322 = *(v323 - 8);
  MEMORY[0x28223BE20](v323, v5);
  v319 = v312 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v324 = v312 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v326 = v312 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v327 = v312 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v19 = v312 - v18;
  v20 = type metadata accessor for IndexPath();
  v21 = *(v20 - 8);
  v22 = v21[8];
  MEMORY[0x28223BE20](v20, v23);
  v321 = v312 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = v312 - v26;
  MEMORY[0x28223BE20](v28, v29);
  v332 = v312 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v34 = v312 - v33;
  swift_beginAccess();
  v35 = static DOCItemCollectionViewController.__debug_last_action_id + 1;
  if (__OFADD__(static DOCItemCollectionViewController.__debug_last_action_id, 1))
  {
    __break(1u);
  }

  else
  {
    v315 = v22;
    v316 = v27;
    v318 = a1;
    v333 = v2;
    ++static DOCItemCollectionViewController.__debug_last_action_id;
    if (one-time initialization token for UI == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v36 = type metadata accessor for Logger();
  v37 = __swift_project_value_buffer(v36, static Logger.UI);
  v38 = v21[2];
  v329 = a2;
  v39 = a2;
  v40 = v38;
  v331 = v21 + 2;
  v38(v34, v39, v20);
  v334 = v37;
  v41 = Logger.logObject.getter();
  v42 = v21;
  v43 = static os_log_type_t.default.getter();
  v44 = os_log_type_enabled(v41, v43);
  v328 = v35;
  v330 = v40;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&aBlock = v46;
    *v45 = 136315650;
    *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000249BE0BE0, &aBlock);
    *(v45 + 12) = 2048;
    *(v45 + 14) = v35;
    *(v45 + 22) = 2080;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v20;
    v50 = v49;
    v325 = v42[1];
    v325(v34, v48);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v50, &aBlock);
    v20 = v48;

    *(v45 + 24) = v51;
    _os_log_impl(&dword_2493AC000, v41, v43, "%s [TAP][%ld] Primary Action (user tapped) at index path: %s", v45, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v46, -1, -1);
    MEMORY[0x24C1FE850](v45, -1, -1);
  }

  else
  {

    v325 = v21[1];
    v325(v34, v20);
  }

  v52 = v42;
  v53 = v333;
  v54 = [v333 isEditing];
  v55 = MEMORY[0x277D85000];
  v56 = v329;
  if ((v54 & 1) == 0)
  {
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = v20;
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = v328;
      _os_log_impl(&dword_2493AC000, v57, v58, "[TAP][%ld] Deselect item", v60, 0xCu);
      v61 = v60;
      v20 = v59;
      MEMORY[0x24C1FE850](v61, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR);
    v62 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_249B9A480;
    v330(v63 + v62, v56, v20);
    v55 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v53) + 0x1300))(0, v63);
  }

  if (![v53 isEditing] && ((*((*v55 & *v53) + 0x1898))(v56) & 1) != 0)
  {
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = v20;
      v67 = swift_slowAlloc();
      *v67 = 134217984;
      *(v67 + 4) = v328;
      _os_log_impl(&dword_2493AC000, v64, v65, "[TAP][%ld] Create new file", v67, 0xCu);
      v68 = v67;
      v20 = v66;
      MEMORY[0x24C1FE850](v68, -1, -1);
    }

    (*((*v55 & *v53) + 0x18E8))();
  }

  (*((*v55 & *v53) + 0x18A0))(v56);
  if ((v52[6])(v19, 1, v20) == 1)
  {
    return outlined destroy of CharacterSet?(v19, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  }

  v70 = v52[4];
  v71 = v56;
  v314 = v52 + 4;
  v313 = v70;
  v72 = (v70)(v332, v19, v20);
  v73 = *((*v55 & *v53) + 0x1010);
  v312[1] = (*v55 & *v53) + 4112;
  v312[0] = v73;
  v74 = v73(v72);
  v75 = v327;
  v76 = v55;
  v77 = v330;
  v330(v327, v71, v20);
  v317 = v52;
  v78 = (v52[7])(v75, 0, 1, v20);
  v79 = (*((*v76 & *v74) + 0xF0))(v78);
  v320 = v20;
  v80 = v326;
  outlined init with copy of DOCGridLayout.Spec?(v75, v326, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  (*(*v79 + 112))(v80);

  v81 = v75;
  v82 = v332;
  outlined destroy of CharacterSet?(v81, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v327 = (v53 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000);
  v83 = v76;
  v84 = (*((*v76 & *v53) + 0xD88))(v82, 0);
  if (!v84)
  {
    v116 = v321;
    v117 = v320;
    v77(v321, v82, v320);
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = v117;
      v122 = swift_slowAlloc();
      *&aBlock = v122;
      *v120 = 134218242;
      *(v120 + 4) = v328;
      *(v120 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
      v123 = dispatch thunk of CustomStringConvertible.description.getter();
      v125 = v124;
      v126 = v325;
      v325(v116, v121);
      v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v125, &aBlock);

      *(v120 + 14) = v127;
      _os_log_impl(&dword_2493AC000, v118, v119, "[TAP][%ld] No Node at resolved index path: %s. Bailing out", v120, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v122);
      MEMORY[0x24C1FE850](v122, -1, -1);
      MEMORY[0x24C1FE850](v120, -1, -1);

      return v126(v82, v121);
    }

    else
    {

      v170 = v325;
      v325(v116, v117);
      return v170(v82, v117);
    }
  }

  v85 = [v84 resolvedNode];
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v87 = [v85 nodeURL];
  v88 = v320;
  v89 = v83;
  if (v87)
  {
    v90 = v324;
    v91 = v87;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    if ((URL.isFileURL.getter() & 1) == 0)
    {
      v155 = v322;
      v156 = v319;
      v157 = v323;
      (*(v322 + 16))(v319, v90, v323);
      swift_unknownObjectRetain();
      v158 = Logger.logObject.getter();
      v159 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        v334 = swift_slowAlloc();
        *&aBlock = v334;
        *v160 = 136315394;
        v161 = DOCNode.nodeDescription.getter();
        v163 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v161, v162, &aBlock);

        *(v160 + 4) = v163;
        *(v160 + 12) = 2080;
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v164 = dispatch thunk of CustomStringConvertible.description.getter();
        v166 = v165;
        v167 = *(v155 + 8);
        v167(v156, v157);
        v168 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v164, v166, &aBlock);

        *(v160 + 14) = v168;
        _os_log_impl(&dword_2493AC000, v158, v159, "[TAP] [Interaction] An item: %s with invalid URL: %s, was selected. Bailing out.", v160, 0x16u);
        v169 = v334;
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v169, -1, -1);
        MEMORY[0x24C1FE850](v160, -1, -1);
        swift_unknownObjectRelease();

        v167(v324, v157);
      }

      else
      {
        swift_unknownObjectRelease();

        v171 = *(v155 + 8);
        v171(v156, v157);
        v171(v90, v157);
      }

      v154 = v332;
      v172 = v320;
      return (v325)(v154, v172);
    }

    (*(v322 + 8))(v90, v323);
  }

  if ([v53 isEditing])
  {
    v92 = v53;
    v93 = *((*v83 & *v53) + 0x1790);
    if (v93(v85))
    {
      swift_unknownObjectRetain();
      v94 = v92;
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();

      v97 = os_log_type_enabled(v95, v96);
      v321 = v85;
      if (v97)
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *&aBlock = v99;
        *v98 = 134218498;
        *(v98 + 4) = v328;
        *(v98 + 12) = 2080;
        v100 = [v94 isEditing];
        v101 = v100 == 0;
        if (v100)
        {
          v102 = 5457241;
        }

        else
        {
          v102 = 20302;
        }

        if (v101)
        {
          v103 = 0xE200000000000000;
        }

        else
        {
          v103 = 0xE300000000000000;
        }

        v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, &aBlock);

        *(v98 + 14) = v104;
        *(v98 + 22) = 2080;
        v105 = v93(v85);
        v106 = (v105 & 1) == 0;
        if (v105)
        {
          v107 = 5457241;
        }

        else
        {
          v107 = 20302;
        }

        if (v106)
        {
          v108 = 0xE200000000000000;
        }

        else
        {
          v108 = 0xE300000000000000;
        }

        v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v108, &aBlock);

        *(v98 + 24) = v109;
        _os_log_impl(&dword_2493AC000, v95, v96, "[TAP][%ld] Selecting the node: isEditing: %s, canMultiSelect: %s", v98, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v99, -1, -1);
        v110 = v98;
        v88 = v320;
        MEMORY[0x24C1FE850](v110, -1, -1);
      }

      v111 = v332;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v318 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

      *(v94 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
      v113 = [v94 viewIfLoaded];
      v114 = [v113 window];

      if (v114)
      {

        DOCBrowserContainedViewController.updateOverlayIfNeeded()(v115);
      }

      else
      {
        DOCBrowserContainedViewController.applyOverlaySearchSettings()();
      }

      swift_unknownObjectRelease();
      v154 = v111;
      goto LABEL_103;
    }
  }

  v326 = ObjectType;
  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    *v130 = 134217984;
    *(v130 + 4) = v328;
    _os_log_impl(&dword_2493AC000, v128, v129, "[TAP][%ld] Performing action (user not in select mode)", v130, 0xCu);
    MEMORY[0x24C1FE850](v130, -1, -1);
  }

  v131 = v333;
  v132 = (*((*v89 & *v333) + 0x1790))(v85);
  v133 = v317;
  v134 = v330;
  if ((v132 & 1) == 0 && *(v131 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isSelectingUsingGesture) == 1)
  {
    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      *v137 = 134217984;
      *(v137 + 4) = v328;
      _os_log_impl(&dword_2493AC000, v135, v136, "[TAP][%ld] Folder opening prevented while in gesture selection mode. Bailing out", v137, 0xCu);
      MEMORY[0x24C1FE850](v137, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v154 = v332;
    goto LABEL_103;
  }

  v138 = [v85 copyingProgress];
  if (v138)
  {
    v139 = v138;
    if (([v138 isFinished] & 1) == 0)
    {
      v190 = Logger.logObject.getter();
      v191 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v190, v191))
      {
        v192 = swift_slowAlloc();
        *v192 = 134217984;
        *(v192 + 4) = v328;
        _os_log_impl(&dword_2493AC000, v190, v191, "[TAP][%ld] Item is in the middle of a copy...", v192, 0xCu);
        MEMORY[0x24C1FE850](v192, -1, -1);
      }

      v193 = (*((*v89 & *v131) + 0xBD8))();
      v194 = Logger.logObject.getter();
      v195 = static os_log_type_t.default.getter();
      v196 = os_log_type_enabled(v194, v195);
      if (v193)
      {
        v197 = v332;
        if (v196)
        {
          v198 = swift_slowAlloc();
          *v198 = 134217984;
          *(v198 + 4) = v328;
          _os_log_impl(&dword_2493AC000, v194, v195, "[TAP][%ld] Deselecting the item. Bailing out", v198, 0xCu);
          MEMORY[0x24C1FE850](v198, -1, -1);
        }

        v199 = (v312[0])();
        v200 = IndexPath._bridgeToObjectiveC()().super.isa;
        [v199 deselectItemAtIndexPath:v200 animated:1];
        swift_unknownObjectRelease();

        v154 = v197;
      }

      else
      {
        v201 = v332;
        if (v196)
        {
          v202 = swift_slowAlloc();
          *v202 = 134217984;
          *(v202 + 4) = v328;
          _os_log_impl(&dword_2493AC000, v194, v195, "[TAP][%ld] Cancelling the copy", v202, 0xCu);
          MEMORY[0x24C1FE850](v202, -1, -1);
        }

        [v139 cancel];
        swift_unknownObjectRelease();

        v154 = v201;
      }

      goto LABEL_103;
    }
  }

  v140 = &selRef_initWithFrame_;
  if ([v85 isFolder])
  {
    if (![v85 isBrowsable])
    {
LABEL_52:
      swift_unknownObjectRetain();
      v141 = Logger.logObject.getter();
      v142 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        *&aBlock = v144;
        *v143 = 134218242;
        *(v143 + 4) = v328;
        *(v143 + 12) = 2080;
        v145 = [v85 isFolder];
        v146 = v145 == 0;
        if (v145)
        {
          v147 = 0x6C626173776F7262;
        }

        else
        {
          v147 = 0x656C626164616572;
        }

        v148 = v88;
        if (v146)
        {
          v149 = 0xE800000000000000;
        }

        else
        {
          v149 = 0xE900000000000065;
        }

        v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v149, &aBlock);
        v88 = v148;

        *(v143 + 14) = v150;
        _os_log_impl(&dword_2493AC000, v141, v142, "[TAP][%ld] Item is not %s. Bailing out.", v143, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v144);
        MEMORY[0x24C1FE850](v144, -1, -1);
        MEMORY[0x24C1FE850](v143, -1, -1);
      }

      v151 = v332;
      v152 = [v85 displayName];
      if (!v152)
      {
        v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v152 = MEMORY[0x24C1FAD20](v153);
      }

      [v85 isFolder];
      DOCAlertItemIsNotReadable();
      swift_unknownObjectRelease();

      goto LABEL_63;
    }
  }

  else if (([v85 isReadable] & 1) == 0)
  {
    goto LABEL_52;
  }

  v173 = [v85 isFolder];
  if (v173)
  {
    v174 = v333;
    v175 = *&v333[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = v85;
    v321 = v85;
    swift_unknownObjectRetain();
    DOCAnalyticsActionEvent.FileProvider.init(nodes:)(inited);
    LODWORD(v324) = v340;
    v177 = objc_opt_self();
    v178 = [v177 mainBundle];

    v179 = (*((*v89 & *v174) + 0xA68))();
    v180 = [v179 identifier];

    v181 = DOCAnalyticsActionEvent.Source.init(sourceIdentifier:)(v180);
    v182 = v335[1];
    v183 = (*((*v89 & *v174) + 0xBD8))(v181);
    if (v183 < 4)
    {
      v184 = 0x3020201u >> (8 * v183);
      v185 = [v177 mainBundle];
      v186 = [v185 bundleIdentifier];

      if (v186)
      {
        v187 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v189 = v188;
      }

      else
      {
        v187 = 0;
        v189 = 0;
      }

      v203 = v175;
      DOCAnalyticsActionEvent.Client.init(configuration:bundleIdentifier:)(v203, v187, v189, &aBlock);
      v204 = aBlock;
      v205 = v203;
      DOCAnalyticsActionEvent.SortMode.init(configuration:)(v205, v343);
      v206 = v343[0];
      v207 = v205;
      DOCAnalyticsActionEvent.SortOrder.init(configuration:)(v207, v335);
      v208 = v335[0];
      v209 = [v207 hostIdentifier];
      v210 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v212 = v211;

      v343[0] = 0xD000000000000032;
      v343[1] = 0x8000000249BCDC20;
      v343[2] = v210;
      v343[3] = v212;
      v344 = 4;
      v345 = v204;
      v346 = v324;
      v347 = v182;
      v348 = v184;
      v349 = v206;
      v350 = v208;
      v213 = Logger.logObject.getter();
      v214 = static os_log_type_t.default.getter();
      v215 = os_log_type_enabled(v213, v214);
      v216 = v328;
      if (v215)
      {
        v217 = swift_slowAlloc();
        *v217 = 134217984;
        *(v217 + 4) = v216;
        _os_log_impl(&dword_2493AC000, v213, v214, "[TAP][%ld] Sending Analytics event.", v217, 0xCu);
        MEMORY[0x24C1FE850](v217, -1, -1);
      }

      v88 = v320;
      v133 = v317;
      v85 = v321;
      v134 = v330;
      if (one-time initialization token for shared != -1)
      {
        goto LABEL_172;
      }

      goto LABEL_91;
    }

LABEL_175:
    *&aBlock = v183;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

LABEL_92:
  v218 = v333;
  v219 = *((*v89 & *v333) + 0x1280);
  v220 = ((v219)(v173) & 1) != 0 || (*((*v89 & *v218) + 0xBD8))() == 3;
  LODWORD(v324) = v220;
  v221 = *(v218 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  if (![v221 isFilesApp] || (v219() & 1) == 0 && (*((*v89 & *v333) + 0xBD8))() == 3 || (objc_msgSend(v85, v140[65]) & 1) != 0)
  {
    v222 = Logger.logObject.getter();
    v223 = static os_log_type_t.default.getter();
    v224 = os_log_type_enabled(v222, v223);
    v225 = v328;
    if (v224)
    {
      v226 = swift_slowAlloc();
      *v226 = 134217984;
      *(v226 + 4) = v225;
      _os_log_impl(&dword_2493AC000, v222, v223, "[TAP][%ld] Validate Node Selection and perform did pick", v226, 0xCu);
      MEMORY[0x24C1FE850](v226, -1, -1);
    }

    v227 = v316;
    v134(v316, v329, v88);
    v228 = (*(v133 + 80) + 40) & ~*(v133 + 80);
    v229 = swift_allocObject();
    *(v229 + 16) = v225;
    *(v229 + 24) = v324;
    v230 = v318;
    *(v229 + 32) = v318;
    v313(v229 + v228, v227, v88);
    v231 = *((*v89 & *v333) + 0x18E0);
    v232 = v230;
    v233 = partial apply for closure #4 in DOCItemCollectionViewController._handlePrimaryAction(_:at:);
    v234 = v85;
    v235 = v229;
    goto LABEL_102;
  }

  v236 = Logger.logObject.getter();
  v237 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v236, v237))
  {
    v238 = swift_slowAlloc();
    *v238 = 134217984;
    *(v238 + 4) = v328;
    _os_log_impl(&dword_2493AC000, v236, v237, "[TAP][%ld] Triggering action in Files for a non folder item.", v238, 0xCu);
    MEMORY[0x24C1FE850](v238, -1, -1);
  }

  v239 = [v85 doc_eligibleActions];
  type metadata accessor for FPAction(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction, &protocol conformance descriptor for FPAction);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v240 = specialized Set.contains(_:)();
  v241 = v333;
  if ((v240 & 1) == 0 || (v242 = (*((*v89 & *v333) + 0xC70))()) == 0 || (v243 = [v242 isWritable], swift_unknownObjectRelease(), !v243) || (objc_msgSend(v85, sel_isDownloading) & 1) != 0 || (v244 = DOCNode.fpfs_syncFetchFPItem()()) == 0)
  {
    if ((specialized Set.contains(_:)() & 1) == 0)
    {
      goto LABEL_128;
    }

    v250 = (*((*v89 & *v241) + 0xA68))();
    v251 = [v250 identifier];

    v252 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v254 = v253;
    if (v252 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v254 == v255)
    {
    }

    else
    {
      v256 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v256 & 1) == 0)
      {
        goto LABEL_128;
      }
    }

    if (([v85 isDownloading] & 1) == 0)
    {
      v257 = DOCNode.fpfs_syncFetchFPItem()();
      if (v257)
      {
        v258 = v257;

        v260 = (*((*v89 & *v241) + 0xE8))(v259);
        if (v260)
        {
          [v260 didTapLocationOf_];
          swift_unknownObjectRelease();
        }

        v261 = Logger.logObject.getter();
        v262 = static os_log_type_t.default.getter();
        v263 = os_log_type_enabled(v261, v262);
        v88 = v320;
        v264 = v332;
        if (v263)
        {
          v265 = swift_slowAlloc();
          *v265 = 134217984;
          *(v265 + 4) = v328;
          _os_log_impl(&dword_2493AC000, v261, v262, "[TAP][%ld] Unarchiving selected item from RECENTS. Fetching Parent", v265, 0xCu);
          MEMORY[0x24C1FE850](v265, -1, -1);
        }

        v266 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v267 = v316;
        v134(v316, v329, v88);
        v268 = (v317[80] + 56) & ~v317[80];
        v269 = swift_allocObject();
        v270 = v328;
        *(v269 + 16) = v266;
        *(v269 + 24) = v270;
        *(v269 + 32) = v258;
        *(v269 + 40) = v324;
        v271 = v318;
        *(v269 + 48) = v318;
        v313(v269 + v268, v267, v88);
        v338 = partial apply for closure #1 in DOCItemCollectionViewController._handlePrimaryAction(_:at:);
        v339 = v269;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v337 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
        *(&v337 + 1) = &block_descriptor_1070;
        v272 = _Block_copy(&aBlock);
        v273 = v258;
        v274 = v271;

        [v85 fetchParent_];
        _Block_release(v272);

        swift_unknownObjectRelease();
        v154 = v264;
        goto LABEL_103;
      }
    }

LABEL_128:
    v275 = Logger.logObject.getter();
    v276 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v275, v276))
    {
      v277 = swift_slowAlloc();
      *v277 = 134217984;
      *(v277 + 4) = v328;
      _os_log_impl(&dword_2493AC000, v275, v276, "[TAP][%ld] Preparing Quick Look for the preview", v277, 0xCu);
      MEMORY[0x24C1FE850](v277, -1, -1);
    }

    (*((*v89 & *v241) + 0x820))(&aBlock);
    v278 = *(&v337 + 1);
    v279 = v317;
    if (*(&v337 + 1))
    {
      v280 = v338;
      __swift_project_boxed_opaque_existential_1(&aBlock, *(&v337 + 1));
      v281 = (*(v280 + 4))(v85, v278, v280);
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      v282 = v328;
      if (!v281)
      {

        v284 = (*((*v89 & *v241) + 0xCB8))(v283);
        v88 = v320;
        goto LABEL_138;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(&aBlock, &_s26DocumentManagerExecutables33DOCNodeDiffableDataSourceProtocol_pSgMd, &_s26DocumentManagerExecutables33DOCNodeDiffableDataSourceProtocol_pSgMR);
      v282 = v328;
    }

    DOCNode.parentIdentifierKey.getter(&v340);
    v88 = v320;
    if (*(&v341 + 1))
    {
      aBlock = v340;
      v337 = v341;
      v338 = v342;
      v285 = *(v241 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
      v134 = v330;
      if (!v285)
      {
        __break(1u);
        goto LABEL_175;
      }

      v284 = (*((*v89 & *v285) + 0x250))(&aBlock);
      outlined destroy of AnyHashable(&aBlock);
      goto LABEL_139;
    }

    outlined destroy of CharacterSet?(&v340, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
    v284 = MEMORY[0x277D84F90];
LABEL_138:
    v134 = v330;
LABEL_139:
    if (![v221 useSharedQuickLook])
    {
      goto LABEL_160;
    }

    v286 = [v221 sceneIdentifier];
    if (!v286)
    {
      if (one-time initialization token for Source != -1)
      {
        swift_once();
      }

      v296 = static DOCLog.Source;
      v297 = static os_log_type_t.debug.getter();
      os_log(_:dso:log:type:_:)("Scene Identifier was nil. This may not be not be a problem. Reproduce and investigate if it is ok.", 98, 2, &dword_2493AC000, v296, v297, MEMORY[0x277D84F90]);
LABEL_160:

LABEL_164:
      v302 = Logger.logObject.getter();
      v303 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v302, v303))
      {
        v304 = swift_slowAlloc();
        *v304 = 134217984;
        *(v304 + 4) = v282;
        _os_log_impl(&dword_2493AC000, v302, v303, "[TAP][%ld] Validate Node Selection and perform did pick", v304, 0xCu);
        MEMORY[0x24C1FE850](v304, -1, -1);
      }

      v305 = v316;
      v134(v316, v329, v88);
      v306 = (v279[80] + 40) & ~v279[80];
      v307 = swift_allocObject();
      *(v307 + 16) = v282;
      *(v307 + 24) = v324;
      v308 = v318;
      *(v307 + 32) = v318;
      v313(v307 + v306, v305, v88);
      v231 = *((*v89 & *v241) + 0x18E0);
      v309 = v308;
      v233 = partial apply for closure #3 in DOCItemCollectionViewController._handlePrimaryAction(_:at:);
      v234 = v85;
      v235 = v307;
LABEL_102:
      v231(v234, 0, v233, v235);
      swift_unknownObjectRelease();

      v154 = v332;
      goto LABEL_103;
    }

    v287 = one-time initialization token for mapTable;
    v288 = v286;
    if (v287 != -1)
    {
      v311 = v288;
      swift_once();
      v288 = v311;
    }

    v289 = static DOCPreviewController.mapTable;
    v290 = v288;
    v291 = [v289 objectForKey_];
    if (!v291)
    {
      v292 = objc_allocWithZone(type metadata accessor for DOCPreviewController(0));
      v291 = DOCPreviewController.init()();
      [v289 setObject:v291 forKey:v290];
    }

    v88 = v284 & 0xFFFFFFFFFFFFFF8;
    if (v284 >> 62)
    {
      v293 = __CocoaSet.count.getter();
    }

    else
    {
      v293 = *((v284 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v133 = 0;
    v140 = (v284 & 0xC000000000000001);
    while (1)
    {
      if (v293 == v133)
      {
        v298 = 0;
LABEL_163:
        v299 = v293 == v133;
        (*((*v89 & *v291) + 0x248))(1);
        v300 = *((*v89 & *v291) + 0x1D8);
        v241 = v333;
        v301 = swift_unknownObjectRetain();
        v300(v301, &protocol witness table for DOCItemCollectionViewController);
        aBlock = v284;
        LOBYTE(v337) = 0;
        (*((*v89 & *v291) + 0x1C8))(&aBlock, v298, v299);

        outlined consume of DOCPreviewSource?(aBlock, *(&aBlock + 1), v337);
        v88 = v320;
        v279 = v317;
        v282 = v328;
        v134 = v330;
        goto LABEL_164;
      }

      if (v140)
      {
        v134 = MEMORY[0x24C1FC540](v133, v284);
      }

      else
      {
        if (v133 >= *((v284 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          swift_once();
LABEL_91:
          specialized DOCAnalyticsManager.sendEvent(_:)(v343, static DOCAnalyticsManager.shared);
          v173 = outlined destroy of DOCAnalyticsActionEvent(v343);
          goto LABEL_92;
        }

        v134 = *(v284 + 8 * v133 + 32);
        swift_unknownObjectRetain();
      }

      v294 = DOCNode.isEqualTo(node:)(v134);
      swift_unknownObjectRelease();
      if (v294)
      {
        v298 = v133;
        goto LABEL_163;
      }

      if (__OFADD__(v133++, 1))
      {
        goto LABEL_171;
      }
    }
  }

  v245 = v244;

  v246 = Logger.logObject.getter();
  v247 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v246, v247))
  {
    v248 = swift_slowAlloc();
    *v248 = 134217984;
    *(v248 + 4) = v328;
    _os_log_impl(&dword_2493AC000, v246, v247, "[TAP][%ld] Unarchiving selected item.", v248, 0xCu);
    MEMORY[0x24C1FE850](v248, -1, -1);
  }

  v249 = DOCItemCollectionViewController.unarchiveSelectedItem(_:)(v245);
  v151 = v332;
  if (v324)
  {
    (v325)(v332, v88, v249);

    return swift_unknownObjectRelease();
  }

  v310 = IndexPath._bridgeToObjectiveC()().super.isa;
  [v318 deselectItemAtIndexPath:v310 animated:1];
  swift_unknownObjectRelease();

LABEL_63:
  v154 = v151;
LABEL_103:
  v172 = v88;
  return (v325)(v154, v172);
}

id DOCItemCollectionViewController._multitaskingDragExclusionRects()()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xBD8))())
  {
    return MEMORY[0x277D84F90];
  }

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  [result safeAreaInsets];
  v5 = v4;
  v7 = v6;

  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = result;
  [result bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = UIEdgeInsetsInsetRect(v10, v12, v14, v16, v5, v7);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = (*((*v1 & *v0) + 0x11C0))();
  if (v24)
  {
    (*(*v24 + 160))(v29);

    v17 = UIEdgeInsetsInsetRect(v17, v19, v21, v23, *&v29[9], *&v29[10]);
    v19 = v25;
    v21 = v26;
    v23 = v27;
    outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v29);
  }

  v28 = [objc_opt_self() valueWithCGRect_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  result = swift_allocObject();
  *(result + 1) = xmmword_249BA0290;
  *(result + 4) = v28;
  return result;
}

void closure #1 in DOCItemCollectionViewController._handlePrimaryAction(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, void *a7, uint64_t a8)
{
  v30 = a8;
  v31 = a7;
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1 && !a2)
    {
      v29 = Strong;
      if ([swift_unknownObjectRetain() isWritable])
      {
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        __swift_project_value_buffer(v19, static Logger.UI);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = v21;
          v24 = v22;
          *v22 = 134217984;
          *(v22 + 4) = a4;
          _os_log_impl(&dword_2493AC000, v20, v23, "[TAP][%ld] Parent is writable, unarchiving...", v22, 0xCu);
          MEMORY[0x24C1FE850](v24, -1, -1);
        }

        v18.n128_f64[0] = DOCItemCollectionViewController.unarchiveSelectedItem(_:)(a5);
      }

      if ((a6 & 1) == 0)
      {
        (*(v14 + 16))(&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v13, v18);
        v25 = (*(v14 + 80) + 24) & ~*(v14 + 80);
        v26 = swift_allocObject();
        v27 = v31;
        *(v26 + 16) = v31;
        (*(v14 + 32))(v26 + v25, &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
        v28 = v27;
        DOCRunInMainThread(_:)();
      }

      swift_unknownObjectRelease();
      Strong = v29;
    }
  }
}

double closure #3 in DOCItemCollectionViewController._handlePrimaryAction(_:at:)(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a1;
  v23 = a4;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.UI);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v21 = a3;
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = v22;
    _os_log_impl(&dword_2493AC000, v13, v14, "[TAP][%ld] Validation finished", v15, 0xCu);
    a3 = v21;
    MEMORY[0x24C1FE850](v15, -1, -1);
  }

  (*(v9 + 16))(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v8);
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2 & 1;
  *(v17 + 24) = a3;
  (*(v9 + 32))(v17 + v16, &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v18 = a3;
  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in closure #3 in DOCItemCollectionViewController._handlePrimaryAction(_:at:)(char a1, void *a2)
{
  if ((a1 & 1) == 0)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v5 = [a2 cellForItemAtIndexPath_];

    if (v5)
    {
      [v5 layoutIfNeeded];
    }

    v6 = IndexPath._bridgeToObjectiveC()().super.isa;
    [a2 deselectItemAtIndexPath:v6 animated:1];
  }
}

void DOCItemCollectionViewController.collectionView(_:willDisplay:forItemAt:)(uint64_t a1, void *a2)
{
  type metadata accessor for DOCItemCollectionCell();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *((*MEMORY[0x277D85000] & *v3) + 0x228);
    v5 = a2;
    v4();
  }
}

uint64_t DOCItemCollectionViewController.collectionView(_:shouldSpringLoadItemAt:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0xBD8);
  if (!v8())
  {
    return 0;
  }

  if (v8() == 3)
  {
    v9 = [a1 indexPathsForSelectedItems];
    if (v9)
    {
      v10 = v9;
      type metadata accessor for IndexPath();
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v10) = specialized Sequence<>.contains(_:)(a2, v11);

      if (v10)
      {
        return 0;
      }
    }
  }

  v13 = *((*v7 & *v3) + 0x17B0);

  return v13(a2, a3);
}

Swift::Bool __swiftcall DOCItemCollectionViewController.shouldAllowSelection()()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x1298))() & 1) == 0 || ([*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isPopoverOrWidget] & 1) != 0 || ((*((*v1 & *v0) + 0x1448))())
  {
    LOBYTE(v2) = 0;
    return v2;
  }

  v3 = [v0 presentedViewController];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for DOCSearchController();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      if ([v6 isActive])
      {
        if ([v6 isActive])
        {
          v8 = [*&v6[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController] viewIfLoaded];
          if (v8)
          {
            v9 = v8;
            v10 = [v8 isHidden];

            if (v10)
            {
              [v6 setActive_];
            }
          }
        }

        if ([v6 isActive] && (v11 = objc_msgSend(*&v6[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController], sel_viewIfLoaded)) != 0)
        {
          v12 = v11;
          v13 = [v11 isHidden];

          LOBYTE(v2) = v13 ^ 1;
        }

        else
        {

          LOBYTE(v2) = 1;
        }

        return v2;
      }
    }
  }

  if ((*((*v1 & *v0) + 0xBD8))() == 3)
  {
    v2 = (*((*v1 & *v0) + 0xA98))();
    if (v2)
    {
      v15 = v14;
      ObjectType = swift_getObjectType();
      LOBYTE(v15) = (*(v15 + 40))(v0, ObjectType, v15);
      swift_unknownObjectRelease();
      LOBYTE(v2) = v15 & 1;
    }
  }

  else
  {
    LOBYTE(v2) = 1;
  }

  return v2;
}

void DOCItemCollectionViewController.collectionView(_:didBeginMultipleSelectionInteractionAt:)(void *a1)
{
  if (!DOCItemCollectionViewController.shouldAllowSelection()())
  {
    if ((*((*MEMORY[0x277D85000] & *v1) + 0x148))())
    {
      return;
    }

    v5 = sel_setEditing_;
    v6 = a1;
    v7 = 0;

    goto LABEL_11;
  }

  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isSelectingUsingGesture) = 1;
  if (![a1 isEditing] || (v3 = MEMORY[0x277D85000], (v4 = (*((*MEMORY[0x277D85000] & *v1) + 0xBB8))()) == 0))
  {
LABEL_13:
    v7 = [a1 isEditing];
    v5 = sel_setEditing_animated_;
    v6 = v1;

LABEL_11:
    [v6 v5];
    return;
  }

  v8 = v4;
  if ((DOCSearchController.isActiveShowingNoResults.getter() & 1) == 0)
  {

    goto LABEL_13;
  }

  (*((*v3 & *v8) + 0x360))(0, 0, 1);
  [v1 setEditing:objc_msgSend(a1 animated:{sel_isEditing), 1}];
}

uint64_t DOCItemCollectionViewController.indexPathForPreferredFocusedView(in:)@<X0>(char *a1@<X8>)
{
  v53 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v52 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v48 - v7;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v48 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v48 - v15;
  v17 = type metadata accessor for IndexPath();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v49 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v51 = &v48 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v50 = &v48 - v26;
  v29.n128_f64[0] = MEMORY[0x28223BE20](v27, v28);
  v31 = &v48 - v30;
  v32 = MEMORY[0x277D85000];
  v33 = (*((*MEMORY[0x277D85000] & *v1) + 0x1010))(v29);
  (*((*v32 & *v1) + 0xE30))();
  v34 = *(v18 + 48);
  if (v34(v16, 1, v17) != 1)
  {
    v48 = v8;
    v35 = v16;
    v36 = *(v18 + 32);
    v36(v31, v35, v17);
    UICollectionView.doc_validatedIndexPath(_:indexPathDebugName:)(v31, 0xD00000000000001FLL, 0x8000000249BDEE90, v12);
    (*(v18 + 8))(v31, v17);
    if (v34(v12, 1, v17) != 1)
    {

      v45 = v50;
      v36(v50, v12, v17);
      v43 = v53;
      v36(v53, v45, v17);
      goto LABEL_11;
    }

    v16 = v12;
    v8 = v48;
  }

  v37 = outlined destroy of CharacterSet?(v16, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v38 = (*((*MEMORY[0x277D85000] & *v33) + 0xF0))(v37);
  (*(*v38 + 104))(v38);

  if (v34(v8, 1, v17) != 1)
  {
    v39 = v8;
    v40 = *(v18 + 32);
    v41 = v51;
    v40(v51, v39, v17);
    v42 = v52;
    UICollectionView.doc_validatedIndexPath(_:indexPathDebugName:)(v41, 0xD000000000000024, 0x8000000249BDEE60, v52);

    (*(v18 + 8))(v41, v17);
    if (v34(v42, 1, v17) == 1)
    {
      v8 = v42;
      goto LABEL_8;
    }

    v46 = v49;
    v40(v49, v42, v17);
    v43 = v53;
    v40(v53, v46, v17);
LABEL_11:
    v44 = 0;
    return (*(v18 + 56))(v43, v44, 1, v17);
  }

LABEL_8:
  v43 = v53;
  outlined destroy of CharacterSet?(v8, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v44 = 1;
  return (*(v18 + 56))(v43, v44, 1, v17);
}

void closure #1 in DOCItemCollectionViewController.supplementaryViewForSectionHeader(with:at:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (*((*MEMORY[0x277D85000] & *Strong) + 0xB08))();
    swift_beginAccess();
    v7 = *(v6 + 104);

    v11 = v3;
    v12 = v2;
    MEMORY[0x28223BE20](v8, v9);
    v10[2] = &v11;
    LOBYTE(v6) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_Say26DocumentManagerExecutables10ColumnTypeOG_TG5TA_0, v10, v7);

    v11 = v3;
    v12 = v2;
    if (v6)
    {
      DOCItemCollectionViewController.deleteColumn(columnType:)(&v11);
    }

    else
    {
      DOCItemCollectionViewController.addColumn(columnType:)(&v11);
    }
  }
}

void closure #2 in DOCItemCollectionViewController.configure(sectionHeader:with:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *a1) + 0x410))(&v15);
    v6 = v16;
    if (v16)
    {
      v7 = v19;
      v13 = v17;
      v14 = v18;
      v8 = v15;
      v9 = *(*v19 + 136);
      v10 = a1;
      LOBYTE(v9) = v9();
      (*(*v7 + 144))((v9 & 1) == 0);
      v11 = (*((*v5 & *v10) + 0x458))((v9 & 1) == 0);
      v12 = (*((*v5 & *v4) + 0xD60))(v11);
      LOWORD(v15) = 2;
      DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v12, &v15, 0);

      outlined consume of DOCCollectionSection?(v8, v6, v13, v14, v7);
    }

    else
    {
    }
  }
}

void closure #3 in DOCItemCollectionViewController.configure(sectionHeader:with:)(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = v3;
    DOCItemCollectionViewController.sortOption(changeTo:)(&v6);
  }
}

uint64_t DOCItemCollectionViewController.createCellIdentifier.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v3 = &OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionLargeTextListCellIdentifier;
  if ((v1 & 1) == 0)
  {
    v3 = &OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionListCellIdentifier;
  }

  v4 = *(v0 + *v3);

  if (!(*((*MEMORY[0x277D85000] & *v0) + 0xBD8))(v5))
  {

    v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGridCellIdentifier);
  }

  return v4;
}

void *DOCItemCollectionViewController._collectionView(_:cellForNode:at:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController + 16);
  swift_getObjectType();

  DOCNode.identifierKey.getter();
  v111 = a2;
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(&aBlock), (v10 & 1) != 0))
  {
    a2 = *(*(v8 + 56) + 8 * v9);
    swift_unknownObjectRetain();
    outlined destroy of AnyHashable(&aBlock);
  }

  else
  {

    outlined destroy of AnyHashable(&aBlock);
    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  Document = DOCNode.isCreateDocumentSentinel()();
  v12 = MEMORY[0x277D85000];
  if (Document || (*((*MEMORY[0x277D85000] & *v3) + 0xBD8))() != 2)
  {
    v15 = DOCItemCollectionViewController.createCellIdentifier.getter();
    v14 = v16;
  }

  else
  {
    v13 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionOutlineCellIdentifier);
    v14 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionOutlineCellIdentifier + 8);

    v15 = v13;
  }

  v17 = MEMORY[0x24C1FAD20](v15, v14);

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v19 = [a1 dequeueReusableCellWithReuseIdentifier:v17 forIndexPath:isa];

  type metadata accessor for DOCItemCollectionCell();
  v112 = v19;
  v20 = swift_dynamicCastClassUnconditional();
  (*((*v12 & *v20) + 0x258))([*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isPopoverOrWidget] ^ 1);
  v21 = *((*v12 & *v20) + 0xF0);
  v22 = swift_unknownObjectRetain();
  v21(v22, &protocol witness table for DOCItemCollectionViewController);
  v23 = DOCNode.isCreateDocumentSentinel()();
  v110 = a3;
  if (v23)
  {
    v25 = [objc_allocWithZone(type metadata accessor for DOCItemCollectionCellContent(0)) init];
    DOCItemCollectionViewController.updateContent(_:)(v25);
  }

  else
  {
    v26 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_cellContentPool);
    v27 = MEMORY[0x28223BE20](v23, v24);
    v25 = (*(*v26 + 176))(a2, partial apply for closure #1 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:), v27);
  }

  v28 = *((*v12 & *v4) + 0xBF8);
  v29 = v28();
  if (v29)
  {
    v30 = v29;
    swift_unknownObjectRetain();
    outlined consume of (progress: NSProgress, node: DOCNode)?(v30);
    swift_getObjectType();
    LOBYTE(v30) = DOCNode.isEqualTo(node:)(a2);
    v31 = swift_unknownObjectRelease();
    if (v30)
    {
      v29 = (v28)(v31);
      if (v29)
      {
        v32 = v29;
        v33 = v29;
        outlined consume of (progress: NSProgress, node: DOCNode)?(v32);
        v29 = v32;
      }
    }

    else
    {
      v29 = 0;
    }
  }

  v34 = (*((*v12 & *v25) + 0x540))(v29);
  v35 = (*((*v12 & *v4) + 0xC10))(v34);
  if (v36)
  {
    v37 = v35;
    v38 = *(v20 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);
    swift_getObjectType();
    v39 = v38;
    v40 = a1;
    v41 = v39;
    [v39 setHidden_];
    swift_unknownObjectRelease();

    a1 = v40;
    v12 = MEMORY[0x277D85000];
  }

  else
  {
    [*(v20 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) setHidden_];
  }

  (*((*v12 & *v20) + 0x210))(v25);
  type metadata accessor for DOCItemCollectionOutlineCell();
  v42 = swift_dynamicCastClass();
  if (!v42)
  {
LABEL_26:
    v83 = v112;
    v84 = [a1 indexPathsForSelectedItems];
    if (v84)
    {
      type metadata accessor for IndexPath();
      v85 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v84) = specialized Sequence<>.contains(_:)(v110, v85);
    }

    [v20 setSelected_];
    v86 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemIdentifierForNewFolderAnimation);
    if (!v86)
    {
      swift_unknownObjectRelease();
LABEL_45:

      return v20;
    }

    v87 = v86;
    v88 = [v111 fpfs_fpItem];
    if (!v88)
    {
      swift_unknownObjectRelease();
LABEL_44:

      goto LABEL_45;
    }

    v89 = v88;
    v90 = [v88 itemIdentifier];

    v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v92;
    if (v91 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v93 == v94)
    {
    }

    else
    {
      v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v95 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    v96 = [*(v20 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) superview];
    if (v96)
    {
      v97 = v96;
      type metadata accessor for DOCImageViewContainerView();
      v98 = swift_dynamicCastClass();
      if (!v98)
      {
        swift_unknownObjectRelease();

        return v20;
      }

      v99 = v98;
      if (_UISolariumEnabled())
      {
        (*((*MEMORY[0x277D85000] & *v99) + 0x98))();
        v113 = objc_opt_self();
        v100 = swift_allocObject();
        v101 = v87;
        v100[2] = v99;
        v100[3] = v111;
        v100[4] = v4;
        v100[5] = v20;
        v118 = partial apply for closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:);
        v119 = v100;
        aBlock = MEMORY[0x277D85DD0];
        v115 = 1107296256;
        v116 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v117 = &block_descriptor_1307;
        v102 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();
        v103 = v4;
        v104 = v83;
        v105 = v97;

        [v113 performAfterCATransactionCommits_];

        _Block_release(v102);
        swift_unknownObjectRelease();
        return v20;
      }

      swift_unknownObjectRelease();

      goto LABEL_43;
    }

LABEL_40:
    swift_unknownObjectRelease();
LABEL_43:

    goto LABEL_44;
  }

  v43 = v42;
  v107 = a1;
  v108 = v25;
  v109 = v20;
  v44 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v45 = *(v43 + v44);
  v46 = *((*v12 & *v4) + 0xB08);
  v106 = v112;
  v47 = v45;
  v48 = v46();
  swift_beginAccess();
  v49 = *(v48 + 184);

  (*((*MEMORY[0x277D85000] & *v47) + 0x3B8))(v49);

  v50 = *(v43 + v44);
  v51 = v46();
  swift_beginAccess();
  v52 = *(v51 + 80);
  v54 = *(v51 + 88);
  v53 = *(v51 + 96);
  v56 = *(v51 + 104);
  v55 = *(v51 + 112);

  LOBYTE(aBlock) = v52;
  v115 = v54;
  v57 = MEMORY[0x277D85000];
  v116 = v53;
  v117 = v56;
  v118 = v55;
  (*((*MEMORY[0x277D85000] & *v50) + 0x418))(&aBlock);

  v58 = *(v43 + v44);
  result = [v4 view];
  if (result)
  {
    v60 = result;
    [result bounds];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;

    v120.origin.x = v62;
    v120.origin.y = v64;
    v120.size.width = v66;
    v120.size.height = v68;
    Width = CGRectGetWidth(v120);
    v70 = (*((*v57 & *v4) + 0xB20))();
    if (v70)
    {
      v71 = v70;
      [v70 contentOffset];
      v73 = v72;
    }

    else
    {
      v73 = 0;
    }

    v20 = v109;
    v25 = v108;
    v74 = (*((*v57 & *v4) + 0x1010))();
    [v74 safeAreaInsets];
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v82 = v81;

    aBlock = Width;
    v115 = v73;
    v116 = v76;
    v117 = v78;
    v118 = v80;
    v119 = v82;
    (*((*v57 & *v58) + 0x2B8))(&aBlock);

    a1 = v107;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

double closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v20 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  type metadata accessor for MainActor();
  v13 = a1;
  swift_unknownObjectRetain();
  v14 = a3;
  v15 = a4;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v13;
  v17[5] = a2;
  v17[6] = v14;
  v17[7] = v15;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:), v17);

  return result;
}

uint64_t closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  v7[5] = type metadata accessor for MainActor();
  v7[6] = static MainActor.shared.getter();
  v10 = *((*MEMORY[0x277D85000] & *a4) + 0xA8);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  v7[7] = v11;
  *v11 = v7;
  v11[1] = closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:);

  return v13(a5);
}

uint64_t closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:)(uint64_t a1)
{
  *(*v1 + 64) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:), v3, v2);
}

uint64_t closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:)()
{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  v7 = *((*MEMORY[0x277D85000] & *v4) + 0xA0);
  v8 = v3;
  v9 = v2;
  v7(0, partial apply for closure #1 in closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:), v5, partial apply for closure #2 in closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:), v6);

  v10 = v0[1];

  return v10();
}

id closure #1 in closure #1 in closure #2 in DOCItemCollectionViewController._collectionView(_:cellForNode:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a4 + 40);
  v5 = *(a4 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 2;
    v7 = *v4;
    v4 += 2;
    if (v7 == a1)
    {
      v8 = *(v6 - 3);
      if (v8)
      {

        return v8;
      }

      break;
    }
  }

  v10 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v10 init];
}

void *DOCItemCollectionViewController._collectionView(_:canEditItemAt:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a2, v7, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v17 = *(v13 + 48);
  result = v17(v7, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*((*MEMORY[0x277D85000] & *v2) + 0x18A0))(v7);
    v19 = *(v13 + 8);
    v19(v7, v12);
    if (v17(v11, 1, v12) == 1)
    {
      outlined destroy of CharacterSet?(v11, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      v20 = 0;
      return (v20 & 1);
    }

    (*(v13 + 32))(v16, v11, v12);
    v21 = MEMORY[0x277D85000];
    result = (*((*MEMORY[0x277D85000] & *v2) + 0xD88))(v16, 0);
    if (result)
    {
      v22 = result;
      v23 = DOCItemCollectionViewController.specificallyExcludeFolderPicking(_:)(result);
      v24 = (*((*v21 & *v2) + 0x18C0))(v22);
      swift_unknownObjectRelease();
      v19(v16, v12);
      v20 = v24 & (v23 ^ 1);
      return (v20 & 1);
    }
  }

  __break(1u);
  return result;
}

void DOCItemCollectionViewController.toggleNode(_:nodes:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v2) + 0xBD8))() != 2)
  {
    return;
  }

  v6 = (*((*v5 & *v2) + 0x1010))();
  v7 = [v6 visibleCells];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = a2;
  v28 = a1;
  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_21:

    return;
  }

LABEL_20:
  v9 = __CocoaSet.count.getter();
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_4:
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
        goto LABEL_19;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    type metadata accessor for DOCItemCollectionOutlineCell();
    v14 = swift_dynamicCastClass();

    if (v14)
    {
      break;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_21;
    }
  }

  (*((*v5 & *v2) + 0x820))(v30, v15);
  v16 = v31;
  if (v31)
  {
    v17 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v18 = (*((*v5 & *v2) + 0xD60))();
    if (v18[2])
    {
      v19 = v18[4];
      v20 = v18[5];
      v21 = v18[6];
      v22 = v18[7];
      v23 = v18[8];

      v29[0] = v19;
      v29[1] = v20;
      v29[2] = v21;
      v29[3] = v22;
      v29[4] = v23;
      v24 = swift_allocObject();
      *(v24 + 16) = v2;
      v25 = *(v17 + 40);
      v26 = v2;
      v25(v27, v28, v29, partial apply for closure #2 in DOCItemCollectionViewController.toggleNode(_:nodes:), v24, v16, v17);

      __swift_destroy_boxed_opaque_existential_0(v30);
    }

    else
    {

      __break(1u);
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v30, &_s26DocumentManagerExecutables33DOCNodeDiffableDataSourceProtocol_pSgMd, &_s26DocumentManagerExecutables33DOCNodeDiffableDataSourceProtocol_pSgMR);
  }
}

void closure #2 in DOCItemCollectionViewController.toggleNode(_:nodes:)(void *a1)
{
  v2 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *a1) + 0xBD8))() == 2)
  {
    v3 = (*((*v2 & *a1) + 0xB08))();
    swift_beginAccess();
    v4 = *(v3 + 88);

    if (*(v4 + 16))
    {
      v5 = *(v4 + 32);

      v6 = [a1 traitCollection];
      v7 = [v6 horizontalSizeClass];

      if (v7 != 1)
      {
        DOCItemCollectionViewController.minimumSize(for:proposedWidth:useMax:)(0, 0, v5);
        if (v5 < v8)
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
          v9 = MEMORY[0x24C1FA8C0](0.5, 0.85, 0.0);
          MEMORY[0x28223BE20](v9, v10);
          *(swift_allocObject() + 16) = a1;
          v11 = a1;
          static UIView.animate(_:changes:completion:)();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void closure #1 in closure #2 in DOCItemCollectionViewController.toggleNode(_:nodes:)(void *a1, double a2)
{
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0xB08);
  v5 = v4();
  v4();
  swift_beginAccess();

  OutlineColumnData.withUpdatedSizeAt(_:size:)(0, &v18, a2);

  v6 = v18;
  swift_beginAccess();
  *(v5 + 80) = v6;
  v7 = v20;
  *(v5 + 88) = v19;
  *(v5 + 104) = v7;

  v9 = (*((*MEMORY[0x277D85000] & *a1) + 0xFC8))(v8);
  v10 = v4();
  swift_beginAccess();
  v11 = *(v10 + 80);
  v12 = *(v10 + 88);
  v13 = *(v10 + 96);
  v14 = *(v10 + 104);
  v15 = *(v10 + 112);

  LOBYTE(v18) = v11;
  *&v19 = v12;
  *(&v19 + 1) = v13;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  DOCCollectionViewCompositionalLayout.setOutlineColumnData(_:)(&v18);

  v17 = (*((*MEMORY[0x277D85000] & *a1) + 0x1010))(v16);
  [v17 layoutIfNeeded];
}

void DOCItemCollectionViewController.data(forNodeCollectionShouldBeReloaded:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ScrollPositionInfo(0);
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v102 - v15;
  v17 = type metadata accessor for OSSignpostID();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isGathering])
  {
    return;
  }

  v103 = v16;
  v104 = v12;
  v105 = v5;
  v106 = v4;
  v102 = v8;
  v23 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x17E0))();
  v24 = static os_signpost_type_t.begin.getter();
  if (one-time initialization token for updatePointsOfInterestHandler != -1)
  {
    swift_once();
  }

  v25 = updatePointsOfInterestHandler;
  static OSSignpostID.exclusive.getter();
  v108 = v25;
  os_signpost(_:dso:log:name:signpostID:_:_:)(v24, &dword_2493AC000, v25, "Files-Reload-forNodeCollectionShouldBeReloaded", 46, 2, v22, "forNodeCollectionShouldBeReloaded", 33, 2, MEMORY[0x277D84F90]);
  v26 = *(v18 + 8);
  v109 = v22;
  v110 = v18 + 8;
  v111 = v17;
  v107 = v26;
  v27 = (v26)(v22, v17);
  v112 = (*((*v23 & *v2) + 0x1338))(v27);
  v28 = *((*v23 & *v2) + 0xD60);
  v29 = v28();
  v30 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController + 8);
  v31 = *((*v23 & *v2) + 0xBD8);

  if (v31(v32) == 2 && ((*((*v23 & *v2) + 0xF10))() & 1) == 0)
  {
    v33 = (*((*v23 & *a1) + 0x290))();
  }

  else
  {
    v33 = (*((*v23 & *a1) + 0x258))();
  }

  v34 = (*((*v23 & *v2) + 0xCC0))(v33);
  v35 = (*((*v23 & *v2) + 0x1018))(v34);
  if (!v35)
  {

    return;
  }

  v36 = v35;
  v37 = (*((*v23 & *v2) + 0xCB8))();
  v38 = == infix(_:_:)(v37, v30);

  if (!v38)
  {

    v42 = v106;
    goto LABEL_18;
  }

  v40 = (v28)(v39);
  v41 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables20DOCCollectionSectionV_Tt1g5(v40, v29);

  v42 = v106;
  if ((v41 & 1) == 0)
  {
LABEL_18:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.UI);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v114[0] = v54;
      *v53 = 136315138;
      *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000249BDEF10, v114);
      _os_log_impl(&dword_2493AC000, v51, v52, "DOCNodeCollectionDelegate %s reloading without animation", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x24C1FE850](v54, -1, -1);
      MEMORY[0x24C1FE850](v53, -1, -1);
    }

    if ((*((*v23 & *v2) + 0xC58))())
    {
      *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) = 1;
    }

    else
    {
      (*((*v23 & *v2) + 0x1820))();
    }

    goto LABEL_25;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, static Logger.UI);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v114[0] = v47;
    *v46 = 136315138;
    *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000249BDEF10, v114);
    _os_log_impl(&dword_2493AC000, v44, v45, "DOCNodeCollectionDelegate %s Skipping reloadCollection(), and instead updating cell contents since structure of items didn't change", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x24C1FE850](v47, -1, -1);
    MEMORY[0x24C1FE850](v46, -1, -1);
  }

  v48 = [v36 indexPathsForVisibleItems];
  type metadata accessor for IndexPath();
  v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  (*((*v23 & *v2) + 0x1828))(v49);

LABEL_25:
  v55 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodesToReveal;
  v56 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodesToReveal);
  if (v56 >> 62)
  {
    v57 = __CocoaSet.count.getter();
  }

  else
  {
    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v106 = v36;
  if (v57 > 0 || (v58 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeScrollPositionInfo, swift_beginAccess(), v59 = v2 + v58, v36 = v106, v60 = v103, outlined init with copy of DOCGridLayout.Spec?(v59, v103, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR), v61 = (*(v105 + 48))(v60, 1, v42), outlined destroy of CharacterSet?(v60, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR), v61 != 1) || *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeToSelectAndScroll))
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.UI);
    v63 = v2;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v113 = v103;
      *v66 = 134218498;
      v67 = *(v2 + v55);
      if (v67 >> 62)
      {
        v68 = __CocoaSet.count.getter();
      }

      else
      {
        v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v69 = v105;
      *(v66 + 4) = v68;

      *(v66 + 12) = 2080;
      v70 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeScrollPositionInfo;
      swift_beginAccess();
      v71 = v63 + v70;
      v72 = v104;
      outlined init with copy of DOCGridLayout.Spec?(v71, v104, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
      if ((*(v69 + 48))(v72, 1, v42))
      {
        outlined destroy of CharacterSet?(v72, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
        v73 = 0x8000000249BDEF40;
        v74 = 0xD000000000000012;
      }

      else
      {
        v75 = v102;
        outlined init with copy of ScrollPositionInfo.ItemOffset(v72, v102, type metadata accessor for ScrollPositionInfo);
        outlined destroy of CharacterSet?(v72, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
        v76 = ScrollPositionInfo.description.getter();
        v73 = v77;
        outlined destroy of RestorableSettings(v75, type metadata accessor for ScrollPositionInfo);
        v74 = v76;
      }

      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v73, &v113);

      *(v66 + 14) = v78;
      *(v66 + 22) = 2080;
      if (*(v63 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeToSelectAndScroll))
      {
        v79 = [swift_unknownObjectRetain() description];
        swift_unknownObjectRelease();
        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v81;
      }

      else
      {
        v82 = 0xE700000000000000;
        v80 = 0x65646F4E206F4ELL;
      }

      v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, &v113);

      *(v66 + 24) = v83;
      _os_log_impl(&dword_2493AC000, v64, v65, "data(forNodeCollectionShouldBeReloaded) called. Forcing relayout: \n - enqueuedNodesToReveal.count: %ld\n enqueuedNodeScrollPositionInfo: %s\n enqueuedNodeToSelectAndScroll: %s ", v66, 0x20u);
      v84 = v103;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v84, -1, -1);
      MEMORY[0x24C1FE850](v66, -1, -1);
    }

    else
    {
    }

    [v36 layoutIfNeeded];
  }

  DOCItemCollectionViewController.applyRestorableSettingsIfStillEnqueued(force:)(0);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v85 = type metadata accessor for Logger();
  __swift_project_value_buffer(v85, static Logger.UI);
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();
  v88 = os_log_type_enabled(v86, v87);
  v89 = v109;
  if (v88)
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v113 = v91;
    *v90 = 136315138;
    *(v90 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000249BDEF10, &v113);
    _os_log_impl(&dword_2493AC000, v86, v87, "%s - calling resolvePendingNodeContexts", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v91);
    MEMORY[0x24C1FE850](v91, -1, -1);
    MEMORY[0x24C1FE850](v90, -1, -1);
  }

  DOCItemCollectionViewController.resolvePendingNodeContexts()();
  (*((*v23 & *v2) + 0x1378))(v112, 0, 0);

  v93 = (*((*v23 & *v2) + 0xA68))(v92);
  v94 = *&v93[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type];
  v95 = v93[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8];
  outlined copy of DOCFileProviderSourceType(v94);

  if (v95)
  {
    outlined consume of DOCFileProviderSourceType(v94);
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
    v96 = [v2 viewIfLoaded];
    v97 = [v96 window];

    if (v97)
    {

      DOCBrowserContainedViewController.updateOverlayIfNeeded()(v98);
    }

    else
    {
      DOCBrowserContainedViewController.applyOverlaySearchSettings()();
    }
  }

  else
  {
    outlined consume of DOCFileProviderSourceType(v94);
  }

  if ((*((*v23 & *v2) + 0x1448))())
  {
    DOCItemCollectionViewController._repositionRenamingCell()();
  }

  DOCItemCollectionViewController.updateInlineRenameIfNeeded()();
  v99 = (*((*v23 & *v2) + 0x9F8))();
  (*((*v23 & *v2) + 0xA00))(2);
  if (v99 != 2)
  {
    (*((*v23 & *v2) + 0xA30))(v99 & 1);
  }

  v100 = static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  LOBYTE(v101) = 2;
  os_signpost(_:dso:log:name:signpostID:_:_:)(v100, &dword_2493AC000, v108, "Files-Reload-forNodeCollectionShouldBeReloaded", 46, 2, v89, "forNodeCollectionShouldBeReloaded", 33, v101, MEMORY[0x277D84F90]);

  v107(v89, v111);
}

double DOCItemCollectionViewController.nodeCollection(_:didEncounterError:)(void *a1, void *a2)
{
  v3 = v2;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.UI);
  v7 = a1;
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v11 = 136446722;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000249BDEF60, &v23);
    *(v11 + 12) = 2114;
    *(v11 + 14) = v7;
    *v12 = v7;
    *(v11 + 22) = 2082;
    v14 = v7;
    v15 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v23);

    *(v11 + 24) = v18;
    _os_log_impl(&dword_2493AC000, v9, v10, "[Content Unavailable] %{public}s: collection %{public}@ did encounter error %{public}s", v11, 0x20u);
    outlined destroy of CharacterSet?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v13, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  *(v19 + 24) = a2;
  v20 = a2;
  v21 = v3;
  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in DOCItemCollectionViewController.nodeCollection(_:didEncounterError:)(void *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v97 = *(v4 - 8);
  v98 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v95 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for DispatchQoS();
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v7);
  v93 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v89 = *(v9 - 8);
  v90 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = (&v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = type metadata accessor for DispatchTime();
  v92 = *(v99 - 8);
  MEMORY[0x28223BE20](v99, v13);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x28223BE20](v16, v17);
  v91 = &v86 - v19;
  *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preventLoadingView) = 1;
  v20 = MEMORY[0x277D85000];
  v21 = (*((*MEMORY[0x277D85000] & *a1) + 0xA68))(v18);
  v22 = [v21 identifier];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      v29 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_loadingView);
      if (v29)
      {
        [v29 setHidden_];
      }
    }
  }

  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  *(v30 + 24) = a1;
  aBlock[0] = a2;
  v31 = a2;
  v32 = a2;
  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPError, 0x277CC63C8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v34 = v101;
  v35 = (*((*v20 & *v33) + 0xA78))();
  if (!v35 || (v36 = [v35 fpfs_fpItem], swift_unknownObjectRelease(), !v36))
  {
LABEL_22:

    goto LABEL_23;
  }

  v34 = v34;
  v37 = [v34 userInfo];
  v38 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v38 + 16))
  {

LABEL_21:

    goto LABEL_22;
  }

  v87 = v36;
  v88 = v34;
  v41 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v40);
  v43 = v42;

  if ((v43 & 1) == 0)
  {

    v36 = v87;
    v34 = v88;
    goto LABEL_21;
  }

  outlined init with copy of Any(*(v38 + 56) + 32 * v41, aBlock);

  type metadata accessor for NSFileProviderItemIdentifier(0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v70 = v88;
    goto LABEL_23;
  }

  v44 = v101;
  v45 = v88;
  v46 = [v88 code];

  if (v46 != -1005)
  {

    goto LABEL_23;
  }

  v47 = [v87 itemIdentifier];
  v86 = v44;
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;
  if (v48 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v50 != v51)
  {
    v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v52 = v88;
    if (v71)
    {
      goto LABEL_34;
    }

LABEL_23:
    v53 = _convertErrorToNSError(_:)();
    v54 = [v53 domain];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    if (v55 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v57 == v58)
    {
    }

    else
    {
      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v59 & 1) == 0)
      {

LABEL_30:
        closure #1 in closure #1 in DOCItemCollectionViewController.nodeCollection(_:didEncounterError:)(a2, v33);

        return;
      }
    }

    v60 = [v53 code];

    if (v60 == -2001)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v88 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      *v12 = 5;
      v62 = v89;
      v61 = v90;
      (*(v89 + 104))(v12, *MEMORY[0x277D85188], v90);
      v63 = v91;
      MEMORY[0x24C1FAA90](v15, v12);
      (*(v62 + 8))(v12, v61);
      v92 = *(v92 + 8);
      (v92)(v15, v99);
      v64 = swift_allocObject();
      *(v64 + 16) = partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.nodeCollection(_:didEncounterError:);
      *(v64 + 24) = v30;
      aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
      aBlock[5] = v64;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_1054;
      v65 = _Block_copy(aBlock);

      v66 = v93;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v67 = v95;
      v68 = v98;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v69 = v88;
      MEMORY[0x24C1FB940](v63, v66, v67, v65);
      _Block_release(v65);

      (*(v97 + 8))(v67, v68);
      (*(v94 + 8))(v66, v96);
      (v92)(v63, v99);
      return;
    }

    goto LABEL_30;
  }

  v52 = v88;
LABEL_34:
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  __swift_project_value_buffer(v72, static Logger.UI);
  v73 = v87;
  v74 = v87;
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    aBlock[0] = v79;
    *v77 = 136446466;
    *(v77 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000249BDEF60, aBlock);
    *(v77 + 12) = 2114;
    *(v77 + 14) = v74;
    *v78 = v73;
    v80 = v74;
    _os_log_impl(&dword_2493AC000, v75, v76, "%{public}s The parent item of this item collection no longer exists: %{public}@", v77, 0x16u);
    outlined destroy of CharacterSet?(v78, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v81 = v78;
    v52 = v88;
    MEMORY[0x24C1FE850](v81, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v79);
    MEMORY[0x24C1FE850](v79, -1, -1);
    MEMORY[0x24C1FE850](v77, -1, -1);
  }

  v82 = v86;
  if ((*((*MEMORY[0x277D85000] & *v33) + 0x938))())
  {
    v84 = v83;
    ObjectType = swift_getObjectType();
    (*(v84 + 8))(ObjectType, v84);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void closure #1 in closure #1 in DOCItemCollectionViewController.nodeCollection(_:didEncounterError:)(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = _convertErrorToNSError(_:)();
  v6 = [v4 augmentedErrorForError_];

  if (!v6)
  {
    v7 = a1;
    v6 = a1;
  }

  if ((*((*MEMORY[0x277D85000] & *a2) + 0xD0))())
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    *(&v45 + 1) = type metadata accessor for DOCItemCollectionViewController(0);
    *&v44 = a2;
    v11 = *(v9 + 8);
    v12 = a2;
    v13 = v6;
    v11(&v44, v6, 0, 1, ObjectType, v9);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(&v44);
  }

  *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
  v14 = [a2 viewIfLoaded];
  v15 = [v14 window];

  if (v15)
  {

    DOCBrowserContainedViewController.updateOverlayIfNeeded()(v16);
  }

  else
  {
    DOCBrowserContainedViewController.applyOverlaySearchSettings()();
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v20 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v21 = MEMORY[0x24C1FAD20](v17, v19);

  v22 = [v20 initWithSuiteName_];

  if (!v22)
  {
    goto LABEL_21;
  }

  if ([v22 valueForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44 = v42;
  v45 = v43;
  if (!*(&v43 + 1))
  {

    outlined destroy of CharacterSet?(&v44, &_sypSgMd, &_sypSgMR);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_21:
    return;
  }

  if (v41 != 1 || !DOCIsInternalBuild())
  {

    return;
  }

  v23 = _convertErrorToNSError(_:)();
  v24 = [v23 domain];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
LABEL_26:
      v30 = _convertErrorToNSError(_:)();
      *&v44 = 0;
      *(&v44 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(49);

      *&v44 = 0xD000000000000020;
      *(&v44 + 1) = 0x8000000249BE0B10;
      v31 = [v23 domain];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      MEMORY[0x24C1FAEA0](v32, v34);

      MEMORY[0x24C1FAEA0](0x20727245202D20, 0xE700000000000000);
      [v23 code];
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x24C1FAEA0](v35);

      MEMORY[0x24C1FAEA0](168442409, 0xE400000000000000);
      v36 = [v23 userInfo];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = Dictionary.description.getter();
      v39 = v38;

      MEMORY[0x24C1FAEA0](v37, v39);

      v40 = MEMORY[0x24C1FAD20](v44, *(&v44 + 1));

      DOCPresentAlertForErrorWithForceHandler();

      goto LABEL_27;
    }
  }

  if ([v23 code] != -1000)
  {
    goto LABEL_26;
  }

LABEL_27:
}

uint64_t DOCItemCollectionViewController.nodeCollection(_:didUpdateObservedNode:)(void *a1, void *a2)
{
  result = [a1 isGathering];
  if ((result & 1) == 0)
  {
    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x1198))(2);
    (*((*v5 & *v2) + 0x10D8))(v6);
    specialized DOCItemCollectionViewController.updateOverlay(animated:)();
    DOCItemCollectionViewController.updateFooterViewFolderNode(_:)(a2);
    v7 = *((*v5 & *v2) + 0xA50);
    v8 = swift_unknownObjectRetain();
    v7(v16, v8);
    v9 = v16[3];
    outlined destroy of DOCItemCollectionConfiguration(v16);
    [v9 updateUnderlyingNodeToNode_];

    v10 = swift_unknownObjectRelease();
    (*((*v5 & *v2) + 0x12E0))(v10);
    DOCItemCollectionViewController.updateOutlineColumnsForCurrentSource()();
    v11 = specialized DOCItemCollectionViewController.reloadNodeTitleMenuConfigurations(canFetchURLIfNecessary:)();
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
    v12 = [v2 viewIfLoaded];
    v13 = [v12 window];

    if (v13)
    {

      DOCBrowserContainedViewController.updateOverlayIfNeeded()(v14);
    }

    else
    {
      DOCBrowserContainedViewController.applyOverlaySearchSettings()();
    }

    swift_getObjectType();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();

    DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #1 in DOCItemCollectionViewController.nodeCollection(_:didUpdateObservedNode:), v15);
  }

  return result;
}

void DOCItemCollectionViewController.updateFooterViewFolderNode(_:)(void *a1)
{
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView;
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView);
  if (v3)
  {
    v5 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_folderNode;
    swift_beginAccess();
    v6 = *&v3[v5];
    swift_unknownObjectRetain();
    v7 = v3;
    v8 = specialized static DOCStatusFooterView.isValid(toUseAsFolderNode:previousNode:)(a1, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = *&v3[v5];
      swift_unknownObjectRetain();
      if (specialized static DOCStatusFooterView.isValid(toUseAsFolderNode:previousNode:)(a1, v9))
      {
        *&v3[v5] = a1;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        DOCStatusFooterView.folderNode.didset(v9);

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      v10 = *(v1 + v2);
      *(v1 + v2) = 0;

      *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) = 1;
    }
  }
}

double closure #1 in DOCItemCollectionViewController.nodeCollection(_:didUpdateObservedNode:)(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    *(v4 + 24) = a1;
    v5 = a1;

    DOCRunInMainThread(_:)();
  }

  return result;
}

void closure #1 in closure #1 in DOCItemCollectionViewController.nodeCollection(_:didUpdateObservedNode:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    DOCItemCollectionViewController.updateLinkInteractions(_:)(a2);
  }
}

void DOCItemCollectionViewController.nodeCollection(_:didUpdate:replaceNodesByFormerID:deleteNodesWith:)(void *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = v4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v186 = &v165 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v181 = &v165 - v16;
  v189 = type metadata accessor for IndexPath();
  v184 = *(v189 - 8);
  MEMORY[0x28223BE20](v189, v17);
  v185 = &v165 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v182 = &v165 - v21;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static Logger.UI);
  v24 = a1;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v25 = v24;

  v177 = v23;
  v26 = Logger.logObject.getter();
  LOBYTE(v27) = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v29 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
  v176 = v6;
  v183 = a4;
  v190 = a2;
  if (v28)
  {
    v30 = swift_slowAlloc();
    v31._rawValue = swift_slowAlloc();
    rawValue = v31._rawValue;
    *v30 = 136316418;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000043, 0x8000000249BDEF90, &rawValue);
    *(v30 + 12) = 2080;
    v5 = v25;
    v32 = v25;
    v33 = [v32 description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &rawValue);

    *(v30 + 14) = v37;
    v38 = v190;
    *(v30 + 22) = 2048;
    if (v38 >> 62)
    {
      goto LABEL_77;
    }

    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:

    *(v30 + 24) = v39;

    *(v30 + 32) = 2048;
    a4 = v183;
    if ((a3 & 0xC000000000000001) != 0)
    {
      v40 = __CocoaSet.count.getter();
    }

    else
    {
      v40 = *(a3 + 16);
    }

    *(v30 + 34) = v40;

    *(v30 + 42) = 2080;
    v41 = MEMORY[0x24C1FB0D0](a4, MEMORY[0x277D84F68] + 8);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &rawValue);

    *(v30 + 44) = v43;
    *(v30 + 52) = 1024;
    v44 = [v32 isGathering];

    *(v30 + 54) = v44;
    _os_log_impl(&dword_2493AC000, v26, v27, "DOCNodeCollectionDelegate %s nodeCollection: %s update: %ld replaceItemsByFormerID: %ld deletedItemIDs: %s isGathering: %{BOOL}d", v30, 0x3Au);
    swift_arrayDestroy();
    v45 = v31._rawValue;
    v29 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
    MEMORY[0x24C1FE850](v45, -1, -1);
    MEMORY[0x24C1FE850](v30, -1, -1);

    v6 = v176;
    v25 = v5;
    a2 = v190;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  if ([v25 v29[489]])
  {
    return;
  }

  v46 = MEMORY[0x277D85000];
  v47 = (*((*MEMORY[0x277D85000] & *v6) + 0x1018))();
  if (!v47 || (v47, v48 = *((*v46 & *v6) + 0x820), v187 = (*v46 & *v6) + 2080, v188 = v48, v48(&rawValue), v49 = v196, v50 = outlined destroy of CharacterSet?(&rawValue, &_s26DocumentManagerExecutables33DOCNodeDiffableDataSourceProtocol_pSgMd, &_s26DocumentManagerExecutables33DOCNodeDiffableDataSourceProtocol_pSgMR), !v49))
  {
    v52 = *(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (v52)
    {
      v53 = (*((*v46 & *v52) + 0x258))();
      (*((*v46 & *v6) + 0xCC0))(v53);
      return;
    }

LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v51 = (*((*v46 & *v6) + 0xF18))(v50);
  v172 = a4 >> 62;
  if ((v51 & 1) == 0)
  {
    if (a4 >> 62)
    {
      goto LABEL_79;
    }

    v54 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_20;
  }

  for (LODWORD(v180) = 0; ; LODWORD(v180) = v54 > 0)
  {
    v55 = (*v46 & *v6) + 4472;
    v174 = *((*v46 & *v6) + 0x1178);
    v173 = v55;
    v56 = v174();
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (!v57)
    {
      break;
    }

    __break(1u);
LABEL_79:
    v54 = __CocoaSet.count.getter();
LABEL_20:
    ;
  }

  v59 = (*v46 & *v6) + 4480;
  v171 = *((*v46 & *v6) + 0x1180);
  v170 = v59;
  v171(v58);
  v30 = v6;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = v25;
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    rawValue = v64;
    *v63 = 136315650;
    *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000043, 0x8000000249BDEF90, &rawValue);
    *(v63 + 12) = 1024;
    *(v63 + 14) = v180;
    *(v63 + 18) = 2048;
    *(v63 + 20) = v174();

    _os_log_impl(&dword_2493AC000, v60, v61, "DOCNodeCollectionDelegate %s animate: %{BOOL}d performingBatchUpdates: %ld", v63, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    v65 = v64;
    a2 = v190;
    MEMORY[0x24C1FE850](v65, -1, -1);
    v66 = v63;
    v25 = v62;
    MEMORY[0x24C1FE850](v66, -1, -1);
  }

  else
  {
  }

  v67 = (*(**(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_cellContentPool) + 200))(a2, 0, 0);
  v68 = MEMORY[0x277D85000];
  v69 = *((*MEMORY[0x277D85000] & *v30) + 0xD60);
  v179 = ((*MEMORY[0x277D85000] & *v30) + 3424);
  v166 = v69;
  v70 = (v69)(v67);
  a3 = (*v68 & *v30) + 3520;
  v168 = *((*v68 & *v30) + 0xDC0);
  v71 = v168(v70);
  v72 = *((*v68 & *v25) + 0x258);
  v167 = v25;
  v73 = v72(v71);
  v74 = (*((*v68 & *v30) + 0xCC0))(v73);
  v75 = *((*v68 & *v30) + 0xBD8);
  v76 = v75(v74);
  v175 = a2 >> 62;
  v178 = v30;
  v169 = a3;
  if (v76 != 2)
  {
    goto LABEL_31;
  }

  v188(&rawValue);
  v77 = v196;
  if (!v196)
  {
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  v78 = v197;
  __swift_project_boxed_opaque_existential_1(&rawValue, v196);
  v79 = (*(v78 + 120))(v77, v78);
  v80 = __swift_destroy_boxed_opaque_existential_0(&rawValue);
  if (!v79)
  {
LABEL_31:
    v84 = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController + 8);
    v85 = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController + 16);
    v86 = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController + 24);
    v87 = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController + 25);
    rawValue = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController);
    v194 = v84;
    v195 = v85;
    LOBYTE(v196) = v86;
    BYTE1(v196) = v87;
    a3 = *((*MEMORY[0x277D85000] & *v30) + 0xDB8);

    v198.value._rawValue = (a3)(v88);
    LOBYTE(v85) = DOCItemCollectionFPController.isStructureSimilar(to:)(v198);

    v32 = v194;

    if ((v85 & 1) == 0)
    {
      goto LABEL_38;
    }

    v32 = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (!v32)
    {
      goto LABEL_38;
    }

    type metadata accessor for DOCNodeCollection();
    v89 = v167;
    v32 = v32;
    v90 = static NSObject.== infix(_:_:)();

    if ((v90 & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_34:
    v91 = v190;

    v31._rawValue = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v31._rawValue, v32))
    {
LABEL_52:

      goto LABEL_53;
    }

    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    rawValue = v93;
    *v92 = 136315394;
    *(v92 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000043, 0x8000000249BDEF90, &rawValue);
    *(v92 + 12) = 2048;
    if (v175)
    {
      goto LABEL_160;
    }

    v94 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_37:
    *(v92 + 14) = v94;

    _os_log_impl(&dword_2493AC000, v31._rawValue, v32, "DOCNodeCollectionDelegate %s Item collection structure unchanged. Updating %ld items", v92, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v93);
    MEMORY[0x24C1FE850](v93, -1, -1);
    MEMORY[0x24C1FE850](v92, -1, -1);

LABEL_53:
    v26 = (v91 & 0xFFFFFFFFFFFFFF8);
    v93 = MEMORY[0x277D85000];
    if (v175)
    {
      if (v91 >= 0)
      {
        v31._rawValue = (v91 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v31._rawValue = v91;
      }

      if (__CocoaSet.count.getter() >= 1)
      {
        v186 = __CocoaSet.count.getter();
        if (v186)
        {
          goto LABEL_55;
        }

        v27 = MEMORY[0x277D84F90];
LABEL_116:
        v30 = v178;
        v31._rawValue = MEMORY[0x277D85000];
        (*((*MEMORY[0x277D85000] & *v178) + 0x1828))(v27);
        v93 = v31._rawValue;

        goto LABEL_118;
      }
    }

    else
    {
      v186 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v186)
      {
LABEL_55:
        v30 = 0;
        v185 = (v91 & 0xC000000000000001);
        v5 = (v184 + 48);
        v98 = (v184 + 32);
        v27 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v185)
          {
            v32 = MEMORY[0x24C1FC540](v30, v91);
            v100 = (v30 + 1);
            if (__OFADD__(v30, 1))
            {
              goto LABEL_74;
            }
          }

          else
          {
            if (v30 >= v26[2].isa)
            {
              goto LABEL_75;
            }

            v32 = *(v91 + 8 * v30 + 32);
            swift_unknownObjectRetain();
            v100 = (v30 + 1);
            if (__OFADD__(v30, 1))
            {
LABEL_74:
              __break(1u);
LABEL_75:
              __break(1u);
LABEL_76:
              __break(1u);
LABEL_77:
              v39 = __CocoaSet.count.getter();
              goto LABEL_6;
            }
          }

          v31._rawValue = v26;
          v188(&rawValue);
          a3 = v196;
          if (!v196)
          {
            goto LABEL_162;
          }

          v101 = v197;
          __swift_project_boxed_opaque_existential_1(&rawValue, v196);
          v102 = *(v101 + 88);
          v103 = v101;
          v104 = v181;
          v102(v32, a3, v103);
          swift_unknownObjectRelease();
          v105 = v189;
          if ((*v5)(v104, 1, v189) == 1)
          {
            outlined destroy of CharacterSet?(v104, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
            __swift_destroy_boxed_opaque_existential_0(&rawValue);
          }

          else
          {
            v32 = *v98;
            (*v98)(v182, v104, v105);
            __swift_destroy_boxed_opaque_existential_0(&rawValue);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
            }

            v107 = v27[2];
            v106 = v27[3];
            if (v107 >= v106 >> 1)
            {
              v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v106 > 1), v107 + 1, 1, v27);
            }

            v27[2] = v107 + 1;
            (v32)(v27 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v107, v182, v189);
          }

          v91 = v190;
          ++v30;
          v99 = v100 == v186;
          a4 = v183;
          v26 = v31._rawValue;
          if (v99)
          {
            goto LABEL_116;
          }
        }
      }
    }

    (*((*v93 & *v30) + 0x1828))(0);
LABEL_118:
    if (!v175)
    {
      if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
      {
        goto LABEL_128;
      }

LABEL_120:
      v137 = (*((*v93 & *v30) + 0xAE8))();
      if (v137)
      {
        v31._rawValue = v137;
        v32 = [v137 effectiveFullBrowser];

        v138 = [v32 effectiveBrowserViewController];
        if (v138)
        {
          v139 = v138;
          v31._rawValue = (*((*v93 & *v138) + 0xE8))();

          if (v31._rawValue)
          {
            type metadata accessor for DOCItemCollectionViewController(0);
            v140 = swift_dynamicCastClass();
            if (v140)
            {
              v91 = v140;
              v32 = v30;
              v141 = static NSObject.== infix(_:_:)();

              if (v141)
              {
                v31._rawValue = (*((*v93 & *v32) + 0xCB8))();
                DOCItemCollectionViewController.updateDonatedVisibleItems(_:)(v31);
              }
            }

            else
            {
            }
          }
        }

        else
        {
        }
      }

      goto LABEL_128;
    }

    while (1)
    {
      if (__CocoaSet.count.getter() >= 1)
      {
        goto LABEL_120;
      }

LABEL_128:
      if (v172)
      {
        if (__CocoaSet.count.getter() < 1)
        {
          goto LABEL_140;
        }
      }

      else if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
      {
        goto LABEL_140;
      }

      v142 = (*((*v93 & *v30) + 0x938))();
      if (v142)
      {
        v31._rawValue = v143;
        ObjectType = swift_getObjectType();
        (*(v31._rawValue + 1))(ObjectType, v31);
        v142 = swift_unknownObjectRelease();
      }

      v145 = (*((*v93 & *v30) + 0xAE8))(v142);
      if (v145)
      {
        v31._rawValue = v145;
        v32 = [v145 effectiveFullBrowser];

        v146 = [v32 effectiveBrowserViewController];
        if (v146)
        {
          v147 = v146;
          v31._rawValue = (*((*v93 & *v146) + 0xE8))();

          if (v31._rawValue)
          {
            type metadata accessor for DOCItemCollectionViewController(0);
            v148 = swift_dynamicCastClass();
            if (v148)
            {
              v91 = v148;
              v32 = v30;
              v149 = static NSObject.== infix(_:_:)();

              if (v149)
              {
                v31._rawValue = (*((*v93 & *v32) + 0xCB8))();
                DOCItemCollectionViewController.updateDonatedVisibleItems(_:)(v31);
              }
            }

            else
            {
            }
          }
        }

        else
        {
        }
      }

LABEL_140:
      v92 = v30;
      v150 = v174();
      v57 = __OFSUB__(v150, 1);
      v151 = v150 - 1;
      if (v57)
      {
        __break(1u);
LABEL_160:
        v94 = __CocoaSet.count.getter();
        goto LABEL_37;
      }

      v171(v151);
      v32 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_postBatchUpdateBlocks;
      v31._rawValue = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_postBatchUpdateBlocks);
      v91 = *(v31._rawValue + 2);

      if (!v91)
      {
LABEL_145:

        *(v30 + v32) = MEMORY[0x277D84F90];

        v168(0);
        v154 = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
        if (v154)
        {
          type metadata accessor for DOCNodeCollection();
          v155 = v167;
          v156 = v154;
          v157 = static NSObject.== infix(_:_:)();

          if (v157)
          {
            *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updateStackViewMetrics) = 1;
            DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()();
          }
        }

        DOCItemCollectionViewController.updateSectionHeaders()();
        specialized DOCItemCollectionViewController.updateOverlay(animated:)();
        v158 = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView);
        if (v158)
        {
          v159 = v158;
          DOCStatusFooterView.updateQuotaLabel()(v160);
        }

        DOCItemCollectionViewController.applyRestorableSettingsIfStillEnqueued(force:)(0);
        DOCItemCollectionViewController.updateInlineRenameIfNeeded()();
        v161 = Logger.logObject.getter();
        v162 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          v164 = swift_slowAlloc();
          rawValue = v164;
          *v163 = 136315138;
          *(v163 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000043, 0x8000000249BDEF90, &rawValue);
          _os_log_impl(&dword_2493AC000, v161, v162, "%s - calling resolvePendingNodeContexts", v163, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v164);
          MEMORY[0x24C1FE850](v164, -1, -1);
          MEMORY[0x24C1FE850](v163, -1, -1);
        }

        DOCItemCollectionViewController.resolvePendingNodeContexts()();
        return;
      }

      v93 = 0;
      a3 = v31._rawValue + 40;
      while (v93 < *(v31._rawValue + 2))
      {
        v93 = (v93 + 1);
        v152 = *(a3 - 8);

        v152(v153);

        a3 += 16;
        if (v91 == v93)
        {
          goto LABEL_145;
        }
      }

      __break(1u);
    }
  }

  v81 = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v81)
  {
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  v82 = (*((*MEMORY[0x277D85000] & *v81) + 0x290))(v80);
  v32 = == infix(_:_:)(v82, v79);

  if (v32)
  {
    goto LABEL_34;
  }

LABEL_38:
  if (v75(v83) != 2)
  {
LABEL_82:
    v111 = v30;
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.debug.getter();
    v114 = os_log_type_enabled(v112, v113);
    v182 = v111;
    if (v114)
    {
      v32 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      rawValue = v115;
      *v32 = 136315138;
      v116 = v111;
      v117 = *&v111[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];

      v118 = v190;
      if (!v117)
      {
LABEL_167:
        __break(1u);
        return;
      }

      v119 = (*((*MEMORY[0x277D85000] & *v117) + 0x290))();
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      v121 = MEMORY[0x24C1FB0D0](v119, v120);
      v123 = v122;

      v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v123, &rawValue);

      *(v32 + 4) = v124;
      _os_log_impl(&dword_2493AC000, v112, v113, "DOCNodeCollectionDelegate flat nodes %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v115);
      MEMORY[0x24C1FE850](v115, -1, -1);
      MEMORY[0x24C1FE850](v32, -1, -1);

      a3 = v182;
    }

    else
    {
      a3 = v111;

      v118 = v190;
    }

    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v125, v126))
    {
      v32 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      rawValue = v127;
      *v32 = 136315138;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000043, 0x8000000249BDEF90, &rawValue);
      _os_log_impl(&dword_2493AC000, v125, v126, "DOCNodeCollectionDelegate %s Item collection structure changed. Updating snapshot.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v127);
      MEMORY[0x24C1FE850](v127, -1, -1);
      MEMORY[0x24C1FE850](v32, -1, -1);
    }

    v128 = v166();
    LOWORD(rawValue) = v180;
    DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v128, &rawValue, 0);

    if (v175)
    {
      goto LABEL_107;
    }

    v129 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v130 = a3;
    if (!v129)
    {
LABEL_108:
      v31._rawValue = MEMORY[0x277D84F90];
LABEL_109:
      v93 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v130) + 0x1828))(v31);

      a4 = v183;
      v30 = v178;
      v91 = v190;
      goto LABEL_118;
    }

LABEL_90:
    v131 = 0;
    v181 = (v118 & 0xC000000000000001);
    v180 = v118 & 0xFFFFFFFFFFFFFF8;
    v118 = v184 + 48;
    v179 = (v184 + 32);
    v31._rawValue = MEMORY[0x277D84F90];
    while (1)
    {
      if (v181)
      {
        v32 = MEMORY[0x24C1FC540](v131, v190);
        v132 = v131 + 1;
        if (__OFADD__(v131, 1))
        {
          goto LABEL_105;
        }
      }

      else
      {
        if (v131 >= *(v180 + 16))
        {
          goto LABEL_106;
        }

        v32 = *(v190 + 8 * v131 + 32);
        swift_unknownObjectRetain();
        v132 = v131 + 1;
        if (__OFADD__(v131, 1))
        {
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          v129 = __CocoaSet.count.getter();
          v130 = a3;
          if (!v129)
          {
            goto LABEL_108;
          }

          goto LABEL_90;
        }
      }

      v188(&rawValue);
      a3 = v196;
      if (!v196)
      {
        break;
      }

      v133 = v197;
      __swift_project_boxed_opaque_existential_1(&rawValue, v196);
      v134 = v186;
      (*(v133 + 88))(v32, a3, v133);
      swift_unknownObjectRelease();
      v135 = v189;
      if ((*v118)(v134, 1, v189) == 1)
      {
        outlined destroy of CharacterSet?(v134, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        __swift_destroy_boxed_opaque_existential_0(&rawValue);
      }

      else
      {
        v32 = *v179;
        (*v179)(v185, v134, v135);
        __swift_destroy_boxed_opaque_existential_0(&rawValue);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31._rawValue + 2) + 1, 1, v31._rawValue);
        }

        a3 = *(v31._rawValue + 2);
        v136 = *(v31._rawValue + 3);
        if (a3 >= v136 >> 1)
        {
          v31._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v136 > 1), a3 + 1, 1, v31._rawValue);
        }

        *(v31._rawValue + 2) = a3 + 1;
        (v32)(v31._rawValue + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * a3, v185, v135);
      }

      v130 = v182;
      ++v131;
      if (v132 == v129)
      {
        goto LABEL_109;
      }
    }

    __break(1u);
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  v192 = MEMORY[0x277D84FA0];
  v26 = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v26)
  {
LABEL_165:
    __break(1u);
    goto LABEL_166;
  }

  v95 = (*((*MEMORY[0x277D85000] & v26->isa) + 0x290))();
  v31._rawValue = v95;
  if (!(v95 >> 62))
  {
    v91 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v91)
    {
      goto LABEL_42;
    }

    goto LABEL_81;
  }

  v91 = __CocoaSet.count.getter();
  if (!v91)
  {
LABEL_81:

    goto LABEL_82;
  }

LABEL_42:
  v27 = 0;
  a4 = v31._rawValue & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v31._rawValue & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x24C1FC540](v27, v31._rawValue);
      v5 = (v27 + 1);
      if (__OFADD__(v27, 1))
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v27 >= *((v31._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_76;
      }

      v32 = *(v31._rawValue + v27 + 4);
      swift_unknownObjectRetain();
      v5 = (v27 + 1);
      if (__OFADD__(v27, 1))
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    v96 = v192;
    a3 = swift_getObjectType();
    DOCNode.identifierKey.getter();
    v97 = specialized Set.contains(_:)(&rawValue, v96);
    outlined destroy of AnyHashable(&rawValue);
    if (v97)
    {
      break;
    }

    DOCNode.identifierKey.getter();
    v26 = &v192;
    specialized Set._Variant.insert(_:)(&rawValue, v191);
    swift_unknownObjectRelease();
    outlined destroy of AnyHashable(&rawValue);
    v27 = (v27 + 1);
    v30 = v178;
    if (v5 == v91)
    {
      goto LABEL_81;
    }
  }

  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    *v110 = 0;
    _os_log_impl(&dword_2493AC000, v108, v109, "ignoring snapshot update because of invalid nodes", v110, 2u);
    MEMORY[0x24C1FE850](v110, -1, -1);
  }

  swift_unknownObjectRelease();
}

uint64_t DOCItemCollectionViewController.DiffableReloadType.description.getter()
{
  v1 = *v0;
  if (*v0 == 2)
  {
    return 0x6F6C65526C6C7566;
  }

  _StringGuts.grow(_:)(34);

  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x24C1FAEA0](v3, v4);

  MEMORY[0x24C1FAEA0](0x666E6F636572202CLL, 0xEF203A6572756769);
  if ((v1 & 0x100) != 0)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if ((v1 & 0x100) != 0)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x24C1FAEA0](v5, v6);

  return 0x696E612866666964;
}

void specialized closure #2 in DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(char a1, char a2, void *a3)
{
  if (a1 == 2)
  {
    DOCItemCollectionViewController.adjustContentOffsetIfNeeded()();
    (*((*MEMORY[0x277D85000] & *a3) + 0xF60))();
  }

  else if ((a2 & 1) == 0)
  {
    DOCItemCollectionViewController.adjustContentOffsetIfNeeded()();
  }

  DOCItemCollectionViewController.applyRestorableSettingsIfStillEnqueued(force:)(0);
  DOCItemCollectionViewController.updateViewOptionsViewModel()();
  v4 = [objc_opt_self() defaultCenter];
  v5 = v4;
  if (one-time initialization token for DOCItemCollectionViewDidUpdateContents != -1)
  {
    swift_once();
    v4 = v5;
  }

  [v4 postNotificationName:static NSNotificationName.DOCItemCollectionViewDidUpdateContents object:a3];
}

Swift::Void __swiftcall DOCItemCollectionViewController.adjustContentOffsetIfNeeded()()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1010);
  v3 = v2();
  v4 = (*((*v1 & *v3) + 0x138))();
  v6 = v5;

  v7 = v2();
  v8 = (*((*v1 & *v7) + 0x140))();
  v10 = v9;

  v11 = v2();
  [v11 contentOffset];
  v13 = v12;

  if (v10 >= v13)
  {
    v14 = v2();
    [v14 contentOffset];
    v16 = v15;

    if (v16 >= v6)
    {
      return;
    }

    v8 = v4;
    v10 = v6;
  }

  v17 = v2();
  [v17 setContentOffset_];
}

void *closure #3 in DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(void *a1, uint64_t (*a2)(void), uint64_t a3, char a4, unint64_t a5)
{
  v48 = type metadata accessor for IndexPath();
  v9 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v10);
  v42 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x28223BE20](v16, v17);
  v50 = &v40 - v19;
  v20 = *((*MEMORY[0x277D85000] & *a1) + 0xBD8);
  v49 = a1;
  result = v20(v18);
  if (result == 2)
  {
    result = a2();
    if (a4)
    {
      if (a5 >> 62)
      {
LABEL_18:
        result = __CocoaSet.count.getter();
        v47 = result;
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v47 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v47)
        {
          return result;
        }
      }

      v22 = 0;
      v45 = a5 & 0xFFFFFFFFFFFFFF8;
      v46 = a5 & 0xC000000000000001;
      v43 = (v9 + 6);
      v44 = a5;
      v40 = (v9 + 1);
      v41 = (v9 + 4);
      v23 = &_s10Foundation9IndexPathVSgMd;
      v9 = &_s10Foundation9IndexPathVSgMR;
      while (1)
      {
        if (v46)
        {
          v33 = MEMORY[0x24C1FC540](v22, a5);
          a5 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (v22 >= *(v45 + 16))
          {
            goto LABEL_17;
          }

          v33 = *(a5 + 8 * v22 + 32);
          swift_unknownObjectRetain();
          a5 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }
        }

        v34 = v9;
        v35 = v23;
        result = (*((*MEMORY[0x277D85000] & *v49) + 0x820))(v51);
        v36 = v52;
        if (!v52)
        {
          break;
        }

        v37 = v53;
        __swift_project_boxed_opaque_existential_1(v51, v52);
        v38 = v50;
        (*(v37 + 88))(v33, v36, v37);
        __swift_destroy_boxed_opaque_existential_0(v51);
        v9 = v34;
        outlined init with copy of DOCGridLayout.Spec?(v38, v15, v23, v34);
        v39 = v48;
        if ((*v43)(v15, 1, v48) == 1)
        {
          outlined destroy of CharacterSet?(v50, v23, v34);
          swift_unknownObjectRelease();
          v31 = v15;
        }

        else
        {
          v24 = v15;
          v25 = v42;
          v26 = (*v41)(v42, v24, v39);
          v27 = (*((*MEMORY[0x277D85000] & *v49) + 0x1010))(v26);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          [v27 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

          v9 = v34;
          v23 = v35;
          swift_unknownObjectRelease();
          v29 = v25;
          v30 = v50;
          v15 = v24;
          (*v40)(v29, v39);
          v31 = v30;
        }

        result = outlined destroy of CharacterSet?(v31, v23, v9);
        ++v22;
        v32 = a5 == v47;
        a5 = v44;
        if (v32)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

void closure #1 in DOCItemCollectionViewController.collectionView(_:willEndContextMenuInteraction:animator:)(void *a1, void *a2)
{
  v4 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *a1) + 0xBD8))())
  {
    return;
  }

  v5 = (*((*v4 & *a2) + 0x60))();
  v6 = v5;
  if (v5 >> 62)
  {
    v7 = __CocoaSet.count.getter();
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_16:

    return;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_4:
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = *((*v4 & *a1) + 0x18D0);
    v21 = v6 & 0xC000000000000001;
    v20 = v7;
    while (1)
    {
      if (v21)
      {
        v14 = MEMORY[0x24C1FC540](v8, v6);
      }

      else
      {
        v14 = *(v6 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      v15 = v9(v14);
      if (v15)
      {
        v16 = v15;
        ObjectType = swift_getObjectType();
        v18 = type metadata accessor for DOCItemCollectionGridCell();
        v19 = dynamic_cast_existential_1_superclass_conditional(v16, ObjectType, v18, &protocol descriptor for DOCItemCollectionGridCell_ConcreteSubclassProtocol);
        if (!v19)
        {
          swift_unknownObjectRelease();

          goto LABEL_8;
        }

        v10 = v6;
        v11 = v4;
        v12 = *((*v4 & *v19) + 0x570);
        v13 = v16;
        v12(0);
        v4 = v11;
        v6 = v10;
        v7 = v20;
      }

      swift_unknownObjectRelease();
LABEL_8:
      if (v7 == ++v8)
      {
        goto LABEL_16;
      }
    }
  }

  __break(1u);
}

id DOCItemCollectionViewController.collectionView(_:contextMenuConfiguration:highlightPreviewForItemAt:)(void *a1, uint64_t a2)
{
  type metadata accessor for DOCNodeContextMenuConfiguration();
  result = swift_dynamicCastClass();
  if (result)
  {
    if ([*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) browserViewContext])
    {
      return 0;
    }

    else
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v6 = [a1 cellForItemAtIndexPath_];

      result = 0;
      if (v6)
      {
        type metadata accessor for DOCItemCollectionCell();
        v7 = swift_dynamicCastClass();
        if (v7)
        {
          v8 = DOCItemCollectionViewController.targetPreview(for:)(v7);
        }

        else
        {
          v8 = 0;
        }

        return v8;
      }
    }
  }

  return result;
}

UITargetedPreview_optional __swiftcall DOCItemCollectionViewController.collectionView(_:previewForHighlightingContextMenuWithConfiguration:)(UICollectionView *_, UIContextMenuConfiguration *previewForHighlightingContextMenuWithConfiguration)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v26 - v12;
  type metadata accessor for DOCNodeContextMenuConfiguration();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v16 = v14;
    v17 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
    v18 = previewForHighlightingContextMenuWithConfiguration;
    if ([v17 browserViewContext])
    {
LABEL_3:

LABEL_4:
      v14 = 0;
      goto LABEL_13;
    }

    v27 = v18;
    v19 = MEMORY[0x277D85000];
    v20 = (*((*MEMORY[0x277D85000] & *v16) + 0x60))();
    v21 = (*((*v19 & *v2) + 0xDB0))(v20);

    if (!*(v21 + 16))
    {

      goto LABEL_4;
    }

    (*(v6 + 16))(v9, v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

    (*(v6 + 32))(v13, v9, v5);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v23 = [(UICollectionView *)_ cellForItemAtIndexPath:isa];

    v18 = v27;
    if (!v23)
    {
      (*(v6 + 8))(v13, v5);
      goto LABEL_3;
    }

    type metadata accessor for DOCItemCollectionCell();
    v24 = swift_dynamicCastClass();
    if (!v24)
    {

      (*(v6 + 8))(v13, v5);
      goto LABEL_4;
    }

    v25 = DOCItemCollectionViewController.targetPreview(for:)(v24);

    (*(v6 + 8))(v13, v5);
    v14 = v25;
  }

LABEL_13:
  result.value.super.isa = v14;
  result.is_nil = v15;
  return result;
}

id DOCItemCollectionViewController.collectionView(_:contextMenuConfiguration:dismissalPreviewForItemAt:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v7 = [v3 collectionView:a1 contextMenuConfiguration:a2 highlightPreviewForItemAtIndexPath:isa];

  return v7;
}

UITargetedPreview_optional __swiftcall DOCItemCollectionViewController.collectionView(_:previewForDismissingContextMenuWithConfiguration:)(UICollectionView *_, UIContextMenuConfiguration *previewForDismissingContextMenuWithConfiguration)
{
  v3 = [v2 collectionView:_ previewForHighlightingContextMenuWithConfiguration:previewForDismissingContextMenuWithConfiguration];

  v4 = v3;
  result.value.super.isa = v4;
  result.is_nil = v5;
  return result;
}

void __swiftcall DOCItemCollectionViewController.collectionView(_:contextMenuConfigurationForItemsAt:point:)(UIContextMenuConfiguration_optional *__return_ptr retstr, UICollectionView *_, Swift::OpaquePointer contextMenuConfigurationForItemsAt, CGPoint point)
{
  y = point.y;
  x = point.x;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x28223BE20](v13, v14);
  v17 = &v52 - v16;
  v18 = (*((*MEMORY[0x277D85000] & *v4) + 0x1010))(v15);
  v19 = [v18 hitTest:0 withEvent:{x, y}];

  v20 = DOCItemCollectionViewController.headerSupplementaryViews()();
  v21 = v20;
  v55 = _;
  rawValue = contextMenuConfigurationForItemsAt._rawValue;
  v53 = v12;
  v54 = v17;
  if (v20 >> 62)
  {
    goto LABEL_16;
  }

  v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v19; v22; i = v19)
  {
    v23 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x24C1FC540](v23, v21);
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v19)
      {
        v27 = [v19 isDescendantOfView_];

        if (v27)
        {

          return;
        }
      }

      else
      {
      }

      ++v23;
      v19 = i;
      if (v26 == v22)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v22 = __CocoaSet.count.getter();
  }

LABEL_17:

  v29 = v4;
  v30 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v4) + 0x1448))(v28) & 1) != 0 || (v31 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration), [v31 browserViewContext]) || (*((*v30 & *v4) + 0x6D8))() == 1 || (objc_msgSend(v31, sel_suppressBlackCallout))
  {
LABEL_30:

    return;
  }

  v32 = [v31 sceneIdentifier];
  v33 = specialized static DOCInteractionManager.sharedManager(for:)(v32);

  if ((*((*v30 & *v33) + 0x60))())
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.UI);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = v19;
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2493AC000, v35, v36, "[Interaction] An action was trying to be performed while there is an item trying to be opened.", v38, 2u);
      MEMORY[0x24C1FE850](v38, -1, -1);

      return;
    }

    goto LABEL_30;
  }

  (*((*v30 & *v33) + 0x80))();
  v39 = rawValue;
  if (rawValue[2])
  {
    v40 = [(UICollectionView *)v55 indexPathForItemAtPoint:x, y];
    if (v40)
    {
      v41 = v53;
      v42 = v40;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = type metadata accessor for IndexPath();
      (*(*(v43 - 8) + 56))(v41, 0, 1, v43);
    }

    else
    {
      v44 = type metadata accessor for IndexPath();
      v41 = v53;
      (*(*(v44 - 8) + 56))(v53, 1, 1, v44);
    }

    v45 = v54;
    outlined init with take of (key: URL, value: FPItem)(v41, v54, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    v46 = (*((*v30 & *v29) + 0x1360))(v39);
    DOCItemCollectionViewController.contextMenuConfigurationForItems(at:indexPathOfPresentingItem:)(v46, v45);

    outlined destroy of CharacterSet?(v45, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  }

  else
  {
    if ([(UICollectionView *)v55 isEditing])
    {
    }

    else
    {
      v47 = swift_allocObject();
      *(v47 + 16) = v29;
      v48 = v19;
      v49 = objc_opt_self();
      aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForBackgroundMenu();
      aBlock[5] = v47;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
      aBlock[3] = &block_descriptor_266_0;
      v50 = _Block_copy(aBlock);
      v51 = v29;

      [v49 configurationWithIdentifier:0 previewProvider:0 actionProvider:v50];

      _Block_release(v50);
    }
  }
}

void *DOCItemCollectionViewController.contextMenuConfigurationForItems(at:indexPathOfPresentingItem:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v79 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v15 = [v2 contextMenuForItemsAt_];

  if (!v15)
  {
    return 0;
  }

  v88 = DOCItemCollectionViewController.nodes(at:in:)(a1, 0);
  outlined init with copy of DOCGridLayout.Spec?(a2, v8, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v16 = (*(v10 + 48))(v8, 1, v9);
  v17 = MEMORY[0x277D85000];
  if (v16 == 1)
  {
    outlined destroy of CharacterSet?(v8, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    v83 = 0;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v83 = (*((*v17 & *v2) + 0xD88))(v13, 0);
    v19 = *(v10 + 8);
    v10 += 8;
    v19(v13, v9);
  }

  type metadata accessor for DOCNodeContextMenuConfiguration();
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForItems(at:indexPathOfPresentingItem:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  aBlock[3] = &block_descriptor_1030;
  v22 = _Block_copy(aBlock);
  v23 = v15;

  v24 = [ObjCClassFromMetadata configurationWithIdentifier:0 previewProvider:0 actionProvider:v22];

  _Block_release(v22);
  v25 = [v23 children];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v26 >> 62)
  {
LABEL_26:
    v27 = __CocoaSet.count.getter();
    v81 = v24;
    v82 = v23;
    if (v27)
    {
LABEL_8:
      v23 = 0;
      v20 = v26 & 0xC000000000000001;
      v87 = MEMORY[0x277D84F90];
      do
      {
        v24 = v23;
        while (1)
        {
          if (v20)
          {
            v28 = MEMORY[0x24C1FC540](v24, v26);
          }

          else
          {
            if (v24 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v28 = *(v26 + 8 * v24 + 32);
          }

          v10 = v28;
          v23 = (v24 + 1);
          if (__OFADD__(v24, 1))
          {
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          objc_opt_self();
          v29 = swift_dynamicCastObjCClass();
          if (v29)
          {
            break;
          }

          ++v24;
          if (v23 == v27)
          {
            goto LABEL_28;
          }
        }

        v30 = [v29 children];
        v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v87[2] + 1, 1, v87);
        }

        v10 = v87[2];
        v32 = v87[3];
        if (v10 >= v32 >> 1)
        {
          v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v10 + 1, 1, v87);
        }

        v33 = v87;
        v87[2] = v10 + 1;
        v33[v10 + 4] = v31;
      }

      while (v23 != v27);
      goto LABEL_28;
    }
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v81 = v24;
    v82 = v23;
    if (v27)
    {
      goto LABEL_8;
    }
  }

  v87 = MEMORY[0x277D84F90];
LABEL_28:

  v34 = 0;
  v86 = 0;
  v85 = v87 + 4;
  do
  {
LABEL_51:
    v48 = v87[2];
    if (v86 == v48)
    {

      goto LABEL_59;
    }

    if (v86 >= v48)
    {
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      v66 = __CocoaSet.count.getter();
LABEL_91:
      v87 = v10;

      v10 = 0;
      while (v66 != v10)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v67 = MEMORY[0x24C1FC540](v10, v88);
        }

        else
        {
          if (v10 >= *(v34 + 16))
          {
            goto LABEL_124;
          }

          v67 = *(v88 + 8 * v10 + 32);
          swift_unknownObjectRetain();
        }

        v68 = [v67 isItemPinned];
        swift_unknownObjectRelease();
        if (v68)
        {
          v66 = v10;
          break;
        }

        if (__OFADD__(v10++, 1))
        {
          goto LABEL_125;
        }
      }

      v20 = v88;
      if (v23)
      {
        v74 = __CocoaSet.count.getter();
      }

      else
      {
        v74 = *(v34 + 16);
      }

      v75 = specialized LazyFilterSequence<>.distance(from:to:)(v66, v74, v20, partial apply for implicit closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForItems(at:indexPathOfPresentingItem:));

      if (v75 < 1)
      {

        v71 = MEMORY[0x277D85000];
        v72 = v82;
        v73 = v83;
        v70 = v86;
      }

      else
      {
        v71 = MEMORY[0x277D85000];
        v73 = v83;
        if (v23)
        {
          v76 = __CocoaSet.count.getter();
        }

        else
        {
          v76 = *(v34 + 16);
        }

        v77 = v75 < v76;
        v72 = v82;
        v70 = v86;
        if (v77)
        {
          [v86 setState_];
        }
      }

      goto LABEL_116;
    }

    v23 = (v86 + 1);
    v49 = v85[v86];

    v34 = v49;
    v86 = v23;
  }

  while (!v49);
  v35 = 0;
  if (v49 >= 0)
  {
    v36 = v49 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v36 = v49;
  }

  v84 = v36;
  v10 = v49 & 0xC000000000000001;
  v23 = (v49 >> 62);
  while (1)
  {
    if (v23)
    {
      if (v35 == __CocoaSet.count.getter())
      {
        goto LABEL_51;
      }
    }

    else if (v35 == *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }

    if (v10)
    {
      v38 = MEMORY[0x24C1FC540](v35, v34);
    }

    else
    {
      if (v35 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_121;
      }

      v38 = *(v34 + 8 * v35 + 32);
    }

    v39 = v38;
    if (__OFADD__(v35, 1))
    {
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
      goto LABEL_126;
    }

    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (!v40)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v37;
LABEL_34:

      goto LABEL_35;
    }

    v41 = [v40 identifier];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v46;
    if (!v44)
    {
      goto LABEL_34;
    }

    if (v42 == v45 && v44 == v46)
    {
      break;
    }

    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v47)
    {
      goto LABEL_56;
    }

LABEL_35:

    ++v35;
  }

LABEL_56:

  objc_opt_self();
  v50 = swift_dynamicCastObjCClass();
  if (v50)
  {
    v80 = v50;
    [v50 setState_];
    goto LABEL_60;
  }

LABEL_59:
  v80 = 0;
LABEL_60:
  v86 = 0;
  while (1)
  {
    v62 = v87[2];
    if (v86 == v62)
    {
      break;
    }

    if (v86 >= v62)
    {
      goto LABEL_127;
    }

    v23 = (v86 + 1);
    v63 = v85[v86];

    v64 = v63;
    v86 = v23;
    if (v63)
    {
      v51 = 0;
      if (v63 >= 0)
      {
        v52 = v63 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v52 = v63;
      }

      v84 = v52;
      v23 = (v63 >> 62);
LABEL_68:
      if (v23)
      {
        if (v51 == __CocoaSet.count.getter())
        {
          continue;
        }
      }

      else if (v51 == *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        continue;
      }

      if ((v64 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x24C1FC540](v51, v64);
      }

      else
      {
        if (v51 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_123;
        }

        v54 = *(v64 + 8 * v51 + 32);
      }

      v10 = v54;
      if (__OFADD__(v51, 1))
      {
        goto LABEL_122;
      }

      objc_opt_self();
      v55 = swift_dynamicCastObjCClass();
      if (v55)
      {
        v56 = [v55 identifier];
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v58;

        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v60;
        if (v34)
        {
          if (v57 == v59 && v34 == v60)
          {

LABEL_88:

            objc_opt_self();
            v65 = swift_dynamicCastObjCClass();
            v20 = v88;
            if (!v65)
            {

              v70 = 0;
              goto LABEL_102;
            }

            v86 = v65;
            swift_getKeyPath();
            v34 = v20 & 0xFFFFFFFFFFFFFF8;
            v23 = (v20 >> 62);
            if (v20 >> 62)
            {
              goto LABEL_128;
            }

            v66 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_91;
          }

          v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v61)
          {
            goto LABEL_88;
          }

          goto LABEL_67;
        }
      }

      else
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v53;
      }

LABEL_67:

      ++v51;
      goto LABEL_68;
    }
  }

  v70 = 0;
  v20 = v88;
LABEL_102:
  v71 = MEMORY[0x277D85000];
  v72 = v82;
  v73 = v83;
LABEL_116:
  v18 = v81;
  (*((*v71 & *v81) + 0x68))(v20);
  (*((*v71 & *v18) + 0x80))(v73);

  return v18;
}

void *DOCItemCollectionViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v72 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v72 - v20;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v72 - v24;
  v79 = type metadata accessor for IndexPath();
  v26 = *(v79 - 8);
  v28.n128_f64[0] = MEMORY[0x28223BE20](v79, v27);
  v30 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*((*MEMORY[0x277D85000] & *v4) + 0x1448))(v28))
  {
    return 0;
  }

  v77 = a1;
  v78 = v26;
  v31 = [a1 contextMenuInteraction];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 menuAppearance];

    v34 = v33 == 2;
  }

  else
  {
    v34 = 0;
  }

  if ([v5 isEditing] && !v34)
  {
    return 0;
  }

  v35 = *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  if ([v35 browserViewContext])
  {
    return 0;
  }

  v76 = v34;
  v74 = *(v78 + 16);
  v75 = v78 + 16;
  v74(v30, a2, v79);
  v36 = [v77 indexPathsForSelectedItems];
  if (v36)
  {
    v37 = v36;
    v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
  }

  v39 = MEMORY[0x277D85000];
  if (*((*MEMORY[0x277D85000] & *v5) + 0x6D8))() == 1 || ([v35 suppressBlackCallout] & 1) != 0 || ((*((*v39 & *v5) + 0x1898))(v30))
  {
    (*(v78 + 8))(v30, v79);

    return 0;
  }

  v41 = [v35 sceneIdentifier];
  v42 = specialized static DOCInteractionManager.sharedManager(for:)(v41);

  if ((*((*v39 & *v42) + 0x60))())
  {

    swift_unknownObjectRelease();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.UI);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    v46 = os_log_type_enabled(v44, v45);
    v48 = v78;
    v47 = v79;
    if (v46)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2493AC000, v44, v45, "[Interaction] An action was trying to be performed while there is an item trying to be opened.", v49, 2u);
      MEMORY[0x24C1FE850](v49, -1, -1);
    }

    (*(v48 + 8))(v30, v47);
    return 0;
  }

  v50 = *((*v39 & *v42) + 0x80);
  v73 = v42;
  v50();
  if (specialized Sequence<>.contains(_:)(v30, v38))
  {
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR);
  v51 = v78;
  v52 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_249B9A480;
  v74((v38 + v52), v30, v79);
  if ([v5 isEditing])
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v54 = [v5 collectionView:v77 shouldSelectItemAtIndexPath:isa];

    if (!v54)
    {
LABEL_23:
      v51 = v78;
      goto LABEL_27;
    }

    v55 = MEMORY[0x277D85000];
    v56 = (*((*MEMORY[0x277D85000] & *v5) + 0x1308))();
    v72 = ((*v55 & *v5) + 4112);
    v57 = *v72;
    v58 = (*v72)(v56);
    v59 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v58 selectItemAtIndexPath:v59 animated:0 scrollPosition:0];

    v60 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v5 collectionView:v77 performPrimaryActionForItemAtIndexPath:v60];

    v61 = v57();
    v62 = v79;
    v74(v25, v30, v79);
    v63 = v62;
    v39 = MEMORY[0x277D85000];
    v64 = (*(v78 + 56))(v25, 0, 1, v63);
    v65 = (*((*v39 & *v61) + 0xF0))(v64);
    outlined init with copy of DOCGridLayout.Spec?(v25, v21, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    (*(*v65 + 112))(v21);

    v51 = v78;

    outlined destroy of CharacterSet?(v25, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  }

LABEL_27:
  if (v76 && ([v5 isEditing] & 1) == 0)
  {
    v66 = (*((*v39 & *v5) + 0x1010))();
    specialized DOCFocusableCollectionView.focusItem(at:isUserInteraction:)(v30, 1);
  }

  v67 = [v77 indexPathForItemAtPoint_];
  if (v67)
  {
    v68 = v67;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v69 = 0;
  }

  else
  {
    v69 = 1;
  }

  v70 = v79;
  (*(v51 + 56))(v13, v69, 1, v79);
  outlined init with take of (key: URL, value: FPItem)(v13, v17, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v71 = DOCItemCollectionViewController.contextMenuConfigurationForItems(at:indexPathOfPresentingItem:)(v38, v17);

  outlined destroy of CharacterSet?(v17, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  (*(v51 + 8))(v30, v70);
  return v71;
}

void DOCItemCollectionViewController.collectionView(_:willPerformPreviewActionForMenuWith:animator:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v43 = a1;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v11 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v37 - v18;
  type metadata accessor for DOCNodeContextMenuConfiguration();
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;
    v42 = a3;
    v22 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
    v44 = a2;
    if (![v22 browserViewContext])
    {
      v41 = v7;
      v24 = MEMORY[0x277D85000];
      v25 = (*((*MEMORY[0x277D85000] & *v21) + 0x60))();
      v26 = (*((*v24 & *v4) + 0xDB0))(v25);

      if (*(v26 + 16))
      {
        v27 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v38 = *(v8 + 16);
        v39 = v27;
        v28 = v41;
        v38(v15, v26 + v27, v41);

        v40 = v8;
        v29 = v15;
        v30 = *(v8 + 32);
        v30(v19, v29, v28);
        if ((*((*MEMORY[0x277D85000] & *v4) + 0x17A0))(v19))
        {
          [v42 setPreferredCommitStyle_];
          v38(v11, v19, v28);
          v31 = v39;
          v32 = swift_allocObject();
          v33 = v43;
          *(v32 + 16) = v4;
          *(v32 + 24) = v33;
          v30((v32 + v31), v11, v28);
          aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.collectionView(_:willPerformPreviewActionForMenuWith:animator:);
          aBlock[5] = v32;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          aBlock[3] = &block_descriptor_272;
          v34 = _Block_copy(aBlock);
          v35 = v4;
          v36 = v33;

          [v42 addAnimations_];
          _Block_release(v34);

          (*(v40 + 8))(v19, v28);
        }

        else
        {
          (*(v40 + 8))(v19, v28);
        }

        return;
      }
    }

    v23 = v44;
  }
}

void closure #1 in DOCItemCollectionViewController.collectionView(_:willPerformPreviewActionForMenuWith:animator:)(void *a1, uint64_t a2)
{
  (*((*MEMORY[0x277D85000] & *a1) + 0x1288))(1);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 collectionView:a2 performPrimaryActionForItemAtIndexPath:isa];
}

void @objc DOCItemCollectionViewController.prepareSnapshotForSplitStateChanging(fromState:toState:alongside:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  a6(v10, v11, a5);

  swift_unknownObjectRelease();
}

uint64_t DOCItemCollectionViewController.contextMenuInteraction(_:willDisplayMenuFor:animator:)(void *a1)
{
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x8E0);
  v3 = a1;

  return v5(a1);
}

void __swiftcall DOCItemCollectionViewController.contextMenuInteraction(_:configurationForMenuAtLocation:)(UIContextMenuConfiguration_optional *__return_ptr retstr, UIContextMenuInteraction _, CGPoint configurationForMenuAtLocation)
{
  y = configurationForMenuAtLocation.y;
  x = configurationForMenuAtLocation.x;
  isa = _.super.isa;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10, v11);
  v14 = &v48 - v13;
  v15 = (*MEMORY[0x277D85000] & *v3) + 4112;
  v16 = *((*MEMORY[0x277D85000] & *v3) + 0x1010);
  v17 = v16(v12);
  v18 = [v17 hitTest:0 withEvent:{x, y}];

  v19 = DOCItemCollectionViewController.headerSupplementaryViews()();
  v20 = v19;
  v50 = v9;
  v51 = v14;
  v53 = v3;
  v48 = v16;
  v49 = v15;
  if (v19 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v22 = 0;
    v23 = v18;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x24C1FC540](v22, v20);
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v24 = *(v20 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v18)
      {
        v27 = [v18 isDescendantOfView_];

        if (v27)
        {

          return;
        }
      }

      else
      {
      }

      ++v22;
      v18 = v23;
      if (v26 == i)
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

  v29 = v53;
  v30 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v53) + 0x1448))(v28) & 1) != 0 || [v29 isEditing] && -[objc_class menuAppearance](isa, sel_menuAppearance) != 2 || objc_msgSend(*(v29 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration), sel_browserViewContext, v48, v49))
  {

    return;
  }

  v31 = v48();
  v32 = [v31 indexPathForItemAtPoint_];

  if (v32)
  {
    v33 = v50;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = type metadata accessor for IndexPath();
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  }

  else
  {
    v35 = type metadata accessor for IndexPath();
    v33 = v50;
    (*(*(v35 - 8) + 56))(v50, 1, 1, v35);
  }

  v36 = v51;
  v37 = outlined init with take of (key: URL, value: FPItem)(v33, v51, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  if ((*((*v30 & *v29) + 0x6D8))(v37) == 1)
  {
    goto LABEL_30;
  }

  v38 = type metadata accessor for IndexPath();
  if ((*(*(v38 - 8) + 48))(v36, 1, v38) != 1)
  {
    goto LABEL_30;
  }

  if ([(objc_class *)isa menuAppearance]== 2)
  {
    v39 = [v29 contextMenuForFolder];
    if (v39)
    {
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      v41 = objc_opt_self();
      v58 = partial apply for closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForFolder();
      v59 = v40;
      aBlock = MEMORY[0x277D85DD0];
      v55 = 1107296256;
      v56 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
      v57 = &block_descriptor_285;
      v42 = _Block_copy(&aBlock);
      v43 = v39;

      [v41 configurationWithIdentifier:0 previewProvider:0 actionProvider:v42];

      _Block_release(v42);
    }

LABEL_30:

    outlined destroy of CharacterSet?(v36, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    return;
  }

  v44 = swift_allocObject();
  *(v44 + 16) = v29;
  v45 = objc_opt_self();
  v58 = closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForBackgroundMenu()partial apply;
  v59 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v55 = 1107296256;
  v56 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  v57 = &block_descriptor_279;
  v46 = _Block_copy(&aBlock);
  v47 = v29;

  [v45 configurationWithIdentifier:0 previewProvider:0 actionProvider:v46];

  _Block_release(v46);

  outlined destroy of CharacterSet?(v36, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
}

void __swiftcall DOCItemCollectionViewController.contextMenuForItems(at:)(UIMenu_optional *__return_ptr retstr, Swift::OpaquePointer at)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v76 - v7;
  v9 = type metadata accessor for IndexPath();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v81 = &v76 - v16;
  v17 = *(at._rawValue + 2);
  if (!v17)
  {
    return;
  }

  v18 = *(v15 + 72);
  v79 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = at._rawValue + v79;
  v20 = v18;
  v21 = (v15 + 48);
  v22 = (v15 + 32);
  v82 = v3;
  v83 = MEMORY[0x277D84F90];
  v80 = v12;
  v77 = (v15 + 48);
  v78 = v18;
  do
  {
    closure #1 in DOCItemCollectionViewController.contextMenuForItems(at:)(v19, v3, v8);
    if ((*v21)(v8, 1, v9) == 1)
    {
      outlined destroy of CharacterSet?(v8, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    }

    else
    {
      v23 = *v22;
      v24 = v81;
      (*v22)(v81, v8, v9);
      v23(v12, v24, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v83 + 2) + 1, 1, v83);
      }

      v26 = *(v83 + 2);
      v25 = *(v83 + 3);
      if (v26 >= v25 >> 1)
      {
        v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v83);
      }

      v27 = v83;
      *(v83 + 2) = v26 + 1;
      v20 = v78;
      v12 = v80;
      v23(&v27[v79 + v26 * v78], v80, v9);
      v3 = v82;
      v21 = v77;
    }

    v19 += v20;
    --v17;
  }

  while (v17);
  v28 = DOCItemCollectionViewController.nodes(at:in:)(v83, 0);
  v29 = v28;
  v84[0] = MEMORY[0x277D84F90];
  if (v28 >> 62)
  {
LABEL_26:
    v30 = __CocoaSet.count.getter();
    if (v30)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
LABEL_13:
      v31 = 0;
      v3 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      while (1)
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x24C1FC540](v31, v29);
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            v34 = v84[0];
            v3 = v82;
            goto LABEL_28;
          }
        }

        else
        {
          if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_26;
          }

          v32 = *(v29 + 8 * v31 + 32);
          swift_unknownObjectRetain();
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_23;
          }
        }

        if ([v32 isActionable])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v31;
        if (v33 == v30)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v34 = MEMORY[0x277D84F90];
LABEL_28:

  LODWORD(v35) = v34 < 0 || (v34 & 0x4000000000000000) != 0;
  if (v35 == 1)
  {
    goto LABEL_78;
  }

  v36 = *(v34 + 16);
  if (!v36)
  {
LABEL_79:

    return;
  }

  while (1)
  {
    v37 = MEMORY[0x277D85000];
    v38 = *((*MEMORY[0x277D85000] & *v3) + 0xC70);

    v40 = v38(v39);
    if ((*((*v37 & *v3) + 0xBD8))() != 2)
    {

LABEL_76:
      specialized DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:)(v34, v40);

      swift_unknownObjectRelease();
      return;
    }

    if ((v34 & 0xC000000000000001) == 0)
    {
      break;
    }

    v42 = MEMORY[0x24C1FC540](0, v34);
    v41 = v42;
LABEL_37:
    v43 = *((*v37 & *v3) + 0x820);
    v80 = (*v37 & *v3) + 2080;
    v81 = v43;
    (v43)(v84, v42);
    if (!v85)
    {
      goto LABEL_86;
    }

    v44 = v85;
    v45 = v86;
    __swift_project_boxed_opaque_existential_1(v84, v85);
    v46 = (*(v45 + 112))(v41, v44, v45);
    if (!v46)
    {
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0(v84);
      goto LABEL_76;
    }

    v47 = v46;
    __swift_destroy_boxed_opaque_existential_0(v84);
    if ((v36 & 0x8000000000000000) != 0)
    {
      v48 = 10;
      if ((v35 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v36 >= 0xA)
      {
        v48 = 10;
      }

      else
      {
        v48 = v36;
      }

      if (!v35)
      {
LABEL_49:
        v49 = *(v34 + 16);
        goto LABEL_50;
      }
    }

    if (__CocoaSet.count.getter() < 0)
    {
      goto LABEL_83;
    }

    v49 = __CocoaSet.count.getter();
LABEL_50:
    v78 = v41;
    if (v49 < v48)
    {
      goto LABEL_84;
    }

    if ((v34 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v48; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
        _ArrayBuffer._typeCheckSlowPath(_:)(i);
      }
    }

    v77 = v40;

    v83 = v47;
    if (v35)
    {
      v51 = _CocoaArrayWrapper.subscript.getter();
      v53 = v52;
      v55 = v54;
      v57 = v56;

      v58 = v51;
      v48 = v57 >> 1;
    }

    else
    {
      v55 = 0;
      v53 = v34 + 32;
      v58 = v34;
    }

    v76 = v58;
    swift_unknownObjectRetain();
    v59 = v48 - v55;
    if (v48 == v55)
    {
LABEL_58:
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v40 = v83;
      goto LABEL_76;
    }

    if (v48 <= v55)
    {
      v60 = v55;
    }

    else
    {
      v60 = v48;
    }

    v61 = v60 - v55;
    v62 = (v53 + 8 * v55);
    v35 = &selRef_initWithFrame_;
    v79 = v34;
    while (v61)
    {
      v64 = *v62;
      v65 = swift_unknownObjectRetain();
      (v81)(v84, v65);
      v66 = v85;
      if (!v85)
      {
        goto LABEL_85;
      }

      v67 = v86;
      __swift_project_boxed_opaque_existential_1(v84, v85);
      v68 = (*(v67 + 112))(v64, v66, v67);
      if (v68)
      {
        v69 = [v68 itemIdentifier];
        swift_unknownObjectRelease();
      }

      else
      {
        v69 = 0;
      }

      __swift_destroy_boxed_opaque_existential_0(v84);
      v70 = [v83 itemIdentifier];
      v71 = v70;
      if (!v69)
      {

        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v40 = v77;
        goto LABEL_76;
      }

      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;
      if (v72 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v74 == v75)
      {

        swift_unknownObjectRelease();
      }

      else
      {
        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

        swift_unknownObjectRelease();

        if ((v63 & 1) == 0)
        {
          swift_unknownObjectRelease_n();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v40 = v77;
          v34 = v79;
          goto LABEL_76;
        }
      }

      --v61;
      ++v62;
      --v59;
      v3 = v82;
      v34 = v79;
      if (!v59)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_78:
    v36 = __CocoaSet.count.getter();
    if (!v36)
    {
      goto LABEL_79;
    }
  }

  if (*(v34 + 16))
  {
    v41 = *(v34 + 32);
    v42 = swift_unknownObjectRetain();
    goto LABEL_37;
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
}

uint64_t closure #1 in DOCItemCollectionViewController.contextMenuForItems(at:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v24 - v9;
  v11 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *a2) + 0x1898))(a1, v8))
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
      _os_log_impl(&dword_2493AC000, v13, v14, "Skipping item, since it is the Create Item index path.", v15, 2u);
      MEMORY[0x24C1FE850](v15, -1, -1);
    }

    v16 = type metadata accessor for IndexPath();
    return (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }

  else
  {
    (*((*v11 & *a2) + 0x18A0))(a1);
    v18 = type metadata accessor for IndexPath();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v10, 1, v18) == 1)
    {
      outlined destroy of CharacterSet?(v10, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.UI);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_2493AC000, v21, v22, "Skipping item, since it could not be resolved.", v23, 2u);
        MEMORY[0x24C1FE850](v23, -1, -1);
      }

      return (*(v19 + 56))(a3, 1, 1, v18);
    }

    else
    {
      (*(v19 + 32))(a3, v10, v18);
      return (*(v19 + 56))(a3, 0, 1, v18);
    }
  }
}

uint64_t implicit closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForItems(at:indexPathOfPresentingItem:)(uint64_t *a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  return v3;
}

void __swiftcall DOCItemCollectionViewController.contextMenuForFolder()(UIMenu_optional *__return_ptr retstr)
{
  v1 = DOCItemCollectionViewController.contextMenuItemSectionsForFolder(includingResponderActions:)(1);
  specialized Sequence.flatMap<A>(_:)(v1);
  if (v2 >> 62)
  {
LABEL_31:
    v26 = __CocoaSet.count.getter();

    if (v26)
    {
      goto LABEL_3;
    }

LABEL_32:

    return;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v3)
  {
    goto LABEL_32;
  }

LABEL_3:
  v4 = *(v1 + 2);
  if (!v4)
  {

    v22 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v34 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = 0;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
  v31 = v1 + 2;
  v29 = v4;
  v30 = v1;
  do
  {
    if (v5 >= *(v1 + 2))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = *(v31 + v5);
    if (v6 >> 62)
    {
      v7 = __CocoaSet.count.getter();
      if (!v7)
      {
LABEL_22:

        v18 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_22;
      }
    }

    v33 = MEMORY[0x277D84F90];

    specialized ContiguousArray.reserveCapacity(_:)();
    if (v7 < 0)
    {
      goto LABEL_30;
    }

    v32 = v5;
    v8 = 0;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
    v9 = v7;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x24C1FC540](v8, v6);
      }

      else
      {
        v14 = *(v6 + 8 * v8 + 32);
      }

      v15 = v14;
      v16 = [v14 action];
      (*((*MEMORY[0x277D85000] & *v15) + 0x58))();
      if (!v17)
      {
        v10 = [v15 title];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      ++v8;
      v11 = [v15 image];
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = v16;

      preferredElementSize = UIMenuElementSizeSmall;
      v28._rawValue = 0;
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v9 != v8);
    v18 = v33;
    v4 = v29;
    v1 = v30;
    v5 = v32;
    if (!(v33 >> 62))
    {
LABEL_18:

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);
      v19 = v18;
      goto LABEL_19;
    }

LABEL_23:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);

    v19 = _bridgeCocoaArray<A>(_:)();

LABEL_19:
    ++v5;

    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v35.value.super.isa = 0;
    v35.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v21, v20, 0, v35, 1, 0xFFFFFFFFFFFFFFFFLL, v19, v28);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v5 != v4);

  v22 = v34;
  if (!(v34 >> 62))
  {
LABEL_25:

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);
    v23 = v22;
    goto LABEL_26;
  }

LABEL_28:
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);

  v23 = _bridgeCocoaArray<A>(_:)();

LABEL_26:

  v24 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v36.value.super.isa = 0;
  v36.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, v25, 0, v36, 1, 0xFFFFFFFFFFFFFFFFLL, v23, v28);
}

id closure #1 in closure #1 in closure #2 in DOCItemCollectionViewController.contextMenuForFolder()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    [result performSelector:a3 withObject:a1];
    return v6;
  }

  return result;
}

id DOCItemCollectionViewController.previewParametersForItem(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v55 - v6;
  v8 = type metadata accessor for IndexPath();
  v56 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277D758D8]) init];
  v13 = [objc_opt_self() clearColor];
  [v12 setBackgroundColor_];

  v14 = MEMORY[0x277D85000];
  v15 = (*((*MEMORY[0x277D85000] & *v2) + 0x1010))();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v17 = [v15 cellForItemAtIndexPath_];

  if (!v17)
  {
    return v12;
  }

  type metadata accessor for DOCItemCollectionCell();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {

    return v12;
  }

  v19 = v18;
  v20 = *(v18 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);
  [v20 _continuousCornerRadius];
  v55 = v19;
  if (v21 > 0.0)
  {
    [v20 bounds];
    [v19 convertRect:v20 fromCoordinateSpace:?];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    [v20 _continuousCornerRadius];
    v31 = [objc_opt_self() bezierPathWithRoundedRect:v23 cornerRadius:{v25, v27, v29, v30}];
    [v12 setVisiblePath_];

LABEL_10:
    v42 = [v12 visiblePath];
    if (v42)
    {
      v43 = v42;
    }

    else
    {
      [v20 bounds];
      [v55 convertRect:v20 fromCoordinateSpace:?];
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;
      [v20 _continuousCornerRadius];
      v53 = v52;

      v54 = [objc_opt_self() bezierPathWithRoundedRect:v45 cornerRadius:{v47, v49, v51, v53}];
      [v12 setVisiblePath_];
    }

    return v12;
  }

  (*((*v14 & *v2) + 0x18A0))(a1);
  v32 = v56;
  if ((*(v56 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of CharacterSet?(v7, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    goto LABEL_10;
  }

  (*(v32 + 32))(v11, v7, v8);
  result = (*((*v14 & *v2) + 0xD88))(v11, 0);
  if (result)
  {
    v34 = result;
    [v20 bounds];
    v37 = specialized static UIBezierPath.path(for:thumbnailSize:)(v34, v35, v36);
    [v20 bounds];
    [v55 convertPoint:v20 fromCoordinateSpace:?];
    v39 = v38;
    v41 = v40;
    [v34 isFolder];
    CGAffineTransformMakeTranslation(&v57, v39, v41);
    [v37 applyTransform_];
    [v12 setVisiblePath_];

    swift_unknownObjectRelease();
    (*(v32 + 8))(v11, v8);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id DOCItemCollectionViewController.targetPreview(for:)(char *a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v8, v9);
  v12 = &v27 - v11;
  v13 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xBD8))(v10))
  {
    return 0;
  }

  result = [a1 window];
  if (result)
  {

    v15 = (*((*v13 & *v1) + 0x1010))();
    v16 = [v15 indexPathForCell_];

    if (!v16)
    {
      return 0;
    }

    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 32))(v12, v7, v3);
    v17 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView];
    v18 = DOCItemCollectionViewController.previewParametersForItem(at:)(v12);
    v19 = v17;
    [v19 bounds];
    [a1 convertPoint:v19 fromCoordinateSpace:?];
    v21 = v20;
    v23 = v22;
    v24 = [v18 visiblePath];
    if (v24)
    {
      v25 = v24;
      CGAffineTransformMakeTranslation(&v27, -v21, -v23);
      [v25 applyTransform_];
    }

    v26 = [objc_allocWithZone(MEMORY[0x277D75B90]) initWithView:v19 parameters:v18];

    (*(v4 + 8))(v12, v3);
    return v26;
  }

  return result;
}

uint64_t DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(void *a1, uint64_t (*a2)(void, void, __n128))
{
  v3 = v2;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.UI);
  swift_unknownObjectRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v9 = 136315138;
    v10 = [a1 displayName];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = a2;
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v14, &v36);
    a2 = v12;

    *(v9 + 4) = v15;
    _os_log_impl(&dword_2493AC000, v7, v8, "Getting current collection for item %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x24C1FE850](v35, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  v16 = (*((*MEMORY[0x277D85000] & *v3) + 0xCB8))();
  swift_getObjectType();
  v17 = specialized Array<A>.contains(node:)(a1, v16);

  if (v17)
  {
    v18 = a1;
    v19 = v3;
  }

  else
  {
    swift_unknownObjectRetain();
    v20 = v3;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36 = v25;
      *v23 = 138412546;
      *(v23 + 4) = v20;
      *v24 = v3;
      *(v23 + 12) = 2080;
      v26 = v20;
      v27 = [a1 displayName];
      v28 = a2;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = v29;
      a2 = v28;
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, &v36);

      *(v23 + 14) = v33;
      _os_log_impl(&dword_2493AC000, v21, v22, "The current collection %@ doesn't contain item %s", v23, 0x16u);
      outlined destroy of CharacterSet?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x24C1FE850](v25, -1, -1);
      MEMORY[0x24C1FE850](v23, -1, -1);
    }

    v18 = 0;
    v19 = 0;
  }

  return (a2)(v18, v19);
}

void DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3)
{
  v4 = v3;
  v104 = a2;
  v105 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v98 = &v95 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v101 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v97 = &v95 - v15;
  v100 = v16;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v95 - v19;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = __swift_project_value_buffer(v21, static Logger.UI);
  v23 = v10 + 16;
  v107 = *(v10 + 16);
  v107(v20, a1, v9);
  v106 = v22;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  v26 = os_log_type_enabled(v24, v25);
  v103 = v10;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v99 = v4;
    v28 = v10 + 16;
    v29 = v27;
    v30 = swift_slowAlloc();
    v108 = v30;
    *v29 = 136315138;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v9;
    v33 = a1;
    v35 = v34;
    v36 = *(v10 + 8);
    v37 = v32;
    v96 = v36;
    v36(v20, v32);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v35, &v108);
    a1 = v33;

    *(v29 + 4) = v38;
    _os_log_impl(&dword_2493AC000, v24, v25, "Getting current collection for url %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x24C1FE850](v30, -1, -1);
    v39 = v29;
    v23 = v28;
    v4 = v99;
    MEMORY[0x24C1FE850](v39, -1, -1);
  }

  else
  {

    v41 = *(v10 + 8);
    v37 = v9;
    v96 = v41;
    v40 = (v41)(v20, v9);
  }

  v42 = MEMORY[0x277D85000];
  v43 = *((*MEMORY[0x277D85000] & *v4) + 0xA80);
  v44 = (v43)(v40);
  if (*(v44 + 16) && (v45 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v46 & 1) != 0))
  {
    v99 = v4;
    v47 = *(*(v44 + 56) + 8 * v45);
    swift_unknownObjectRetain();

    v48 = v97;
    v49 = v37;
    v107(v97, a1, v37);
    swift_unknownObjectRetain();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v108 = v53;
      *v52 = 136315394;
      v54 = [v47 displayName];
      LODWORD(v101) = v51;
      v55 = v54;
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v102 = a1;
      v57 = v56;
      v59 = v58;

      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v108);

      *(v52 + 4) = v60;
      *(v52 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      v64 = v103;
      v96(v48, v49);
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v108);
      a1 = v102;

      *(v52 + 14) = v65;
      _os_log_impl(&dword_2493AC000, v50, v101, "Getting item from the cache item %s url %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v53, -1, -1);
      v66 = v52;
      v42 = MEMORY[0x277D85000];
      MEMORY[0x24C1FE850](v66, -1, -1);
    }

    else
    {

      v64 = v103;
      v96(v48, v49);
    }

    v88 = v98;
    v107(v98, a1, v49);
    (*(v64 + 56))(v88, 0, 1, v49);
    v89 = v99;
    v90 = (*((*v42 & *v99) + 0xDA0))(v47, v88);
    outlined destroy of CharacterSet?(v88, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (v90)
    {
      v91 = swift_unknownObjectRetain();
      v104(v91, v89);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
    }

    else
    {
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&dword_2493AC000, v92, v93, "Item is not part of the current collection", v94, 2u);
        MEMORY[0x24C1FE850](v94, -1, -1);
      }

      v104(0, 0);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v102 = a1;

    v67 = v4;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v106 = v23;
      v72 = v71;
      v108 = v71;
      *v70 = 136315138;
      v43();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v73 = v37;
      v74 = Dictionary.description.getter();
      v76 = v75;

      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, &v108);

      *(v70 + 4) = v77;
      _os_log_impl(&dword_2493AC000, v68, v69, "Failed to get the item from the cache: %s trying to get the item from the URL", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x24C1FE850](v72, -1, -1);
      MEMORY[0x24C1FE850](v70, -1, -1);
    }

    else
    {

      v73 = v37;
    }

    v78 = [objc_opt_self() defaultManager];
    v79 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v81 = v101;
    v80 = v102;
    v107(v101, v102, v73);
    v82 = v103;
    v83 = (*(v103 + 80) + 16) & ~*(v103 + 80);
    v84 = (v100 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
    v85 = swift_allocObject();
    (*(v82 + 32))(v85 + v83, v81, v73);
    v86 = (v85 + v84);
    v87 = v105;
    *v86 = v104;
    v86[1] = v87;
    *(v85 + ((v84 + 23) & 0xFFFFFFFFFFFFFFF8)) = v79;

    specialized FPItemManager.doc_fetchItem(for:completionHandler:)(v80, partial apply for closure #1 in DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:), v85);
  }
}

double closure #1 in DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(void *a1, void *a2, void *a3, uint64_t a4, id a5, uint64_t a6)
{
  v75 = a6;
  v76 = a4;
  v77 = a3;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = (&v70 - v16);
  if (a2)
  {
    v18 = a2;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.UI);
    v20 = a2;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    LODWORD(v74) = v22;
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      aBlock[0] = v72;
      *v23 = 136315138;
      swift_getErrorValue();
      v71 = v21;
      v24 = Error.localizedDescription.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, aBlock);
      v73 = v17;
      v27 = a5;
      v28 = v26;

      v29 = v23;
      *(v23 + 4) = v28;
      a5 = v27;
      v17 = v73;
      v30 = v71;
      _os_log_impl(&dword_2493AC000, v71, v74, "Error while trying to fetch the url %s", v29, 0xCu);
      v31 = v72;
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x24C1FE850](v31, -1, -1);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }

    else
    {
    }
  }

  if (a1)
  {
    v32 = one-time initialization token for UI;
    v74 = a1;
    v33 = a1;
    if (v32 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.UI);
    (*(v10 + 16))(v13, v77, v9);
    v35 = v33;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v77 = v35;
      v39 = v13;
      v40 = v38;
      v41 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      aBlock[0] = v73;
      *v40 = 136315394;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      LODWORD(v72) = v37;
      v43 = a5;
      v45 = v44;
      v46 = v39;
      v35 = v77;
      (*(v10 + 8))(v46, v9);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v45, aBlock);
      a5 = v43;

      *(v40 + 4) = v47;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v35;
      *v41 = v74;
      v48 = v35;
      _os_log_impl(&dword_2493AC000, v36, v72, "Fetching item for url %s item %@ to be able to get the transition controller", v40, 0x16u);
      outlined destroy of CharacterSet?(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v41, -1, -1);
      v49 = v73;
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x24C1FE850](v49, -1, -1);
      MEMORY[0x24C1FE850](v40, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }

    v63 = [objc_opt_self() defaultManager];
    v64 = swift_allocObject();
    v65 = v76;
    v64[2] = v75;
    v64[3] = v35;
    v64[4] = v65;
    v64[5] = a5;
    aBlock[4] = partial apply for closure #2 in closure #1 in DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:);
    aBlock[5] = v64;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_1009;
    v66 = _Block_copy(aBlock);
    v67 = v35;

    [v63 fetchURLForItem:v67 completionHandler:v66];
    _Block_release(v66);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.UI);
    (*(v10 + 16))(v17, v77, v9);
    v51 = v17;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = v10;
      v77 = a5;
      v57 = v55;
      aBlock[0] = v55;
      *v54 = 136315138;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      (*(v56 + 8))(v51, v9);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, aBlock);

      *(v54 + 4) = v61;
      _os_log_impl(&dword_2493AC000, v52, v53, "Failed to fetch item for url: %s to be able to get the transition controller", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      v62 = v57;
      a5 = v77;
      MEMORY[0x24C1FE850](v62, -1, -1);
      MEMORY[0x24C1FE850](v54, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v51, v9);
    }

    v69 = swift_allocObject();
    *(v69 + 16) = v76;
    *(v69 + 24) = a5;

    DOCRunInMainThread(_:)();
  }

  return result;
}

double closure #2 in closure #1 in DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8, v13);
  v15 = &v23 - v14;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v23 - v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  outlined init with take of (key: URL, value: FPItem)(v15, v19 + v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v19 + v17) = a3;
  *(v19 + v18) = a4;
  v20 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v24;
  v20[1] = a6;

  v21 = a4;

  DOCRunInMainThread(_:)();

  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, __n128), uint64_t (*a5)(void, void, __n128))
{
  v30[0] = a4;
  v30[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v30 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of CharacterSet?(v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_9:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.UI);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2493AC000, v27, v28, "Item is not part of the current collection", v29, 2u);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }

    return (v30[0])(0, 0);
  }

  (*(v16 + 32))(v19, v14, v15);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v21 = Strong, (*(v16 + 16))(v10, v19, v15), (*(v16 + 56))(v10, 0, 1, v15), v22 = (*((*MEMORY[0x277D85000] & *v21) + 0xDA0))(a3, v10), v21, outlined destroy of CharacterSet?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR), !v22))
  {
    (*(v16 + 8))(v19, v15);
    goto LABEL_9;
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(v22, v30[0]);
  }

  swift_unknownObjectRelease();
  return (*(v16 + 8))(v19, v15);
}

double DOCItemCollectionViewController.reveal(nodes:selectEvenIfVisible:completionBlock:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.UI);

  v10 = v4;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136446466;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
    v16 = MEMORY[0x24C1FB0D0](a1, v15);
    v28 = a2;
    v18 = a3;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v29);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v21 = (*((*MEMORY[0x277D85000] & *v10) + 0xA68))(v20);
    [v21 identifier];

    type metadata accessor for DOCDocumentSourceIdentifier(0);
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v29);

    *(v13 + 14) = v24;
    a3 = v18;
    a2 = v28;
    _os_log_impl(&dword_2493AC000, v11, v12, "[REVEAL]: revealing items: %{public}s source: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v10;
  *(v25 + 24) = a2 & 1;
  *(v25 + 32) = a3;
  *(v25 + 40) = a4;
  v26 = v10;

  specialized Array<A>.fetchURLPairs(_:)(partial apply for closure #1 in DOCItemCollectionViewController.reveal(nodes:selectEvenIfVisible:completionBlock:), v25, a1);

  return result;
}

void closure #1 in DOCItemCollectionViewController.reveal(nodes:selectEvenIfVisible:completionBlock:)(uint64_t a1, char *a2, int a3, void (*a4)(void), uint64_t a5)
{
  v156 = a4;
  v157 = a5;
  v155 = a3;
  v7 = type metadata accessor for UTType();
  v160 = *(v7 - 8);
  v161 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v159 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v158 = &v148 - v12;
  v170 = type metadata accessor for URL();
  v13 = *(v170 - 8);
  MEMORY[0x28223BE20](v170, v14);
  v154 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v167 = &v148 - v18;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_p4node_10Foundation3URLV3urltMd, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMR);
  MEMORY[0x28223BE20](v169, v19);
  v150 = (&v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21, v22);
  v168 = &v148 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v28 = (&v148 - v27);
  v171 = a2;
  v172[0] = MEMORY[0x277D84F90];
  v29 = *(a1 + 16);
  v153 = v13;
  v152 = a1;
  v149 = v26;
  v151 = v29;
  if (v29)
  {
    v30 = *((*MEMORY[0x277D85000] & *a2) + 0xDA0);
    v165 = (*MEMORY[0x277D85000] & *a2) + 3488;
    v166 = v30;
    v31 = a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v163 = (v13 + 32);
    v162 = MEMORY[0x277D84F90];
    v32 = (v13 + 56);
    v164 = *(v26 + 72);
    v33 = v29;
    v34 = v167;
    do
    {
      outlined init with copy of DOCGridLayout.Spec?(v31, v28, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMd, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMR);
      v35 = *v28;
      v36 = v168;
      outlined init with copy of DOCGridLayout.Spec?(v28, v168, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMd, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMR);
      swift_unknownObjectRelease();
      v37 = &v36[*(v169 + 48)];
      v38 = v170;
      (*v163)(v34, v37, v170);
      (*v32)(v34, 0, 1, v38);
      v39 = (v166)(v35, v34);
      outlined destroy of CharacterSet?(v34, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v40 = outlined destroy of CharacterSet?(v28, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMd, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMR);
      if (v39)
      {
        MEMORY[0x24C1FB090](v40);
        if (*((v172[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v172[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v162 = v172[0];
      }

      v31 += v164;
      --v33;
    }

    while (v33);
  }

  else
  {
    v162 = MEMORY[0x277D84F90];
  }

  v41 = v162;
  if (v162 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_11;
    }
  }

  else if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:
    v42 = swift_allocObject();
    v43 = v171;
    *(v42 + 16) = v171;
    *(v42 + 24) = v41;
    *(v42 + 32) = v155 & 1;
    v44 = v157;
    *(v42 + 40) = v156;
    *(v42 + 48) = v44;
    v45 = v43;

    DOCRunInMainThread(_:)();

    return;
  }

  if (v151)
  {

    v46 = (*(v149 + 80) + 32) & ~*(v149 + 80);
    v47 = v152;
    v48 = v150;
    outlined init with copy of DOCGridLayout.Spec?(v152 + v46, v150, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMd, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMR);
    v49 = *v48;
    v50 = v169;
    v51 = v153;
    v53 = v153 + 8;
    v52 = *(v153 + 8);
    v54 = v48 + *(v169 + 48);
    v55 = v170;
    v52(v54, v170);
    v56 = v47 + v46;
    v57 = v168;
    outlined init with copy of DOCGridLayout.Spec?(v56, v168, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMd, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMR);
    swift_unknownObjectRelease();
    v58 = (*(v51 + 32))(v154, &v57[*(v50 + 48)], v55);
    v59 = MEMORY[0x277D85000];
    v60 = (*MEMORY[0x277D85000] & *v171) + 2664;
    v61 = *((*MEMORY[0x277D85000] & *v171) + 0xA68);
    v62 = v61(v58);
    LOBYTE(v59) = (*((*v59 & *v62) + 0x198))();

    if (v59)
    {
      v162 = v61;
      v163 = v60;
      v165 = v53;
      v166 = v52;
      v169 = v49;
      v164 = *&v171[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
      v63 = [v164 recentDocumentsContentTypes];
      v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v65 = 0;
      v66 = *(v64 + 16);
      v67 = v161;
      v168 = (v160 + 8);
      while (v66 != v65)
      {
        v68 = v169;
        if (v65 >= *(v64 + 16))
        {
          __break(1u);
          goto LABEL_40;
        }

        v52 = v160;
        v69 = v158;
        (*(v160 + 2))(v158, v64 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v160 + 9) * v65++, v67);
        v70 = [v68 contentType];
        v71 = v159;
        static UTType._unconditionallyBridgeFromObjectiveC(_:)();

        v72 = UTType.conforms(to:)();
        v73 = *(v52 + 1);
        v73(v71, v67);
        v73(v69, v67);
        if (v72)
        {

          v52 = v166;
          v49 = v169;
          goto LABEL_20;
        }
      }

      v112 = v169;
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v113 = type metadata accessor for Logger();
      __swift_project_value_buffer(v113, static Logger.UI);
      v114 = v171;
      swift_unknownObjectRetain();
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.default.getter();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v173[0] = v118;
        *v117 = 136316162;
        *(v117 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE0A50, v173);
        *(v117 + 12) = 2080;
        v119 = [v112 respondsToSelector_];
        v171 = v118;
        if (v119)
        {
          v120 = [v112 debugDescription];
          v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v123 = v122;

          v112 = v169;
        }

        else
        {
          v121 = 0;
          v123 = 0;
        }

        v172[0] = v121;
        v172[1] = v123;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v124 = String.init<A>(describing:)();
        v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v125, v173);

        *(v117 + 14) = v126;
        *(v117 + 22) = 2080;
        v127 = [v112 contentType];
        v128 = v159;
        static UTType._unconditionallyBridgeFromObjectiveC(_:)();

        v129 = UTType.identifier.getter();
        v131 = v130;
        v132 = v128;
        v133 = v161;
        (*v168)(v132, v161);
        v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v131, v173);

        *(v117 + 24) = v134;
        *(v117 + 32) = 2080;
        v136 = (v162)(v135);
        v137 = [v136 identifier];

        v172[0] = v137;
        type metadata accessor for DOCDocumentSourceIdentifier(0);
        v138 = String.init<A>(describing:)();
        v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v139, v173);

        *(v117 + 34) = v140;
        *(v117 + 42) = 2080;
        v141 = [v164 recentDocumentsContentTypes];
        v142 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v143 = MEMORY[0x24C1FB0D0](v142, v133);
        v145 = v144;

        v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v145, v173);

        *(v117 + 44) = v146;
        _os_log_impl(&dword_2493AC000, v115, v116, "[REVEAL]: %s - Can not reveal item: %s because node is a type: %s not supported by spotlight-backed collection source: %s because recentDocumentsContentTypes does not contain it: %s", v117, 0x34u);
        v147 = v171;
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v147, -1, -1);
        MEMORY[0x24C1FE850](v117, -1, -1);
      }

      v156(0);
      swift_unknownObjectRelease();
      (v166)(v154, v170);
    }

    else
    {
LABEL_20:
      v65 = v49;
      if (one-time initialization token for UI != -1)
      {
LABEL_40:
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      __swift_project_value_buffer(v74, static Logger.UI);
      swift_unknownObjectRetain();
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      v77 = v52;
      if (os_log_type_enabled(v75, v76))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v172[0] = v79;
        *v78 = 136315394;
        *(v78 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE0A50, v172);
        *(v78 + 12) = 2080;
        v80 = [v65 displayName];
        v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v65;
        v83 = v77;
        v85 = v84;

        v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v85, v172);
        v77 = v83;

        *(v78 + 14) = v86;
        _os_log_impl(&dword_2493AC000, v75, v76, "[REVEAL]: %s - Waiting for pending node: %s", v78, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v79, -1, -1);
        MEMORY[0x24C1FE850](v78, -1, -1);
      }

      else
      {

        v82 = v65;
      }

      v101 = v156;
      v102 = v157;
      v103 = v155;
      v104 = v153;
      v105 = v167;
      v106 = v154;
      v107 = v170;
      (*(v153 + 16))(v167, v154, v170);
      (*(v104 + 56))(v105, 0, 1, v107);
      v108 = swift_allocObject();
      v109 = v171;
      *(v108 + 16) = v82;
      *(v108 + 24) = v109;
      *(v108 + 32) = v103 & 1;
      *(v108 + 40) = v101;
      *(v108 + 48) = v102;
      v110 = v109;

      v111 = swift_unknownObjectRetain();
      DOCItemCollectionViewController.waitForPending(node:url:resolutionHandler:)(v111, v105, partial apply for closure #4 in closure #1 in DOCItemCollectionViewController.reveal(nodes:selectEvenIfVisible:completionBlock:), v108);
      swift_unknownObjectRelease();

      outlined destroy of CharacterSet?(v105, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v77(v106, v107);
    }
  }

  else
  {
    v87 = v152;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    __swift_project_value_buffer(v88, static Logger.UI);

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v172[0] = v92;
      *v91 = 136315650;
      *(v91 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE0A50, v172);
      *(v91 + 12) = 2080;
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      v94 = MEMORY[0x24C1FB0D0](v41, v93);
      v96 = v95;

      v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v96, v172);

      *(v91 + 14) = v97;
      *(v91 + 22) = 2080;
      v98 = MEMORY[0x24C1FB0D0](v87, v169);
      v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, v172);

      *(v91 + 24) = v100;
      _os_log_impl(&dword_2493AC000, v89, v90, "[REVEAL]: %s Could not fetchURLPairs or get an item to search for. Nodes provided: %s, URLPairs: %s", v91, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v92, -1, -1);
      MEMORY[0x24C1FE850](v91, -1, -1);
    }

    else
    {
    }

    v156(0);
  }
}

uint64_t closure #2 in closure #1 in DOCItemCollectionViewController.reveal(nodes:selectEvenIfVisible:completionBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  (*((*MEMORY[0x277D85000] & *a1) + 0x16C8))(a2, 1, a3);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.UI);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2493AC000, v6, v7, "[REVEAL]: found matching nodes, calling completion block", v8, 2u);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  return a4(1);
}

double closure #4 in closure #1 in DOCItemCollectionViewController.reveal(nodes:selectEvenIfVisible:completionBlock:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = a3;

  DOCRunInMainThread(_:)();

  return result;
}

uint64_t closure #1 in closure #4 in closure #1 in DOCItemCollectionViewController.reveal(nodes:selectEvenIfVisible:completionBlock:)(void *a1, void *a2, void *a3, char a4, uint64_t (*a5)(uint64_t))
{
  v8 = &unk_2810DF000;
  v9 = MEMORY[0x277D85000];
  if (a1)
  {
    v11 = one-time initialization token for UI;
    swift_unknownObjectRetain();
    if (v11 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.UI);
    swift_unknownObjectRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v52 = v16;
      *v15 = 136315394;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE0A50, &v52);
      *(v15 + 12) = 2080;
      v17 = [a2 displayName];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v52);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_2493AC000, v13, v14, "[REVEAL]: %s - Found matching node for %s", v15, 0x16u);
      swift_arrayDestroy();
      v22 = v16;
      v9 = MEMORY[0x277D85000];
      MEMORY[0x24C1FE850](v22, -1, -1);
      v23 = v15;
      v8 = &unk_2810DF000;
      MEMORY[0x24C1FE850](v23, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_249BA0290;
    *(v24 + 32) = a1;
    v25 = *((*v9 & *a3) + 0x16C8);
    swift_unknownObjectRetain();
    v25(v24, 1, a4 & 1);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.UI);
    swift_unknownObjectRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v52 = v30;
      *v29 = 136315394;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE0A50, &v52);
      *(v29 + 12) = 2080;
      v31 = [a2 displayName];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v9 = MEMORY[0x277D85000];
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v52);

      *(v29 + 14) = v35;
      _os_log_impl(&dword_2493AC000, v27, v28, "[REVEAL]: %s - Couldn't Find matching node for %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v30, -1, -1);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }

    v8 = &unk_2810DF000;
  }

  if (v8[150] != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.UI);
  swift_unknownObjectRetain();
  v37 = a3;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v52 = v41;
    *v40 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd, &_sSo7DOCNode_pSgMR);
    v42 = Optional.debugDescription.getter();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v52);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2080;
    v46 = (*((*v9 & *v37) + 0xA68))(v45);
    [v46 identifier];

    type metadata accessor for DOCDocumentSourceIdentifier(0);
    v47 = String.init<A>(describing:)();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v52);

    *(v40 + 14) = v49;
    _os_log_impl(&dword_2493AC000, v38, v39, "[REVEAL]: calling completion block after waiting for pending node. Found node: %s. source: %s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v41, -1, -1);
    MEMORY[0x24C1FE850](v40, -1, -1);
  }

  return a5(1);
}

void DOCItemCollectionViewController.getTransitionController(forURL:completionBlock:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{

  v7 = v3;
  specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(a1, v7, a2, a3, v7);
}

void closure #2 in closure #1 in DOCItemCollectionViewController.getTransitionController(forItem:completionBlock:)(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{

  v8 = a1;
  specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(a2, v8, a3, a4, v8);
}

void closure #1 in DOCItemCollectionViewController.getTransitionController(forURL:completionBlock:)(void *a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (a2 && a1)
  {
    v8 = one-time initialization token for UI;
    v9 = a2;
    swift_unknownObjectRetain();
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.UI);
    v11 = v9;
    swift_unknownObjectRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v40 = a3;
      v39 = swift_slowAlloc();
      v43[0] = v39;
      *v14 = 136315394;
      v16 = [a1 description];
      v17 = v11;
      v18 = a5;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = v19;
      a5 = v18;
      v11 = v17;
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, v43);

      *(v14 + 4) = v23;
      *(v14 + 12) = 2112;
      *(v14 + 14) = v17;
      *v15 = a2;
      v24 = v17;
      _os_log_impl(&dword_2493AC000, v12, v13, "Getting transition controller for item %s collection %@", v14, 0x16u);
      outlined destroy of CharacterSet?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v39);
      a3 = v40;
      MEMORY[0x24C1FE850](v39, -1, -1);
      MEMORY[0x24C1FE850](v14, -1, -1);
    }

    v25 = [*(a5 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) sceneIdentifier];
    if (v25)
    {
      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v34 = type metadata accessor for DOCServiceTransitionController();
    v35 = objc_allocWithZone(v34);
    swift_unknownObjectWeakInit();
    v36 = &v35[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_sceneIdentifier];
    *v36 = 0;
    v36[1] = 0;
    swift_unknownObjectWeakAssign();
    *&v35[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_node] = a1;
    swift_beginAccess();
    *v36 = v27;
    v36[1] = v29;
    swift_unknownObjectRetain_n();
    v37 = v11;

    v42.receiver = v35;
    v42.super_class = v34;
    v38 = objc_msgSendSuper2(&v42, sel_init);

    swift_unknownObjectRelease();
    a3(v38);

    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.UI);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2493AC000, v31, v32, "Not enough information to get the transition controller", v33, 2u);
      MEMORY[0x24C1FE850](v33, -1, -1);
    }

    a3(0);
  }
}

void DOCItemCollectionViewController.getTransitionController(forItem:completionBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() defaultManager];
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  v17[4] = a5;
  v17[5] = v13;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  v17[3] = a6;
  v14 = _Block_copy(v17);
  v15 = v6;
  v16 = a1;

  [v12 fetchURLForItem:v16 completionHandler:v14];
  _Block_release(v14);
}

double closure #1 in DOCItemCollectionViewController.getTransitionController(forItem:completionBlock:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v32[0] = a7;
  v32[1] = a8;
  v33 = a5;
  v34 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = v32 - v19;
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    outlined destroy of CharacterSet?(v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v22 + 32))(v25, v20, v21);
    (*(v22 + 16))(v16, v25, v21);
    (*(v22 + 56))(v16, 0, 1, v21);
    v26 = (*((*MEMORY[0x277D85000] & *a3) + 0xDA0))(a4, v16);
    outlined destroy of CharacterSet?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (v26)
    {
      v27 = swift_allocObject();
      v27[2] = a3;
      v27[3] = v26;
      v28 = v34;
      v27[4] = v33;
      v27[5] = v28;
      v29 = a3;
      swift_unknownObjectRetain();

      DOCRunInMainThread(_:)();
      swift_unknownObjectRelease();

      (*(v22 + 8))(v25, v21);
      return result;
    }

    (*(v22 + 8))(v25, v21);
  }

  v31 = swift_allocObject();
  *(v31 + 16) = v33;
  *(v31 + 24) = v34;

  DOCRunInMainThread(_:)();

  return result;
}

void DOCItemCollectionViewController.getView(for:waitForNewThumbnail:_:)(void *a1, int a2, void (*a3)(void, void), uint64_t a4)
{
  v57 = a3;
  v58 = a4;
  v50 = a2;
  v52 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v4, v5);
  v54 = &v49[-v6];
  v51 = type metadata accessor for DispatchTimeInterval();
  v7 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v8);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v49[-v18];
  v20 = swift_allocBox();
  v22 = v21;
  v23 = type metadata accessor for URL();
  v24 = *(*(v23 - 8) + 56);
  v53 = v22;
  v24(v22, 1, 1, v23);
  v25 = dispatch_semaphore_create(0);
  v26 = swift_allocObject();
  *(v26 + 16) = v20;
  *(v26 + 24) = v25;
  aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.getView(for:waitForNewThumbnail:_:);
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_314;
  v27 = _Block_copy(aBlock);
  v56 = v20;

  v28 = v25;
  v29 = v52;

  [v29 fetchURL_];
  _Block_release(v27);
  static DispatchTime.now()();
  *v10 = 100;
  v30 = v51;
  (*(v7 + 104))(v10, *MEMORY[0x277D85178], v51);
  MEMORY[0x24C1FAA90](v15, v10);
  (*(v7 + 8))(v10, v30);
  v31 = *(v12 + 8);
  v31(v15, v11);
  MEMORY[0x24C1FBB60](v19);
  v31(v19, v11);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.UI);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v35 = 136315138;
      *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000062, 0x8000000249BDF020, aBlock);
      _os_log_impl(&dword_2493AC000, v33, v34, "[Presentation Error] %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x24C1FE850](v36, -1, -1);
      MEMORY[0x24C1FE850](v35, -1, -1);
    }
  }

  v37 = v53;
  swift_beginAccess();
  v38 = v54;
  outlined init with copy of DOCGridLayout.Spec?(v37, v54, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v39 = v55;
  v40 = (*((*MEMORY[0x277D85000] & *v55) + 0xDA0))(v29, v38);
  outlined destroy of CharacterSet?(v38, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v40)
  {
    v41 = v58;

    v42 = v39;
    v43 = swift_unknownObjectRetain();
    specialized DOCItemCollectionViewController.getCurrentCollectionInformation(for:completionBlock:)(v43, v42, v57, v41, v42, v40, v50 & 1);

    swift_unknownObjectRelease_n();
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.UI);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v59 = v48;
      *v47 = 136315138;
      *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003BLL, 0x8000000249BDEFE0, &v59);
      _os_log_impl(&dword_2493AC000, v45, v46, "[Presentation Error] %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x24C1FE850](v48, -1, -1);
      MEMORY[0x24C1FE850](v47, -1, -1);
    }

    v57(0, 0);
  }
}