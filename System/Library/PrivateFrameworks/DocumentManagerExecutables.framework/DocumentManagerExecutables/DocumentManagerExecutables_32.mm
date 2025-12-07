Swift::Void __swiftcall DOCItemCollectionViewController.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v3 = v2;
  v57 = animated;
  v4 = _;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v10, v12);
  v56 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*MEMORY[0x277D85000] & *v2) + 328;
  v16 = *((*MEMORY[0x277D85000] & *v2) + 0x148);
  if ((v16(v13) & 1) != 0 && !v4)
  {
    return;
  }

  if ((([v2 isEditing] ^ v4) & 1) == 0)
  {
    v17 = (*((*MEMORY[0x277D85000] & *v2) + 0x1010))();
    v18 = [v17 isEditing];
    v54 = v16;
    v19 = v5;
    v20 = v15;
    v21 = v6;
    v22 = v18;

    v23 = v22 == v4;
    v6 = v21;
    v15 = v20;
    v5 = v19;
    v16 = v54;
    if (v23)
    {
      return;
    }
  }

  v55 = v11;
  v24 = type metadata accessor for DOCItemCollectionViewController(0);
  v62.receiver = v3;
  v62.super_class = v24;
  v54 = v24;
  if (v4)
  {
    v25 = 2;
  }

  else
  {
    v25 = 0;
  }

  objc_msgSendSuper2(&v62, sel_setEditing_animated_, v4, v57);
  v26 = MEMORY[0x277D85000];
  v27 = (*((*MEMORY[0x277D85000] & *v3) + 0x6E0))(v25);
  if ((*((*v26 & *v3) + 0x6D8))(v27))
  {
    if (v4)
    {
      goto LABEL_17;
    }

LABEL_12:
    v28 = (*((*MEMORY[0x277D85000] & *v3) + 0xBD8))();
    v52 = v15;
    v53 = v6;
    v51 = v9;
    if (v28 == 3 && (v29 = (*((*MEMORY[0x277D85000] & *v3) + 0xE8))()) != 0)
    {
      v30 = [v29 infoPanelPreviewingMultipleItems];
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = 0;
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v50 = static OS_dispatch_queue.main.getter();
    v31 = swift_allocObject();
    *(v31 + 16) = v3;
    *(v31 + 24) = v30;
    v60 = partial apply for closure #1 in DOCItemCollectionViewController.setEditing(_:animated:);
    v61 = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v59 = &block_descriptor_164_1;
    v49 = _Block_copy(aBlock);
    v32 = v3;

    v33 = v56;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v34 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v36 = v49;
    v35 = v50;
    MEMORY[0x24C1FB9A0](0, v33, v34, v49);
    _Block_release(v36);

    (*(v53 + 8))(v34, v5);
    (*(v55 + 8))(v33, v10);
    goto LABEL_17;
  }

  (*((*MEMORY[0x277D85000] & *v3) + 0x1308))();
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_17:
  v37 = (*((*MEMORY[0x277D85000] & *v3) + 0x1010))();
  [v37 setEditing_];

  if (((v16)() & 1) == 0)
  {
    if ((*((*MEMORY[0x277D85000] & *v3) + 0xD0))())
    {
      v39 = v38;
      ObjectType = swift_getObjectType();
      v59 = v54;
      aBlock[0] = v3;
      v41 = [v3 isEditing];
      (*(v39 + 8))(aBlock, v41, 3, v57, ObjectType, v39);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(aBlock);
    }

    v42 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for DOCItemCollectionViewDidChangeEditMode != -1)
    {
      swift_once();
    }

    [v42 postNotificationName:static NSNotificationName.DOCItemCollectionViewDidChangeEditMode object:v3];
  }

  v43 = v57;
  (*((*MEMORY[0x277D85000] & *v3) + 0x16E8))(v4, v57);
  v44 = specialized DOCItemCollectionViewController.reloadNodeTitleMenuConfigurations(canFetchURLIfNecessary:)();
  *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = v43;
  v45 = [v3 viewIfLoaded];
  v46 = [v45 window];

  if (v46)
  {

    DOCBrowserContainedViewController.updateOverlayIfNeeded()(v47);
  }

  else
  {
    DOCBrowserContainedViewController.applyOverlaySearchSettings()();
  }
}

uint64_t DOCItemCollectionViewController.specificallyExcludeFolderPicking(_:)(void *a1)
{
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v17 - v11;
  v13 = [a1 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  static UTType.folder.getter();
  LOBYTE(v13) = static UTType.== infix(_:_:)();
  v14 = *(v4 + 8);
  v14(v7, v3);
  v14(v12, v3);
  if ((v13 & 1) != 0 && [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) forPickingDocuments] && objc_msgSend(v1, sel_isEditing))
  {
    v15 = (*((*MEMORY[0x277D85000] & *v1) + 0x148))() ^ 1;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t DOCItemCollectionViewController.forceEditingMode.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionViewController.forceEditingMode.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode;
  v4 = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    v4 = [v1 setEditing:1 animated:0];
  }

  v6 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x148))(v4);
  if (v5 != (result & 1))
  {
    return (*((*v6 & *v1) + 0x16E8))([v1 isEditing], 0);
  }

  return result;
}

void (*DOCItemCollectionViewController.forceEditingMode.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemCollectionViewController.forceEditingMode.modify;
}

void DOCItemCollectionViewController.forceEditingMode.modify(id **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = *(*a1 + 40);
  v6 = v3[v4];
  v3[v4] = v5;
  v7 = MEMORY[0x277D85000];
  if (a2)
  {
    if (v5)
    {
      a1 = [v2[3] setEditing:1 animated:0];
    }

    if (v6 != ((*((*v7 & *v2[3]) + 0x148))(a1) & 1))
    {
LABEL_5:
      (*((*v7 & *v2[3]) + 0x16E8))([v2[3] isEditing], 0);
    }
  }

  else
  {
    if (v5)
    {
      a1 = [v2[3] setEditing:1 animated:0];
    }

    if ((v6 ^ (*((*v7 & *v2[3]) + 0x148))(a1)))
    {
      goto LABEL_5;
    }
  }

  free(v2);
}

Swift::Void __swiftcall DOCItemCollectionViewController.updateEditingInCollectionViewIfNeeded(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x1018))();
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v2;
    v8 = _;
    *(v7 + 32) = v8;
    if (animated)
    {
      v9 = objc_opt_self();
      v10 = swift_allocObject();
      *(v10 + 16) = partial apply for closure #1 in DOCItemCollectionViewController.updateEditingInCollectionViewIfNeeded(_:animated:);
      *(v10 + 24) = v7;
      aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_174;
      v11 = _Block_copy(aBlock);
      v12 = v2;
      v13 = v6;

      [v9 animateWithDuration:v11 animations:0.2];

      _Block_release(v11);
    }

    else
    {
      v14 = v2;
      v15 = v6;
      closure #1 in DOCItemCollectionViewController.updateEditingInCollectionViewIfNeeded(_:animated:)(v15, v14, v8);
    }
  }
}

void closure #1 in DOCItemCollectionViewController.updateEditingInCollectionViewIfNeeded(_:animated:)(void *a1, void *a2, int a3)
{
  v52 = a3;
  v49 = type metadata accessor for UTType();
  v5 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v6);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v47 = &v44 - v11;
  v12 = [a1 preparedCells];
  if (!v12)
  {
    goto LABEL_33;
  }

  v13 = v12;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    v15 = __CocoaSet.count.getter();
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_29:

    goto LABEL_31;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_4:
  v51 = v15;
  if (v15 >= 1)
  {
    v16 = 0;
    v55 = v14 & 0xC000000000000001;
    v45 = (v5 + 8);
    v46 = v14;
    v17 = v51;
    v53 = a2;
    do
    {
      if (v55)
      {
        v18 = MEMORY[0x24C1FC540](v16, v14);
      }

      else
      {
        v18 = *(v14 + 8 * v16 + 32);
      }

      v19 = v18;
      type metadata accessor for DOCItemCollectionCell();
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = *((*MEMORY[0x277D85000] & *v20) + 0x208);
        v22 = v21();
        if (v22)
        {
          v23 = v22;
          v24 = (*((*MEMORY[0x277D85000] & *v22) + 0x3D0))();

          v54 = v24;
          if (v24)
          {
            v25 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
            if ([v25 forPickingDocuments])
            {
              v50 = v25;
              v26 = [v54 contentType];
              v27 = v47;
              static UTType._unconditionallyBridgeFromObjectiveC(_:)();

              v28 = v48;
              static UTType.folder.getter();
              LOBYTE(v26) = static UTType.== infix(_:_:)();
              v29 = *v45;
              v30 = v28;
              v31 = v49;
              (*v45)(v30, v49);
              v29(v27, v31);
              if (v26)
              {
                v32 = [v50 forPickingDocuments];
                v14 = v46;
                v17 = v51;
                if (v32 && (v33 = v53, [v53 isEditing]))
                {
                  v34 = (*((*MEMORY[0x277D85000] & *v33) + 0x148))();
                }

                else
                {
                  v34 = 1;
                }
              }

              else
              {
                v34 = 1;
                v14 = v46;
                v17 = v51;
              }

              v35 = v21();
              if (v35)
              {
                v36 = v35;
                v37 = (*((*MEMORY[0x277D85000] & *v53) + 0x18C0))(v54) & v34;
                (*((*MEMORY[0x277D85000] & *v36) + 0x4F8))(v37 & 1);
              }

              v38 = v21();
              if (v38)
              {
                v39 = v38;
                v40 = MEMORY[0x277D85000];
                v41 = (*((*MEMORY[0x277D85000] & *v53) + 0x1790))(v54);
                (*((*v40 & *v39) + 0x510))(v41 & 1);
              }
            }

            swift_unknownObjectRelease();
            a2 = v53;
          }
        }

        v42 = v21();
        if (v42)
        {
          v43 = v42;
          (*((*MEMORY[0x277D85000] & *v42) + 0x498))(v52 & 1);
        }
      }

      ++v16;
    }

    while (v17 != v16);
LABEL_31:

    return;
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

void DOCItemCollectionViewController.willTransition(to:with:)(void *a1, void *a2)
{
  v3 = v2;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v6 = objc_msgSendSuper2(&v30, sel_willTransitionToTraitCollection_withTransitionCoordinator_, a1, a2);
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v2) + 0x1018))(v6);
  if (v8)
  {
    v9 = v8;
    if ([v8 delegate])
    {
      swift_unknownObjectRelease();
      if ([a1 horizontalSizeClass] == 2)
      {
        DOCItemCollectionViewController.dismissViewOptionsIfNeeded()();
      }

      if (one-time initialization token for vSizeClass != -1)
      {
        swift_once();
      }

      v25 = static UITraitCollection.Traits.vSizeClass;
      v26 = qword_27EEE9C78;

      v10 = [v2 traitCollection];
      v11 = UITraitCollection.doc_hasChanged(_:comparesTo:)(&v25, v10);

      if (v11)
      {
        v12 = swift_allocObject();
        *(v12 + 16) = v3;
        *(v12 + 24) = a1;
        v28 = partial apply for closure #1 in DOCItemCollectionViewController.willTransition(to:with:);
        v29 = v12;
        *&v25 = MEMORY[0x277D85DD0];
        *(&v25 + 1) = 1107296256;
        v26 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
        v27 = &block_descriptor_192;
        v13 = _Block_copy(&v25);
        v14 = v3;
        v15 = a1;

        [a2 animateAlongsideTransition:v13 completion:0];
        _Block_release(v13);
      }

      if (one-time initialization token for sizeCategory != -1)
      {
        swift_once();
      }

      v25 = static UITraitCollection.Traits.sizeCategory;
      v26 = qword_27EEE9CC0;

      v16 = [v3 traitCollection];
      v17 = UITraitCollection.doc_hasChanged(_:comparesTo:)(&v25, v16);

      if (v17)
      {
        v18 = swift_allocObject();
        *(v18 + 16) = v3;
        v28 = partial apply for closure #2 in DOCItemCollectionViewController.willTransition(to:with:);
        v29 = v18;
        *&v25 = MEMORY[0x277D85DD0];
        *(&v25 + 1) = 1107296256;
        v26 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
        v27 = &block_descriptor_180;
        v19 = _Block_copy(&v25);
        v20 = v3;

        v21 = swift_allocObject();
        *(v21 + 16) = v20;
        *(v21 + 24) = a1;
        v28 = partial apply for closure #3 in DOCItemCollectionViewController.willTransition(to:with:);
        v29 = v21;
        *&v25 = MEMORY[0x277D85DD0];
        *(&v25 + 1) = 1107296256;
        v26 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
        v27 = &block_descriptor_186;
        v22 = _Block_copy(&v25);
        v23 = v20;
        v24 = a1;

        [a2 animateAlongsideTransition:v19 completion:v22];
        _Block_release(v22);
        _Block_release(v19);
      }

      (*((*v7 & *v3) + 0x18B8))(a1);
    }
  }
}

void closure #2 in DOCItemCollectionViewController.willTransition(to:with:)(int a1, _BYTE *a2)
{
  a2[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation] = 0;
  v2 = [a2 viewIfLoaded];
  v3 = [v2 window];

  if (v3)
  {

    DOCBrowserContainedViewController.updateOverlayIfNeeded()(v4);
  }

  else
  {
    DOCBrowserContainedViewController.applyOverlaySearchSettings()();
  }
}

uint64_t closure #3 in DOCItemCollectionViewController.willTransition(to:with:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *a2) + 0xBD8))(a1);
  if (result == 3)
  {
    return (*((*v5 & *a2) + 0x13F8))(a3, 0, 0, 1, 1);
  }

  return result;
}

void DOCItemCollectionViewController.SplitModeChangeTracker.startTracking(for:alongside:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  v7 = [a1 splitViewController];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 displayMode];
  }

  else
  {
    v9 = 0;
  }

  *(v6 + 16) = v9;
  *(v6 + 24) = v8 == 0;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = v6;
  v10[4] = v3;
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in DOCItemCollectionViewController.SplitModeChangeTracker.startTracking(for:alongside:);
  *(v11 + 24) = v10;
  v20 = partial apply for thunk for @callee_guaranteed () -> ();
  v21 = v11;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v19 = &block_descriptor_1187;
  v12 = _Block_copy(&v16);
  v13 = a1;

  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in DOCItemCollectionViewController.SplitModeChangeTracker.startTracking(for:alongside:);
  *(v14 + 24) = v10;
  v20 = thunk for @callee_guaranteed () -> ()partial apply;
  v21 = v14;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v19 = &block_descriptor_1193;
  v15 = _Block_copy(&v16);

  [a2 animateAlongsideTransition:v12 completion:v15];
  _Block_release(v15);
  _Block_release(v12);
}

double closure #1 in DOCItemCollectionViewController.SplitModeChangeTracker.startTracking(for:alongside:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 splitViewController];
  v6 = v5;
  if (!v5)
  {
    swift_beginAccess();
    if (*(a2 + 24))
    {
      return result;
    }

    v7 = 0;
    v9 = (a2 + 24);
    goto LABEL_7;
  }

  v7 = [v5 displayMode];

  swift_beginAccess();
  v9 = (a2 + 24);
  if ((*(a2 + 24) & 1) != 0 || v7 != *(a2 + 16))
  {
LABEL_7:
    swift_beginAccess();
    *(a2 + 16) = v7;
    *v9 = v6 == 0;
    v10 = *(a3 + 16);

    v10(v11);
  }

  return result;
}

uint64_t DOCItemCollectionViewController.SplitModeChangeTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void DOCItemCollectionViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v28.receiver = v3;
  v28.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  objc_msgSendSuper2(&v28, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  type metadata accessor for DOCItemCollectionViewController.SplitModeChangeTracker();
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in DOCItemCollectionViewController.viewWillTransition(to:with:);
  *(v9 + 24) = v8;
  v10 = MEMORY[0x277D85000];
  v11 = *((*MEMORY[0x277D85000] & *v4) + 0x1498);
  v12 = v4;
  v13 = v11();
  if (v13)
  {
    (*(*v13 + 440))(v13);
  }

  DOCItemCollectionViewController.SplitModeChangeTracker.startTracking(for:alongside:)(v12, a1);
  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);
  MEMORY[0x24C1FAEA0](0xD000000000000024, 0x8000000249BDEC30);
  v26 = a2;
  v27 = a3;
  type metadata accessor for CGSize(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  (*((*v10 & *v12) + 0x188))(0, 0xE000000000000000, a1);

  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  v24 = partial apply for closure #2 in DOCItemCollectionViewController.viewWillTransition(to:with:);
  v25 = v14;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v23 = &block_descriptor_201_0;
  v15 = _Block_copy(&v20);
  v16 = v12;

  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v24 = partial apply for closure #3 in DOCItemCollectionViewController.viewWillTransition(to:with:);
  v25 = v17;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v23 = &block_descriptor_207;
  v18 = _Block_copy(&v20);
  v19 = v16;

  [a1 animateAlongsideTransition:v15 completion:v18];
  _Block_release(v18);
  _Block_release(v15);
}

void closure #2 in DOCItemCollectionViewController.viewWillTransition(to:with:)(int a1, void *a2, double a3, double a4)
{
  v7 = [a2 traitCollection];
  (*((*MEMORY[0x277D85000] & *a2) + 0x1528))(a3, a4);
}

double closure #3 in DOCItemCollectionViewController.viewWillTransition(to:with:)(uint64_t a1, void *a2)
{
  v2 = (*((*MEMORY[0x277D85000] & *a2) + 0x1498))(a1);
  if (v2)
  {
    (*(*v2 + 448))(v2);
  }

  return result;
}

Swift::Void __swiftcall DOCItemCollectionViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v87.receiver = v0;
  v87.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v2 = objc_msgSendSuper2(&v87, sel_viewDidLayoutSubviews);
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0xF60))(v2);
  v4 = [v0 presentedViewController];
  v5 = [v4 popoverPresentationController];

  if (v5)
  {
    if (one-time initialization token for associatedObjectStorageKey != -1)
    {
      swift_once();
    }

    v6 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo31UIPopoverPresentationControllerC_Tt1B5(v5, static UIPopoverPresentationController.associatedObjectStorageKey);
    swift_getKeyPath();
    (*((*v3 & *v6) + 0x78))(&v81);

    v7 = v81;
    if (v81)
    {
      v8 = v82;
      v81();

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v7, v8);
    }

    else
    {
    }
  }

  v9 = DOCItemCollectionViewController.traitCollectionForBarLayout.getter();
  [v9 enclosingUIPHorizontalInset];
  v11 = v10;

  v12 = -v11;
  v13 = DOCItemCollectionViewController.traitCollectionForBarLayout.getter();
  v14 = 0.0;
  if ([v13 contextPrefersVariableBlurBottomTabBar])
  {
    lazy protocol witness table accessor for type UITraitCollection.DOCTabBarBlurAvoidanceTrait and conformance UITraitCollection.DOCTabBarBlurAvoidanceTrait();
    UITraitCollection.subscript.getter();
    v14 = v15;
  }

  v16 = *((*v3 & *v1) + 0x1010);
  v17 = v16();
  [v17 setVerticalScrollIndicatorInsets_];

  (*((*v3 & *v1) + 0x1730))();
  v18 = [v1 view];
  if (!v18)
  {
    __break(1u);
    goto LABEL_37;
  }

  v19 = v18;
  [v18 bounds];
  v21 = v20;
  v23 = v22;

  v24 = (*((*v3 & *v1) + 0xB08))();
  swift_beginAccess();
  v25 = *(v24 + 168);

  v27 = (v16)(v26);
  [v27 safeAreaInsets];
  v29 = v28;

  v30 = v16();
  [v30 safeAreaInsets];
  v32 = v31;

  if ((*((*v3 & *v1) + 0xBD8))() != 2 || (v33 = [v1 traitCollection], v34 = objc_msgSend(v33, sel_horizontalSizeClass), v33, v34 == 1) || (v35 = v25 + v29 + v32, v21 >= v35))
  {
    v41 = *((*v3 & *v1) + 0xB20);
    v42 = v41();
    if (v42)
    {
      v43 = v42;
      [v42 setScrollEnabled_];
    }

    v39 = v41();
    if (!v39)
    {
      goto LABEL_24;
    }

    v40 = 0;
  }

  else
  {
    v36 = *((*v3 & *v1) + 0xB20);
    v37 = v36();
    if (v37)
    {
      v38 = v37;
      [v37 setScrollEnabled_];
    }

    v39 = v36();
    if (!v39)
    {
      v21 = v35;
      goto LABEL_24;
    }

    v40 = 1;
    v21 = v35;
  }

  v44 = v39;
  [v39 setAlwaysBounceHorizontal_];

LABEL_24:
  v45 = *((*v3 & *v1) + 0xB20);
  v46 = v45();
  if (v46)
  {
    v47 = v46;
    [v46 setContentSize_];
  }

  v48 = v45();
  if (v48)
  {
    v49 = v48;
    [v48 frame];
    v51 = v50;
    v53 = v52;
  }

  else
  {
    v51 = 0.0;
    v53 = 0.0;
  }

  v54 = v16();
  [v54 setFrame_];

  v55 = DOCItemCollectionViewController.headerRowView()();
  if (!v55)
  {
    goto LABEL_35;
  }

  v56 = v55;
  v57 = [v1 &selRef_variant];
  if (v57)
  {
    v58 = v57;
    [v57 bounds];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;

    v88.origin.x = v60;
    v88.origin.y = v62;
    v88.size.width = v64;
    v88.size.height = v66;
    Width = CGRectGetWidth(v88);
    v68 = v45();
    if (v68)
    {
      v69 = v68;
      [v68 contentOffset];
      v71 = v70;
    }

    else
    {
      v71 = 0;
    }

    v72 = v16();
    [v72 safeAreaInsets];
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;

    v81 = *&Width;
    v82 = v71;
    v83 = v74;
    v84 = v76;
    v85 = v78;
    v86 = v80;
    (*((*v3 & *v56) + 0x2B8))(&v81);

LABEL_35:
    (*((*v3 & *v1) + 0xC60))(0);
    return;
  }

LABEL_37:
  __break(1u);
}

uint64_t DOCItemCollectionViewController.hasDeferredRepositionInlineEditingCell.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_hasDeferredRepositionInlineEditingCell;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.hasDeferredRepositionInlineEditingCell.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_hasDeferredRepositionInlineEditingCell;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCItemCollectionViewController.shouldDeferRepositionInlineEditingCell.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shouldDeferRepositionInlineEditingCell;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.shouldDeferRepositionInlineEditingCell.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shouldDeferRepositionInlineEditingCell;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  if (a1 & 1) == 0 && ((*((*MEMORY[0x277D85000] & *v1) + 0x16F8))(v4))
  {
    DOCItemCollectionViewController._repositionRenamingCell()();
  }
}

uint64_t (*DOCItemCollectionViewController.shouldDeferRepositionInlineEditingCell.modify(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shouldDeferRepositionInlineEditingCell;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCItemCollectionViewController.shouldDeferRepositionInlineEditingCell.modify;
}

void DOCItemCollectionViewController.shouldDeferRepositionInlineEditingCell.modify(void *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    if (*(v5 + v3[4]) & 1) == 0 && ((*((*MEMORY[0x277D85000] & *v5) + 0x16F8))(v4))
    {
      DOCItemCollectionViewController._repositionRenamingCell()();
    }
  }

  free(v3);
}

Swift::Void __swiftcall DOCItemCollectionViewController.collectionViewSafeAreaInsetsDidChange()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xBD8))() != 2)
  {
    v3 = *((*v2 & *v0) + 0x1010);
    v4 = v3();
    [v4 safeAreaInsets];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastCollectionViewSafeInsets;
    if ((*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastCollectionViewSafeInsets + 32) & 1) == 0)
    {
      v14 = (*((*v2 & *v1) + 0x11C0))();
      if (v14)
      {
        v15 = (*(*v14 + 320))(v14);

        if (v15)
        {
          v17 = (v3)(v16);
          v18 = [v17 collectionViewLayout];

          v19 = [v18 _invalidationContextForRefreshingVisibleElementAttributes];
          if (v19)
          {
            v20 = v3();
            v21 = [v20 collectionViewLayout];

            [v21 invalidateLayoutWithContext_];
          }
        }
      }
    }

    *v13 = v6;
    *(v13 + 1) = v8;
    *(v13 + 2) = v10;
    *(v13 + 3) = v12;
    v13[32] = 0;
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.invalidateSupplementaryElements(ofKinds:)(Swift::OpaquePointer ofKinds)
{
  v17 = *((*MEMORY[0x277D85000] & *v1) + 0x1010);
  v3 = v17();
  v4 = [v3 collectionViewLayout];

  ObjCClassFromObject = swift_getObjCClassFromObject();
  [ObjCClassFromObject invalidationContextClass];
  swift_getObjCClassMetadata();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewLayoutInvalidationContext, 0x277D75310);
  swift_dynamicCastMetatypeUnconditional();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = *(ofKinds._rawValue + 2);
  if (v7)
  {
    v8 = (ofKinds._rawValue + 40);
    do
    {
      v11 = *(v8 - 1);
      v10 = *v8;

      v13 = (v17)(v12);
      v14 = MEMORY[0x24C1FAD20](v11, v10);
      isa = [v13 indexPathsForVisibleSupplementaryElementsOfKind_];

      if (!isa)
      {
        type metadata accessor for IndexPath();
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        isa = Array._bridgeToObjectiveC()().super.isa;
      }

      v9 = MEMORY[0x24C1FAD20](v11, v10);

      [v6 invalidateSupplementaryElementsOfKind:v9 atIndexPaths:isa];

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  v16 = v17();
  v18 = [v16 collectionViewLayout];

  [v18 invalidateLayoutWithContext_];
}

void DOCItemCollectionViewController.updateItemCollectionFilteringPredicate()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_defaultSaveLocationDidChangeNotificationToken;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    notify_cancel(v3);
    *(v0 + v2) = 0;
  }

  v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v4) + 0x1A8))();
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = [v8 settings];
      v10 = [v9 enumeratedItemID];

      v11 = [v10 providerID];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
      {
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v19 = *MEMORY[0x277D05D70];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v20 = static OS_dispatch_queue.main.getter();
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = partial apply for closure #1 in DOCItemCollectionViewController.updateItemCollectionFilteringPredicate();
      v35 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v31 = 1107296256;
      v32 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
      v33 = &block_descriptor_883_0;
      v22 = _Block_copy(&aBlock);

      swift_beginAccess();
      notify_register_dispatch(v19, (v1 + v2), v20, v22);
      swift_endAccess();
      _Block_release(v22);

      v23 = (*((*v5 & *v4) + 0x230))();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      v34 = partial apply for closure #2 in DOCItemCollectionViewController.updateItemCollectionFilteringPredicate();
      v35 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v31 = 1107296256;
      v32 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
      v33 = &block_descriptor_889;
      v25 = _Block_copy(&aBlock);
      v26 = objc_opt_self();
      v18 = v23;
      v27 = [v26 predicateWithBlock_];
      _Block_release(v25);

      v28 = *((*v5 & *v4) + 0x238);
      v29 = v27;
      v28(v27);

      goto LABEL_14;
    }

LABEL_11:
    v18 = v7;
LABEL_14:
  }
}

void closure #1 in DOCItemCollectionViewController.updateItemCollectionFilteringPredicate()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (v4)
    {
      v5 = *((*MEMORY[0x277D85000] & *v4) + 0x1D8);
      v6 = v4;
      v5();
    }

    else
    {
      __break(1u);
    }
  }
}

double thunk for @escaping @callee_guaranteed (@unowned Int32) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

BOOL closure #2 in DOCItemCollectionViewController.updateItemCollectionFilteringPredicate()(uint64_t a1, Class isa, void *a3)
{
  if (!a3)
  {
    goto LABEL_6;
  }

  v5 = a1;
  outlined init with copy of DOCGridLayout.Spec?(a1, v35, &_sypSgMd, &_sypSgMR);
  v6 = v36;
  if (v36)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v35, v36);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x28223BE20](v7, v7);
    v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_0(v35);
    if (!isa)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v12 = 0;
  if (isa)
  {
LABEL_4:
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_5:
  v13 = [a3 evaluateWithObject:v12 substitutionVariables:isa];
  swift_unknownObjectRelease();

  a1 = v5;
  if (!v13)
  {
    return 0;
  }

LABEL_6:
  outlined init with copy of DOCGridLayout.Spec?(a1, v35, &_sypSgMd, &_sypSgMR);
  if (!v36)
  {
    outlined destroy of CharacterSet?(v35, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v14 = v34;
  if (![v34 isAppContainer])
  {
LABEL_20:

    return 1;
  }

  v15 = [v14 fp_appContainerBundleIdentifier];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() defaultSourceIdentifierForBundleIdentifier_];

    if (v17)
    {
      v18 = *MEMORY[0x277D060F0];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
      if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
      {

LABEL_19:

        goto LABEL_20;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_19;
      }

      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
      if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
      {

        goto LABEL_20;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_20;
      }
    }
  }

  v30 = [v14 childItemCount];
  if (!v30)
  {

    return 0;
  }

  v31 = v30;
  v32 = [v30 integerValue];

  return v32 > 0;
}

Swift::Void __swiftcall DOCItemCollectionViewController.updateCellStackViewMetrics()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xBD8))() != 1)
  {
    return;
  }

  v3 = (*((*v2 & *v0) + 0x1018))();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v3 preparedCells];
  if (!v5)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v6 = v5;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v9 = 0;
  v10 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x24C1FC540](v9, v7);
    }

    else
    {
      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    type metadata accessor for DOCItemCollectionCell();
    v13 = swift_dynamicCastClass();
    if (v13 && (v14 = (*((*v2 & *v13) + 0x208))()) != 0)
    {
      v15 = v14;
      v16 = *(v10 + 4);
      v17 = *(v10 + 1);
      v27 = *v10;
      v28 = v17;
      v29 = v16;
      v30 = 0;
      (*((*v2 & *v14) + 0x528))(&v27);
    }

    else
    {
    }

    ++v9;
  }

  while (v8 != v9);
LABEL_18:

  v18 = DOCItemCollectionViewController.visibleSectionHeaders.getter();
  v19 = v18;
  if (v18 >> 62)
  {
    v20 = __CocoaSet.count.getter();
    if (v20)
    {
LABEL_20:
      if (v20 >= 1)
      {
        v21 = 0;
        v22 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics;
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x24C1FC540](v21, v19);
          }

          else
          {
            v23 = *(v19 + 8 * v21 + 32);
          }

          v24 = v23;
          ++v21;
          v25 = *(v22 + 4);
          v26 = *(v22 + 1);
          v27 = *v22;
          v28 = v26;
          v29 = v25;
          (*((*v2 & *v23) + 0x2D0))(&v27);
        }

        while (v20 != v21);
        goto LABEL_27;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_20;
    }
  }

LABEL_27:
}

uint64_t DOCItemCollectionViewController.cellIsFocusable(at:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v7, v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x1898))(a1, v10))
  {
    goto LABEL_7;
  }

  (*((*v13 & *v1) + 0x18A0))(a1);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
LABEL_7:
    v14 = 0;
    return v14 & 1;
  }

  (*(v8 + 32))(v12, v6, v7);
  if (!(*((*v13 & *v1) + 0xD88))(v12, 0))
  {
    (*(v8 + 8))(v12, v7);
    goto LABEL_7;
  }

  v14 = (*((*v13 & *v1) + 0x1798))();
  swift_unknownObjectRelease();
  (*(v8 + 8))(v12, v7);
  return v14 & 1;
}

uint64_t DOCItemCollectionViewController.isNodeFocusable(_:)(void *a1)
{
  if (([v1 isEditing] & 1) != 0 || (objc_msgSend(a1, sel_isCopying) & 1) == 0)
  {
    v4 = DOCItemCollectionViewController.specificallyExcludeFolderPicking(_:)(a1);
    v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x18C0))(a1) & (v4 ^ 1);
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t DOCItemCollectionViewController.cellIsSelectable(at:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v18 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v7, v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x18A0))(a1, v10);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    v14 = 0;
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
    v15 = (*((*v13 & *v1) + 0xD88))(v12, 0);
    if (v15)
    {
      v16 = v15;
      if (((*((*v13 & *v1) + 0x148))() & 1) != 0 && [v16 isFolder])
      {
        (*(v8 + 8))(v12, v7);
        swift_unknownObjectRelease();
        v14 = 0;
      }

      else if (([v1 isEditing] & 1) != 0 || ((*((*v13 & *v1) + 0x1898))(a1) & 1) == 0)
      {
        v14 = (*((*v13 & *v1) + 0x1788))(a1);
        swift_unknownObjectRelease();
        (*(v8 + 8))(v12, v7);
      }

      else
      {
        (*(v8 + 8))(v12, v7);
        swift_unknownObjectRelease();
        v14 = 1;
      }
    }

    else
    {
      (*(v8 + 8))(v12, v7);
      v14 = 0;
    }
  }

  return v14 & 1;
}

uint64_t DOCItemCollectionViewController.cellIsActionable(at:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v19 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v7, v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x18A0))(a1, v10);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
    v14 = (*((*v13 & *v1) + 0xD88))(v12, 0);
    if (v14)
    {
      v15 = v14;
      if ((*((*v13 & *v1) + 0x148))())
      {
        v16 = [v15 isFolder];
        swift_unknownObjectRelease();
        (*(v8 + 8))(v12, v7);
        if (v16)
        {
LABEL_12:
          v17 = 1;
          return v17 & 1;
        }
      }

      else
      {
        (*(v8 + 8))(v12, v7);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      (*(v8 + 8))(v12, v7);
    }
  }

  if (([v1 isEditing] & 1) == 0)
  {
    if (((*((*v13 & *v1) + 0x1898))(a1) & 1) == 0)
    {
      v17 = (*((*v13 & *v1) + 0x1788))(a1);
      return v17 & 1;
    }

    goto LABEL_12;
  }

  v17 = 0;
  return v17 & 1;
}

uint64_t DOCItemCollectionViewController.shouldSpringLoadItem(at:with:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v60 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v10, v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x18A0))(a1, v13);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of CharacterSet?(v9, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    return 0;
  }

  (*(v11 + 32))(v15, v9, v10);
  v18 = (*((*v16 & *v3) + 0xD88))(v15, 0);
  if (!v18)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    result = swift_unknownObjectRelease();
    __break(1u);
LABEL_110:
    __break(1u);
    return result;
  }

  v19 = v18;
  if (![v18 isFolder] || !objc_msgSend(v19, sel_isReadable))
  {
    v17 = 0;
    goto LABEL_28;
  }

  v20 = (*((*v16 & *v3) + 0x8A8))();
  if (!v20)
  {
    goto LABEL_89;
  }

  v21 = [v20 items];
  swift_unknownObjectRelease();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v64 = v3;
  v65 = a2;
  v71 = v22 >> 62;
  v63 = v10;
  v62 = v11;
  v61 = v15;
  v23 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v22 >> 62)
  {
LABEL_104:
    v24 = __CocoaSet.count.getter();
  }

  else
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v22;
  v26 = v22 & 0xC000000000000001;
  v72 = v22 + 32;
  v70 = v19;
  swift_unknownObjectRetain();
  v22 = 0;
  v19 = &_sypSgMd;
  while (1)
  {
    if (v24 == v22)
    {
      v22 = v24;
      goto LABEL_32;
    }

    if (v26)
    {
      v28 = MEMORY[0x24C1FC540](v22, v25);
    }

    else
    {
      if (v22 >= *(v23 + 16))
      {
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v28 = *(v25 + 8 * v22 + 32);
    }

    v29 = v28;
    if ([v29 localObject])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v74 = 0u;
      v75 = 0u;
    }

    v76 = v74;
    v77 = v75;
    outlined init with copy of DOCGridLayout.Spec?(&v76, &v74, &_sypSgMd, &_sypSgMR);
    if (*(&v75 + 1))
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode, 0x277D04700);
      if (swift_dynamicCast())
      {
        v31 = v73;
        outlined destroy of CharacterSet?(&v76, &_sypSgMd, &_sypSgMR);

        goto LABEL_31;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(&v74, &_sypSgMd, &_sypSgMR);
    }

    v74 = v76;
    v75 = v77;
    if (*(&v77 + 1))
    {
      break;
    }

    outlined destroy of CharacterSet?(&v74, &_sypSgMd, &_sypSgMR);
LABEL_11:

    v27 = __OFADD__(v22++, 1);
    if (v27)
    {
      goto LABEL_99;
    }
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_31:
LABEL_32:
  v19 = v70;
  a2 = v65;
  if (v71)
  {
    v32 = __CocoaSet.count.getter();
  }

  else
  {
    v32 = *(v23 + 16);
  }

  v67 = v25;
  if (v22 == v32)
  {
    goto LABEL_79;
  }

  if (v25 < 0)
  {
    v33 = v25;
  }

  else
  {
    v33 = v23;
  }

  v66 = v33;
  v68 = v23;
  v69 = v32;
  while (2)
  {
    if (v26)
    {
      v34 = MEMORY[0x24C1FC540](v22, v25);
    }

    else
    {
      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_100;
      }

      if (v22 >= *(v23 + 16))
      {
        goto LABEL_101;
      }

      v34 = *(v72 + 8 * v22);
    }

    v35 = v34;
    v36 = UIDragItem.localObjectAsNode.getter();

    if (!v36)
    {
      goto LABEL_109;
    }

    *(&v77 + 1) = swift_getObjectType();
    *&v76 = v36;
    outlined init with copy of DOCGridLayout.Spec?(&v76, &v74, &_sypSgMd, &_sypSgMR);
    v19 = *(&v75 + 1);
    if (*(&v75 + 1))
    {
      v37 = __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
      v38 = *(v19 - 1);
      v39 = MEMORY[0x28223BE20](v37, v37);
      v41 = &v60 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v38 + 16))(v41, v39);
      swift_unknownObjectRetain();
      v42 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v38 + 8))(v41, v19);
      v25 = v67;
      v23 = v68;
      __swift_destroy_boxed_opaque_existential_0(&v74);
    }

    else
    {
      swift_unknownObjectRetain();
      v42 = 0;
    }

    v43 = [v70 isEqual_];
    swift_unknownObjectRelease();
    outlined destroy of CharacterSet?(&v76, &_sypSgMd, &_sypSgMR);
    swift_unknownObjectRelease();
    if (v43)
    {
      goto LABEL_78;
    }

    if (!v71)
    {
      v44 = *(v23 + 16);
      v45 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      if (v22 != v44)
      {
        goto LABEL_58;
      }

      goto LABEL_102;
    }

    v45 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
    if (v22 == __CocoaSet.count.getter())
    {
      goto LABEL_103;
    }

    v44 = __CocoaSet.count.getter();
LABEL_58:
    while (2)
    {
      v27 = __OFADD__(v22++, 1);
      if (v27)
      {
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      if (v22 == v44)
      {
        v22 = v44;
        goto LABEL_41;
      }

      if (v26)
      {
        v46 = MEMORY[0x24C1FC540](v22, v25);
      }

      else
      {
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_96;
        }

        if (v22 >= *(v23 + 16))
        {
          goto LABEL_97;
        }

        v46 = *(v72 + 8 * v22);
      }

      v19 = v46;
      if ([v19 v45[369]])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v74 = 0u;
        v75 = 0u;
      }

      v76 = v74;
      v77 = v75;
      outlined init with copy of DOCGridLayout.Spec?(&v76, &v74, &_sypSgMd, &_sypSgMR);
      if (*(&v75 + 1))
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode, 0x277D04700);
        if (swift_dynamicCast())
        {
          v47 = v73;
          outlined destroy of CharacterSet?(&v76, &_sypSgMd, &_sypSgMR);

          v23 = v68;
          goto LABEL_75;
        }
      }

      else
      {
        outlined destroy of CharacterSet?(&v74, &_sypSgMd, &_sypSgMR);
      }

      v74 = v76;
      v75 = v77;
      if (!*(&v77 + 1))
      {
        outlined destroy of CharacterSet?(&v74, &_sypSgMd, &_sypSgMR);
LABEL_57:

        continue;
      }

      break;
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_75:
LABEL_41:
    if (v22 != v69)
    {
      continue;
    }

    break;
  }

  v22 = v69;
LABEL_78:
  v19 = v70;
  a2 = v65;
LABEL_79:
  if (v71)
  {
    if (v22 == __CocoaSet.count.getter())
    {
      goto LABEL_88;
    }

LABEL_81:
    if (v26)
    {
      v48 = MEMORY[0x24C1FC540](v22, v25);
LABEL_85:
      v49 = v48;
      v50 = UIDragItem.localObjectAsNode.getter();

      result = swift_unknownObjectRelease();
      v3 = v64;
      v10 = v63;
      v11 = v62;
      v15 = v61;
      v16 = MEMORY[0x277D85000];
      if (v50)
      {

        swift_unknownObjectRelease();
        v17 = 0;
        goto LABEL_28;
      }

      goto LABEL_110;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *(v23 + 16))
    {
      v48 = *(v72 + 8 * v22);
      goto LABEL_85;
    }

    __break(1u);
    goto LABEL_108;
  }

  if (v22 != *(v23 + 16))
  {
    goto LABEL_81;
  }

LABEL_88:
  swift_unknownObjectRelease();

  v3 = v64;
  v10 = v63;
  v11 = v62;
  v15 = v61;
  v16 = MEMORY[0x277D85000];
LABEL_89:
  if ((*((*v16 & *v3) + 0xBD8))())
  {
    goto LABEL_90;
  }

  v51 = (*((*v16 & *v3) + 0x18D0))(v19);
  if (!v51)
  {
    goto LABEL_90;
  }

  v52 = v51;
  type metadata accessor for DOCItemCollectionGridCell();
  v53 = swift_dynamicCastClass();
  if (!v53)
  {

LABEL_90:
    v17 = 1;
    goto LABEL_28;
  }

  v54 = v53;
  v55 = [a2 locationInView_];
  v57 = v56;
  v59 = v58;
  v79.origin.x = (*((*v16 & *v54) + 0x110))(v55);
  v78.x = v57;
  v78.y = v59;
  v17 = CGRectContainsPoint(v79, v78);

LABEL_28:
  (*((*v16 & *v3) + 0x1150))(v17);
  swift_unknownObjectRelease();
  (*(v11 + 8))(v15, v10);
  return v17;
}

double DOCItemCollectionViewController.StringWidthCalculationContext.longestStringsList.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

double DOCItemCollectionViewController.StringWidthCalculationContext.__allocating_init(withFont:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84FA0];
  result = 0.0;
  *(v2 + 24) = xmmword_249BAA8C0;
  *(v2 + 40) = a1;
  return result;
}

uint64_t DOCItemCollectionViewController.StringWidthCalculationContext.init(withFont:)(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x277D84FA0];
  *(v1 + 24) = xmmword_249BAA8C0;
  *(v1 + 40) = a1;
  return v1;
}

Swift::Void __swiftcall DOCItemCollectionViewController.StringWidthCalculationContext.update(using:)(Swift::String using)
{
  v2 = v1;
  object = using._object;
  countAndFlagsBits = using._countAndFlagsBits;
  v5 = *(*v1 + 112);
  v6 = *(v5() + 16);

  if (v6 < 0xA || (v7 = String.count.getter(), (*(*v2 + 136))() < v7))
  {
    v8 = *(*v2 + 128);

    v9 = v8(v34);
    v10 = specialized Set._Variant.insert(_:)(&v35, countAndFlagsBits, object);

    v11 = v9(v34, 0);
    if (v10)
    {
      v12 = *((v5)(v11) + 16);

      if (v12 >= 0xB)
      {
        v14 = (v5)(v13);

        v15 = specialized _NativeSet.filter(_:)(v14, v2);

        v13 = (*(*v2 + 120))(v15);
      }

      v16 = (v5)(v13);
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_Sis5NeverOTg5125_s26DocumentManagerExecutables31DOCItemCollectionViewControllerC29StringWidthCalculationContextC6update5usingySS_tFSiSSXEfU0_Tf1cn_n(v16);
      v18 = v17;

      v19 = *(v18 + 16);
      if (!v19)
      {

        v20 = (*(*v2 + 136))(v23);
LABEL_19:
        (*(*v2 + 144))(v20);
        return;
      }

      v20 = *(v18 + 32);
      v21 = v19 - 1;
      if (v19 != 1)
      {
        if (v19 <= 4)
        {
          v22 = 1;
          goto LABEL_14;
        }

        v22 = v21 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v24 = vdupq_n_s64(v20);
        v25 = (v18 + 56);
        v26 = v21 & 0xFFFFFFFFFFFFFFFCLL;
        v27 = v24;
        do
        {
          v24 = vbslq_s8(vcgtq_s64(v24, v25[-1]), v25[-1], v24);
          v27 = vbslq_s8(vcgtq_s64(v27, *v25), *v25, v27);
          v25 += 2;
          v26 -= 4;
        }

        while (v26);
        v28 = vbslq_s8(vcgtq_s64(v27, v24), v24, v27);
        v29 = vextq_s8(v28, v28, 8uLL).u64[0];
        v20 = vbsl_s8(vcgtd_s64(v29, v28.i64[0]), *v28.i8, v29);
        if (v21 != (v21 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_14:
          v30 = v19 - v22;
          v31 = (v18 + 8 * v22 + 32);
          do
          {
            v33 = *v31++;
            v32 = v33;
            if (v33 < v20)
            {
              v20 = v32;
            }

            --v30;
          }

          while (v30);
        }
      }

      goto LABEL_19;
    }
  }
}

void DOCItemCollectionViewController.StringWidthCalculationContext.getLongestStringWithAttributesUsingCache()()
{
  v1 = v0;
  v27[2] = MEMORY[0x277D84FA0];
  v2 = (*(*v0 + 112))();
  v3 = v2;
  v4 = 0;
  v5 = v2 + 56;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = *MEMORY[0x277D740A8];
  v11 = 0.0;
  while (1)
  {
    v12 = v4;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = (*(v3 + 48) + ((v4 << 10) | (16 * v13)));
    v16 = *v14;
    v15 = v14[1];
    swift_bridgeObjectRetain_n();
    v17 = specialized Set._Variant.insert(_:)(v27, v16, v15);

    if (v17)
    {
      v26 = MEMORY[0x24C1FAD20](v16, v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249B9A480;
      *(inited + 32) = v10;
      v19 = v10;
      v20 = *(v1 + 40);
      *(inited + 64) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont, 0x277D74300);
      *(inited + 40) = v20;
      v21 = v19;
      v22 = v20;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of CharacterSet?(inited + 32, &_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
      type metadata accessor for NSAttributedStringKey(0);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v10 = v19;

      [v26 sizeWithAttributes_];
      v25 = v24;

      if (v11 < v25)
      {
        v11 = v25;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v4);
    ++v12;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t DOCItemCollectionViewController.StringWidthCalculationContext.deinit()
{

  return v0;
}

uint64_t DOCItemCollectionViewController.StringWidthCalculationContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()()
{
  v4 = v0;
  v153 = type metadata accessor for UTType();
  v5 = *(v153 - 8);
  MEMORY[0x28223BE20](v153, v6);
  v8 = v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v137 - v11;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = v137 - v16;
  v18 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  v19 = [v18 isPickerUI];
  v20 = [v4 traitCollection];
  if (v19)
  {
    v154 = v20;
    v21 = UITraitCollection.modifyingTraits(_:)();

    v20 = v21;
  }

  v154 = v20;
  if (one-time initialization token for hSizeClass != -1)
  {
    swift_once();
  }

  v164 = static UITraitCollection.Traits.hSizeClass;
  *&v165 = qword_27EEE9C60;
  if ((UITraitCollection.doc_hasSpecified(_:)(&v164) & 1) == 0)
  {
    v34 = [objc_opt_self() standardUserDefaults];
    v153 = MEMORY[0x24C1FAD20](0xD000000000000029, 0x8000000249BDA260);
    [v34 BOOLForKey_];

    v35 = v153;
LABEL_20:

    return;
  }

  v151 = v8;
  v152 = v5;
  v22 = MEMORY[0x277D85000];
  v23 = *((*MEMORY[0x277D85000] & *v4) + 0xCB8);
  v24 = (v23)();
  if (v24 >> 62)
  {
    goto LABEL_102;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  if (v25 < 1)
  {
    goto LABEL_19;
  }

  v27 = *((*v22 & *v4) + 0xBD8);
  if (!(v27)(v26))
  {
    goto LABEL_19;
  }

  if (v27() == 2)
  {
    goto LABEL_19;
  }

  v28 = (*((*MEMORY[0x277D85000] & *v4) + 0x11C0))();
  if (!v28)
  {
    goto LABEL_19;
  }

  v29 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updateStackViewMetrics;
  if ((*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updateStackViewMetrics) & 1) == 0)
  {

LABEL_19:
    v35 = v154;
    goto LABEL_20;
  }

  v138 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetricsSourceTraits;
  v139 = v28;
  v30 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetricsSourceTraits);
  if (v30)
  {
    *&v150 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITraitCollection, 0x277D75C80);
    v31 = v154;
    v149 = v30;
    v32 = static NSObject.== infix(_:_:)();
    *&v150 = v31;

    if ((v32 & 1) != 0 && [v4 doc:sel__doc_performLiveResizeSkippedWork scheduleHandlerIfInLiveResize:?])
    {

      v33 = v150;

      *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_liveResizeDidSkip_computeStackMetrics) = 1;
      return;
    }
  }

  else
  {
    v36 = v154;
  }

  *(v4 + v29) = 0;
  if ([v154 horizontalSizeClass] == 2)
  {
    v37 = 15.0;
  }

  else
  {
    v37 = 11.0;
  }

  v38 = [objc_opt_self() defaultMetrics];
  [v38 scaledValueForValue:v154 compatibleWithTraitCollection:v37];
  v40 = v39;

  v41 = [v154 horizontalSizeClass];
  v145 = v23;
  if (v41 == 1)
  {
    v42 = DOCItemCollectionViewController.modelPreloadingAppearance.getter();
    [v42 compactHorizontalTableStackSpacing];
  }

  else
  {
    v44 = [v4 viewIfLoaded];
    if (v44)
    {
      v45 = v44;
      v42 = [v44 window];

      if (v42)
      {
        [v42 frame];
        if (DOCSizeIsFullScreenSize())
        {
          v46 = DOCItemCollectionViewController.modelPreloadingAppearance.getter();
          [v46 fullHorizontalTableStackSpacing];
          v48 = v47;

          goto LABEL_36;
        }
      }
    }

    v42 = DOCItemCollectionViewController.modelPreloadingAppearance.getter();
    [v42 regularHorizontalTableStackSpacing];
  }

  v48 = v43;
LABEL_36:

  LODWORD(v142) = [v18 preferLastUsedDate];
  v49 = (*v139 + 256);
  v140 = *v49;
  v140(&v164);
  v162[4] = v168;
  v162[5] = v169;
  v162[6] = v170;
  v162[7] = v171;
  v162[0] = v164;
  v162[1] = v165;
  v162[2] = v166;
  v162[3] = v167;
  v50 = v164;
  outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v162);
  v148 = type metadata accessor for DOCItemCollectionViewController.StringWidthCalculationContext();
  v51 = swift_allocObject();
  *(v51 + 16) = MEMORY[0x277D84FA0];
  v150 = xmmword_249BAA8C0;
  *(v51 + 24) = xmmword_249BAA8C0;
  v147 = v51;
  *(v51 + 40) = v50;
  v140(&v164);
  v163[4] = v168;
  v163[5] = v169;
  v163[6] = v170;
  v163[7] = v171;
  v163[0] = v164;
  v163[1] = v165;
  v163[2] = v166;
  v163[3] = v167;
  v52 = v164;
  outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v163);
  v53 = swift_allocObject();
  v23 = MEMORY[0x277D84FA0];
  *(v53 + 16) = MEMORY[0x277D84FA0];
  *(v53 + 24) = v150;
  v149 = v53;
  *(v53 + 40) = v52;
  v137[1] = v49;
  v140(v161);
  v168 = v161[4];
  v169 = v161[5];
  v170 = v161[6];
  v171 = v161[7];
  v164 = v161[0];
  v165 = v161[1];
  v166 = v161[2];
  v167 = v161[3];
  v54 = *&v161[0];
  outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(&v164);
  v55 = swift_allocObject();
  *(v55 + 16) = v23;
  v144 = (v55 + 16);
  *(v55 + 24) = v150;
  v148 = (v55 + 24);
  v146 = v55;
  *(v55 + 40) = v54;
  v160 = v23;
  v56 = v145();
  _s26DocumentManagerExecutables31DOCItemCollectionViewControllerC012computeStackF15MetricsIfNeeded33_45098A9DF3FF02797EF1E06F74668D65LLyyF16SamplingSequenceL_V_15sampleThresholdAGyxGSayxG_SitcfCSo7DOCNode_p_Tt1g5(v56, 500, v158);
  specialized next() in SamplingSequence #1 in DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()();
  if (v57)
  {
    v58 = v57;
    v59 = (v152 + 8);
    v60 = v142;
    while (1)
    {
      swift_getObjectType();
      v66 = DOCNode.localizedDate(horizontalSizeClass:preferLastUsedDate:)([v154 horizontalSizeClass], v60);
      if (v67)
      {
        DOCItemCollectionViewController.StringWidthCalculationContext.update(using:)(*&v66);
      }

      if ([v58 isFolder])
      {
        countAndFlagsBits = DOCNode.cachedLocalizedChildItemCountDescription(fetchIfStale:completionHandler:)(0, 0, 0);
        if (!object)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v63 = DOCNode.localizedSizeDescription()();
        object = v63._object;
        countAndFlagsBits = v63._countAndFlagsBits;
      }

      DOCItemCollectionViewController.StringWidthCalculationContext.update(using:)(*&countAndFlagsBits);

LABEL_40:
      v64 = [v58 contentType];
      static UTType._unconditionallyBridgeFromObjectiveC(_:)();

      specialized Set._Variant.insert(_:)(v17, v12);
      swift_unknownObjectRelease();
      (*v59)(v17, v153);
      specialized next() in SamplingSequence #1 in DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()();
      v58 = v65;
      if (!v65)
      {
        v23 = v160;
        break;
      }
    }
  }

  v156[2] = v158[2];
  v156[3] = v158[3];
  v157 = v159;
  v156[0] = v158[0];
  v156[1] = v158[1];
  outlined destroy of CharacterSet?(v156, &_s26DocumentManagerExecutables31DOCItemCollectionViewControllerC012computeStackF15MetricsIfNeeded33_45098A9DF3FF02797EF1E06F74668D65LLyyF16SamplingSequenceL_VySo7DOCNode_pGMd, &_s26DocumentManagerExecutables31DOCItemCollectionViewControllerC012computeStackF15MetricsIfNeeded33_45098A9DF3FF02797EF1E06F74668D65LLyyF16SamplingSequenceL_VySo7DOCNode_pGMR);
  v68 = v23 + 56;
  v69 = 1 << *(v23 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v22 = v70 & *(v23 + 56);
  v71 = (v69 + 63) >> 6;
  v141 = v152 + 8;
  v142 = v152 + 16;
  v145 = v23;

  v18 = 0;
  *&v150 = MEMORY[0x277D84F90];
  v12 = v144;
  v143 = v4;
  while (v22)
  {
    v72 = v145;
LABEL_57:
    v74 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v75 = v151;
    v76 = v152;
    v77 = v153;
    (*(v152 + 16))(v151, *(v72 + 6) + *(v152 + 72) * (v74 | (v18 << 6)), v153);
    v17 = UTType.localizedDescription.getter();
    v23 = v78;
    (*(v76 + 8))(v75, v77);
    v4 = v143;
    v12 = v144;
    if (v23)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v150 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v150 + 16) + 1, 1, v150);
      }

      v80 = *(v150 + 16);
      v79 = *(v150 + 24);
      v81 = v80 + 1;
      if (v80 >= v79 >> 1)
      {
        v137[0] = v80 + 1;
        v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v150);
        v81 = v137[0];
        *&v150 = v84;
      }

      v82 = v150;
      *(v150 + 16) = v81;
      v83 = v82 + 16 * v80;
      *(v83 + 32) = v17;
      *(v83 + 40) = v23;
    }
  }

  v72 = v145;
  while (1)
  {
    v73 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_102:
      v25 = __CocoaSet.count.getter();
      goto LABEL_8;
    }

    if (v73 >= v71)
    {
      break;
    }

    v22 = *(v68 + 8 * v73);
    ++v18;
    if (v22)
    {
      v18 = v73;
      goto LABEL_57;
    }
  }

  v85 = *(v150 + 16);

  swift_beginAccess();
  swift_beginAccess();
  if (v85)
  {
    v86 = 0;
    v87 = v150 + 32;
    while (1)
    {
      if (v86 >= *(v150 + 16))
      {
        __break(1u);
        goto LABEL_104;
      }

      v89 = (v87 + 16 * v86);
      v90 = *v89;
      v91 = v89[1];
      v18 = *(*v12 + 16);

      if (v18 < 0xA || *v148 < String.count.getter())
      {
        swift_beginAccess();

        v92 = specialized Set._Variant.insert(_:)(v155, v90, v91);
        v18 = v155[1];
        swift_endAccess();

        if (v92)
        {
          break;
        }
      }

LABEL_67:
      ++v86;

      if (v86 == v85)
      {
        goto LABEL_87;
      }
    }

    if (*(*v12 + 16) >= 0xBuLL)
    {
      v93 = v146;

      v95 = specialized _NativeSet.filter(_:)(v94, v93);

      *(v93 + 16) = v95;
    }

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_Sis5NeverOTg5125_s26DocumentManagerExecutables31DOCItemCollectionViewControllerC29StringWidthCalculationContextC6update5usingySS_tFSiSSXEfU0_Tf1cn_n(v96);
    v18 = v97;

    v98 = *(v18 + 16);
    if (v98)
    {
      v99 = *(v18 + 32);
      v100 = v98 - 1;
      if (v98 != 1)
      {
        if (v98 > 4)
        {
          v101 = v100 & 0xFFFFFFFFFFFFFFFCLL | 1;
          v102 = vdupq_n_s64(v99);
          v103 = (v18 + 56);
          v104 = v100 & 0xFFFFFFFFFFFFFFFCLL;
          v105 = v102;
          do
          {
            v102 = vbslq_s8(vcgtq_s64(v102, v103[-1]), v103[-1], v102);
            v105 = vbslq_s8(vcgtq_s64(v105, *v103), *v103, v105);
            v103 += 2;
            v104 -= 4;
          }

          while (v104);
          v106 = vbslq_s8(vcgtq_s64(v105, v102), v102, v105);
          v107 = vextq_s8(v106, v106, 8uLL).u64[0];
          v99 = vbsl_s8(vcgtd_s64(v107, v106.i64[0]), *v106.i8, v107);
          if (v100 != (v100 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_82;
          }
        }

        else
        {
          v101 = 1;
LABEL_82:
          v108 = v98 - v101;
          v109 = (v18 + 8 * v101 + 32);
          do
          {
            v111 = *v109++;
            v110 = v111;
            if (v111 < v99)
            {
              v99 = v110;
            }

            --v108;
          }

          while (v108);
        }
      }

      v88 = v148;
    }

    else
    {

      v88 = v148;
      v99 = *v148;
    }

    *v88 = v99;
    goto LABEL_67;
  }

LABEL_87:

  DOCItemCollectionViewController.StringWidthCalculationContext.getLongestStringWithAttributesUsingCache()();
  v1 = v112;
  DOCItemCollectionViewController.StringWidthCalculationContext.getLongestStringWithAttributesUsingCache()();
  v2 = v113;
  DOCItemCollectionViewController.StringWidthCalculationContext.getLongestStringWithAttributesUsingCache()();
  v3 = v114;
  v115 = MEMORY[0x24C1FAD20](2121248, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_249B9A480;
  v117 = *MEMORY[0x277D740A8];
  *(v116 + 32) = *MEMORY[0x277D740A8];
  v118 = v117;
  (v140)(v161, v118);
  v119 = *&v161[0];
  outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v161);
  *(v116 + 64) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont, 0x277D74300);
  *(v116 + 40) = v119;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v116);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(v116 + 32, &_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
  swift_deallocClassInstance();
  type metadata accessor for NSAttributedStringKey(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v115 sizeWithAttributes_];
  v122 = v121;

  if (v1 > 0.0)
  {
    LOBYTE(v155[0]) = 0;
    v123 = v122 + specialized static DOCItemCollectionViewSectionHeader.sortHeaderItemWidthIncludingTrailingImage(for:)(v155);
    if (v1 < v123)
    {
      v1 = v123;
    }
  }

  v18 = MEMORY[0x277D85000];
  if (v2 > 0.0)
  {
    LOBYTE(v155[0]) = 4;
    v124 = v122 + specialized static DOCItemCollectionViewSectionHeader.sortHeaderItemWidthIncludingTrailingImage(for:)(v155);
    if (v2 < v124)
    {
      v2 = v124;
    }
  }

  if (v3 > 0.0)
  {
    LOBYTE(v155[0]) = 5;
    v125 = v122 + specialized static DOCItemCollectionViewSectionHeader.sortHeaderItemWidthIncludingTrailingImage(for:)(v155);
    if (v3 < v125)
    {
      v3 = v125;
    }
  }

  if (one-time initialization token for UI != -1)
  {
LABEL_104:
    swift_once();
  }

  v126 = ceil(v1);
  v127 = ceil(v2);
  v128 = ceil(v3);
  v129 = type metadata accessor for Logger();
  __swift_project_value_buffer(v129, static Logger.UI);
  v130 = v154;
  v131 = Logger.logObject.getter();
  v132 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    *v133 = 134218752;
    *(v133 + 4) = [v130 horizontalSizeClass];

    *(v133 + 12) = 2048;
    *(v133 + 14) = v126;
    *(v133 + 22) = 2048;
    *(v133 + 24) = v127;
    *(v133 + 32) = 2048;
    *(v133 + 34) = v128;
    _os_log_impl(&dword_2493AC000, v131, v132, "Updating the stackMetrics for horizontal class %ld. New dateWidth: %f sizeWidth: %f kindWidth: %f", v133, 0x2Au);
    MEMORY[0x24C1FE850](v133, -1, -1);
  }

  else
  {

    v131 = v130;
  }

  v134 = v138;

  v135 = (v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics);
  *v135 = v126;
  v135[1] = v127;
  v135[2] = v128;
  *(v135 + 3) = v40;
  *(v135 + 4) = v48;
  v136 = *(v4 + v134);
  *(v4 + v134) = v154;

  (*((*v18 & *v4) + 0x1778))();
}

unint64_t _s26DocumentManagerExecutables31DOCItemCollectionViewControllerC012computeStackF15MetricsIfNeeded33_45098A9DF3FF02797EF1E06F74668D65LLyyF16SamplingSequenceL_V_15sampleThresholdAGyxGSayxG_SitcfCSo7DOCNode_p_Tt1g5@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result >> 62)
  {
    goto LABEL_6;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3 > a2)
  {
    while (!__OFSUB__(a2, 1))
    {
      v4 = v3 - 1;
      v5 = v4 / (a2 - 1);
      if (v5 != 0.0)
      {
        goto LABEL_9;
      }

      __break(1u);
LABEL_6:
      v6 = result;
      v7 = a3;
      v8 = a2;
      v9 = __CocoaSet.count.getter();
      a2 = v8;
      a3 = v7;
      v3 = v9;
      result = v6;
      if (v3 <= v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_7:
  v10 = __OFSUB__(v3, 1);
  v4 = v3 - 1;
  if (v10)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v5 = 1.0;
LABEL_9:
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = 0;
  *(a3 + 24) = v4;
  *(a3 + 32) = v5;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 49) = *v11;
  *(a3 + 52) = *&v11[3];
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  return result;
}

void specialized next() in SamplingSequence #1 in DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()()
{
  v2 = *(v0 + 56);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (v3 > 0.0)
  {
    if (v4 <= v2)
    {
      goto LABEL_3;
    }

LABEL_9:
    v5 = *(v0 + 40);
    if (*(v0 + 48))
    {
      v6 = v2 + v3;
    }

    else
    {
      if (__OFADD__(v5++, 1))
      {
LABEL_37:
        __break(1u);
        return;
      }

      v6 = *(v0 + 16) + v5 * v3;
    }

    *(v0 + 40) = v5;
    *(v0 + 56) = v6;
    goto LABEL_14;
  }

  if (v2 > v4)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 != v4 || (*(v0 + 64) & 1) != 0 || (*(v0 + 48) & 1) == 0 && *(v0 + 40) == 0x8000000000000000)
  {
    return;
  }

  *(v0 + 64) = 1;
LABEL_14:
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v1 = v2;
  v0 = *v0;
  if (!(v0 >> 62))
  {
    v8 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 > v1)
    {
LABEL_19:
      if ((v0 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](v1, v0);
        return;
      }

      if (v1 < 0)
      {
        __break(1u);
      }

      else if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10) > v1)
      {
        swift_unknownObjectRetain();
        return;
      }

      __break(1u);
      goto LABEL_37;
    }

    goto LABEL_28;
  }

LABEL_26:
  if (__CocoaSet.count.getter() > v1)
  {
    goto LABEL_19;
  }

  v8 = __CocoaSet.count.getter();
LABEL_28:
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.UI);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = v13;
    *v12 = 136315650;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x29287478656ELL, 0xE600000000000000, &v14);
    *(v12 + 12) = 2048;
    *(v12 + 14) = v2;
    *(v12 + 22) = 2048;
    *(v12 + 24) = v8;
    _os_log_impl(&dword_2493AC000, v10, v11, "%s: %f >= %ld", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1FE850](v13, -1, -1);
    MEMORY[0x24C1FE850](v12, -1, -1);
  }
}

uint64_t next() in SamplingSequence #1 in DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[7];
  v8 = v2[3];
  v7 = v2[4];
  if (v7 <= 0.0)
  {
    if (v6 <= v8)
    {
      goto LABEL_3;
    }

LABEL_9:
    v12 = *(v2 + 5);
    if (v2[6])
    {
      v13 = v6 + v7;
    }

    else
    {
      if (__OFADD__(v12++, 1))
      {
        __break(1u);
        return result;
      }

      v13 = v2[2] + v12 * v7;
    }

    *(v2 + 5) = v12;
    v2[7] = v13;
LABEL_14:
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v6 > -9.22337204e18)
    {
      if (v6 < 9.22337204e18)
      {
        v15 = *v2;
        v3 = *(result + 16);
        if (MEMORY[0x24C1FB170](*&v15, v3) > v6)
        {
          Array.subscript.getter();
          v9 = *(*(v3 - 8) + 56);
          v10 = a2;
          v11 = 0;
          goto LABEL_23;
        }

        v4 = MEMORY[0x24C1FB170](*&v15, v3);
        if (one-time initialization token for UI == -1)
        {
LABEL_20:
          v16 = type metadata accessor for Logger();
          __swift_project_value_buffer(v16, static Logger.UI);
          v17 = Logger.logObject.getter();
          v18 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            v20 = swift_slowAlloc();
            v21 = v20;
            *v19 = 136315650;
            *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x29287478656ELL, 0xE600000000000000, &v21);
            *(v19 + 12) = 2048;
            *(v19 + 14) = v6;
            *(v19 + 22) = 2048;
            *(v19 + 24) = v4;
            _os_log_impl(&dword_2493AC000, v17, v18, "%s: %f >= %ld", v19, 0x20u);
            __swift_destroy_boxed_opaque_existential_0(v20);
            MEMORY[0x24C1FE850](v20, -1, -1);
            MEMORY[0x24C1FE850](v19, -1, -1);
          }

          v9 = *(*(v3 - 8) + 56);
          v10 = a2;
          v11 = 1;
          goto LABEL_23;
        }

LABEL_30:
        swift_once();
        goto LABEL_20;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v8 > v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v6 == v8 && (v2[8] & 1) == 0 && ((v2[6] & 1) != 0 || *(v2 + 5) != 0x8000000000000000))
  {
    *(v2 + 64) = 1;
    goto LABEL_14;
  }

  v9 = *(*(*(result + 16) - 8) + 56);
  v10 = a2;
  v11 = 1;
LABEL_23:

  return v9(v10, v11, 1);
}

Swift::Void __swiftcall DOCItemCollectionViewController.hideMenuController()()
{
  if ([v0 isFirstResponder])
  {
    [objc_msgSend(objc_opt_self() shared)];

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.menuControllerWillShow()()
{
  if ([v0 isFirstResponder])
  {
    v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
    if (v1)
    {
      (*((*MEMORY[0x277D85000] & *v1) + 0x1C8))();
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.menuControllerWillHide()()
{
  if ([v0 isFirstResponder])
  {
    v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
    if (v1)
    {
      (*((*MEMORY[0x277D85000] & *v1) + 0x1C0))();
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Int DOCItemCollectionViewController.DOCItemCollectionCellType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  return Hasher._finalize()();
}

void DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(void *a1, uint64_t a2, char a3, char a4, void (*a5)(void, void, void, void, double, double, double, double), uint64_t a6)
{
  v7 = v6;
  v13 = MEMORY[0x277D85000];
  v14 = (*((*MEMORY[0x277D85000] & *v6) + 0x1018))();
  if (v14)
  {
    v15 = v14;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v16 = *((*v13 & *static DOCTransitionableContext.shared) + 0x68);
    v17 = static DOCTransitionableContext.shared;
    v18 = v16();

    v19 = [v15 indexPathsForVisibleItems];
    type metadata accessor for IndexPath();
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = *(v20 + 16);

    if (v21)
    {
      DOCItemCollectionViewController.applyRestorableSettingsIfStillEnqueued(force:)(1);
      if ((v18 & 1) == 0)
      {
        gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(v15, v7, a1, a2, a5, a6, a4 & 1, a3 & 1);

        return;
      }
    }

    else
    {
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
        v58 = a3;
        v34 = swift_slowAlloc();
        v56 = v18;
        v35 = a2;
        v36 = swift_slowAlloc();
        aBlock = v36;
        *v34 = 136315138;
        *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005CLL, 0x8000000249BDEC60, &aBlock);
        _os_log_impl(&dword_2493AC000, v32, v33, "%s collectionView has 0 visible items. Forcing a layout pass.", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        v37 = v36;
        a2 = v35;
        v18 = v56;
        MEMORY[0x24C1FE850](v37, -1, -1);
        v38 = v34;
        a3 = v58;
        MEMORY[0x24C1FE850](v38, -1, -1);
      }

      v39 = [v7 view];
      if (!v39)
      {
        __break(1u);
        return;
      }

      v40 = v39;
      [v39 layoutIfNeeded];

      DOCItemCollectionViewController.applyRestorableSettingsIfStillEnqueued(force:)(1);
    }

    v60 = a2;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.UI);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v59 = a3;
      v44 = swift_slowAlloc();
      v57 = a5;
      v45 = swift_slowAlloc();
      v63 = v45;
      *v44 = 136315394;
      *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005CLL, 0x8000000249BDEC60, &v63);
      *(v44 + 12) = 2080;
      aBlock = 0;
      v65 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);

      aBlock = 0xD00000000000001BLL;
      v65 = 0x8000000249BDECC0;
      if (v18)
      {
        v46 = 1702195828;
      }

      else
      {
        v46 = 0x65736C6166;
      }

      if (v18)
      {
        v47 = 0xE400000000000000;
      }

      else
      {
        v47 = 0xE500000000000000;
      }

      MEMORY[0x24C1FAEA0](v46, v47);

      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(aBlock, v65, &v63);

      *(v44 + 14) = v48;
      _os_log_impl(&dword_2493AC000, v42, v43, "%s collectionView delayed layout is required (settings: %s) before gather animation info.", v44, 0x16u);
      swift_arrayDestroy();
      v49 = v45;
      a5 = v57;
      MEMORY[0x24C1FE850](v49, -1, -1);
      v50 = v44;
      a3 = v59;
      MEMORY[0x24C1FE850](v50, -1, -1);
    }

    v51 = objc_opt_self();
    v52 = swift_allocObject();
    *(v52 + 16) = v15;
    *(v52 + 24) = v7;
    *(v52 + 32) = a1;
    *(v52 + 40) = v60;
    *(v52 + 48) = a5;
    *(v52 + 56) = a6;
    *(v52 + 64) = a4 & 1;
    *(v52 + 65) = a3 & 1;
    v68 = partial apply for closure #1 in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:);
    v69 = v52;
    aBlock = MEMORY[0x277D85DD0];
    v65 = 1107296256;
    v66 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v67 = &block_descriptor_215_1;
    v53 = _Block_copy(&aBlock);
    v54 = v15;
    v55 = v7;
    swift_unknownObjectRetain();

    [v51 performAfterCATransactionCommits_];

    _Block_release(v53);
  }

  else
  {
    a5(0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.UI);
    swift_unknownObjectRetain();
    osloga = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(osloga, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock = v25;
      *v24 = 136315394;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005CLL, 0x8000000249BDEC60, &aBlock);
      *(v24 + 12) = 2080;
      v26 = [a1 description];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &aBlock);

      *(v24 + 14) = v30;
      _os_log_impl(&dword_2493AC000, osloga, v23, "%s collectionView is nil because it is not loaded. Can not get display information for item: %s.", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v25, -1, -1);
      MEMORY[0x24C1FE850](v24, -1, -1);
    }

    else
    {
    }
  }
}

id convertedCellFrame #1 (_:cell:topView:) in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(void *a1, void *a2, char a3, double a4, double a5, double a6, double a7)
{
  if (a3)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.UI);
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_2493AC000, v14, v15, "converting cell geometry from: %@ to screen space", v16, 0xCu);
      outlined destroy of CharacterSet?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v19 = 0;
      v20 = &selRef_convertRect_toView_;
LABEL_10:
      MEMORY[0x24C1FE850](v17, -1, -1);
      MEMORY[0x24C1FE850](v16, -1, -1);
      goto LABEL_13;
    }

    v19 = 0;
    v20 = &selRef_convertRect_toView_;
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.UI);
    v23 = a1;
    v19 = a2;
    v14 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v24))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412546;
      *(v16 + 4) = v23;
      *(v16 + 12) = 2112;
      *(v16 + 14) = v19;
      *v17 = v23;
      v17[1] = v19;
      v25 = v23;
      v19 = v19;
      _os_log_impl(&dword_2493AC000, v14, v24, "converting cell geometry from: %@ to view: %@", v16, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      v20 = &selRef_convertRect_toCoordinateSpace_;
      goto LABEL_10;
    }

    v20 = &selRef_convertRect_toCoordinateSpace_;
  }

LABEL_13:

  v26 = *v20;

  return [a1 v26];
}

double gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, void, void, double, double, double, double), uint64_t a6, int a7, int a8)
{
  v196 = a8;
  v198 = a7;
  v207 = a5;
  v199 = a4;
  v208 = a3;
  v195 = type metadata accessor for DispatchTimeInterval();
  v194 = *(v195 - 8);
  MEMORY[0x28223BE20](v195, v12);
  v193 = (&v178 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v15);
  v192 = (&v178 - v16);
  v197 = type metadata accessor for DispatchTime();
  v191 = *(v197 - 8);
  MEMORY[0x28223BE20](v197, v17);
  v189 = &v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v190 = &v178 - v21;
  v188 = type metadata accessor for DispatchWorkItemFlags();
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188, v22);
  v185 = &v178 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for DispatchQoS();
  v184 = *(v186 - 8);
  MEMORY[0x28223BE20](v186, v24);
  v183 = &v178 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182, v26);
  v180 = &v178 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for IndexPath();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v205 = &v178 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v212 = &v178 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v178 - v37;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v204, v39);
  v203 = &v178 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v42);
  v206 = &v178 - v43;
  MEMORY[0x28223BE20](v44, v45);
  v47 = &v178 - v46;
  v50 = MEMORY[0x28223BE20](v48, v49);
  v52 = &v178 - v51;
  v202 = a1;
  v53 = [a1 indexPathsForVisibleItems];
  v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v218 = *(v54 + 16);
  v219 = a2;
  if (v218)
  {
    v200 = a6;
    v201 = v52;
    v55 = 0;
    v56 = *((*MEMORY[0x277D85000] & *a2) + 0x18A0);
    v216 = (*MEMORY[0x277D85000] & *a2) + 6304;
    v217 = v56;
    v215 = (v54 + ((*(v29 + 80) + 32) & ~*(v29 + 80)));
    v213 = v29 + 48;
    v214 = v29 + 16;
    v210 = v29;
    v211 = (v29 + 32);
    v52 = v29 + 8;
    v209 = v54;
    while (v55 < *(v54 + 16))
    {
      (*(v29 + 16))(v38, &v215[*(v29 + 72) * v55], v28);
      v217(v38);
      v8 = v52 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if ((*(v29 + 48))(v47, 1, v28) == 1)
      {
        outlined destroy of CharacterSet?(v47, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        v57 = *v52;
      }

      else
      {
        v58 = v28;
        v59 = v212;
        v60 = *v211;
        (*v211)(v212, v47, v58);
        v61 = (*((*MEMORY[0x277D85000] & *a2) + 0xD88))(v59, 0);
        if (v61)
        {
          v62 = v61;
          swift_getObjectType();
          v63 = DOCNode.isEqualTo(node:)(v62);
          swift_unknownObjectRelease();
          v57 = *v52;
          v64 = v59;
          v28 = v58;
          (*v52)(v64, v58);
          if (v63)
          {

            v52 = v201;
            v60(v201, v38, v58);
            v65 = 0;
            a6 = v200;
            v29 = v210;
            a2 = v219;
            goto LABEL_14;
          }
        }

        else
        {
          v57 = *v52;
          (*v52)(v59, v58);
          v28 = v58;
        }

        v54 = v209;
        v29 = v210;
      }

      ++v55;
      v57(v38, v28);
      a2 = v219;
      if (v218 == v55)
      {

        v65 = 1;
        v52 = v201;
        a6 = v200;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

  v65 = 1;
LABEL_14:
  (*(v29 + 56))(v52, v65, 1, v28);
  v66 = v206;
  outlined init with copy of DOCGridLayout.Spec?(v52, v206, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  if ((*(v29 + 48))(v66, 1, v28) == 1)
  {
    outlined destroy of CharacterSet?(v66, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    goto LABEL_26;
  }

  (*(v29 + 32))(v205, v66, v28);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v68 = [v202 cellForItemAtIndexPath_];

  if (!v68)
  {
LABEL_25:
    (*(v29 + 8))(v205, v28);
LABEL_26:
    aBlock = 0;
    v221 = 0xE000000000000000;
    _StringGuts.grow(_:)(102);
    MEMORY[0x24C1FAEA0](0xD00000000000001CLL, 0x8000000249BE0DF0);
    MEMORY[0x24C1FAEA0](0xD000000000000019, 0x8000000249BE0E10);
    outlined init with copy of DOCGridLayout.Spec?(v52, v203, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    v83 = String.init<A>(describing:)();
    MEMORY[0x24C1FAEA0](v83);

    v84 = MEMORY[0x24C1FAEA0](0xD00000000000002DLL, 0x8000000249BE0E30);
    v85 = (*((*MEMORY[0x277D85000] & *a2) + 0x1010))(v84);
    v86 = [v85 indexPathsForVisibleItems];

    v87 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = *(v87 + 16);

    v226 = v88;
    v89 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x24C1FAEA0](v89);

    MEMORY[0x24C1FAEA0](0xD00000000000001ALL, 0x8000000249BE0E60);
    v8 = aBlock;
    v54 = v221;
    if (one-time initialization token for UI == -1)
    {
LABEL_27:
      v90 = type metadata accessor for Logger();
      __swift_project_value_buffer(v90, static Logger.UI);

      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        aBlock = v94;
        *v93 = 136315138;
        *(v93 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v54, &aBlock);
        _os_log_impl(&dword_2493AC000, v91, v92, "[Presentation Error] %s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v94);
        MEMORY[0x24C1FE850](v94, -1, -1);
        MEMORY[0x24C1FE850](v93, -1, -1);
      }

      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        aBlock = v98;
        *v97 = 136315138;
        v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v54, &aBlock);

        *(v97 + 4) = v99;
        _os_log_impl(&dword_2493AC000, v95, v96, "%s", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v98);
        MEMORY[0x24C1FE850](v98, -1, -1);
        MEMORY[0x24C1FE850](v97, -1, -1);
      }

      else
      {
      }

      v207(0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0);
LABEL_33:
      outlined destroy of CharacterSet?(v52, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      return result;
    }

LABEL_56:
    swift_once();
    goto LABEL_27;
  }

  type metadata accessor for DOCItemCollectionCell();
  v69 = swift_dynamicCastClass();
  if (!v69)
  {

    goto LABEL_25;
  }

  v70 = v69;
  v71 = v199;
  if (v199)
  {
    if (v199 != 1)
    {
      type metadata accessor for DOCServicePopoverTrackerRegion(0);
      v223 = v177;
      aBlock = v71;
      doc_fatalErrorUnrecognizedEnumValueEncountered(_:)(&aBlock);
    }

    v101 = (*((*MEMORY[0x277D85000] & *a2) + 0x18A8))(v202);
    v102 = [v101 window];
    if (v102)
    {

      v103 = v68;
      [v70 bounds];
      convertedCellFrame #1 (_:cell:topView:) in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(v70, v101, v198 & 1, v104, v105, v106, v107);
      (v207)(0, 0, v70, 0);
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v108 = type metadata accessor for Logger();
      __swift_project_value_buffer(v108, static Logger.UI);
      v109 = v68;
      v110 = v101;
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v179 = v28;
        v115 = v114;
        v116 = swift_slowAlloc();
        v210 = v29;
        v117 = v116;
        aBlock = v116;
        *v113 = 136315650;
        *(v113 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE0DF0, &aBlock);
        *(v113 + 12) = 2112;
        *(v113 + 14) = v70;
        *(v113 + 22) = 2112;
        *(v113 + 24) = v110;
        *v115 = v70;
        v115[1] = v110;
        v118 = v109;
        v119 = v110;
        _os_log_impl(&dword_2493AC000, v111, v112, "%s. Can not compute a frame for cell because cell does not have a window. Returning nil thumbnail and empty rect. Cell: %@ top-most view: %@", v113, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        v120 = v115;
        v28 = v179;
        MEMORY[0x24C1FE850](v120, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v117);
        v29 = v210;
        MEMORY[0x24C1FE850](v117, -1, -1);
        MEMORY[0x24C1FE850](v113, -1, -1);
      }

      v207(0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0);
    }

    (*(v29 + 8))(v205, v28);
    goto LABEL_33;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  __swift_project_value_buffer(v72, static Logger.UI);
  v73 = v68;
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.debug.getter();

  v76 = os_log_type_enabled(v74, v75);
  v179 = v28;
  v217 = v70;
  v215 = v73;
  if (v76)
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    aBlock = v78;
    *v77 = 136315138;
    v79 = MEMORY[0x277D85000];
    v80 = (*((*MEMORY[0x277D85000] & *v70) + 0x208))();
    if (v80)
    {
      v81 = v80;
      v82 = (*((*v79 & *v80) + 0x3D0))();
    }

    else
    {
      v82 = 0;
    }

    v226 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd, &_sSo7DOCNode_pSgMR);
    v121 = String.init<A>(describing:)();
    v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v122, &aBlock);

    *(v77 + 4) = v123;
    _os_log_impl(&dword_2493AC000, v74, v75, "waiting for up-to-date thumbnail for %s before returning display information to the transition...", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v78);
    MEMORY[0x24C1FE850](v78, -1, -1);
    MEMORY[0x24C1FE850](v77, -1, -1);

    v28 = v179;
  }

  else
  {
  }

  v124 = swift_allocObject();
  *(v124 + 16) = 0;
  v125 = swift_allocObject();
  *(v125 + 16) = 0;
  v126 = swift_allocObject();
  v127 = v125;
  swift_unknownObjectWeakInit();
  v128 = swift_allocObject();
  *(v128 + 16) = v126;
  *(v128 + 24) = v125;
  v129 = v207;
  *(v128 + 32) = v207;
  *(v128 + 40) = a6;
  v218 = v124;
  *(v128 + 48) = v124;
  v130 = v198 & 1;
  *(v128 + 56) = v198 & 1;
  v131 = v208;
  v216 = v128;
  *(v128 + 64) = v208;
  if ((v196 & 1) == 0)
  {

    swift_unknownObjectRetain();
    v171 = v218;

    closure #2 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(v217, v126, v127, v129, a6, v171, v130, v131);

    (*(v29 + 8))(v205, v28);
    outlined destroy of CharacterSet?(v52, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
LABEL_52:

    return result;
  }

  v210 = v29;
  v201 = v52;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_source, 0x277D85CA0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);

  swift_unknownObjectRetain();
  v132 = v218;

  v133 = static OS_dispatch_queue.main.getter();
  v214 = v127;
  v134 = v133;
  aBlock = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR, MEMORY[0x277D83970]);
  v135 = v180;
  v136 = v182;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v137 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

  (*(v181 + 8))(v135, v136);
  v212 = v137;
  ObjectType = swift_getObjectType();
  v139 = swift_allocObject();
  v139[2] = v132;
  v139[3] = partial apply for closure #2 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:);
  v140 = v217;
  v139[4] = v216;
  v139[5] = v140;
  v224 = partial apply for closure #3 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:);
  v225 = v139;
  aBlock = MEMORY[0x277D85DD0];
  v221 = 1107296256;
  v222 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v223 = &block_descriptor_1125;
  v141 = _Block_copy(&aBlock);
  v215 = v215;

  v142 = v183;
  static DispatchQoS.unspecified.getter();
  v143 = v185;
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  v213 = ObjectType;
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v141);
  (*(v187 + 8))(v143, v188);
  (*(v184 + 8))(v142, v186);

  OS_dispatch_source.resume()();
  v144 = v189;
  static DispatchTime.now()();
  v145 = v192;
  *v192 = 250;
  v146 = v194;
  v147 = *(v194 + 104);
  v148 = v195;
  v147(v145, *MEMORY[0x277D85178], v195);
  v149 = v190;
  MEMORY[0x24C1FAA90](v144, v145);
  v150 = *(v146 + 8);
  v150(v145, v148);
  v151 = *(v191 + 8);
  v151(v144, v197);
  v147(v145, *MEMORY[0x277D85180], v148);
  v152 = v193;
  *v193 = 0;
  v147(v152, *MEMORY[0x277D85168], v148);
  v153 = v212;
  MEMORY[0x24C1FBBC0](v149, v145, v152, v213);
  v150(v152, v148);
  v154 = v208;
  v150(v145, v148);
  v151(v149, v197);
  swift_getObjectType();
  if (!DOCNode.isFINode.getter())
  {
    v172 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v173 = swift_allocObject();
    v173[2] = v153;
    v173[3] = partial apply for closure #2 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:);
    v174 = v217;
    v173[4] = v216;
    v173[5] = v172;
    v173[6] = v174;
    v173[7] = v154;
    v175 = v215;
    v173[8] = v214;
    v176 = v175;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #5 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:), v173);

    swift_unknownObjectRelease();

    (*(v210 + 8))(v205, v179);
    outlined destroy of CharacterSet?(v201, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);

    goto LABEL_52;
  }

  v156 = v215;
  v155 = v216;
  v157 = v153;
  v158 = v214;
  v159 = v217;
  v160 = MEMORY[0x277D85000];
  v161 = (*((*MEMORY[0x277D85000] & *v217) + 0x208))();
  v162 = v201;
  if (v161)
  {
    v163 = v161;
    v164 = swift_allocObject();
    v164[2] = v157;
    v164[3] = v158;
    v165 = v219;
    v166 = v208;
    v164[4] = v219;
    v164[5] = v166;
    v164[6] = partial apply for closure #2 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:);
    v164[7] = v155;
    v164[8] = v159;
    v217 = ((*v160 & *v163) + 1520);
    v167 = *v217;
    v168 = v156;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v169 = v165;
    v167(partial apply for closure #4 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:), v164);

    swift_unknownObjectRelease();

    (*(v210 + 8))(v205, v179);
    v170 = v201;
  }

  else
  {

    swift_unknownObjectRelease();
    (*(v210 + 8))(v205, v179);
    v170 = v162;
  }

  outlined destroy of CharacterSet?(v170, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);

  return result;
}

void closure #2 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void, void, double, double, double, double), uint64_t a5, uint64_t a6, char a7, void *a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v97 = a8;
    v17 = [Strong view];
    if (!v17)
    {
      __break(1u);
      return;
    }

    v18 = v17;
    v19 = (*((*MEMORY[0x277D85000] & *v16) + 0x18A8))();

    swift_beginAccess();
    *(a3 + 16) = 1;
    v99 = v19;
    v20 = [v19 window];
    if (!v20)
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.UI);
      v31 = a1;
      v32 = v19;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v101[0] = v37;
        *v35 = 136315650;
        *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE0DF0, v101);
        *(v35 + 12) = 2112;
        *(v35 + 14) = v31;
        *(v35 + 22) = 2112;
        *(v35 + 24) = v32;
        *v36 = v31;
        v36[1] = v32;
        v38 = v31;
        v39 = v32;
        _os_log_impl(&dword_2493AC000, v33, v34, "%s. Can not compute a frame for cell because cell does not have a window. Returning nil thumbnail and empty rect. Cell: %@ top-most view: %@", v35, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v36, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x24C1FE850](v37, -1, -1);
        MEMORY[0x24C1FE850](v35, -1, -1);
      }

      a4(0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0);
      goto LABEL_35;
    }

    swift_beginAccess();
    v94 = a5;
    v95 = a4;
    if (*(a6 + 16) == 1)
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.UI);
      v22 = a1;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v100 = v26;
        *v25 = 136315138;
        v27 = MEMORY[0x277D85000];
        v28 = (*((*MEMORY[0x277D85000] & *v22) + 0x208))();
        if (v28)
        {
          v29 = v28;
          (*((*v27 & *v28) + 0x3D0))();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd, &_sSo7DOCNode_pSgMR);
        v45 = String.init<A>(describing:)();
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v100);

        *(v25 + 4) = v47;
        v48 = "Timed out (250ms) re-fetching thumbnail for %s";
LABEL_23:
        _os_log_impl(&dword_2493AC000, v23, v24, v48, v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x24C1FE850](v26, -1, -1);
        MEMORY[0x24C1FE850](v25, -1, -1);

LABEL_24:
        v52 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);
        [v52 addDecoration];
        v53 = MEMORY[0x277D85000];
        v54 = *((*MEMORY[0x277D85000] & *v16) + 0xBD8);
        if (v54() != 1 && v54() != 3)
        {
          v54();
        }

        v55 = (*((*v53 & *a1) + 0x100))([v52 layoutIfNeeded]);
        convertedCellFrame #1 (_:cell:topView:) in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(a1, v99, a7 & 1, v55, v56, v57, v58);
        v60 = v59;
        v62 = v61;
        v64 = v63;
        v66 = v65;
        [v52 _continuousCornerRadius];
        v68 = v67;
        [v52 bounds];
        if (v68 <= 0.0)
        {
          v84 = specialized static UIBezierPath.path(for:thumbnailSize:)(v97, v71, v72);
        }

        else
        {
          v73 = v72;
          v74 = v71;
          v75 = v69;
          v76 = v70;
          [v52 _continuousCornerRadius];
          v98 = v66;
          v77 = v64;
          v78 = v62;
          v79 = v60;
          v81 = v80;
          v82 = objc_opt_self();
          v83 = v81;
          v60 = v79;
          v62 = v78;
          v64 = v77;
          v66 = v98;
          v84 = [v82 bezierPathWithRoundedRect:v75 cornerRadius:{v76, v74, v73, v83}];
        }

        v85 = one-time initialization token for UI;
        v32 = v84;
        if (v85 != -1)
        {
          swift_once();
        }

        v86 = type metadata accessor for Logger();
        __swift_project_value_buffer(v86, static Logger.UI);
        v87 = a1;
        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          *v90 = 138412290;
          *(v90 + 4) = v87;
          *v91 = a1;
          v92 = v87;
          _os_log_impl(&dword_2493AC000, v88, v89, "calling completion block with cell %@", v90, 0xCu);
          outlined destroy of CharacterSet?(v91, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x24C1FE850](v91, -1, -1);
          MEMORY[0x24C1FE850](v90, -1, -1);
        }

        v93 = [v52 image];
        v96(v60, v62, v64, v66);

        v16 = v32;
LABEL_35:

        return;
      }
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.UI);
      v41 = a1;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v100 = v26;
        *v25 = 136315138;
        v42 = MEMORY[0x277D85000];
        v43 = (*((*MEMORY[0x277D85000] & *v41) + 0x208))();
        if (v43)
        {
          v44 = v43;
          (*((*v42 & *v43) + 0x3D0))();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd, &_sSo7DOCNode_pSgMR);
        v49 = String.init<A>(describing:)();
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v100);

        *(v25 + 4) = v51;
        v48 = "Updated thumbnail for %s";
        goto LABEL_23;
      }
    }

    goto LABEL_24;
  }
}

uint64_t default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)()
{
  type metadata accessor for DispatchWorkItemFlags();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void closure #4 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(id), uint64_t a6, void *a7)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.UI);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2493AC000, v12, v13, "thumbnail updated", v14, 2u);
    MEMORY[0x24C1FE850](v14, -1, -1);
  }

  swift_getObjectType();
  OS_dispatch_source.cancel()();
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    v15 = (*((*MEMORY[0x277D85000] & *a3) + 0x18D0))(a4);
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      swift_unknownObjectRetain();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v29 = v21;
        *v20 = 136315138;
        v22 = [a4 displayName];
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v29);

        *(v20 + 4) = v26;
        _os_log_impl(&dword_2493AC000, v18, v19, "Cell for %s has been removed while waiting for the thumbnail", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x24C1FE850](v21, -1, -1);
        MEMORY[0x24C1FE850](v20, -1, -1);
      }

      v17 = a7;
    }

    v27 = v16;
    a5(v17);
  }
}

double closure #5 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a1)
    {
      v17 = objc_opt_self();
      v18 = a1;
      v29 = [v17 defaultManager];
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = a7;
      v20[4] = a2;
      v20[5] = a3;
      v20[6] = a4;
      v20[7] = a6;
      v20[8] = a8;

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v21 = a6;

      v22 = [v18 itemID];
      v23 = swift_allocObject();
      v23[2] = v18;
      v23[3] = partial apply for closure #1 in closure #5 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:);
      v23[4] = v20;
      aBlock[4] = closure #1 in FPItemManager.doc_refetchItem(_:completion:)partial apply;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_1146;
      v24 = _Block_copy(aBlock);
      v25 = v18;

      [v29 fetchItemForItemID:v22 completionHandler:v24];
      _Block_release(v24);

      return result;
    }
  }

  swift_getObjectType();
  OS_dispatch_source.cancel()();
  v27 = swift_allocObject();
  v27[2] = a3;
  v27[3] = a4;
  v27[4] = a6;

  v28 = a6;
  DOCRunInMainThread(_:)();

  return result;
}

double closure #1 in closure #5 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (a1)
    {
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = a5;
      v19[4] = a6;
      v19[5] = a7;
      v19[6] = a8;
      v19[7] = a1;
      v19[8] = a9;
      v19[9] = a4;
      v20 = a1;

      swift_unknownObjectRetain();

      v21 = a8;

      swift_unknownObjectRetain();
      DOCRunInMainThread(_:)();

      goto LABEL_10;
    }
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.UI);
  v23 = a2;
  swift_unknownObjectRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v41 = a6;
    v27 = swift_slowAlloc();
    v44 = v27;
    *v26 = 136315394;
    v28 = [a4 displayName];
    v42 = a7;
    v43 = a8;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v44);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2082;
    v33 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7NSErrorCSgMd, &_sSo7NSErrorCSgMR);
    v34 = String.init<A>(describing:)();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v44);
    a8 = v43;

    *(v26 + 14) = v36;
    a7 = v42;
    _os_log_impl(&dword_2493AC000, v24, v25, "Could not refetch %s: %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    v37 = v27;
    a6 = v41;
    MEMORY[0x24C1FE850](v37, -1, -1);
    MEMORY[0x24C1FE850](v26, -1, -1);
  }

  swift_getObjectType();
  OS_dispatch_source.cancel()();
  v38 = swift_allocObject();
  v38[2] = a6;
  v38[3] = a7;
  v38[4] = a8;

  v39 = a8;
  DOCRunInMainThread(_:)();
LABEL_10:

  return result;
}

double closure #1 in closure #1 in closure #5 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v57 = a2;
    v58 = a3;
    v16 = MEMORY[0x277D85000];
    v17 = (*((*MEMORY[0x277D85000] & *Strong) + 0x18D0))(a6);
    if (v17)
    {
      v18 = v17;
      v19 = (*((*v16 & *v17) + 0x208))();
      if (v19)
      {
        v20 = v19;
        v21 = *((*v16 & *v19) + 0x3D8);
        v22 = swift_unknownObjectRetain();
        v21(v22);
        v23 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v24 = swift_allocObject();
        v24[2] = v23;
        v24[3] = v57;
        v24[4] = v58;
        v24[5] = a4;
        v24[6] = v18;
        v24[7] = a7;
        v24[8] = a6;
        v24[9] = a8;
        v56 = *((*v16 & *v20) + 0x5F0);

        v25 = a6;

        swift_unknownObjectRetain();
        v26 = v18;

        swift_unknownObjectRetain();
        v56(partial apply for closure #1 in closure #1 in closure #1 in closure #5 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:), v24);
      }

      else
      {
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        __swift_project_value_buffer(v42, static Logger.UI);
        v43 = a6;
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v60 = v47;
          *v46 = 136315138;
          v48 = [v43 displayName];
          v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v50;

          v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v60);

          *(v46 + 4) = v52;
          _os_log_impl(&dword_2493AC000, v44, v45, "Cell for %s does not have any cell content.", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v47);
          MEMORY[0x24C1FE850](v47, -1, -1);
          MEMORY[0x24C1FE850](v46, -1, -1);
        }

        swift_getObjectType();
        OS_dispatch_source.cancel()();
        v53 = swift_allocObject();
        v53[2] = v58;
        v53[3] = a4;
        v53[4] = v18;

        v54 = v18;
        DOCRunInMainThread(_:)();
      }
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.UI);
      v30 = a6;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v60 = v34;
        *v33 = 136315138;
        v35 = [v30 displayName];
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v60);

        *(v33 + 4) = v39;
        _os_log_impl(&dword_2493AC000, v31, v32, "Cell for %s has been removed while refetching the FPItem.", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x24C1FE850](v34, -1, -1);
        MEMORY[0x24C1FE850](v33, -1, -1);
      }

      swift_getObjectType();
      OS_dispatch_source.cancel()();
      v40 = swift_allocObject();
      v40[2] = v58;
      v40[3] = a4;
      v40[4] = a5;

      v41 = a5;
      DOCRunInMainThread(_:)();
    }
  }

  else
  {
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    v27 = swift_allocObject();
    v27[2] = a3;
    v27[3] = a4;
    v27[4] = a5;

    v28 = a5;
    DOCRunInMainThread(_:)();
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in closure #5 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v40 = a3;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.UI);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = a8;
      v20 = a5;
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2493AC000, v17, v18, "thumbnail updated", v21, 2u);
      v22 = v21;
      a5 = v20;
      a8 = v19;
      MEMORY[0x24C1FE850](v22, -1, -1);
    }

    swift_getObjectType();
    OS_dispatch_source.cancel()();
    swift_beginAccess();
    if (*(a6 + 16))
    {
    }

    else
    {
      v25 = (*((*MEMORY[0x277D85000] & *v15) + 0x18D0))(a7);
      v26 = v25;
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        swift_unknownObjectRetain();
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v41 = v31;
          *v30 = 136315138;
          v32 = [a8 displayName];
          v39 = a5;
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;

          v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v41);

          *(v30 + 4) = v36;
          _os_log_impl(&dword_2493AC000, v28, v29, "Cell for %s has been removed while waiting for the thumbnail", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
          MEMORY[0x24C1FE850](v31, -1, -1);
          MEMORY[0x24C1FE850](v30, -1, -1);

          v37 = v39;
        }

        else
        {

          v37 = a5;
        }

        v27 = v37;
      }

      v38 = v26;
      v40(v27);
    }
  }

  else
  {
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    v23 = swift_allocObject();
    v23[2] = a3;
    v23[3] = a4;
    v23[4] = a5;

    v24 = a5;
    DOCRunInMainThread(_:)();
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.reloadCollection()()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v5.n128_f64[0] = MEMORY[0x28223BE20](v2, v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & *v0) + 0x1178);
  if ((v9)(v5))
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.UI);
    v11 = v0;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v9();

      _os_log_impl(&dword_2493AC000, v12, v13, "Deferring reloadCollection, they are still batch updates running (%ld remaining)", v14, 0xCu);
      MEMORY[0x24C1FE850](v14, -1, -1);
    }

    else
    {

      v12 = v11;
    }

    *(&v11->isa + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) = 1;
  }

  else if ((*((*v8 & *v0) + 0xC58))())
  {
    *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) = 1;
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.UI);
    v16 = v0;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = v3;
      v21 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v21 = v1;
      v22 = v16;
      _os_log_impl(&dword_2493AC000, v17, v18, "Reload collection in %@", v19, 0xCu);
      outlined destroy of CharacterSet?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v23 = v21;
      v3 = v20;
      MEMORY[0x24C1FE850](v23, -1, -1);
      MEMORY[0x24C1FE850](v19, -1, -1);
    }

    v24 = static os_signpost_type_t.begin.getter();
    if (one-time initialization token for updatePointsOfInterestHandler != -1)
    {
      swift_once();
    }

    v25 = updatePointsOfInterestHandler;
    static OSSignpostID.exclusive.getter();
    v26 = MEMORY[0x277D84F90];
    os_signpost(_:dso:log:name:signpostID:_:_:)(v24, &dword_2493AC000, v25, "Files-Reload-reloadCollection", 29, 2, v7, "reloadCollection", 16, 2, MEMORY[0x277D84F90]);
    v29 = *(v3 + 8);
    v27 = v3 + 8;
    v28 = v29;
    v30 = (v29)(v7, v2);
    v31 = *(v16 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (v31)
    {
      v32 = v27;
      v33 = MEMORY[0x277D85000];
      v34 = (*((*MEMORY[0x277D85000] & *v31) + 0x258))(v30);
      (*((*v33 & *v16) + 0xCC0))(v34);
      v35 = static os_signpost_type_t.event.getter();
      static OSSignpostID.exclusive.getter();
      LOBYTE(v57) = 2;
      os_signpost(_:dso:log:name:signpostID:_:_:)(v35, &dword_2493AC000, v25, "Files-Reload", 12, 2, v7, "updatedItemGrouping", 19, v57, v26);
      v28(v7, v2);
      *(v16 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) = 0;
      *(v16 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updateStackViewMetrics) = 1;
      DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()();
      v36 = static os_signpost_type_t.event.getter();
      static OSSignpostID.exclusive.getter();
      LOBYTE(v58) = 2;
      os_signpost(_:dso:log:name:signpostID:_:_:)(v36, &dword_2493AC000, v25, "Files-Reload", 12, 2, v7, "invalidateStackViewMetrics", 26, v58, v26);
      v37 = (v28)(v7, v2);
      (*(**(v16 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_cellContentPool) + 208))(v37);
      v38 = static os_signpost_type_t.event.getter();
      static OSSignpostID.exclusive.getter();
      LOBYTE(v59) = 2;
      os_signpost(_:dso:log:name:signpostID:_:_:)(v38, &dword_2493AC000, v25, "Files-Reload", 12, 2, v7, "removeAllContent", 16, v59, MEMORY[0x277D84F90]);
      v39 = (v28)(v7, v2);
      v40 = (*((*MEMORY[0x277D85000] & *v16) + 0xD60))(v39);
      v65 = 2;
      DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v40, &v65, 0);
      v41 = MEMORY[0x277D84F90];

      v42 = static os_signpost_type_t.event.getter();
      static OSSignpostID.exclusive.getter();
      LOBYTE(v60) = 2;
      os_signpost(_:dso:log:name:signpostID:_:_:)(v42, &dword_2493AC000, v25, "Files-Reload", 12, 2, v7, "updateSnapshot", 14, v60, v41);
      v64 = v32;
      v28(v7, v2);
      v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation3URLV_So7DOCNode_pTt0g5Tf4g_n(v41);
      v44 = MEMORY[0x277D85000];
      v45 = (*((*MEMORY[0x277D85000] & *v16) + 0xA88))(v43);
      v46 = (*((*v44 & *v16) + 0xA68))(v45);
      v47 = *&v46[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type];
      LODWORD(v44) = v46[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8];
      outlined copy of DOCFileProviderSourceType(v47);

      if (v44 == 1)
      {
        outlined consume of DOCFileProviderSourceType(v47);
        *(v16 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
        v48 = [v16 viewIfLoaded];
        v49 = [v48 window];

        if (v49)
        {

          DOCBrowserContainedViewController.updateOverlayIfNeeded()(v50);
        }

        else
        {
          DOCBrowserContainedViewController.applyOverlaySearchSettings()();
        }
      }

      else
      {
        outlined consume of DOCFileProviderSourceType(v47);
      }

      v51 = static os_signpost_type_t.event.getter();
      static OSSignpostID.exclusive.getter();
      LOBYTE(v61) = 2;
      os_signpost(_:dso:log:name:signpostID:_:_:)(v51, &dword_2493AC000, v25, "Files-Reload", 12, 2, v7, "didUpdateContent", 16, v61, v41);
      v28(v7, v2);
      specialized DOCItemCollectionViewController.updateOverlay(animated:)();
      v52 = static os_signpost_type_t.event.getter();
      static OSSignpostID.exclusive.getter();
      LOBYTE(v62) = 2;
      os_signpost(_:dso:log:name:signpostID:_:_:)(v52, &dword_2493AC000, v25, "Files-Reload", 12, 2, v7, "updateOverlay", 13, v62, MEMORY[0x277D84F90]);
      v28(v7, v2);
      v53 = *(v16 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView);
      if (v53)
      {
        v54 = v53;
        DOCStatusFooterView.updateQuotaLabel()(v55);
      }

      v56 = static os_signpost_type_t.end.getter();
      static OSSignpostID.exclusive.getter();
      LOBYTE(v63) = 2;
      os_signpost(_:dso:log:name:signpostID:_:_:)(v56, &dword_2493AC000, v25, "Files-Reload-reloadCollection", 29, 2, v7, "reloadCollection", 16, v63, MEMORY[0x277D84F90]);
      v28(v7, v2);
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.updateItems(atIndexPaths:)(Swift::OpaquePointer_optional atIndexPaths)
{
  v2 = v1;
  rawValue = atIndexPaths.value._rawValue;
  v4 = type metadata accessor for IndexPath();
  v44 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (rawValue)
  {
    v9 = rawValue;
  }

  else
  {
    v10 = (*((*MEMORY[0x277D85000] & *v1) + 0x1018))(v6);
    if (!v10)
    {
      return;
    }

    v11 = v10;
    v12 = [v10 indexPathsForVisibleItems];

    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = one-time initialization token for UI;

  if (v13 != -1)
  {
LABEL_37:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.UI);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v53 = v18;
    *v17 = 136315394;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BDEDA0, &v53);
    *(v17 + 12) = 2048;
    *(v17 + 14) = *(v9 + 16);

    _os_log_impl(&dword_2493AC000, v15, v16, "DOCNodeCollectionDelegate %s updating contents of %ld cells", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x24C1FE850](v18, -1, -1);
    MEMORY[0x24C1FE850](v17, -1, -1);
  }

  else
  {
  }

  v19 = v44;
  v52 = *(v9 + 16);
  if (v52)
  {
    v20 = 0;
    v21 = *((*MEMORY[0x277D85000] & *v2) + 0xD88);
    v50 = (*MEMORY[0x277D85000] & *v2) + 3464;
    v51 = v21;
    v49 = v9 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v42 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection;
    v43 = v4;
    v47 = (v44 + 8);
    v48 = v44 + 16;
    v45 = v9;
    v46 = v2;
    while (1)
    {
      if (v20 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      (*(v19 + 16))(v8, v49 + *(v19 + 72) * v20, v4);
      v25 = v51(v8, 0);
      if (v25)
      {
        v26 = v25;
        v27 = (*((*MEMORY[0x277D85000] & *v2) + 0x1010))();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v29 = [v27 cellForItemAtIndexPath_];

        if (!v29)
        {
          (*v47)(v8, v4);
          swift_unknownObjectRelease();
          goto LABEL_14;
        }

        type metadata accessor for DOCItemCollectionCell();
        v30 = swift_dynamicCastClass();
        if (!v30)
        {
          swift_unknownObjectRelease();

          (*v47)(v8, v4);
          v9 = v45;
          goto LABEL_14;
        }

        v31 = *((*MEMORY[0x277D85000] & *v30) + 0x208);
        v32 = v31();
        if (v32)
        {
          v33 = *(v46 + v42);
          if (!v33)
          {
            __break(1u);
            return;
          }

          v34 = v32;
          v35 = (*((*MEMORY[0x277D85000] & *v33) + 0x1B0))();
          if (v35)
          {
            v36 = [v35 isShared];
            swift_unknownObjectRelease();
          }

          else
          {
            v36 = 0;
          }

          (*((*MEMORY[0x277D85000] & *v34) + 0x438))(v36);
        }

        v37 = v31();
        if (v37)
        {
          v38 = v37;
          v39 = *((*MEMORY[0x277D85000] & *v37) + 0x3D8);
          v40 = swift_unknownObjectRetain();
          v39(v40);
        }

        v41 = v31();
        if (v41)
        {
          v22 = v41;
          v2 = v46;
          v23 = MEMORY[0x277D85000];
          v24 = (*((*MEMORY[0x277D85000] & *v46) + 0x18C0))(v26);
          (*((*v23 & *v22) + 0x4F8))(v24 & 1);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          v2 = v46;
        }

        v4 = v43;
        v19 = v44;
        v9 = v45;
      }

      (*v47)(v8, v4);
LABEL_14:
      if (v52 == ++v20)
      {

        return;
      }
    }
  }
}

void DOCItemCollectionViewController.estimatedVisibleCellCount(itemLayoutTraits:viewportSize:)(uint64_t a1, double a2, double a3)
{
  if ([v3 isViewLoaded])
  {
    v6 = (*((*MEMORY[0x277D85000] & *v3) + 0xBD8))();
  }

  else
  {
    v7 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
    if (!v7 || (v8 = MEMORY[0x277D85000], (v9 = (*((*MEMORY[0x277D85000] & *v7) + 0xB0))()) == 0))
    {
      v6 = 0;
      goto LABEL_12;
    }

    v10 = v9;
    v11 = [v9 dataSource];
    v6 = (*((*v8 & *v11) + 0x188))();
  }

  if ((v6 - 1) <= 1)
  {
    (*(*a1 + 232))(v28);
    v12 = round(a3 / v28[0]);
    if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v12 > -9.22337204e18)
      {
        if (v12 < 9.22337204e18)
        {
          v13 = 1;
          goto LABEL_15;
        }

LABEL_27:
        __break(1u);
        return;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_12:
  v14 = *(*a1 + 160);
  v14(v26);
  v15 = outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v26);
  v13 = v26[13];
  (v14)(v27, v15);
  v16 = outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v27);
  v17 = *&v27[1];
  (v14)(v28, v16);
  v18 = *&v28[3];
  outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v28);
  [v18 spacing];
  v20 = v19;

  v12 = round(a3 / (v17 + v20));
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_15:
  v21 = v13 * v12;
  if ((v13 * v12) >> 64 != v21 >> 63)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (one-time initialization token for UI != -1)
  {
LABEL_21:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.UI);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134218240;
    *(v25 + 4) = v21;
    *(v25 + 12) = 2048;
    *(v25 + 14) = v6;
    _os_log_impl(&dword_2493AC000, v23, v24, "estimated preload thumbnail count: %ld for displayMode %ld", v25, 0x16u);
    MEMORY[0x24C1FE850](v25, -1, -1);
  }
}

void *DOCItemCollectionViewController.modelPreloadingAppearance.getter()
{
  v1 = v0;
  result = [v0 effectiveAppearance];
  if (!result)
  {
    v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager];
    if (v3)
    {
      v4 = MEMORY[0x277D85000];
      v5 = (*((*MEMORY[0x277D85000] & *v3) + 0xB0))();
      if (v5)
      {
        v6 = v5;
        v7 = [v5 effectiveAppearance];

        if (v7)
        {
          v8 = v7;
          if (one-time initialization token for UI != -1)
          {
            swift_once();
          }

          v9 = type metadata accessor for Logger();
          __swift_project_value_buffer(v9, static Logger.UI);
          v10 = v1;
          v11 = Logger.logObject.getter();
          v12 = static os_log_type_t.debug.getter();

          if (!os_log_type_enabled(v11, v12))
          {
            goto LABEL_22;
          }

          v13 = swift_slowAlloc();
          result = swift_slowAlloc();
          *v13 = 138412290;
          v14 = *&v10[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
          if (v14)
          {
            v15 = result;
            v16 = (*((*v4 & *v14) + 0x1A8))();
            if (!v16)
            {
              v16 = v14;
            }

            *(v13 + 4) = v16;
            *v15 = v16;
            v17 = "falling back on document browser's appearance (item collection: %@)";
LABEL_21:
            _os_log_impl(&dword_2493AC000, v11, v12, v17, v13, 0xCu);
            outlined destroy of CharacterSet?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x24C1FE850](v15, -1, -1);
            MEMORY[0x24C1FE850](v13, -1, -1);
LABEL_22:

            return v8;
          }

LABEL_36:
          __break(1u);
          return result;
        }
      }
    }

    v18 = [objc_opt_self() anyWindowPreferingKeyWindow];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 effectiveAppearance];

      if (v20)
      {
        v8 = v20;
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Logger.UI);
        v22 = v1;
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.debug.getter();

        if (!os_log_type_enabled(v11, v12))
        {
          goto LABEL_22;
        }

        v13 = swift_slowAlloc();
        result = swift_slowAlloc();
        *v13 = 138412290;
        v23 = *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
        if (v23)
        {
          v15 = result;
          v24 = (*((*MEMORY[0x277D85000] & *v23) + 0x1A8))();
          if (!v24)
          {
            v24 = v23;
          }

          *(v13 + 4) = v24;
          *v15 = v24;
          v17 = "falling back on key window's appearance (item collection: %@)";
          goto LABEL_21;
        }

        goto LABEL_35;
      }
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.UI);
    v26 = v1;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      result = swift_slowAlloc();
      *v29 = 138412290;
      v30 = *&v26[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
      if (!v30)
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v31 = result;
      v32 = (*((*MEMORY[0x277D85000] & *v30) + 0x1A8))();
      if (!v32)
      {
        v32 = v30;
      }

      *(v29 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&dword_2493AC000, v27, v28, "falling back on default appearance (item collection: %@)", v29, 0xCu);
      outlined destroy of CharacterSet?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v31, -1, -1);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }

    v33 = objc_allocWithZone(MEMORY[0x277D05EA0]);

    return [v33 init];
  }

  return result;
}

void DOCItemCollectionViewController.preloadContent(for:)(uint64_t a1)
{
  v57 = type metadata accessor for OSSignpostID();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for UI != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.UI);
    v8 = v1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_7;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = *(v8 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (!v13)
    {
      break;
    }

    v2 = v12;
    v14 = (*((*MEMORY[0x277D85000] & *v13) + 0x1A8))(v12);
    if (!v14)
    {
      v14 = v13;
    }

    *(v11 + 4) = v14;
    *v2 = v14;
    _os_log_impl(&dword_2493AC000, v9, v10, "Preloading content for item collection %@", v11, 0xCu);
    outlined destroy of CharacterSet?(v2, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v2, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
LABEL_7:

    DOCItemCollectionViewController.modelPreloadingCollectionViewSize.getter();
    if (v16 == 0.0)
    {
      return;
    }

    v18 = v17;
    if (v17 == 0.0)
    {
      return;
    }

    v19 = v16;
    v20 = MEMORY[0x277D85000];
    v21 = (*((*MEMORY[0x277D85000] & *v8) + 0x11C0))(v15);
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v9 = v8;
      v23 = Logger.logObject.getter();
      v2 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v2))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        v26 = *(&v9->isa + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
        if (!v26)
        {
          goto LABEL_69;
        }

        v27 = v25;
        v28 = (*((*MEMORY[0x277D85000] & *v26) + 0x1A8))(v25);
        if (!v28)
        {
          v28 = v26;
        }

        *(v24 + 4) = v28;
        *v27 = v28;
        _os_log_impl(&dword_2493AC000, v23, v2, "No collection view layout traits found, creating one (item collection: %@)", v24, 0xCu);
        outlined destroy of CharacterSet?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x24C1FE850](v27, -1, -1);
        MEMORY[0x24C1FE850](v24, -1, -1);
        v20 = MEMORY[0x277D85000];
      }

      (*((*v20 & v9->isa) + 0xA50))(v59);
      v63 = v59[3];
      v64 = v59[4];
      v61 = v59[1];
      v62 = v59[2];
      v60 = v59[0];
      outlined destroy of DOCItemCollectionConfiguration(&v60);
      v58 = v61;
      v29 = [v9 traitCollection];
      type metadata accessor for DOCItemCollectionLayoutTraits();
      swift_allocObject();
      v22 = DOCItemCollectionLayoutTraits.init(context:traitCollection:containerViewSize:)(&v58, v29, v19, v18);
    }

    v1 = v8;
    DOCItemCollectionViewController.estimatedVisibleCellCount(itemLayoutTraits:viewportSize:)(v22, v30, v18);
    v32 = v31;

    if (a1 >> 62)
    {
      v34 = __CocoaSet.count.getter();
    }

    else
    {
      v33 = a1 & 0xFFFFFFFFFFFFFF8;
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v34 >= v32)
    {
      a1 = v32;
    }

    else
    {
      a1 = v34;
    }

    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      v35 = (*((*v20 & *v8) + 0xCB8))(v34);
      v1 = v35;
      v33 = v35 & 0xFFFFFFFFFFFFFF8;
      v9 = (v35 >> 62);
      if (!(v35 >> 62))
      {
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) < a1)
        {
          goto LABEL_60;
        }

        goto LABEL_25;
      }
    }

    if (v1 < 0)
    {
      v32 = v1;
    }

    else
    {
      v32 = v33;
    }

    if (__CocoaSet.count.getter() < 0)
    {
      goto LABEL_68;
    }

    if (__CocoaSet.count.getter() < a1)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

LABEL_25:
    v55 = v22;
    if ((v1 & 0xC000000000000001) != 0)
    {

      if (a1)
      {
        v36 = 0;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
          _ArrayBuffer._typeCheckSlowPath(_:)(v36++);
        }

        while (a1 != v36);
      }
    }

    else
    {
    }

    if (v9)
    {
      _CocoaArrayWrapper.subscript.getter();
      v2 = v38;
      v37 = v39;
      v41 = v40;

      a1 = v41 >> 1;
    }

    else
    {
      v37 = 0;
      v2 = ((v1 & 0xFFFFFFFFFFFFFF8) + 32);
    }

    *&v60 = MEMORY[0x277D84F90];
    swift_unknownObjectRetain();
    if (v37 == a1)
    {
LABEL_35:
      swift_unknownObjectRelease_n();
      a1 = v60;

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 134217984;
        v22 = v57;
        v20 = v56;
        v2 = MEMORY[0x277D84F90];
        if (a1 < 0 || (a1 & 0x4000000000000000) != 0)
        {
          v45 = __CocoaSet.count.getter();
        }

        else
        {
          v45 = *(a1 + 16);
        }

        *(v44 + 4) = v45;

        _os_log_impl(&dword_2493AC000, v42, v43, "Preloading model for %ld nodes", v44, 0xCu);
        MEMORY[0x24C1FE850](v44, -1, -1);
      }

      else
      {

        v22 = v57;
        v20 = v56;
        v2 = MEMORY[0x277D84F90];
      }

      v32 = static os_signpost_type_t.begin.getter();
      if (one-time initialization token for updatePointsOfInterestHandler != -1)
      {
LABEL_61:
        swift_once();
      }

      v47 = updatePointsOfInterestHandler;
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:_:_:)(v32, &dword_2493AC000, v47, "Files-Preload", 13, 2, v6, "prefetchCellContent", 19, 2, v2);
      v48 = v20[1];
      v48(v6, v22);
      if (a1 < 0 || (a1 & 0x4000000000000000) != 0)
      {
        v50 = __CocoaSet.count.getter();
        if (!v50)
        {
          goto LABEL_63;
        }

LABEL_50:
        v51 = *(v8 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_cellContentPool);
        v52 = MEMORY[0x28223BE20](v50, v49);
        (*(*v51 + 184))(a1, closure #1 in DOCItemCollectionViewController.prefetchCellContent(for:)partial apply, v52);
      }

      else
      {
        v50 = *(a1 + 16);
        if (v50)
        {
          goto LABEL_50;
        }

LABEL_63:
      }

      v53 = static os_signpost_type_t.end.getter();
      static OSSignpostID.exclusive.getter();
      LOBYTE(v54) = 2;
      os_signpost(_:dso:log:name:signpostID:_:_:)(v53, &dword_2493AC000, v47, "Files-Preload", 13, 2, v6, "prefetchCellContent", 19, v54, v2);

      v48(v6, v22);
      return;
    }

    while (v37 < a1)
    {
      v46 = v2[v37];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v1 = v46;
      if (DOCNode.isCreateDocumentSentinel()())
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v1 = &v60;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      if (a1 == ++v37)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_52:
    swift_once();
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

void DOCItemCollectionViewController.notifyContentDidLoad()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignpostID();
  v160 = *(v11 - 8);
  v161 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v159 = v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMd, &_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMR);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v162 = v147 - v16;
  v166 = type metadata accessor for ImageOptions();
  v164 = *(v166 - 8);
  MEMORY[0x28223BE20](v166, v17);
  v157 = v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v158 = v147 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21DocumentManagerUICore12ImageOptionsVSgMd, &_s21DocumentManagerUICore12ImageOptionsVSgMR);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v156 = v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25, v26);
  v167 = v147 - v28;
  v29 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v29)
  {
    __break(1u);
    goto LABEL_147;
  }

  if ([v29 isGathering] & 1) != 0 || (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_didKickstartNotifyContentDidLoad))
  {
    v30 = (*((*MEMORY[0x277D85000] & *v0) + 0xA68))();
    v31 = [v30 identifier];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
    if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
    {
    }

    else
    {
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v36 & 1) == 0)
      {
        v37 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_loadingView);
        if (v37)
        {

          [v37 setHidden_];
        }
      }
    }

    return;
  }

  v149 = v10;
  v150 = v7;
  v151 = v5;
  v152 = v6;
  v153 = v2;
  v154 = v1;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_didKickstartNotifyContentDidLoad) = 1;
  v38 = MEMORY[0x277D85000];
  v39 = *((*MEMORY[0x277D85000] & *v0) + 0xA68);
  v165 = v0;
  v40 = v39();
  v41 = [v40 identifier];

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;
  if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
  {

    v47 = v165;
  }

  else
  {
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v47 = v165;
    if ((v48 & 1) == 0)
    {
      v46 = *(v165 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_loadingView);
      if (v46)
      {
        v46 = [v46 setHidden_];
      }
    }
  }

  v49 = *((*v38 & *v47) + 0x1018);
  v50 = (*v38 & *v47) + 4120;
  v51 = v49(v46);
  v155 = 0;
  if (!v51)
  {
LABEL_63:
    v80 = [v47 traitCollection];
    v81 = [v80 horizontalSizeClass];

    if (v81 == 1)
    {
      v82 = 10;
    }

    else
    {
      v82 = 25;
    }

    v83 = (*((*v38 & *v47) + 0xCB8))();
    v84 = v83;
    v85 = v83 & 0xFFFFFFFFFFFFFF8;
    v86 = v83 >> 62;
    if (!(v83 >> 62))
    {
      v87 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v87 >= v82)
      {
        v88 = v82;
      }

      else
      {
        v88 = *(v85 + 16);
      }

      if (v87 >= v88)
      {
        goto LABEL_71;
      }

      goto LABEL_139;
    }

    if (v83 < 0)
    {
      v47 = v83;
    }

    else
    {
      v47 = (v83 & 0xFFFFFFFFFFFFFF8);
    }

    v145 = __CocoaSet.count.getter();
    if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
    {
      if (v145 >= v82)
      {
        v146 = v82;
      }

      else
      {
        v146 = v145;
      }

      if (v145 >= 0)
      {
        v88 = v146;
      }

      else
      {
        v88 = v82;
      }

      if (__CocoaSet.count.getter() >= v88)
      {
LABEL_71:
        if ((v84 & 0xC000000000000001) != 0)
        {

          if (v88)
          {
            for (i = 0; i != v88; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
              _ArrayBuffer._typeCheckSlowPath(_:)(i);
            }
          }
        }

        else
        {
        }

        if (v86)
        {
          v91 = _CocoaArrayWrapper.subscript.getter();
          v92 = v95;
          v90 = v96;
          v93 = v97;

          v94 = v167;
          if ((v93 & 1) == 0)
          {
            goto LABEL_81;
          }
        }

        else
        {
          v90 = 0;
          v91 = v84 & 0xFFFFFFFFFFFFFF8;
          v92 = (v84 & 0xFFFFFFFFFFFFFF8) + 32;
          v93 = (2 * v88) | 1;
          v94 = v167;
          if ((v93 & 1) == 0)
          {
            goto LABEL_81;
          }
        }

        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v102 = swift_dynamicCastClass();
        if (!v102)
        {
          swift_unknownObjectRelease();
          v102 = MEMORY[0x277D84F90];
        }

        v103 = *(v102 + 16);

        if (__OFSUB__(v93 >> 1, v90))
        {
          __break(1u);
        }

        else if (v103 == (v93 >> 1) - v90)
        {
          v99 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          v100 = v166;
          v101 = v164;
          if (v99)
          {
LABEL_89:
            v164 = v99;
            v104 = v165;
            DOCItemCollectionViewController.preloadContent(for:)(v99);
            v163 = *(v101 + 56);
            v105 = v163(v94, 1, 1, v100);
            v106 = MEMORY[0x277D85000];
            v107 = (*((*MEMORY[0x277D85000] & *v104) + 0x11C0))(v105);
            if (v107)
            {
              (*(*v107 + 184))(&v168);

              v187 = v176;
              v188 = v177;
              v189[0] = v178[0];
              *(v189 + 9) = *(v178 + 9);
              v183 = v172;
              v184 = v173;
              v185 = v174;
              v186 = v175;
              v179 = v168;
              v180 = v169;
              v181 = v170;
              v182 = v171;
              v108 = [v104 traitCollection];
              [v108 displayScale];
              UITraitCollection._ifColorForIconFolderTintComponents.getter();
              v109 = v157;
              ImageOptions.init(size:scale:isFolded:folderTintComponents:)();

              outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(&v179);
              v110 = *(v101 + 32);
              v111 = v158;
              v110(v158, v109, v100);
              outlined destroy of CharacterSet?(v94, &_s21DocumentManagerUICore12ImageOptionsVSgMd, &_s21DocumentManagerUICore12ImageOptionsVSgMR);
              v110(v94, v111, v100);
              v163(v94, 0, 1, v100);
            }

            else
            {
              v112 = v163;
              v113 = [v104 traitCollection];
              v114 = (*((*v106 & *v104) + 0x13F0))();

              if (v114)
              {
                v115 = *(*v114 + 184);

                v115(&v168, v116);

                v187 = v176;
                v188 = v177;
                v189[0] = v178[0];
                *(v189 + 9) = *(v178 + 9);
                v183 = v172;
                v184 = v173;
                v185 = v174;
                v186 = v175;
                v179 = v168;
                v180 = v169;
                v181 = v170;
                v182 = v171;
                v117 = [v104 traitCollection];
                [v117 displayScale];
                UITraitCollection._ifColorForIconFolderTintComponents.getter();
                v118 = v156;
                ImageOptions.init(size:scale:isFolded:folderTintComponents:)();

                outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(&v179);
                v119 = v118;
                v120 = 0;
              }

              else
              {
                v118 = v156;
                v119 = v156;
                v120 = 1;
              }

              v112(v119, v120, 1, v166);
              v94 = v167;
              outlined assign with take of IndexPath?(v118, v167, &_s21DocumentManagerUICore12ImageOptionsVSgMd, &_s21DocumentManagerUICore12ImageOptionsVSgMR);
              v104 = v165;
            }

            v121 = v104;
            v67 = specialized Sequence.compactMap<A>(_:)(v164, v94, v121);

            outlined destroy of CharacterSet?(v94, &_s21DocumentManagerUICore12ImageOptionsVSgMd, &_s21DocumentManagerUICore12ImageOptionsVSgMR);
            goto LABEL_96;
          }

          v99 = MEMORY[0x277D84F90];
LABEL_88:
          swift_unknownObjectRelease();
          goto LABEL_89;
        }

        swift_unknownObjectRelease_n();
LABEL_81:
        specialized _copyCollectionToContiguousArray<A>(_:)(v91, v92, v90, v93);
        v99 = v98;
        v100 = v166;
        v101 = v164;
        goto LABEL_88;
      }

LABEL_139:
      __break(1u);
LABEL_140:
      swift_once();
      goto LABEL_125;
    }

LABEL_147:
    __break(1u);
    return;
  }

  v52 = v51;
  v53 = [v51 visibleCells];

  v147[1] = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
  v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v147[2] = v50;
  v148 = v49;
  if (v54 >> 62)
  {
LABEL_61:
    v55 = __CocoaSet.count.getter();
    if (v55)
    {
      goto LABEL_23;
    }

    goto LABEL_62;
  }

  v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v55)
  {
LABEL_62:

    v47 = v165;
    v38 = MEMORY[0x277D85000];
    goto LABEL_63;
  }

LABEL_23:
  v56 = 0;
  while (1)
  {
    if ((v54 & 0xC000000000000001) != 0)
    {
      v57 = MEMORY[0x24C1FC540](v56, v54);
    }

    else
    {
      if (v56 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v57 = *(v54 + 8 * v56 + 32);
    }

    v58 = v57;
    v59 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v60 = type metadata accessor for DOCItemCollectionCell();
    v61 = swift_dynamicCastClass();
    if (v61)
    {
      v62 = (*((*MEMORY[0x277D85000] & *v61) + 0x208))();
      if (v62)
      {
        break;
      }
    }

LABEL_25:
    ++v56;
    if (v59 == v55)
    {
      goto LABEL_62;
    }
  }

  v63 = v62;
  v163 = v60;
  v64 = (*((*MEMORY[0x277D85000] & *v62) + 0xB70))();

  if ((v64 & 1) == 0)
  {
    goto LABEL_25;
  }

  v66 = v148(v65);
  v67 = MEMORY[0x277D84F90];
  if (v66)
  {
    v68 = v66;
    v69 = [v66 visibleCells];

    v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    *&v179 = v67;
    if (!(v70 >> 62))
    {
      v71 = v70 & 0xFFFFFFFFFFFFFF8;
      v54 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v54)
      {
        goto LABEL_38;
      }

LABEL_144:
      v164 = MEMORY[0x277D84F90];
      goto LABEL_145;
    }

    v71 = v70 & 0xFFFFFFFFFFFFFF8;
    v54 = __CocoaSet.count.getter();
    if (!v54)
    {
      goto LABEL_144;
    }

LABEL_38:
    v72 = 0;
    v164 = MEMORY[0x277D84F90];
LABEL_39:
    v73 = v72;
    while (1)
    {
      if ((v70 & 0xC000000000000001) != 0)
      {
        v74 = MEMORY[0x24C1FC540](v73, v70);
        v72 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v73 >= *(v71 + 16))
        {
          goto LABEL_60;
        }

        v74 = *(v70 + 8 * v73 + 32);
        v72 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          goto LABEL_59;
        }
      }

      v75 = swift_dynamicCastClass();
      if (v75 && (v76 = MEMORY[0x277D85000], (v77 = (*((*MEMORY[0x277D85000] & *v75) + 0x208))()) != 0))
      {
        v78 = v77;
        v79 = (*((*v76 & *v77) + 0xA80))();

        if (v79)
        {
          type metadata accessor for NodeThumbnail();
          if (swift_dynamicCastClass())
          {
            MEMORY[0x24C1FB090]();
            if (*((v179 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v179 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v164 = v179;
            if (v72 == v54)
            {
LABEL_145:

              v67 = v164;
              break;
            }

            goto LABEL_39;
          }

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }

      ++v73;
      if (v72 == v54)
      {
        goto LABEL_145;
      }
    }
  }

LABEL_96:
  v82 = dispatch_group_create();
  if (v67 >> 62)
  {
LABEL_122:
    v122 = __CocoaSet.count.getter();
    if (v122)
    {
      goto LABEL_98;
    }

    goto LABEL_123;
  }

  v122 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v122)
  {
LABEL_123:

    goto LABEL_124;
  }

LABEL_98:
  if ((v67 & 0xC000000000000001) != 0)
  {
    v123 = 0;
    v124 = 0;
LABEL_100:
    LODWORD(v167) = v123;
    v125 = v124;
    do
    {
      MEMORY[0x24C1FC540](v125, v67);
      v124 = v125 + 1;
      if (__OFADD__(v125, 1))
      {
        __break(1u);
        goto LABEL_121;
      }

      dispatch_group_enter(v82);
      *(swift_allocObject() + 16) = v82;
      v126 = v82;
      v127 = NodeThumbnail.registerGenerationCompletionHandler(_:)();

      if (v127)
      {
        swift_unknownObjectRelease();
        v123 = 1;
        if (v124 != v122)
        {
          goto LABEL_100;
        }

        goto LABEL_117;
      }

      dispatch_group_leave(v126);
      swift_unknownObjectRelease();
      ++v125;
    }

    while (v124 != v122);

    if (v167)
    {
      goto LABEL_119;
    }
  }

  else
  {
    v128 = 0;
    v129 = 0;
    v167 = v67 & 0xFFFFFFFFFFFFFF8;
    v164 = v67;
    v67 += 32;
    v163 = (v122 - 1);
LABEL_110:
    LODWORD(v166) = v128;
    do
    {
      if (v129 >= *(v167 + 16))
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      v130 = (v129 + 1);
      v131 = *(v67 + 8 * v129);
      dispatch_group_enter(v82);
      *(swift_allocObject() + 16) = v82;
      v132 = v82;
      v133 = NodeThumbnail.registerGenerationCompletionHandler(_:)();

      if (v133)
      {

        v128 = 1;
        if (v163 != v129++)
        {
          goto LABEL_110;
        }

LABEL_117:

        goto LABEL_119;
      }

      dispatch_group_leave(v132);

      ++v129;
    }

    while (v122 != v130);

    if (v166)
    {
LABEL_119:
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v167 = static OS_dispatch_queue.main.getter();
      v135 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&v181 = partial apply for closure #5 in DOCItemCollectionViewController.notifyContentDidLoad();
      *(&v181 + 1) = v135;
      *&v179 = MEMORY[0x277D85DD0];
      *(&v179 + 1) = 1107296256;
      *&v180 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v180 + 1) = &block_descriptor_875;
      v136 = _Block_copy(&v179);

      v137 = v149;
      static DispatchQoS.unspecified.getter();
      *&v168 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v138 = v151;
      v139 = v154;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v140 = v167;
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      v47 = v165;
      _Block_release(v136);

      (*(v153 + 8))(v138, v139);
      (*(v150 + 8))(v137, v152);

      goto LABEL_126;
    }
  }

LABEL_124:
  v38 = static os_signpost_type_t.event.getter();
  v47 = v165;
  if (one-time initialization token for updatePointsOfInterestHandler != -1)
  {
    goto LABEL_140;
  }

LABEL_125:
  v141 = updatePointsOfInterestHandler;
  v142 = v159;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)(v38, &dword_2493AC000, v141, "Files-PPT", 9, 2, v142, "notify report did Load with visible cells but no handler", 56, 2, MEMORY[0x277D84F90]);
  (*(v160 + 8))(v142, v161);
  DOCItemCollectionViewController.reportDidLoadContent(_:)(1);
LABEL_126:
  v143 = MEMORY[0x277D85000];
  v144 = DOCItemCollectionViewController.reportDidLoadContent(_:)(0);
  (*((*v143 & *v47) + 0x1860))(v144, 0.5);
}

void closure #5 in DOCItemCollectionViewController.notifyContentDidLoad()(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = static os_signpost_type_t.event.getter();
    if (one-time initialization token for updatePointsOfInterestHandler != -1)
    {
      swift_once();
    }

    v9 = updatePointsOfInterestHandler;
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)(v8, &dword_2493AC000, v9, "Files-PPT", 9, 2, v5, "notify report did Load with visible cells", 41, 2, MEMORY[0x277D84F90]);
    (*(v2 + 8))(v5, v1);
    DOCItemCollectionViewController.reportDidLoadContent(_:)(1);
  }
}

uint64_t DOCItemCollectionViewController.reportDidLoadContent(_:)(char a1)
{
  v2 = v1;
  [v1 setNeedsFocusUpdate];
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x11E0))(0);
  v6 = (*((*v4 & *v1) + 0xE8))(v5);
  if (v6)
  {
    [v6 didFinishGatheringItemsAndThumbnailsWithSender_];
    v6 = swift_unknownObjectRelease();
  }

  result = (*((*v4 & *v1) + 0xD0))(v6);
  if (result)
  {
    v9 = v8;
    v13[3] = type metadata accessor for DOCItemCollectionViewController(0);
    v13[0] = v1;
    v10 = (*((*v4 & *v1) + 0xCB8))(v1);
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v13, v11, 1, 0, ObjectType, v9);
    swift_unknownObjectRelease();
    result = __swift_destroy_boxed_opaque_existential_0(v13);
  }

  if (a1)
  {
    return (*((*v4 & *v2) + 0x1860))(result, 0.02);
  }

  return result;
}

Swift::Void __swiftcall DOCItemCollectionViewController.makeCollectionViewVisible(with:)(Swift::Double with)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v25 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v23 - v17;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v23 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v24 = *(v11 + 8);
  v24(v14, v10);
  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.makeCollectionViewVisible(with:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_221;
  v20 = _Block_copy(aBlock);
  v21 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v23;
  MEMORY[0x24C1FB940](v18, v9, v5, v20);
  _Block_release(v20);

  (*(v28 + 8))(v5, v2);
  (*(v26 + 8))(v9, v27);
  v24(v18, v25);
}

void closure #1 in DOCItemCollectionViewController.makeCollectionViewVisible(with:)(void *a1)
{
  v1 = (*((*MEMORY[0x277D85000] & *a1) + 0x1018))();
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha_];
  }
}

uint64_t DOCItemCollectionViewController.reportDidUpdateContentIfNecessary(from:to:)(unint64_t a1, unint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x11D8))();
  if (result)
  {
    return result;
  }

  if (a1 >> 62)
  {
    result = __CocoaSet.count.getter();
    v7 = result;
    if (!(a2 >> 62))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(a2 >> 62))
    {
LABEL_4:
      v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  result = __CocoaSet.count.getter();
  v8 = result;
LABEL_5:
  if ((v7 != 0) == (v8 == 0))
  {
    result = (*((*v5 & *v2) + 0xD0))();
    if (result)
    {
      v10 = v9;
      ObjectType = swift_getObjectType();
      v14[3] = type metadata accessor for DOCItemCollectionViewController(0);
      v14[0] = v2;
      v12 = *(v10 + 8);
      v13 = v2;
      v12(v14, v8, 1, 1, ObjectType, v10);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v14);
    }
  }

  return result;
}

void DOCItemCollectionViewController.createLoadingViewIfNeeded()()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v1;
  v17 = [v1 superview];

  v3 = v17;
  if (!v17)
  {
    return;
  }

  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_loadingView;
  if (!*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_loadingView])
  {
    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = [objc_allocWithZone(type metadata accessor for DOCItemCollectionLoadingView()) initWithFrame_];
      [v15 setTranslatesAutoresizingMaskIntoConstraints_];
      [v17 addSubview_];
      isa = DOCConstraintsToResizeWithSuperview();
      if (!isa)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        isa = Array._bridgeToObjectiveC()().super.isa;
      }

      [objc_opt_self() activateConstraints_];

      v3 = *&v0[v4];
      *&v0[v4] = v15;
      goto LABEL_8;
    }

LABEL_13:
    __break(1u);
    return;
  }

LABEL_8:
}

double DOCItemCollectionViewController.showLoadingView()(char a1)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xA68))();
  v4 = [v3 identifier];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      DOCItemCollectionViewController.createLoadingViewIfNeeded()();
      v12 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_loadingView;
      v13 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_loadingView);
      if (v13)
      {
        [*(v13 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionLoadingView_stackView) setHidden_];
        v14 = *(v1 + v12);
        if (v14)
        {

          [v14 setHidden_];
        }
      }
    }
  }

  return result;
}

void DOCItemCollectionViewController.itemsOriginDidChange(_:)(uint64_t a1)
{
  v2 = v1;
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
    *v7 = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_2493AC000, v5, v6, "Updating items origin on collection view, since it has changed in the item collection: %lu", v7, 0xCu);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *v2) + 0x1018))();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 preparedCells];

    if (v11)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v12 >> 62)
      {
        goto LABEL_8;
      }

LABEL_11:
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }
  }

  v12 = MEMORY[0x277D84F90];
  if (!(MEMORY[0x277D84F90] >> 62))
  {
    goto LABEL_11;
  }

LABEL_8:
  v13 = __CocoaSet.count.getter();
  if (!v13)
  {
    goto LABEL_21;
  }

LABEL_12:
  if (v13 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v13; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x24C1FC540](i, v12);
    }

    else
    {
      v15 = *(v12 + 8 * i + 32);
    }

    v16 = v15;
    type metadata accessor for DOCItemCollectionCell();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = (*((*v8 & *v17) + 0x208))();
      if (v18)
      {
        v19 = v18;
        (*((*v8 & *v18) + 0x480))(a1, 0);
      }
    }
  }

LABEL_21:
}

uint64_t DOCItemCollectionViewController.resolvedIndexPathForProvider(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (MEMORY[0x24C1F8130]() != 2)
  {
    v12 = type metadata accessor for IndexPath();
    v9 = *(*(v12 - 8) + 56);
    v13 = v12;
    v10 = a2;
    v11 = 1;
    goto LABEL_10;
  }

  v5 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v2) + 0x11B8))() & 1) == 0)
  {
    v7 = type metadata accessor for IndexPath();
    v15 = *(v7 - 8);
    (*(v15 + 16))(a2, a1, v7);
LABEL_8:
    v9 = *(v15 + 56);
    v10 = a2;
    v11 = 0;
    goto LABEL_9;
  }

  v6 = (*((*v5 & *v2) + 0x1898))(a1);
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  if ((v6 & 1) == 0)
  {
    v15 = *(v7 - 8);
    (*(v8 + 16))(a2, a1, v7);
    goto LABEL_8;
  }

  v9 = *(v8 + 56);
  v10 = a2;
  v11 = 1;
LABEL_9:
  v13 = v7;
LABEL_10:

  return v9(v10, v11, 1, v13);
}

void __swiftcall DOCItemCollectionViewController.topSuperView(from:)(UIView *__return_ptr retstr, UIView *from)
{
  v3 = [(UIView *)from superview];
  if (v3)
  {
    v4 = v3;
    v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x18A8))();

    type metadata accessor for DOCServiceView();
    if (!swift_dynamicCastClass())
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        from;
      }
    }
  }

  else
  {

    v6 = from;
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.updateCollectionLayoutConfiguration()()
{
  v1 = [v0 traitCollection];
  (*((*MEMORY[0x277D85000] & *v0) + 0x18B8))();
}

Swift::Void __swiftcall DOCItemCollectionViewController.updateCollectionLayoutConfiguration(for:)(UITraitCollection a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x1018))(a1.super.isa);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v3 preparedCells];
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = v5;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = v4;
  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_5:
      if (v8 >= 1)
      {
        v9 = 0;
        v10 = &v23[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics];
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x24C1FC540](v9, v7);
          }

          else
          {
            v11 = *(v7 + 8 * v9 + 32);
          }

          v12 = v11;
          type metadata accessor for DOCItemCollectionCell();
          v13 = swift_dynamicCastClass();
          if (v13)
          {
            v14 = v2;
            v15 = *((*v2 & *v13) + 0x208);
            v16 = v15();
            if (v16)
            {
              v17 = v16;
              (*((*v14 & *v16) + 0x328))([v23 effectiveAppearance]);
            }

            v18 = v15();
            if (v18)
            {
              v19 = v18;
              v20 = *(v10 + 4);
              v21 = *(v10 + 1);
              v24[0] = *v10;
              v24[1] = v21;
              v25 = v20;
              v26 = 0;
              v2 = v14;
              (*((*v14 & *v18) + 0x528))(v24);
            }

            else
            {

              v2 = v14;
            }
          }

          else
          {
          }

          ++v9;
        }

        while (v8 != v9);
        goto LABEL_20;
      }

      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }
  }

LABEL_20:
}

uint64_t DOCItemCollectionViewController.isNodePickable(_:)(void *a1)
{
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 isActionable];
  if (result)
  {
    result = [a1 isReadable];
    if (result)
    {
      if ([a1 isCopying])
      {
        return 0;
      }

      else
      {
        result = [a1 isFullyFormed];
        if (result)
        {
          if ((v10 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration), ([v10 forMovingDocuments] & 1) == 0) && (objc_msgSend(v10, sel_forSavingDocuments) & 1) == 0 && !objc_msgSend(v10, sel_forPickingFoldersOnly) || (result = objc_msgSend(a1, sel_isFolder), result))
          {
            if ([a1 isFolder])
            {
              return 1;
            }

            else
            {
              v11 = [a1 contentType];
              static UTType._unconditionallyBridgeFromObjectiveC(_:)();

              isa = [v10 documentContentTypes];
              if (!isa)
              {
                static Array._unconditionallyBridgeFromObjectiveC(_:)();
                isa = Array._bridgeToObjectiveC()().super.isa;
              }

              v13 = UTType._bridgeToObjectiveC()().super.isa;
              v14 = [(objc_class *)v13 doc_conformsToAnyInContentTypes:isa];

              (*(v4 + 8))(v8, v3);
              return v14;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t DOCItemCollectionViewController.fpfs_cell(for:with:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a2, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v2) + 0xDA0))(a1, v8);
  outlined destroy of CharacterSet?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (!v12)
  {
    return 0;
  }

  v13 = (*((*v11 & *v2) + 0x18D0))(v12);
  swift_unknownObjectRelease();
  return v13;
}

id DOCItemCollectionViewController.cell(for:)(uint64_t a1)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v44 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v44 - v13;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v15, v16);
  v19 = &v44 - v18;
  v20 = (*((*MEMORY[0x277D85000] & *v1) + 0x1018))(v17);
  if (v20)
  {
    v53 = v14;
    v56 = v20;
    result = [v20 preparedCells];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v22 = result;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = v23;
    if (v23 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v51 = v1;
      v52 = v5;
      v57 = v19;
      v24 = 0;
      v1 = v55;
      v19 = (v55 & 0xC000000000000001);
      v45 = v10;
      v46 = v55 & 0xFFFFFFFFFFFFFF8;
      v25 = (v7 + 32);
      v47 = (v7 + 8);
      v48 = (v7 + 48);
      v5 = v6;
      v6 = v56;
      v10 = i;
      v49 = v7 + 32;
      v50 = v55 & 0xC000000000000001;
      while (1)
      {
        if (v19)
        {
          v26 = MEMORY[0x24C1FC540](v24, v1);
        }

        else
        {
          if (v24 >= *(v46 + 16))
          {
            goto LABEL_25;
          }

          v26 = v1[v24 + 4];
        }

        v7 = v26;
        v27 = (v24 + 1);
        if (__OFADD__(v24, 1))
        {
          break;
        }

        type metadata accessor for DOCItemCollectionCell();
        v28 = swift_dynamicCastClass();
        if (v28 && (v29 = v28, (v30 = [v6 indexPathForCell_]) != 0))
        {
          v31 = v53;
          v32 = v30;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v33 = *v25;
          v34 = v57;
          (*v25)(v57, v31, v5);
          v35 = v51;
          v36 = v5;
          v37 = v52;
          (*((*MEMORY[0x277D85000] & *v51) + 0x18A0))(v34);
          if ((*v48)(v37, 1, v36) == 1)
          {
            (*v47)(v34, v36);

            outlined destroy of CharacterSet?(v37, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
            v5 = v36;
LABEL_21:
            v1 = v55;
            v6 = v56;
            v10 = i;
            v19 = v50;
            goto LABEL_7;
          }

          v38 = v45;
          v33(v45, v37, v36);
          v39 = (*((*MEMORY[0x277D85000] & *v35) + 0xD88))(v38, 0);
          v5 = v36;
          if (!v39)
          {

            v43 = *v47;
            (*v47)(v38, v36);
            v43(v57, v36);
            goto LABEL_21;
          }

          v40 = v39;
          swift_getObjectType();
          v41 = DOCNode.isEqualTo(node:)(v40);
          swift_unknownObjectRelease();
          v42 = *v47;
          (*v47)(v38, v36);
          v42(v57, v36);
          v19 = v50;
          if (v41)
          {

            return v29;
          }

          v1 = v55;
          v6 = v56;
          v10 = i;
        }

        else
        {
        }

LABEL_7:
        ++v24;
        if (v27 == v10)
        {

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

LABEL_28:
  }

  return 0;
}

void DOCItemCollectionViewController.scrollToIndexPathIfNeeded(_:completionBlock:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v40 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v8);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchTime();
  v41 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.n128_f64[0] = MEMORY[0x28223BE20](v17, v18);
  v21 = &v36 - v20;
  v22 = MEMORY[0x277D85000];
  v23 = (*((*MEMORY[0x277D85000] & *v3) + 0x1018))(v19);
  if (!v23)
  {
    a2();
    return;
  }

  v37 = v7;
  v38 = a3;
  v45 = v23;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v25 = [v45 cellForItemAtIndexPath_];

  if (v25)
  {
    [v25 frame];
    if ([v45 _isRectFullyVisible_])
    {

      a2();
      goto LABEL_11;
    }
  }

  v26 = [v45 numberOfSections];

  if (v26 >= 1)
  {
    v27 = (*((*v22 & *v4) + 0x1010))();
    v28 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v27 scrollToItemAtIndexPath:v28 atScrollPosition:0 animated:1];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v36 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v41 = *(v41 + 8);
    (v41)(v16, v44);
    v29 = swift_allocObject();
    v30 = v38;
    *(v29 + 16) = a2;
    *(v29 + 24) = v30;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_227;
    v31 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v33 = v39;
    v32 = v40;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v34 = v36;
    MEMORY[0x24C1FB940](v21, v13, v33, v31);
    _Block_release(v31);

    (*(v37 + 8))(v33, v32);
    (*(v42 + 8))(v13, v43);
    (v41)(v21, v44);
    return;
  }

  a2();
LABEL_11:
  v35 = v45;
}

double DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)(void *a1, int a2, void (*a3)(void), uint64_t a4)
{
  v312 = a4;
  v311 = a3;
  LODWORD(v310) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v299 = v291 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v302 = v291 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v294 = v291 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v298 = v291 - v17;
  v293 = v18;
  MEMORY[0x28223BE20](v19, v20);
  v309 = v291 - v21;
  v22 = type metadata accessor for Date();
  v296 = *(v22 - 8);
  v297 = v22;
  MEMORY[0x28223BE20](v22, v23);
  v295 = v291 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v307 = *(v25 - 1);
  v308 = v25;
  MEMORY[0x28223BE20](v25, v26);
  v305 = v291 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = type metadata accessor for DispatchQoS();
  v304 = *(v306 - 8);
  MEMORY[0x28223BE20](v306, v28);
  v303 = v291 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v301 = v11;
  v30 = type metadata accessor for Logger();
  v31 = __swift_project_value_buffer(v30, static Logger.UI);
  swift_unknownObjectRetain();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  v34 = os_log_type_enabled(v32, v33);
  v300 = v12;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&aBlock = v36;
    *v35 = 136315394;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000051, 0x8000000249BDEDC0, &aBlock);
    *(v35 + 12) = 2080;
    v37 = a1;
    v38 = v31;
    v39 = [a1 displayName];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v31 = v38;
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &aBlock);

    *(v35 + 14) = v43;
    _os_log_impl(&dword_2493AC000, v32, v33, "%s [TAP] [Interaction] Validating selection of item %s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v36, -1, -1);
    MEMORY[0x24C1FE850](v35, -1, -1);
  }

  else
  {
    v37 = a1;
  }

  v44 = v313;
  v45 = *&v313[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
  v46 = [v45 sceneIdentifier];
  v314 = specialized static DOCInteractionManager.sharedManager(for:)(v46);

  v47 = MEMORY[0x277D85000];
  v48 = (*((*MEMORY[0x277D85000] & *v44) + 0xAE8))();
  if (v48)
  {
    v49 = v48;
    v50 = [v48 activeDocumentCreationIntent];

    if (v50)
    {
      v51 = [v37 displayName];
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&aBlock = v58;
        *v57 = 136315138;
        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &aBlock);

        *(v57 + 4) = v59;
        _os_log_impl(&dword_2493AC000, v55, v56, "[TAP] [Interaction] An item, '%s', was selected while there is UIP document creation in progress. Bailing out.", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x24C1FE850](v58, -1, -1);
        MEMORY[0x24C1FE850](v57, -1, -1);
      }

      else
      {
      }

      v311();
      v101 = v314;

      return result;
    }
  }

  v60 = *((*v47 & *v314) + 0x60);
  v61 = v37;
  if (v60())
  {
    swift_unknownObjectRelease();
    v62 = [v37 displayName];
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v66 = v60();
    swift_unknownObjectRetain();

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&aBlock = v70;
      *v69 = 136315394;
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &aBlock);

      *(v69 + 4) = v71;
      *(v69 + 12) = 2080;
      *&v321 = v66;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd, &_sSo7DOCNode_pSgMR);
      v72 = String.init<A>(describing:)();
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, &aBlock);

      *(v69 + 14) = v74;
      _os_log_impl(&dword_2493AC000, v67, v68, "[TAP] [Interaction] An item, '%s', was selected while another is trying to be opened: '%s'. Bailing out.", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v70, -1, -1);
      MEMORY[0x24C1FE850](v69, -1, -1);

      v75 = swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    goto LABEL_70;
  }

  v292 = v45;
  ObjectType = swift_getObjectType();
  if (([v61 isTrashed] & 1) != 0 || ((*((*MEMORY[0x277D85000] & *v44) + 0xA50))(&v321), v328 = v323, v329 = v324, v330 = v325, aBlock = v321, v327 = v322, outlined destroy of DOCItemCollectionConfiguration(&aBlock), BYTE1(v328) == 1))
  {
    if (([v61 isFolder] & 1) == 0)
    {
      v117 = *((*MEMORY[0x277D85000] & *v44) + 0xBD8);
      if (v117() != 3 || v117() == 3 && ((*((*MEMORY[0x277D85000] & *v44) + 0x1280))() & 1) != 0)
      {
        swift_unknownObjectRetain();
        v118 = Logger.logObject.getter();
        v119 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          *&aBlock = v121;
          *v120 = 136315138;
          v122 = [v61 displayName];
          v123 = v61;
          v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v126 = v125;

          v127 = v124;
          v61 = v123;
          v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v126, &aBlock);

          *(v120 + 4) = v128;
          _os_log_impl(&dword_2493AC000, v118, v119, "[TAP] [Interaction] A trashed item, '%s', was selected, alerting the user it can't be opened. Bailing out.", v120, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v121);
          MEMORY[0x24C1FE850](v121, -1, -1);
          v129 = v120;
          v44 = v313;
          MEMORY[0x24C1FE850](v129, -1, -1);
        }

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
        v130 = static OS_dispatch_queue.main.getter();
        v131 = swift_allocObject();
        *(v131 + 16) = v61;
        *(v131 + 24) = v44;
        *&v328 = partial apply for closure #1 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:);
        *(&v328 + 1) = v131;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v327 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        *(&v327 + 1) = &block_descriptor_249_0;
        v132 = v44;
        v133 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();
        v134 = v132;

        v135 = v303;
        static DispatchQoS.unspecified.getter();
        *&aBlock = MEMORY[0x277D84F90];
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
        v136 = v305;
        v137 = v308;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x24C1FB9A0](0, v135, v136, v133);
        _Block_release(v133);

        (v307)[1](v136, v137);
        v75 = (v304)[1](v135, v306);
        goto LABEL_70;
      }
    }
  }

  v307 = ObjectType;
  v77 = DOCNode.fpfs_syncFetchFPItem()();
  v78 = MEMORY[0x277D85000];
  if (!v77)
  {
    swift_unknownObjectRetain();
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *&aBlock = v82;
      *v81 = 136315138;
      *&v321 = v61;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      v83 = String.init<A>(describing:)();
      v85 = v31;
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &aBlock);

      *(v81 + 4) = v86;
      v31 = v85;
      _os_log_impl(&dword_2493AC000, v79, v80, "[TAP] [Interaction] Couldn't get FPItem from node for '%s. Continuing", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v82);
      v87 = v82;
      v44 = v313;
      MEMORY[0x24C1FE850](v87, -1, -1);
      v88 = v81;
      v78 = MEMORY[0x277D85000];
      MEMORY[0x24C1FE850](v88, -1, -1);
    }
  }

  v291[1] = v31;
  v89 = *((*v78 & *v44) + 0xBD8);
  if (v89() != 3 || ((*((*v78 & *v44) + 0x1280))() & 1) != 0)
  {
    if ((specialized DOCInteractionManager.alertIfNodeCanNotBeDownloaded(_:configuration:alertPresenting:)(v61, v292, v44) & 1) == 0)
    {
      swift_unknownObjectRetain();
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *&aBlock = v94;
        *v93 = 136315138;
        v146 = [v61 displayName];
        v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v149 = v148;

        v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v149, &aBlock);

        *(v93 + 4) = v150;
        v100 = "[TAP] [Interaction] An non-downloaded item, '%s', was selected, but cannot be downloaded.";
        goto LABEL_52;
      }

LABEL_53:

LABEL_70:
      (v311)(v75);

      return result;
    }

    if (v77 && [v77 doc_isCollaborationInvitation])
    {
      v90 = FPItem.openInvitationIfPossible()();
      swift_unknownObjectRetain();
      v91 = Logger.logObject.getter();
      if (!v90)
      {
        v92 = static os_log_type_t.error.getter();
        swift_unknownObjectRelease();
        if (!os_log_type_enabled(v91, v92))
        {
          goto LABEL_53;
        }

        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *&aBlock = v94;
        *v93 = 136315138;
        v196 = [v61 displayName];
        v197 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v199 = v198;

        v200 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v197, v199, &aBlock);

        *(v93 + 4) = v200;
        v100 = "TAP] [Interaction] Could not open invitation for %s";
        goto LABEL_52;
      }

      v92 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *&aBlock = v94;
        *v93 = 136315138;
        v95 = [v61 displayName];
        v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v98 = v97;

        v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, &aBlock);

        *(v93 + 4) = v99;
        v100 = "[TAP] [Interaction] Opened invitation link for %s";
LABEL_52:
        _os_log_impl(&dword_2493AC000, v91, v92, v100, v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v94);
        MEMORY[0x24C1FE850](v94, -1, -1);
        MEMORY[0x24C1FE850](v93, -1, -1);
        goto LABEL_53;
      }

      goto LABEL_53;
    }
  }

  v304 = v77;
  v308 = v61;
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    *v105 = 0;
    _os_log_impl(&dword_2493AC000, v103, v104, "[TAP] [Interaction] Clearing the last selected Item", v105, 2u);
    v106 = v105;
    v78 = MEMORY[0x277D85000];
    MEMORY[0x24C1FE850](v106, -1, -1);
  }

  (*((*v78 & *v314) + 0x80))(0);
  v305 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v306 = swift_allocObject();
  v107 = swift_unknownObjectWeakInit();
  v108 = v44;
  v291[0] = (*((*v78 & *v44) + 0xE8))(v107);
  v109 = v292;
  LODWORD(v303) = [v292 useSharedQuickLook];
  v110 = v89();
  (*((*v78 & *v108) + 0xA50))(&v321);
  v328 = v323;
  v329 = v324;
  v330 = v325;
  aBlock = v321;
  v327 = v322;
  v111 = *(&v322 + 1);
  v112 = *(&v322 + 1);
  v113 = outlined destroy of DOCItemCollectionConfiguration(&aBlock);
  v114 = *((*v78 & *v108) + 0x1280);
  v115 = (v114)(v113);
  if (v310 & 1) != 0 && ([v109 useSharedQuickLook])
  {
    v116 = 1;
  }

  else
  {
    v116 = [v109 skipDownload];
  }

  *&v316 = v291[0];
  *(&v316 + 1) = partial apply for closure #2 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:);
  *&v317 = v305;
  *(&v317 + 1) = partial apply for closure #3 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:);
  *&v318 = v306;
  LODWORD(v310) = v310 & 1;
  BYTE8(v318) = v310;
  BYTE9(v318) = v303;
  BYTE10(v318) = v110 == 3;
  *&v319 = v111;
  BYTE8(v319) = v115 & 1;
  BYTE9(v319) = v116;
  v320 = v313;
  v335 = v313;
  v331 = v316;
  v332 = v317;
  v333 = v318;
  v334 = v319;
  v138 = v313;

  v140 = (v89)(v139);
  v313 = v138;
  if (v140 == 3 && (v114() & 1) == 0)
  {
    v145 = 0;
    v142 = v308;
    v144 = v304;
  }

  else
  {
    v141 = [v292 shouldOpenInApp];
    v142 = v308;
    if (v141)
    {
      v143 = [v308 isFolder];
      v144 = v304;
      if (v143)
      {
        v145 = 0;
      }

      else
      {
        v145 = [v142 isExternalDownloadPlaceholder] ^ 1;
      }
    }

    else
    {
      v145 = 0;
      v144 = v304;
    }
  }

  swift_unknownObjectRetain();
  v151 = Logger.logObject.getter();
  v152 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v155 = v142;
    v156 = v154;
    v315[0] = v154;
    *v153 = 136315394;
    v157 = [v155 displayName];
    v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v160 = v159;

    v161 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v160, v315);

    *(v153 + 4) = v161;
    *(v153 + 12) = 1024;
    *(v153 + 14) = v145;
    _os_log_impl(&dword_2493AC000, v151, v152, "[TAP] [Interaction] An item, '%s', was selected. Attempting to open it? %{BOOL}d", v153, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v156);
    MEMORY[0x24C1FE850](v156, -1, -1);
    MEMORY[0x24C1FE850](v153, -1, -1);
  }

  if (!v145)
  {

    v186 = v308;
    swift_unknownObjectRetain();
    v187 = Logger.logObject.getter();
    v188 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v187, v188))
    {
      v189 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v315[0] = v190;
      *v189 = 136315138;
      v191 = [v186 displayName];
      v192 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v194 = v193;

      v195 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v192, v194, v315);

      *(v189 + 4) = v195;
      v186 = v308;
      _os_log_impl(&dword_2493AC000, v187, v188, "[TAP] [Interaction] Not trying to open: %s with LaunchUtils", v189, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v190);
      MEMORY[0x24C1FE850](v190, -1, -1);
      MEMORY[0x24C1FE850](v189, -1, -1);
    }

    specialized DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(v186, &v331, v314, v307);
    v75 = outlined destroy of DOCInteractionManagerContext(&v316);
    goto LABEL_70;
  }

  v162 = v308;
  swift_unknownObjectRetain();
  v163 = Logger.logObject.getter();
  v164 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v163, v164))
  {
    v165 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    v315[0] = v166;
    *v165 = 136315138;
    v167 = [v308 displayName];
    v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v170 = v169;

    v171 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v170, v315);

    *(v165 + 4) = v171;
    _os_log_impl(&dword_2493AC000, v163, v164, "[TAP] [Interaction] Should Try to Open with LaunchUtils: %s", v165, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v166);
    v162 = v308;
    MEMORY[0x24C1FE850](v166, -1, -1);
    MEMORY[0x24C1FE850](v165, -1, -1);
  }

  v172 = *((*MEMORY[0x277D85000] & *v314) + 0x68);
  v173 = (*MEMORY[0x277D85000] & *v314) + 104;
  v307 = v144;
  v303 = v172;
  v291[0] = v173;
  (v172)(v144);
  swift_unknownObjectRetain();
  v174 = Logger.logObject.getter();
  v175 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v174, v175))
  {
    v176 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    v315[0] = v177;
    *v176 = 136315138;
    v178 = [v162 displayName];
    v179 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v181 = v180;

    v182 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v181, v315);

    *(v176 + 4) = v182;
    _os_log_impl(&dword_2493AC000, v174, v175, "[TAP] [Interaction] Keeping track of last opened item in 'validateItemSelectionAndPerformDidPickIfNeeded()': %s", v176, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v177);
    MEMORY[0x24C1FE850](v177, -1, -1);
    MEMORY[0x24C1FE850](v176, -1, -1);
  }

  v183 = v309;
  if ([v292 forPickingDocuments])
  {
    if (v144)
    {
      v184 = v307;
      v185 = v295;
      Date.init()();
      FPItem.setLastOpenDate(_:delay:)(v185, 3.0);

      (*(v296 + 8))(v185, v297);
    }

    else
    {
      v201 = v308;
      swift_unknownObjectRetain();
      v202 = Logger.logObject.getter();
      v203 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v202, v203))
      {
        v204 = swift_slowAlloc();
        v205 = swift_slowAlloc();
        v315[0] = v205;
        *v204 = 136315138;
        v206 = [v201 displayName];
        v207 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v209 = v208;

        v210 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v207, v209, v315);
        v183 = v309;

        *(v204 + 4) = v210;
        _os_log_impl(&dword_2493AC000, v202, v203, "[TAP] [Interaction] Could not bump last opened date because node: %s does not have an assocaited FPItem", v204, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v205);
        MEMORY[0x24C1FE850](v205, -1, -1);
        MEMORY[0x24C1FE850](v204, -1, -1);
      }
    }
  }

  v211 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v212 = swift_allocObject();
  v213 = v331;
  *(v212 + 72) = v332;
  v214 = v334;
  *(v212 + 88) = v333;
  *(v212 + 104) = v214;
  v215 = v308;
  *(v212 + 16) = v211;
  *(v212 + 24) = v215;
  v216 = v311;
  v217 = v312;
  *(v212 + 32) = v314;
  *(v212 + 40) = v216;
  *(v212 + 48) = v217;
  *(v212 + 120) = v335;
  *(v212 + 56) = v213;
  *(v212 + 128) = v310;
  swift_unknownObjectRetain();

  v218 = v314;
  outlined init with copy of DOCInteractionManagerContext(&v316, v315);
  v219 = [v215 nodeURL];
  if (v219)
  {
    v313 = v218;
    v314 = v211;
    v220 = v219;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRetain();
    v221 = Logger.logObject.getter();
    v222 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v221, v222))
    {
      v223 = swift_slowAlloc();
      v224 = swift_slowAlloc();
      v315[0] = v224;
      *v223 = 136315138;
      v225 = [v215 displayName];
      v226 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v228 = v227;

      v229 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v226, v228, v315);

      *(v223 + 4) = v229;
      v183 = v309;
      __swift_destroy_boxed_opaque_existential_0(v224);
      MEMORY[0x24C1FE850](v224, -1, -1);
      MEMORY[0x24C1FE850](v223, -1, -1);
    }

    v230 = v300;
    v231 = v301;
    v232 = v302;
    v233 = *(v300 + 16);
    v233(v302, v183, v301);
    (*(v230 + 56))(v232, 0, 1, v231);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v235 = v299;
    v304 = Strong;
    if (Strong)
    {
      outlined init with copy of DOCGridLayout.Spec?(v232, v299, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if ((*(v230 + 48))(v235, 1, v231) != 1)
      {
        v264 = v230;
        v303 = *(v230 + 32);
        v265 = v298;
        (v303)(v298, v235, v231);
        v266 = swift_allocObject();
        v299 = v266;
        swift_unknownObjectWeakInit();
        v267 = v294;
        v233(v294, v265, v231);
        v268 = (*(v264 + 80) + 56) & ~*(v264 + 80);
        v269 = (v293 + v268 + 7) & 0xFFFFFFFFFFFFFFF8;
        v270 = swift_allocObject();
        v271 = v231;
        v272 = v308;
        v270[2] = v266;
        v270[3] = v272;
        v274 = v312;
        v273 = v313;
        v275 = v311;
        v270[4] = v313;
        v270[5] = v275;
        v270[6] = v274;
        (v303)(v270 + v268, v267, v271);
        v276 = v270 + v269;
        v277 = v334;
        *(v276 + 2) = v333;
        *(v276 + 3) = v277;
        *(v276 + 8) = v335;
        v278 = v332;
        *v276 = v331;
        *(v276 + 1) = v278;
        v276[72] = v310;
        swift_unknownObjectRetain();

        v279 = v273;
        outlined init with copy of DOCInteractionManagerContext(&v316, v315);

        DOCRunInMainThread(_:)();

        outlined destroy of DOCInteractionManagerContext(&v316);

        v280 = v301;
        v281 = *(v300 + 8);
        v281(v298, v301);
        outlined destroy of CharacterSet?(v302, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v281(v309, v280);

        return result;
      }

      outlined destroy of CharacterSet?(v235, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v236 = v308;
      swift_unknownObjectRetain();
      v237 = Logger.logObject.getter();
      v238 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v237, v238))
      {
        v239 = swift_slowAlloc();
        v310 = swift_slowAlloc();
        v315[0] = v310;
        *v239 = 136315138;
        v240 = [v236 displayName];
        v241 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v243 = v242;

        v244 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v241, v243, v315);
        v183 = v309;

        *(v239 + 4) = v244;
        _os_log_impl(&dword_2493AC000, v237, v238, "[TAP] [Interaction] Clearing lastOpenedNode Got a nil url from fetchURL for item: %s but no error.", v239, 0xCu);
        v245 = v310;
        __swift_destroy_boxed_opaque_existential_0(v310);
        MEMORY[0x24C1FE850](v245, -1, -1);
        v246 = v239;
        v232 = v302;
        MEMORY[0x24C1FE850](v246, -1, -1);
      }

      v247 = v313;
      v248 = (v303)(0);
      (v311)(v248);
    }

    else
    {
    }

    outlined destroy of DOCInteractionManagerContext(&v316);

    outlined destroy of CharacterSet?(v232, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v230 + 8))(v183, v231);

    return result;
  }

  swift_unknownObjectRetain();
  v249 = Logger.logObject.getter();
  if (v304)
  {
    v250 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v249, v250))
    {
      v251 = swift_slowAlloc();
      v313 = v218;
      v252 = v251;
      v253 = swift_slowAlloc();
      v315[0] = v253;
      *v252 = 136315138;
      v254 = [v215 displayName];
      v255 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v257 = v256;

      v258 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v255, v257, v315);

      *(v252 + 4) = v258;
      __swift_destroy_boxed_opaque_existential_0(v253);
      MEMORY[0x24C1FE850](v253, -1, -1);
      v259 = v252;
      v218 = v313;
      MEMORY[0x24C1FE850](v259, -1, -1);
    }

    v260 = [objc_opt_self() defaultManager];
    v261 = swift_allocObject();
    v261[2] = v215;
    v261[3] = partial apply for closure #4 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:);
    v261[4] = v212;
    v315[4] = partial apply for closure #5 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:);
    v315[5] = v261;
    v315[0] = MEMORY[0x277D85DD0];
    v315[1] = 1107296256;
    v315[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v315[3] = &block_descriptor_239;
    v262 = _Block_copy(v315);
    swift_unknownObjectRetain();

    v263 = v307;
    [v260 fetchURLForItem:v307 completionHandler:v262];

    outlined destroy of DOCInteractionManagerContext(&v316);

    _Block_release(v262);
  }

  else
  {
    v282 = static os_log_type_t.fault.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v249, v282))
    {
      v283 = swift_slowAlloc();
      v313 = v218;
      v284 = v283;
      v285 = swift_slowAlloc();
      v315[0] = v285;
      *v284 = 136315138;
      v286 = [v215 displayName];
      v287 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v289 = v288;

      v290 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v287, v289, v315);

      *(v284 + 4) = v290;
      __swift_destroy_boxed_opaque_existential_0(v285);
      MEMORY[0x24C1FE850](v285, -1, -1);
      MEMORY[0x24C1FE850](v284, -1, -1);
    }

    else
    {
    }

    outlined destroy of DOCInteractionManagerContext(&v316);
  }

  return result;
}

void closure #1 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)(void *a1, uint64_t a2)
{
  v2 = [a1 displayName];
  if (!v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = MEMORY[0x24C1FAD20](v3);

    v2 = v4;
  }

  v5 = v2;
  DOCAlertUserTrashedFileCanNotBeOpened();
}

void closure #2 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  if (!a1)
  {

    return;
  }

  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *Strong) + 0xCB8);
  v7 = a1;
  v8 = v6();
  Available = specialized Array<A>.fpfs_syncFetchAvailableFPItems()(v8);

  v36 = Available;

  v10 = specialized Collection<>.firstIndex(of:)(v7, Available);
  v12 = v11;

  if (v12)
  {
    v14 = v7;
    MEMORY[0x24C1FB090]();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_12:
    v17 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration;
    v18 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
    v10 = v4;
    if (![v18 useSharedQuickLook] || (objc_msgSend(v7, sel_isFolder) & 1) != 0)
    {

LABEL_15:

      return;
    }

    v19 = *&v4[v17];

    v20 = [v19 sceneIdentifier];
    if (!v20)
    {
      if (one-time initialization token for Source != -1)
      {
        swift_once();
      }

      v30 = static DOCLog.Source;
      v31 = static os_log_type_t.debug.getter();
      os_log(_:dso:log:type:_:)("Scene Identifier was nil. This may not be not be a problem. Reproduce and investigate if it is ok.", 98, 2, &dword_2493AC000, v30, v31, MEMORY[0x277D84F90]);

      goto LABEL_15;
    }

    v21 = one-time initialization token for mapTable;
    v15 = v20;
    if (v21 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

  if (!(v36 >> 62))
  {
    v15 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 >= v10)
    {
      goto LABEL_10;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v15 = __CocoaSet.count.getter();
  if (v15 < v10)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v10 & 0x8000000000000000) == 0)
  {
    v16 = v7;
    specialized Array.replaceSubrange<A>(_:with:)(v10, v10, v16);

    goto LABEL_12;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  v32 = v15;
  swift_once();
  v15 = v32;
LABEL_19:
  v22 = static DOCPreviewController.mapTable;
  v23 = v15;
  v24 = [v22 objectForKey_];
  if (!v24)
  {
    v25 = objc_allocWithZone(type metadata accessor for DOCPreviewController(0));
    v24 = DOCPreviewController.init()();
    [v22 setObject:v24 forKey:v23];
  }

  if (v36 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
    v26 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v26 = v36;
  }

  v33 = v26;
  v34 = 0;
  v35 = 0;
  v27 = specialized Collection<>.firstIndex(of:)(v7, v36);
  v29 = v28;

  (*((*v5 & *v24) + 0x1C8))(&v33, v27, v29 & 1);

  outlined consume of DOCPreviewSource?(v33, v34, v35);
}

void closure #3 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v23[-v7 - 8];
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    outlined init with copy of DOCGridLayout.Spec?(a2, v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      outlined destroy of CharacterSet?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
      (*(v10 + 32))(v13, v8, v9);
      if (a1)
      {
        v16 = *((*MEMORY[0x277D85000] & *v15) + 0xA90);
        v17 = a1;
        v18 = v16(v23);
        v20 = v19;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *v20;
        *v20 = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v13, isUniquelyReferenced_nonNull_native, &v22);
        *v20 = v22;
        v18(v23, 0);

        (*(v10 + 8))(v13, v9);
      }

      else
      {
        (*(v10 + 8))(v13, v9);
      }
    }
  }
}

double closure #4 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v71 = a5;
  v72 = a7;
  v68 = a4;
  v69 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v65 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v20 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v65 - v23;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v26 = a2;
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.UI);
      v28 = a2;
      v29 = v68;
      swift_unknownObjectRetain();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v74[0] = v33;
        *v32 = 136315394;
        v34 = [v29 displayName];
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v74);

        *(v32 + 4) = v38;
        *(v32 + 12) = 2080;
        v73 = a2;
        v39 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v40 = String.init<A>(describing:)();
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v74);

        *(v32 + 14) = v42;
        _os_log_impl(&dword_2493AC000, v30, v31, "[TAP] [Interaction] Clearing lastOpenedNode: Got a nil url from fetchURL for item %s. error %s. Bailing out.", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v33, -1, -1);
        MEMORY[0x24C1FE850](v32, -1, -1);
      }

      v43 = (*((*MEMORY[0x277D85000] & *v71) + 0x68))(0);
      v69(v43);
    }

    else
    {
      outlined init with copy of DOCGridLayout.Spec?(a1, v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if ((*(v17 + 48))(v15, 1, v16) == 1)
      {
        outlined destroy of CharacterSet?(v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        __swift_project_value_buffer(v44, static Logger.UI);
        v45 = v68;
        swift_unknownObjectRetain();
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v74[0] = v49;
          *v48 = 136315138;
          v50 = [v45 displayName];
          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v52;

          v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v74);

          *(v48 + 4) = v54;
          _os_log_impl(&dword_2493AC000, v46, v47, "[TAP] [Interaction] Clearing lastOpenedNode Got a nil url from fetchURL for item: %s but no error.", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v49);
          MEMORY[0x24C1FE850](v49, -1, -1);
          MEMORY[0x24C1FE850](v48, -1, -1);
        }

        v55 = (*((*MEMORY[0x277D85000] & *v71) + 0x68))(0);
        v69(v55);
      }

      else
      {
        v67 = a9;
        v66 = *(v17 + 32);
        v66(v24, v15, v16);
        v56 = swift_allocObject();
        v65 = v56;
        swift_unknownObjectWeakInit();
        (*(v17 + 16))(v20, v24, v16);
        v57 = (*(v17 + 80) + 56) & ~*(v17 + 80);
        v58 = swift_allocObject();
        *(v58 + 2) = v56;
        v59 = v71;
        *(v58 + 3) = v68;
        *(v58 + 4) = v59;
        v60 = v72;
        *(v58 + 5) = v69;
        *(v58 + 6) = v60;
        v66(&v58[v57], v20, v16);
        v61 = &v58[(v18 + v57 + 7) & 0xFFFFFFFFFFFFFFF8];
        v62 = *(a8 + 48);
        *(v61 + 2) = *(a8 + 32);
        *(v61 + 3) = v62;
        *(v61 + 8) = *(a8 + 64);
        v63 = *(a8 + 16);
        *v61 = *a8;
        *(v61 + 1) = v63;
        v61[72] = v67 & 1;
        swift_unknownObjectRetain();

        v64 = v71;

        outlined init with copy of DOCInteractionManagerContext(a8, v74);
        DOCRunInMainThread(_:)();

        (*(v17 + 8))(v24, v16);
      }
    }
  }

  return result;
}

uint64_t closure #1 in closure #4 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, __int128 *a7, char a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v62 = a8;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.UI);
    swift_unknownObjectRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    v64 = a6;
    if (os_log_type_enabled(v18, v19))
    {
      v60 = a3;
      v20 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v65[0] = v58;
      *v20 = 136315138;
      v21 = a5;
      v22 = [a2 displayName];
      v59 = a4;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v16;
      v26 = v25;

      a5 = v21;
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v26, v65);
      v16 = v24;

      *(v20 + 4) = v27;
      a4 = v59;
      _os_log_impl(&dword_2493AC000, v18, v19, "[TAP] [Interaction] tryOpeningInDefaultApp for: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x24C1FE850](v58, -1, -1);
      v28 = v20;
      a3 = v60;
      MEMORY[0x24C1FE850](v28, -1, -1);
    }

    v61 = [objc_opt_self() supportsQuickLookInsteadOfOpen_];
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    v31 = *a7;
    *(v30 + 56) = a7[1];
    v32 = a7[3];
    *(v30 + 72) = a7[2];
    *(v30 + 88) = v32;
    *(v30 + 16) = v29;
    *(v30 + 24) = a3;
    *(v30 + 32) = a2;
    *(v30 + 104) = *(a7 + 8);
    *(v30 + 40) = v31;
    *(v30 + 112) = v62 & 1;
    *(v30 + 120) = a4;
    *(v30 + 128) = a5;
    swift_unknownObjectRetain_n();

    v33 = a3;
    outlined init with copy of DOCInteractionManagerContext(a7, v65);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v65[0] = v63;
      *v36 = 136315394;
      *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000062, 0x8000000249BDBBD0, v65);
      *(v36 + 12) = 2080;
      v37 = v16;
      v38 = [a2 description];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v65);

      *(v36 + 14) = v42;
      v16 = v37;
      _os_log_impl(&dword_2493AC000, v34, v35, "%s node is non-nil trying to open with node first: %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v63, -1, -1);
      MEMORY[0x24C1FE850](v36, -1, -1);
    }

    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    specialized _tryOpeningInDefaultApp #1 (_:node:preferQuickLook:) in static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)(v64, a2, v61, 1, v16, partial apply for closure #1 in closure #1 in closure #4 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:), v30, ObjectType);

    return swift_unknownObjectRelease_n();
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.UI);
    swift_unknownObjectRetain();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v65[0] = v49;
      *v48 = 136315138;
      v50 = [a2 displayName];
      v51 = a4;
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55 = v52;
      a4 = v51;
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, v65);

      *(v48 + 4) = v56;
      _os_log_impl(&dword_2493AC000, v46, v47, "[TAP] [Interaction] Clearing lastOpenedNode: self is nil. item: %s. Bailing out.", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x24C1FE850](v49, -1, -1);
      MEMORY[0x24C1FE850](v48, -1, -1);
    }

    v57 = (*((*MEMORY[0x277D85000] & *a3) + 0x68))(0);
    return a4(v57);
  }
}

double closure #1 in closure #1 in closure #4 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)(char a1, uint64_t a2, void *a3, uint64_t a4, __int128 *a5, char a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v17 = swift_allocObject();
  v18 = *a5;
  *(v17 + 56) = a5[1];
  v19 = a5[3];
  *(v17 + 72) = a5[2];
  *(v17 + 88) = v19;
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a1;
  v20 = *(a5 + 8);
  *(v17 + 40) = v18;
  *(v17 + 104) = v20;
  *(v17 + 112) = v15;
  *(v17 + 120) = a6;
  *(v17 + 128) = a7;
  *(v17 + 136) = a8;
  v21 = a3;
  swift_unknownObjectRetain();
  outlined init with copy of DOCInteractionManagerContext(a5, &v23);

  DOCRunInMainThread(_:)();

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #4 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)(void *a1, void *a2, char a3, __int128 *a4, void *a5, int a6, uint64_t (*a7)(void), uint64_t a8)
{
  v160 = a8;
  LODWORD(v158) = a6;
  v157 = a4;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v148 = *(v13 - 8);
  v149 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v146 = &v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for DispatchQoS();
  v145 = *(v147 - 8);
  MEMORY[0x28223BE20](v147, v16);
  v144 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchTime();
  v19 = *(v18 - 8);
  v154 = v18;
  v155 = v19;
  MEMORY[0x28223BE20](v18, v20);
  v143 = &v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v153 = &v140 - v24;
  v25 = type metadata accessor for Date();
  v151 = *(v25 - 8);
  v152 = v25;
  v27 = MEMORY[0x28223BE20](v25, v26);
  v150 = &v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *((*MEMORY[0x277D85000] & *a1) + 0x68);
  v156 = a1;
  v29(0, v27);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = __swift_project_value_buffer(v30, static Logger.UI);
  swift_unknownObjectRetain();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v159 = a5;
    v35 = v34;
    v141 = swift_slowAlloc();
    *&aBlock = v141;
    *v35 = 136315138;
    v36 = [a2 displayName];
    v142 = v31;
    v37 = v36;
    v38 = a3;
    v39 = a2;
    v40 = a7;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = v41;
    a7 = v40;
    a2 = v39;
    a3 = v38;
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v43, &aBlock);

    *(v35 + 4) = v45;
    v46 = v141;
    __swift_destroy_boxed_opaque_existential_0(v141);
    MEMORY[0x24C1FE850](v46, -1, -1);
    a5 = v159;
    MEMORY[0x24C1FE850](v35, -1, -1);
  }

  swift_unknownObjectRetain();
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  v49 = os_log_type_enabled(v47, v48);
  if ((a3 & 1) == 0)
  {
    if (v49)
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&aBlock = v79;
      *v78 = 136315138;
      v80 = [a2 displayName];
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;

      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, &aBlock);

      *(v78 + 4) = v84;
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x24C1FE850](v79, -1, -1);
      MEMORY[0x24C1FE850](v78, -1, -1);
    }

    ObjectType = swift_getObjectType();
    v87.n128_f64[0] = specialized DOCInteractionManager.prepareNodeAndOpenIfNeeded(_:context:)(a2, v157, v156, ObjectType);
    return (a7)(v86, v87);
  }

  if (v49)
  {
    v50 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    *&aBlock = v159;
    *v50 = 136315138;
    v51 = [a2 displayName];
    v52 = a5;
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = a7;
    v55 = a2;
    v57 = v56;

    v58 = v53;
    a5 = v52;
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v57, &aBlock);
    a2 = v55;
    a7 = v54;

    *(v50 + 4) = v59;
    v60 = v159;
    __swift_destroy_boxed_opaque_existential_0(v159);
    MEMORY[0x24C1FE850](v60, -1, -1);
    MEMORY[0x24C1FE850](v50, -1, -1);
  }

  v61 = MEMORY[0x277D85000];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v63 = Strong;
    (*((*v61 & *Strong) + 0xA50))(&v162);

    v169 = v164;
    v170 = v165;
    v171 = v166;
    aBlock = v162;
    v168 = v163;
    v64 = *(&v163 + 1);
    v65 = *(&v163 + 1);
    outlined destroy of DOCItemCollectionConfiguration(&aBlock);
    if (v64)
    {
      v66 = [v65 fileProviderItem];

      if (v66)
      {
        swift_beginAccess();
        v67 = swift_unknownObjectWeakLoadStrong();
        if (v67)
        {
          v68 = v67;
          v69 = *(v67 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);

          v70 = [v69 hostIdentifier];
          if (!v70)
          {
            v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v70 = MEMORY[0x24C1FAD20](v71);
          }

          if (one-time initialization token for sharedManager != -1)
          {
            swift_once();
          }

          v159 = static DOCSmartFolderManager.sharedManager;
          v72 = v66;
          v73 = v150;
          Date.init()();
          v74 = objc_allocWithZone(MEMORY[0x277D05ED0]);
          isa = Date._bridgeToObjectiveC()().super.isa;
          v76 = [v74 initWithAppBundleIdentifier:v70 folderItem:v72 type:0 lastUsedDate:isa frecency:1.0];

          v77 = (*(v151 + 8))(v73, v152);
          DOCSmartFolderManager.register(event:)(v76, v77);
        }

        else
        {
        }
      }
    }
  }

  swift_beginAccess();
  v86 = swift_unknownObjectWeakLoadStrong();
  if (!v86)
  {
LABEL_29:
    if (v158)
    {
      swift_beginAccess();
      v116 = swift_unknownObjectWeakLoadStrong();
      if (v116 && (v117 = v116, v118 = *(v116 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration), v117, v119 = [v118 sceneIdentifier], v118, v119))
      {
        v120 = one-time initialization token for mapTable;
        v121 = v119;
        if (v120 != -1)
        {
          v139 = v121;
          swift_once();
          v121 = v139;
        }

        v122 = static DOCPreviewController.mapTable;
        v123 = v121;
        v124 = [v122 objectForKey_];
        if (!v124)
        {
          v125 = objc_allocWithZone(type metadata accessor for DOCPreviewController(0));
          v124 = DOCPreviewController.init()();
          [v122 setObject:v124 forKey:v123];
        }

        v126 = [v124 presentingViewController];
        if (v126)
        {

          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          v158 = static OS_dispatch_queue.main.getter();
          v127 = v143;
          static DispatchTime.now()();
          + infix(_:_:)();
          v128 = *(v155 + 8);
          v155 += 8;
          v159 = v128;
          (v128)(v127, v154);
          v129 = swift_allocObject();
          swift_unknownObjectWeakInit();
          *&v169 = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #4 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:);
          *(&v169 + 1) = v129;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v168 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          *(&v168 + 1) = &block_descriptor_1106;
          v130 = _Block_copy(&aBlock);

          v131 = v144;
          static DispatchQoS.unspecified.getter();
          *&aBlock = MEMORY[0x277D84F90];
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
          v132 = v146;
          v133 = v149;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v134 = v153;
          v135 = v158;
          MEMORY[0x24C1FB940](v153, v131, v132, v130);
          _Block_release(v130);

          (*(v148 + 8))(v132, v133);
          (*(v145 + 8))(v131, v147);
          v86 = (v159)(v134, v154);
        }

        else
        {
        }
      }

      else
      {
        if (one-time initialization token for Source != -1)
        {
          swift_once();
        }

        v136 = static DOCLog.Source;
        v137 = static os_log_type_t.debug.getter();
        v86 = os_log(_:dso:log:type:_:)("Scene Identifier was nil. This may not be not be a problem. Reproduce and investigate if it is ok.", 98, 2, &dword_2493AC000, v136, v137, MEMORY[0x277D84F90]);
      }
    }

    return (a7)(v86, v87);
  }

  v88 = v86;
  v159 = a5;
  v157 = a7;
  v89 = *(v86 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA0290;
  *(inited + 32) = a2;
  swift_unknownObjectRetain();
  v91 = v89;
  DOCAnalyticsActionEvent.FileProvider.init(nodes:)(inited);
  v92 = v161[42];
  v93 = objc_opt_self();
  v94 = [v93 mainBundle];

  v95 = (*((*v61 & *v88) + 0xA68))();
  v96 = [v95 identifier];

  v97 = DOCAnalyticsActionEvent.Source.init(sourceIdentifier:)(v96);
  v98 = v161[1];
  v99 = (*((*v61 & *v88) + 0xBD8))(v97);
  if (v99 < 4)
  {
    LODWORD(v156) = v98;
    LODWORD(v152) = 0x3020201u >> (8 * v99);
    v100 = [v93 mainBundle];
    v101 = [v100 bundleIdentifier];

    v102 = v92;
    if (v101)
    {
      v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v105 = v104;
    }

    else
    {
      v103 = 0;
      v105 = 0;
    }

    v106 = v91;
    DOCAnalyticsActionEvent.Client.init(configuration:bundleIdentifier:)(v106, v103, v105, &aBlock);
    v107 = aBlock;
    v108 = v106;
    DOCAnalyticsActionEvent.SortMode.init(configuration:)(v108, &v162);
    v109 = v162;
    v110 = v108;
    DOCAnalyticsActionEvent.SortOrder.init(configuration:)(v110, v161);
    v111 = v161[0];
    v112 = [v110 hostIdentifier];
    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v114;

    *&v162 = 0xD000000000000032;
    *(&v162 + 1) = 0x8000000249BCDC20;
    *&v163 = v113;
    *(&v163 + 1) = v115;
    LOBYTE(v164) = 2;
    BYTE1(v164) = v107;
    BYTE2(v164) = v102;
    BYTE3(v164) = v156;
    BYTE4(v164) = v152;
    BYTE5(v164) = v109;
    BYTE6(v164) = v111;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    specialized DOCAnalyticsManager.sendEvent(_:)(&v162, static DOCAnalyticsManager.shared);

    v86 = outlined destroy of DOCAnalyticsActionEvent(&v162);
    a7 = v157;
    goto LABEL_29;
  }

  *&aBlock = v99;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void closure #1 in closure #1 in closure #1 in closure #1 in closure #4 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong dismissViewControllerAnimated:0 completion:0];
  }
}

uint64_t closure #5 in DOCItemCollectionViewController.validateNodeSelectionAndPerformDidPickIfNeeded(_:isCommittingPreview:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void, void))
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.UI);
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v11 = 136315138;
    v12 = [a3 displayName];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = a4;
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v16, &v20);
    a4 = v14;

    *(v11 + 4) = v17;
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x24C1FE850](v19, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  return a4(a1, a2);
}

Swift::Void __swiftcall DOCItemCollectionViewController.wantsToCreateNewFile()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
  if (v1)
  {
    DOCItemCollectionViewController.getCurrentLocation()(OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
    v3 = v2;
    (*((*MEMORY[0x277D85000] & *v1) + 0x110))();
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.wantsToCreateNewFolder()()
{
  v1 = v0;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2493AC000, v3, v4, "received request to create new folder", v5, 2u);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x1550);

  v6(0, 1);
}

Swift::String *DOCItemCollectionViewController.viewOptionsViewModel.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___viewOptionsViewModel;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___viewOptionsViewModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___viewOptionsViewModel);
  }

  else
  {
    v2 = DOCItemCollectionViewController.loadViewOptionsModel(isInPopover:)(2);
    *(v0 + v1) = v2;
  }

  return v2;
}

Swift::String *DOCItemCollectionViewController.loadViewOptionsModel(isInPopover:)(int a1)
{
  v2 = v1;
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v86 = *(v3 - 8);
  v87 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v84 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v85 = &v74 - v9;
  v10 = [v1 traitCollection];
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  UITraitCollection.subscript.getter();

  v82 = v91;
  v11 = [v2 traitCollection];
  UITraitCollection.subscript.getter();

  v81 = v92;
  v12 = objc_opt_self();
  v13 = [v12 viewOptionsSizeSetting];
  v14 = [v13 isEnabled];

  if (v14)
  {
    v15 = &outlined read-only object #0 of DOCItemCollectionViewController.loadViewOptionsModel(isInPopover:);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = [v2 traitCollection];
  UITraitCollection.subscript.getter();

  v17 = v90;
  v18 = [v12 viewOptionsResizableIcon];
  v19 = [v18 isEnabled];

  if (v19 && !v17 || (v20 = [v12 viewOptionsResizableList], v21 = objc_msgSend(v20, sel_isEnabled), v20, v21) && (v17 - 1) <= 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = MEMORY[0x277D84F90];
      if (v14)
      {
        v36 = &outlined read-only object #0 of DOCItemCollectionViewController.loadViewOptionsModel(isInPopover:);
      }

      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v15);
    }

    v23 = *(v15 + 2);
    v22 = *(v15 + 3);
    if (v23 >= v22 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v15);
    }

    *(v15 + 2) = v23 + 1;
    v15[v23 + 32] = 2;
  }

  DOCItemCollectionViewController.updateFilenameExtensionVisibilityIfNeeded()();
  v24 = MEMORY[0x277D85000];
  v25 = *((*MEMORY[0x277D85000] & *v2) + 0x1160);
  v25(&v90);
  v26 = v90;
  v27 = v91;
  v28 = outlined consume of DOCItemSortDescriptor?(v90, v91, v92);
  (v25)(&v90, v28);
  v29 = v90;
  v30 = v91;
  v31 = v92;
  if (!v91)
  {
    goto LABEL_23;
  }

  v32.n128_f64[0] = outlined consume of DOCItemSortDescriptor?(v29, v30, v31);
  if (v30 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_15;
    }

LABEL_23:
    v79 = 0;
    goto LABEL_24;
  }

  result = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_15:
  if ((v30 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x24C1FC540](0, v30, v32);
  }

  else
  {
    if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_35;
    }

    v34 = *(v30 + 32);
  }

  v35 = v34;
  v79 = [v34 ascending];

LABEL_24:
  v78 = v26;
  outlined consume of DOCItemSortDescriptor?(v29, v30, v31);
  v75 = DOCItemCollectionViewController.getAvailableGroupingBehaviors(shouldInsertNoneOption:)(1);
  v37 = (*((*v24 & *v2) + 0xCE8))(&v89);
  v76 = v89;
  v38 = (*((*v24 & *v2) + 0xA68))(v37);
  v74 = (*((*v24 & *v38) + 0x1D0))();

  v77 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isShowingAllFilenameExtensions);
  v80 = (*((*v24 & *v2) + 0xD18))();
  type metadata accessor for DOCViewOptionsViewModel(0);
  v39 = swift_allocObject();
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v40 = result;
  v93._object = 0x8000000249BE0C60;
  v41._countAndFlagsBits = 0x74704F2077656956;
  v41._object = 0xEC000000736E6F69;
  v93._countAndFlagsBits = 0xD000000000000025;
  v42.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v42.value._object = 0xEB00000000656C62;
  v43._countAndFlagsBits = 0x74704F2077656956;
  v43._object = 0xEC000000736E6F69;
  v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, v42, v40, v43, v93);

  v39[1] = v44;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v45 = result;
  v94._object = 0x8000000249BE0C90;
  v46._countAndFlagsBits = 0x79422070756F7247;
  v94._countAndFlagsBits = 0xD00000000000003CLL;
  v46._object = 0xE800000000000000;
  v47.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v47.value._object = 0xEB00000000656C62;
  v48._countAndFlagsBits = 0x79422070756F7247;
  v48._object = 0xE800000000000000;
  v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v47, v45, v48, v94);

  v39[2] = v49;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v50 = result;
  v95._object = 0x8000000249BE0CD0;
  v51._countAndFlagsBits = 0x79422074726F53;
  v95._countAndFlagsBits = 0xD00000000000003BLL;
  v51._object = 0xE700000000000000;
  v52.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v52.value._object = 0xEB00000000656C62;
  v53._countAndFlagsBits = 0x79422074726F53;
  v53._object = 0xE700000000000000;
  v54 = NSLocalizedString(_:tableName:bundle:value:comment:)(v51, v52, v50, v53, v95);

  v39[3] = v54;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v55 = result;
  v96._object = 0x8000000249BE0D30;
  v56._object = 0x8000000249BE0D10;
  v57._object = 0x8000000249BE0D10;
  v96._countAndFlagsBits = 0xD000000000000042;
  v56._countAndFlagsBits = 0xD000000000000012;
  v58.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v58.value._object = 0xEB00000000656C62;
  v57._countAndFlagsBits = 0xD000000000000012;
  v59 = NSLocalizedString(_:tableName:bundle:value:comment:)(v56, v58, v55, v57, v96);

  v39[4] = v59;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_39:
    __break(1u);
    return result;
  }

  v60 = result;
  if (v27)
  {
    v61 = v78;
  }

  else
  {
    v61 = 5;
  }

  v97._object = 0x8000000249BE0DA0;
  v62._countAndFlagsBits = 0xD00000000000001CLL;
  v62._object = 0x8000000249BE0D80;
  v63._countAndFlagsBits = 0xD00000000000001CLL;
  v63._object = 0x8000000249BE0D80;
  v97._countAndFlagsBits = 0xD00000000000004ELL;
  v64.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v64.value._object = 0xEB00000000656C62;
  v65 = NSLocalizedString(_:tableName:bundle:value:comment:)(v62, v64, v60, v63, v97);

  v39[5] = v65;
  v66 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel__isInPopover;
  LOBYTE(v90) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
  Published.init(initialValue:)();
  *(&v39->_object + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate) = 0;
  swift_unknownObjectWeakInit();
  v67 = v74;
  *(&v39->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_groupingBehaviors) = v75;
  *(&v39->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_sortModes) = v67;
  *(&v39->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_sizeSettings) = v15;
  swift_beginAccess();
  LOBYTE(v88) = v76;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v88) = v61;
  Published.init(initialValue:)();
  swift_endAccess();
  *(&v39->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_selectedSortOrderAscending) = v79;
  swift_beginAccess();
  LOBYTE(v88) = v82;
  Published.init(initialValue:)();
  swift_endAccess();
  *&v68 = v81;
  swift_beginAccess();
  v88 = v68;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v88) = v77;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd, &_s7Combine9PublishedVySbSgGMR);
  (*(*(v69 - 8) + 8))(v39 + v66, v69);
  LOBYTE(v88) = v83;
  Published.init(initialValue:)();
  swift_endAccess();
  *(&v39->_countAndFlagsBits + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_availableSections) = &outlined read-only object #1 of DOCItemCollectionViewController.loadViewOptionsModel(isInPopover:);
  v88 = v80;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v70 = v85;
  Published.projectedValue.getter();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher<>.assign(to:)();
  v72 = v86;
  v71 = v87;
  (*(v86 + 16))(v84, v70, v87);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  (*(v72 + 8))(v70, v71);

  v73 = v39 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCViewOptionsViewModel_forwardingDelegate;
  swift_beginAccess();
  *(v73 + 1) = &protocol witness table for DOCItemCollectionViewController;
  swift_unknownObjectWeakAssign();
  return v39;
}