double closure #1 in DOCRenameViewController.didChooseName(_:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;
  v10[5] = a4;
  v10[6] = a5;

  v11 = a1;

  v12 = a5;
  DOCRunInMainThread(_:)();

  return result;
}

uint64_t closure #1 in closure #1 in DOCRenameViewController.didChooseName(_:completion:)(void (*a1)(BOOL, __n128), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v14 = *(v25 - 8);
  v16.n128_f64[0] = MEMORY[0x28223BE20](v25, v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(a3 == 0, v16);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v19 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in DOCRenameViewController.didChooseName(_:completion:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_333_0;
  v21 = _Block_copy(aBlock);

  v22 = a5;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v18, v13, v21);
  _Block_release(v21);

  (*(v10 + 8))(v13, v9);
  return (*(v14 + 8))(v18, v25);
}

uint64_t closure #1 in closure #1 in closure #1 in DOCRenameViewController.didChooseName(_:completion:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_transitionProxy);
    v5 = Strong;
    swift_unknownObjectRetain();

    if (v4)
    {
      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_249BA0290;
      *(v6 + 32) = a2;
      v7 = a2;
      DOCTransitionable.reveal(nodes:completionBlock:)(v6, DOCGridLayout.specIconWidth.modify, 0);

      swift_unknownObjectRelease();
    }
  }

  if (one-time initialization token for sharedManager != -1)
  {
    swift_once();
  }

  return (*((*MEMORY[0x277D85000] & *static DOCSmartFolderManager.sharedManager) + 0xA0))();
}

id DOCInsetTextField.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t), SEL *a3)
{
  v6.receiver = v3;
  v6.super_class = a2(a1);
  return objc_msgSendSuper2(&v6, *a3);
}

void (*DOCCreateFolderViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables29DOCCreateFolderViewController_delegate;
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

char *DOCCreateFolderViewController.init(creatingFolderInParentItem:suggestedName:transitionProxy:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = specialized DOCCreateFolderViewController.init(creatingFolderInParentItem:suggestedName:transitionProxy:)(a1, a2, a3, a4);

  return v5;
}

void DOCRenameViewController.init(coder:)(uint64_t a1, void *a2, uint64_t a3)
{
  *(v3 + *a2 + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void @objc DOCRenameViewController.init(coder:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  *(a1 + *a4 + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void DOCCreateFolderViewController.didChooseName(newDisplayName:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;

  v10 = *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables29DOCCreateFolderViewController_parentItem);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a3;
  v12[4] = a4;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = a1;
  *(v13 + 32) = a2;
  *(v13 + 40) = 0;
  v14 = type metadata accessor for DOCBlockOperation();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCBlockOperation_block];
  *v16 = partial apply for closure #1 in FPItemManager.createNewFolder(parentItem:folderName:bounce:isForAppIntents:alertPresenting:completion:);
  v16[1] = v13;
  v33.receiver = v15;
  v33.super_class = v14;

  v17 = v10;

  v18 = objc_msgSendSuper2(&v33, sel_init);
  v19 = objc_allocWithZone(type metadata accessor for DOCCreateNewFolderPostflightUIOperation());
  v20 = &v19[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCCreateNewFolderPostflightUIOperation_folderName];
  *v20 = a1;
  *(v20 + 1) = a2;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v32.receiver = v19;
  v32.super_class = type metadata accessor for DOCActionUIOperation();

  v21 = objc_msgSendSuper2(&v32, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_249BA1010;
  *(v22 + 32) = v18;
  *(v22 + 40) = v21;
  v23 = objc_allocWithZone(type metadata accessor for DOCChainOperation());
  v24 = v18;
  v25 = v21;
  v26 = DOCChainOperation.init(operations:)(v22);
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for closure #1 in DOCCreateFolderViewController.didChooseName(newDisplayName:completion:);
  *(v27 + 24) = v12;
  v28 = MEMORY[0x277D85000];
  v29 = *((*MEMORY[0x277D85000] & *v26) + 0xB0);

  v29(partial apply for closure #2 in FPItemManager.createNewFolder(parentItem:folderName:bounce:isForAppIntents:alertPresenting:completion:), v27);
  v31 = 1;
  (*((*v28 & *v26) + 0x150))(&v31);
  v30 = [objc_opt_self() mainQueue];
  [v30 addOperation_];
}

uint64_t closure #1 in DOCCreateFolderViewController.didChooseName(newDisplayName:completion:)(void *a1, uint64_t a2, uint64_t (*a3)(BOOL, uint64_t))
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = Strong + OBJC_IVAR____TtC26DocumentManagerExecutables29DOCCreateFolderViewController_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 8);
        ObjectType = swift_getObjectType();
        (*(v8 + 8))(v6, a1, ObjectType, v8);
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = a1;
      }

      if (*&v6[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_transitionProxy])
      {
        swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_249BA0290;
        *(v11 + 32) = a1;
        v12 = a1;
        swift_unknownObjectRetain();
        DOCTransitionable.reveal(nodes:completionBlock:)(v11, DOCGridLayout.specIconWidth.modify, 0);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return a3(a1 != 0, a2);
}

uint64_t DOCCreateFolderViewController.__ivar_destroyer()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables29DOCCreateFolderViewController_delegate;

  return outlined destroy of weak DOCPresentationPreheatable?(v1);
}

id DOCFilenameTransitionCoordinator.init(item:transitionProxy:)(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnail] = 0;
  v7 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnailStyle];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_sourceRect];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_group;
  *&v3[v9] = dispatch_group_create();
  v16.receiver = v3;
  v16.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v16, sel_init);
  if (a2)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v15[4] = partial apply for closure #1 in DOCFilenameTransitionCoordinator.init(item:transitionProxy:);
    v15[5] = v11;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed DOCServicePopoverTrackerProtocol?) -> ();
    v15[3] = &block_descriptor_268_0;
    v12 = _Block_copy(v15);
    v13 = v10;

    [a2 getTransitionControllerForItem:a1 completionBlock:v12];

    _Block_release(v12);
    swift_unknownObjectRelease();
  }

  else
  {
  }

  return v10;
}

void closure #1 in DOCFilenameTransitionCoordinator.init(item:transitionProxy:)(void *a1, void *a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    v7[4] = partial apply for closure #1 in closure #1 in DOCFilenameTransitionCoordinator.init(item:transitionProxy:);
    v7[5] = v4;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed UIImage?, @unowned DOCThumbnailDrawingStyle, @unowned CGRect) -> ();
    v7[3] = &block_descriptor_274;
    v5 = _Block_copy(v7);
    v6 = a2;

    [a1 getDisplayInformation:0 withCompletionBlock:v5];
    _Block_release(v5);
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed UIImage?, @unowned DOCThumbnailDrawingStyle, @unowned CGRect) -> ()(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v13 = *(a1 + 32);

  v14 = a2;
  v13(a2, a3, a4, a5, a6, a7);
}

double DOCFilenameTransitionCoordinator.animateTransition(using:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_group];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v1;
  aBlock[4] = partial apply for closure #1 in DOCFilenameTransitionCoordinator.animateTransition(using:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_142_0;
  v14 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v15 = v1;
  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v18);

  return result;
}

void closure #1 in DOCFilenameTransitionCoordinator.animateTransition(using:)(void *a1)
{
  v2 = &selRef_removeFromSuperlayer;
  v3 = [a1 viewControllerForKey_];
  if (!v3)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = v3;
  v11 = [a1 viewControllerForKey_];
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v5 topViewController];
  if (!v6)
  {
    goto LABEL_8;
  }

  v2 = v6;
  type metadata accessor for DOCFilenameViewController();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

LABEL_8:
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      goto LABEL_18;
    }

    v9 = [v8 topViewController];
    if (!v9)
    {
      goto LABEL_18;
    }

    v2 = v9;
    type metadata accessor for DOCFilenameViewController();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      DOCFilenameTransitionCoordinator.dismissFilenameViewController(_:using:)(v10, a1);
      goto LABEL_12;
    }

LABEL_17:

LABEL_18:
    __break(1u);
    return;
  }

  DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:)(v7, a1);
LABEL_12:
}

void DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v69 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v68 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a2 containerView];
  v16 = [a2 viewForKey_];
  if (v16)
  {
    v17 = v16;
    v65 = v7;
    v66 = v6;
    [v16 setAutoresizingMask_];
    [v15 bounds];
    [v17 setFrame_];
    [v17 setAlpha_];
    [v15 addSubview_];
    [v17 layoutBelowIfNeeded];
    v18 = *MEMORY[0x277D77240];
    v70 = a2;
    v19 = [a2 viewControllerForKey_];
    v64 = v11;
    if (v19 && (v20 = v19, type metadata accessor for DOCFilenameViewController(), v21 = swift_dynamicCastClass(), v20, v21))
    {
      [*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView) setAlpha_];
      v22 = 1;
    }

    else
    {
      v22 = 0;
    }

    v23 = dispatch_group_create();
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    v25 = MEMORY[0x277D85000];
    v26 = (*((*MEMORY[0x277D85000] & *a1) + 0x118))(2);
    (*((*v25 & *a1) + 0x120))(v26);
    v27 = (v3 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_sourceRect);
    v28 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_sourceRect + 32);
    v71 = v24;
    if (v28 & 1) != 0 || (v29 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnail)) == 0 || (*(v3 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnailStyle + 8))
    {
      dispatch_group_enter(v23);
      v30 = swift_allocObject();
      *(v30 + 16) = v22;
      *(v30 + 24) = 0x3FD999999999999ALL;
      *(v30 + 32) = a1;
      *(v30 + 40) = v23;
      *(v24 + 16) = partial apply for closure #2 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:);
      *(v24 + 24) = v30;
    }

    else
    {
      v52 = *v27;
      v63 = v27[1];
      v67 = v52;
      v53 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnailStyle);
      v54 = v29;
      dispatch_group_enter(v23);
      v55 = swift_allocObject();
      v56 = v70;
      *(v55 + 16) = v15;
      *(v55 + 24) = v56;
      *(v55 + 32) = 0x3FD999999999999ALL;
      *(v55 + 40) = a1;
      *(v55 + 48) = v54;
      *(v55 + 56) = v53;
      v57 = v63;
      *(v55 + 64) = v67;
      *(v55 + 80) = v57;
      *(v55 + 96) = v23;
      *(v55 + 104) = v22;
      *(v71 + 16) = partial apply for closure #1 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:);
      *(v71 + 24) = v55;
      v58 = v15;
      v24 = v71;
      swift_unknownObjectRetain();
    }

    *&v63 = v10;
    *&v67 = v15;
    v31 = a1;
    v32 = v23;
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(0, 0);
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    v62 = v33 + 16;
    dispatch_group_enter(v32);
    v61 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for DOCSafeAreaViewDidLayout != -1)
    {
      swift_once();
    }

    v60 = static NSNotificationName.DOCSafeAreaViewDidLayout;
    v34 = [v31 view];
    v35 = [objc_opt_self() mainQueue];
    v36 = swift_allocObject();
    v36[2] = v33;
    v36[3] = v24;
    v36[4] = v31;
    v36[5] = v17;
    v36[6] = 0x3FD999999999999ALL;
    v36[7] = v32;
    v77 = partial apply for closure #3 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:);
    v78 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v74 = 1107296256;
    v75 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
    v76 = &block_descriptor_157_0;
    v37 = _Block_copy(&aBlock);
    v38 = v31;
    v39 = v32;

    v59 = v17;

    v40 = v61;
    v41 = [v61 addObserverForName:v60 object:v34 queue:v35 usingBlock:v37];
    _Block_release(v37);

    swift_beginAccess();
    v62 = v33;
    *(v33 + 16) = v41;
    swift_unknownObjectRelease();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v42 = static OS_dispatch_queue.main.getter();
    v43 = swift_allocObject();
    *(v43 + 16) = v70;
    v77 = partial apply for closure #4 in DOCModalBlurViewControllerTransition.present(using:);
    v78 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v74 = 1107296256;
    v75 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v76 = &block_descriptor_163;
    v44 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v45 = v68;
    static DispatchQoS.unspecified.getter();
    v72 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v46 = v63;
    v47 = v66;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v44);

    (*(v65 + 8))(v46, v47);
    (*(v69 + 8))(v45, v64);

    if ([*(*(v38 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView) + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField) isFirstResponder])
    {
      v48 = *(v38 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_keyboardWasOnScreenInViewWillAppear);
      if ((v48 == 2 || (v48 & 1) == 0) && ![objc_opt_self() shouldMinimizeForHardwareKeyboard])
      {

        v50 = v67;
        goto LABEL_18;
      }
    }

    v49 = [v38 view];
    v50 = v67;
    if (v49)
    {
      v51 = v49;
      type metadata accessor for DOCSafeAreaView();
      swift_dynamicCastClassUnconditional();
      DOCSafeAreaView.updateLayout()();

LABEL_18:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void DOCFilenameTransitionCoordinator.dismissFilenameViewController(_:using:)(char *a1, void *a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v69 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v68 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v67 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = [a2 containerView];
  v13 = *MEMORY[0x277D77238];
  v14 = [a2 viewForKey_];
  if (v14)
  {
    v63 = v14;
    v65 = v6;
    v66 = v5;
    v15 = dispatch_group_create();
    v16 = v15;
    v17 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_sourceRect);
    v18 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_sourceRect + 32);
    v64 = v9;
    if (v18 & 1) != 0 || (v19 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnail)) == 0 || (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnailStyle + 8))
    {
      dispatch_group_enter(v15);
      v20 = objc_opt_self();
      v21 = swift_allocObject();
      *(v21 + 16) = a1;
      v76 = partial apply for closure #2 in DOCFilenameTransitionCoordinator.dismissFilenameViewController(_:using:);
      v77 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v73 = 1107296256;
      v74 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v75 = &block_descriptor_232;
      v22 = _Block_copy(&aBlock);
      v23 = a1;

      v24 = swift_allocObject();
      *(v24 + 16) = v16;
      v76 = closure #4 in DOCItemCollectionViewController.notifyContentDidLoad()partial apply;
      v77 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v73 = 1107296256;
      v74 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v75 = &block_descriptor_238_0;
      v25 = _Block_copy(&aBlock);
      v26 = v16;

      [v20 animateWithDuration:0 delay:v22 options:v25 animations:0.4 completion:0.0];
      _Block_release(v25);
      _Block_release(v22);
    }

    else
    {
      v44 = v17[2];
      v43 = v17[3];
      v46 = *v17;
      v45 = v17[1];
      v62 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnailStyle);
      v59 = v19;
      dispatch_group_enter(v16);
      v61 = objc_opt_self();
      v57 = v70;
      v60 = [a2 viewForKey_];
      v58 = [a2 viewForKey_];
      v47 = *(*&a1[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_thumbnailView);
      v48 = swift_allocObject();
      *(v48 + 16) = v16;
      v76 = partial apply for closure #4 in DOCItemCollectionViewController.notifyContentDidLoad();
      v77 = v48;
      aBlock = MEMORY[0x277D85DD0];
      v73 = 1107296256;
      v74 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v75 = &block_descriptor_262;
      v49 = _Block_copy(&aBlock);
      v50 = v59;
      v51 = v47;
      v52 = v16;

      LOWORD(v56) = 257;
      v53 = v57;
      v54 = v60;
      v55 = v58;
      [v61 performZoomTransitionInContainer:v57 withSourceView:v60 destinationView:v58 duration:v51 alterativeView:v50 thumbnail:v62 thumbnailStyle:0.48 location:v46 presenting:v45 fadingSource:v44 completion:{v43, v56, v49}];
      _Block_release(v49);
    }

    dispatch_group_enter(v16);
    v27 = objc_opt_self();
    v28 = swift_allocObject();
    *(v28 + 16) = a1;
    v76 = partial apply for closure #4 in DOCFilenameTransitionCoordinator.dismissFilenameViewController(_:using:);
    v77 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v73 = 1107296256;
    v74 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v75 = &block_descriptor_244;
    v29 = _Block_copy(&aBlock);
    v30 = a1;

    v31 = swift_allocObject();
    v32 = v63;
    v31[2] = v63;
    v31[3] = v30;
    v31[4] = v16;
    v76 = partial apply for closure #5 in DOCFilenameTransitionCoordinator.dismissFilenameViewController(_:using:);
    v77 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v73 = 1107296256;
    v74 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v75 = &block_descriptor_250;
    v33 = _Block_copy(&aBlock);
    v34 = v16;
    v35 = v30;
    v36 = v32;

    [v27 animateWithDuration:v29 animations:v33 completion:0.48];
    _Block_release(v33);
    _Block_release(v29);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v37 = static OS_dispatch_queue.main.getter();
    v38 = swift_allocObject();
    *(v38 + 16) = a2;
    v76 = partial apply for closure #2 in DOCModalBlurViewControllerTransition.dismiss(using:);
    v77 = v38;
    aBlock = MEMORY[0x277D85DD0];
    v73 = 1107296256;
    v74 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v75 = &block_descriptor_256;
    v39 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v40 = v67;
    static DispatchQoS.unspecified.getter();
    v71 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v41 = v69;
    v42 = v66;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v39);

    (*(v65 + 8))(v41, v42);
    (*(v68 + 8))(v40, v64);
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:)(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5, void *a6, char a7, double a8, double a9, double a10, double a11, double a12)
{
  v21 = objc_opt_self();
  v22 = [a2 viewForKey_];
  v23 = [a2 viewForKey_];
  v24 = *(*&a3[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_thumbnailView);
  v25 = swift_allocObject();
  *(v25 + 16) = a6;
  v42 = closure #4 in DOCItemCollectionViewController.notifyContentDidLoad()partial apply;
  v43 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v41 = &block_descriptor_172;
  v26 = _Block_copy(&aBlock);
  v27 = v24;
  v28 = a6;

  LOWORD(v34) = 256;
  [v21 performZoomTransitionInContainer:a1 withSourceView:v22 destinationView:v23 duration:v27 alterativeView:a4 thumbnail:a5 thumbnailStyle:a8 location:a9 presenting:a10 fadingSource:a11 completion:{a12, v34, v26}];
  _Block_release(v26);

  v29 = objc_opt_self();
  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  if (a7)
  {
    v42 = partial apply for closure #2 in closure #1 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:);
    v43 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v41 = &block_descriptor_184;
    v31 = _Block_copy(&aBlock);
    v32 = a3;

    [v29 animateWithDuration:0 delay:v31 options:0 animations:a8 * 0.33 completion:a8 * 0.67];
  }

  else
  {
    v42 = partial apply for closure #3 in closure #1 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:);
    v43 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v41 = &block_descriptor_178;
    v31 = _Block_copy(&aBlock);
    v33 = a3;

    [v29 animateWithDuration:0 delay:v31 options:0 animations:a8 * 0.33 completion:0.0];
  }

  _Block_release(v31);
}

void closure #2 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:)(char a1, void *a2, void *a3, double a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  if (a1)
  {
    v22 = partial apply for closure #1 in closure #2 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:);
    v23 = v9;
    v18 = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v21 = &block_descriptor_220;
    v10 = _Block_copy(&v18);
    v11 = a2;

    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    v22 = closure #4 in DOCItemCollectionViewController.notifyContentDidLoad()partial apply;
    v23 = v12;
    v18 = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v21 = &block_descriptor_226;
    v13 = _Block_copy(&v18);
    v14 = a3;

    [v8 animateWithDuration:0 delay:v10 options:v13 animations:a4 * 0.33 completion:a4 * 0.67];
  }

  else
  {
    v22 = partial apply for closure #3 in closure #2 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:);
    v23 = v9;
    v18 = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v21 = &block_descriptor_208_0;
    v10 = _Block_copy(&v18);
    v15 = a2;

    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    v22 = closure #4 in DOCItemCollectionViewController.notifyContentDidLoad()partial apply;
    v23 = v16;
    v18 = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v21 = &block_descriptor_214;
    v13 = _Block_copy(&v18);
    v17 = a3;

    [v8 animateWithDuration:0 delay:v10 options:v13 animations:a4 * 0.33 completion:0.0];
  }

  _Block_release(v13);
  _Block_release(v10);
}

void closure #3 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  swift_beginAccess();
  v13 = *(a3 + 16);
  if (v13)
  {
    v14 = objc_opt_self();
    swift_unknownObjectRetain();
    v15 = [v14 defaultCenter];
    [v15 removeObserver_];
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  *(a3 + 16) = 0;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v16 = *(a4 + 16);
  if (v16)
  {
    v17 = *(a4 + 24);

    v16(v18);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v16, v17);
  }

  v19 = [a5 navigationController];
  if (v19)
  {
    v20 = v19;
    [v19 setNavigationBarHidden:1 animated:0];
  }

  [a6 setAlpha_];
  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = a5;
  v33 = partial apply for closure #1 in closure #3 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:);
  v34 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v32 = &block_descriptor_196;
  v23 = _Block_copy(&aBlock);
  v24 = a5;

  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = a7;
  v33 = partial apply for closure #2 in closure #3 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:);
  v34 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v32 = &block_descriptor_202_1;
  v26 = _Block_copy(&aBlock);
  v27 = v24;
  v28 = a7;

  [v21 animateWithDuration:v23 animations:v26 completion:a1];
  _Block_release(v26);
  _Block_release(v23);
}

void closure #2 in DOCFilenameTransitionCoordinator.dismissFilenameViewController(_:using:)(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables10ColumnTypeOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables10ColumnTypeOGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (1)
    {
      if (!v10)
      {
        v16 = v6;
        while (1)
        {
          v6 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_51;
          }

          if (v6 >= v11)
          {
            break;
          }

          v17 = v7[v6];
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v10 = (v17 - 1) & v17;
            goto LABEL_15;
          }
        }

        v30 = 1 << *(v3 + 32);
        if (v30 >= 64)
        {
          bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v30;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        break;
      }

      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      if (v20 <= 3)
      {
        if (v20 > 1)
        {
          if (v20 == 2)
          {
            v21 = 3;
          }

          else
          {
            v21 = 4;
          }

          goto LABEL_34;
        }

        if (!v20)
        {
          v21 = 0;
          goto LABEL_34;
        }

        if (v20 == 1)
        {
          v21 = 2;
          goto LABEL_34;
        }
      }

      else
      {
        if (v20 <= 5)
        {
          if (v20 == 4)
          {
            v21 = 5;
          }

          else
          {
            v21 = 6;
          }

          goto LABEL_34;
        }

        switch(v20)
        {
          case 6:
            v21 = 7;
            goto LABEL_34;
          case 7:
            v21 = 8;
            goto LABEL_34;
          case 8:
            v21 = 9;
LABEL_34:
            MEMORY[0x24C1FCBD0](v21);
            goto LABEL_35;
        }
      }

      MEMORY[0x24C1FCBD0](1);
      String.hash(into:)();
LABEL_35:
      v22 = Hasher._finalize()();
      v23 = -1 << *(v5 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_51:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v28 = *v18;
      v29 = *(v18 + 16);
      v30 = *(v18 + 32);
      v19 = AnyHashable._rawHashValue(seed:)(*(v5 + 40));
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v28;
      *(v14 + 16) = v29;
      *(v14 + 32) = v30;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo27DOCDocumentSourceIdentifieraGMd, &_ss11_SetStorageCySo27DOCDocumentSourceIdentifieraGMR);
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8PropertyVGMd, &_ss11_SetStorageCySo8PropertyVGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryOGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (1)
    {
      if (!v10)
      {
        v16 = v6;
        while (1)
        {
          v6 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_55;
          }

          if (v6 >= v11)
          {
            break;
          }

          v17 = v7[v6];
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v10 = (v17 - 1) & v17;
            goto LABEL_15;
          }
        }

        v30 = 1 << *(v3 + 32);
        if (v30 >= 64)
        {
          bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v30;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        break;
      }

      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      if (v20 <= 4)
      {
        if (v20 > 1)
        {
          if (v20 == 2)
          {
            v21 = 2;
          }

          else if (v20 == 3)
          {
            v21 = 3;
          }

          else
          {
            v21 = 4;
          }

          goto LABEL_38;
        }

        if (!v20)
        {
          v21 = 0;
          goto LABEL_38;
        }

        if (v20 == 1)
        {
          v21 = 1;
          goto LABEL_38;
        }
      }

      else
      {
        if (v20 <= 7)
        {
          if (v20 == 5)
          {
            v21 = 5;
          }

          else if (v20 == 6)
          {
            v21 = 6;
          }

          else
          {
            v21 = 7;
          }

          goto LABEL_38;
        }

        switch(v20)
        {
          case 8:
            v21 = 8;
            goto LABEL_38;
          case 9:
            v21 = 9;
            goto LABEL_38;
          case 10:
            v21 = 11;
LABEL_38:
            MEMORY[0x24C1FCBD0](v21);
            goto LABEL_39;
        }
      }

      MEMORY[0x24C1FCBD0](10);
      String.hash(into:)();
LABEL_39:
      v22 = Hasher._finalize()();
      v23 = -1 << *(v5 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_55:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v38 = type metadata accessor for UTType();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v4);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578], MEMORY[0x277D85588]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

{
  specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo20UICollectionViewCellCGMd, &_ss11_SetStorageCySo20UICollectionViewCellCGMR);
}

{
  specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo8FPActionaGMd, &_ss11_SetStorageCySo8FPActionaGMR);
}

{
  specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo12FPProviderIDaGMd, &_ss11_SetStorageCySo12FPProviderIDaGMR);
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables22DOCHierarchyControllerC30SuspendableUIChangeCoordinatorC21VisualChangeAssertion33_97CE74CE7789F7DD42D2AD02EA0CA812LLOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables22DOCHierarchyControllerC30SuspendableUIChangeCoordinatorC21VisualChangeAssertion33_97CE74CE7789F7DD42D2AD02EA0CA812LLOGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x24C1FCBD0](v17);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo11PermissionsVADSH26DocumentManagerExecutablesyHCg_GMd, &_ss11_SetStorageCySo11PermissionsVADSH26DocumentManagerExecutablesyHCg_GMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables21DOCSidebarSectionKindOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables21DOCSidebarSectionKindOGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17DesktopServicesUI20DSLightweightTagInfoCGMd, &_ss11_SetStorageCy17DesktopServicesUI20DSLightweightTagInfoCGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for DSLightweightTagInfo();
      lazy protocol witness table accessor for type DSLightweightTagInfo and conformance DSLightweightTagInfo();
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v27;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCyScTyyts5NeverOGGMd, &_ss11_SetStorageCyScTyyts5NeverOGGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Task.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCy26DocumentManagerExecutables21DOCItemCollectionCellCGMd, "~V\t");
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables27DOCIdentityHashableLocationVGMd, &_ss11_SetStorageCy26DocumentManagerExecutables27DOCIdentityHashableLocationVGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v21 = *(v3 + 48) + 56 * (v18 | (v6 << 6));
      v22 = *v21;
      v23 = *(v21 + 48);
      v24 = *(v21 + 32);
      v35 = *(v21 + 16);
      v36 = v24;
      v37 = v23;
      v34 = v22;
      Hasher.init(_seed:)();
      __swift_project_boxed_opaque_existential_1(&v34 + 1, v36);
      dispatch thunk of Hashable.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v5 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 56 * v13;
      v15 = v34;
      v16 = v35;
      v17 = v36;
      *(v14 + 48) = v37;
      *(v14 + 16) = v16;
      *(v14 + 32) = v17;
      *v14 = v15;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero((v3 + 56), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v33;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables15DOCFilenameViewC0fG19TextFieldUpdateTypeOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables15DOCFilenameViewC0fG19TextFieldUpdateTypeOGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (1)
    {
      if (!v10)
      {
        v15 = v6;
        while (1)
        {
          v6 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_38;
          }

          if (v6 >= v11)
          {
            break;
          }

          v16 = v7[v6];
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v10 = (v16 - 1) & v16;
            goto LABEL_15;
          }
        }

        v27 = 1 << *(v3 + 32);
        if (v27 >= 64)
        {
          bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v27;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        goto LABEL_36;
      }

      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      if (v17 == 2)
      {
        v18 = 1;
        goto LABEL_21;
      }

      if (v17 == 3)
      {
        break;
      }

      if (v17 == 4)
      {
        v18 = 3;
LABEL_21:
        MEMORY[0x24C1FCBD0](v18);
        goto LABEL_23;
      }

      MEMORY[0x24C1FCBD0](0);
      Hasher._combine(_:)(v17 & 1);
LABEL_23:
      v19 = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v18 = 2;
    goto LABEL_21;
  }

LABEL_36:

  *v2 = v5;
}

{
  specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo7UITouchCGMd, &_ss11_SetStorageCySo7UITouchCGMR);
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables9USBFormatOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables9USBFormatOGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v13 = Hasher._finalize()();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables14DOCSidebarItemOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables14DOCSidebarItemOGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 48 * (v15 | (v6 << 6)));
      v28 = *v18;
      *v29 = v18[1];
      *&v29[9] = *(v18 + 25);
      Hasher.init(_seed:)();
      DOCSidebarItem.hashComparableValue.getter();
      String.hash(into:)();

      v19 = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 48 * v13);
      *v14 = v28;
      v14[1] = *v29;
      *(v14 + 25) = *&v29[9];
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo6FINodeCGMd, &_ss11_SetStorageCySo6FINodeCGMR);
}

{
  specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo6DOCTagCGMd, &_ss11_SetStorageCySo6DOCTagCGMR);
}

{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables17DOCUpdateGuardian33_CB37C9735DA83DB0F256B049CF8CC7E8LLC21UpdatesDisabledReasonOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables17DOCUpdateGuardian33_CB37C9735DA83DB0F256B049CF8CC7E8LLC21UpdatesDisabledReasonOGMR);
  v3 = static _SetStorage.resize(original:capacity:move:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v3 + 56;
    while (v9)
    {
LABEL_13:
      Hasher.init(_seed:)();
      MEMORY[0x24C1FCBD0](0);
      v14 = Hasher._finalize()();
      v15 = -1 << *(v4 + 32);
      v16 = v14 & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v11 + 8 * (v16 >> 6))) == 0)
      {
        v18 = 0;
        v19 = (63 - v15) >> 6;
        while (++v17 != v19 || (v18 & 1) == 0)
        {
          v20 = v17 == v19;
          if (v17 == v19)
          {
            v17 = 0;
          }

          v18 |= v20;
          v21 = *(v11 + 8 * v17);
          if (v21 != -1)
          {
            v12 = __clz(__rbit64(~v21)) + (v17 << 6);
            goto LABEL_7;
          }
        }

LABEL_28:
        __break(1u);
        return;
      }

      v12 = __clz(__rbit64((-1 << v16) & ~*(v11 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v9 &= v9 - 1;
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      ++*(v4 + 16);
    }

    while (1)
    {
      v13 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v13 >= v10)
      {
        break;
      }

      v9 = v6[v13];
      ++v5;
      if (v9)
      {
        v5 = v13;
        goto LABEL_13;
      }
    }

    v22 = 1 << *(v2 + 32);
    if (v22 >= 64)
    {
      bzero((v2 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v22;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables18DOCPersonSuggesterC0F033_4B0919F08E5F790AA08A839C1D7CB05FLLVGMd, &_ss11_SetStorageCy26DocumentManagerExecutables18DOCPersonSuggesterC0F033_4B0919F08E5F790AA08A839C1D7CB05FLLVGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v30 = *(v18 + 8);
      Hasher.init(_seed:)();
      v20 = MEMORY[0x24C1FAF70](v19, v30);
      MEMORY[0x24C1FCBD0](v20);
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v30;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v3;
    v30 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v20 = Hasher._finalize()();

      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v4 = v29;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void specialized _NativeSet.copy()()
{
  specialized _NativeSet.copy()(&_ss11_SetStorageCy26DocumentManagerExecutables10ColumnTypeOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables10ColumnTypeOGMR, outlined copy of ColumnType);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        outlined init with copy of AnyHashable(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  specialized _NativeSet.copy()(&_ss11_SetStorageCySo27DOCDocumentSourceIdentifieraGMd, &_ss11_SetStorageCySo27DOCDocumentSourceIdentifieraGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8PropertyVGMd, &_ss11_SetStorageCySo8PropertyVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  specialized _NativeSet.copy()(&_ss11_SetStorageCy26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryOGMR, outlined copy of DOCItemFileTypeGroupCategory);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    v10 = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || v10 >= v11 + 8 * v12)
    {
      memmove(v10, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    v25 = v3 + 16;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
      (*(v3 + 32))(*(v9 + 48) + v21, v6, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }
}

{
  specialized _NativeSet.copy()(&_ss11_SetStorageCySo20UICollectionViewCellCGMd, &_ss11_SetStorageCySo20UICollectionViewCellCGMR);
}

{
  specialized _NativeSet.copy()(&_ss11_SetStorageCySo8FPActionaGMd, &_ss11_SetStorageCySo8FPActionaGMR);
}

{
  specialized _NativeSet.copy()(&_ss11_SetStorageCySo12FPProviderIDaGMd, &_ss11_SetStorageCySo12FPProviderIDaGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables22DOCHierarchyControllerC30SuspendableUIChangeCoordinatorC21VisualChangeAssertion33_97CE74CE7789F7DD42D2AD02EA0CA812LLOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables22DOCHierarchyControllerC30SuspendableUIChangeCoordinatorC21VisualChangeAssertion33_97CE74CE7789F7DD42D2AD02EA0CA812LLOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo11PermissionsVADSH26DocumentManagerExecutablesyHCg_GMd, &_ss11_SetStorageCySo11PermissionsVADSH26DocumentManagerExecutablesyHCg_GMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  specialized _NativeSet.copy()(&_ss11_SetStorageCy26DocumentManagerExecutables21DOCSidebarSectionKindOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables21DOCSidebarSectionKindOGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17DesktopServicesUI20DSLightweightTagInfoCGMd, &_ss11_SetStorageCy17DesktopServicesUI20DSLightweightTagInfoCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCyScTyyts5NeverOGGMd, &_ss11_SetStorageCyScTyyts5NeverOGGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  specialized _NativeSet.copy()(&_ss11_SetStorageCy26DocumentManagerExecutables21DOCItemCollectionCellCGMd, "~V\t");
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables27DOCIdentityHashableLocationVGMd, &_ss11_SetStorageCy26DocumentManagerExecutables27DOCIdentityHashableLocationVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 56 * (v14 | (v8 << 6));
        outlined init with copy of DOCIdentityHashableLocation(*(v2 + 48) + v17, v22);
        v18 = *(v4 + 48) + v17;
        v19 = v23;
        v20 = v22[2];
        v21 = v22[1];
        *v18 = v22[0];
        *(v18 + 16) = v21;
        *(v18 + 32) = v20;
        *(v18 + 48) = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables15DOCFilenameViewC0fG19TextFieldUpdateTypeOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables15DOCFilenameViewC0fG19TextFieldUpdateTypeOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  specialized _NativeSet.copy()(&_ss11_SetStorageCySo7UITouchCGMd, &_ss11_SetStorageCySo7UITouchCGMR);
}

{
  specialized _NativeSet.copy()(&_ss11_SetStorageCy26DocumentManagerExecutables9USBFormatOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables9USBFormatOGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables14DOCSidebarItemOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables14DOCSidebarItemOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 48 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v4 + 48) + v17;
        v25 = *(v18 + 40);
        *v24 = *v18;
        *(v24 + 8) = v20;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v23;
        *(v24 + 40) = v25;
        outlined copy of DOCSidebarItem(v19, v20, v21, v22, v23, v25);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  specialized _NativeSet.copy()(&_ss11_SetStorageCySo6FINodeCGMd, &_ss11_SetStorageCySo6FINodeCGMR);
}

{
  specialized _NativeSet.copy()(&_ss11_SetStorageCySo6DOCTagCGMd, &_ss11_SetStorageCySo6DOCTagCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables17DOCUpdateGuardian33_CB37C9735DA83DB0F256B049CF8CC7E8LLC21UpdatesDisabledReasonOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables17DOCUpdateGuardian33_CB37C9735DA83DB0F256B049CF8CC7E8LLC21UpdatesDisabledReasonOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables18DOCPersonSuggesterC0F033_4B0919F08E5F790AA08A839C1D7CB05FLLVGMd, &_ss11_SetStorageCy26DocumentManagerExecutables18DOCPersonSuggesterC0F033_4B0919F08E5F790AA08A839C1D7CB05FLLVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2, void (*a3)(void, void))
{
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *v3;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 56 + 8 * v10)
    {
      memmove(v9, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = 16 * (v18 | (v12 << 6));
        v22 = *(*(v6 + 48) + v21);
        *(*(v8 + 48) + v21) = v22;
        a3(v22, *(&v22 + 1));
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }
}

void specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables10ColumnTypeOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables10ColumnTypeOGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (!*(v3 + 16))
  {

LABEL_47:
    *v2 = v5;
    return;
  }

  v6 = 0;
  v7 = 1 << *(v3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v3 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v4 + 56;
  while (v9)
  {
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_15:
    v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
    v18 = *v17;
    v19 = v17[1];
    Hasher.init(_seed:)();
    if (v19 <= 3)
    {
      if (v19 > 1)
      {
        if (v19 == 2)
        {
          v20 = 3;
        }

        else
        {
          v20 = 4;
        }

        goto LABEL_34;
      }

      if (!v19)
      {
        v20 = 0;
        goto LABEL_34;
      }

      if (v19 == 1)
      {
        v20 = 2;
        goto LABEL_34;
      }
    }

    else
    {
      if (v19 <= 5)
      {
        if (v19 == 4)
        {
          v20 = 5;
        }

        else
        {
          v20 = 6;
        }

        goto LABEL_34;
      }

      switch(v19)
      {
        case 6:
          v20 = 7;
          goto LABEL_34;
        case 7:
          v20 = 8;
          goto LABEL_34;
        case 8:
          v20 = 9;
LABEL_34:
          MEMORY[0x24C1FCBD0](v20);
          goto LABEL_35;
      }
    }

    MEMORY[0x24C1FCBD0](1);

    String.hash(into:)();
LABEL_35:
    v21 = Hasher._finalize()();
    v22 = -1 << *(v5 + 32);
    v23 = v21 & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v22) >> 6;
      while (++v24 != v26 || (v25 & 1) == 0)
      {
        v27 = v24 == v26;
        if (v24 == v26)
        {
          v24 = 0;
        }

        v25 |= v27;
        v28 = *(v11 + 8 * v24);
        if (v28 != -1)
        {
          v12 = __clz(__rbit64(~v28)) + (v24 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_49;
    }

    v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = (*(v5 + 48) + 16 * v12);
    *v13 = v18;
    v13[1] = v19;
    ++*(v5 + 16);
  }

  v15 = v6;
  while (1)
  {
    v6 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v6 >= v10)
    {

      v2 = v1;
      goto LABEL_47;
    }

    v16 = *(v3 + 56 + 8 * v6);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v9 = (v16 - 1) & v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      outlined init with copy of AnyHashable(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v27);
      v19 = AnyHashable._rawHashValue(seed:)(*(v5 + 40));
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v27[0];
      v15 = v27[1];
      *(v13 + 32) = v28;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  specialized _NativeSet.copyAndResize(capacity:)(a1, &_ss11_SetStorageCySo27DOCDocumentSourceIdentifieraGMd, &_ss11_SetStorageCySo27DOCDocumentSourceIdentifieraGMR);
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8PropertyVGMd, &_ss11_SetStorageCySo8PropertyVGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryOGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (!*(v3 + 16))
  {

LABEL_51:
    *v2 = v5;
    return;
  }

  v6 = 0;
  v7 = 1 << *(v3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v3 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v4 + 56;
  while (v9)
  {
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_15:
    v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
    v18 = *v17;
    v19 = v17[1];
    Hasher.init(_seed:)();
    if (v19 <= 4)
    {
      if (v19 > 1)
      {
        if (v19 == 2)
        {
          v20 = 2;
        }

        else if (v19 == 3)
        {
          v20 = 3;
        }

        else
        {
          v20 = 4;
        }

        goto LABEL_38;
      }

      if (!v19)
      {
        v20 = 0;
        goto LABEL_38;
      }

      if (v19 == 1)
      {
        v20 = 1;
        goto LABEL_38;
      }
    }

    else
    {
      if (v19 <= 7)
      {
        if (v19 == 5)
        {
          v20 = 5;
        }

        else if (v19 == 6)
        {
          v20 = 6;
        }

        else
        {
          v20 = 7;
        }

        goto LABEL_38;
      }

      switch(v19)
      {
        case 8:
          v20 = 8;
          goto LABEL_38;
        case 9:
          v20 = 9;
          goto LABEL_38;
        case 10:
          v20 = 11;
LABEL_38:
          MEMORY[0x24C1FCBD0](v20);
          goto LABEL_39;
      }
    }

    MEMORY[0x24C1FCBD0](10);

    String.hash(into:)();
LABEL_39:
    v21 = Hasher._finalize()();
    v22 = -1 << *(v5 + 32);
    v23 = v21 & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v22) >> 6;
      while (++v24 != v26 || (v25 & 1) == 0)
      {
        v27 = v24 == v26;
        if (v24 == v26)
        {
          v24 = 0;
        }

        v25 |= v27;
        v28 = *(v11 + 8 * v24);
        if (v28 != -1)
        {
          v12 = __clz(__rbit64(~v28)) + (v24 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_53;
    }

    v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = (*(v5 + 48) + 16 * v12);
    *v13 = v18;
    v13[1] = v19;
    ++*(v5 + 16);
  }

  v15 = v6;
  while (1)
  {
    v6 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v6 >= v10)
    {

      v2 = v1;
      goto LABEL_51;
    }

    v16 = *(v3 + 56 + 8 * v6);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v9 = (v16 - 1) & v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v35 = type metadata accessor for UTType();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  v8 = static _SetStorage.resize(original:capacity:move:)();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578], MEMORY[0x277D85588]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

{
  specialized _NativeSet.copyAndResize(capacity:)(a1, &_ss11_SetStorageCySo20UICollectionViewCellCGMd, &_ss11_SetStorageCySo20UICollectionViewCellCGMR);
}

{
  specialized _NativeSet.copyAndResize(capacity:)(a1, &_ss11_SetStorageCySo8FPActionaGMd, &_ss11_SetStorageCySo8FPActionaGMR);
}

{
  specialized _NativeSet.copyAndResize(capacity:)(a1, &_ss11_SetStorageCySo12FPProviderIDaGMd, &_ss11_SetStorageCySo12FPProviderIDaGMR);
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables22DOCHierarchyControllerC30SuspendableUIChangeCoordinatorC21VisualChangeAssertion33_97CE74CE7789F7DD42D2AD02EA0CA812LLOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables22DOCHierarchyControllerC30SuspendableUIChangeCoordinatorC21VisualChangeAssertion33_97CE74CE7789F7DD42D2AD02EA0CA812LLOGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x24C1FCBD0](v16);
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo11PermissionsVADSH26DocumentManagerExecutablesyHCg_GMd, &_ss11_SetStorageCySo11PermissionsVADSH26DocumentManagerExecutablesyHCg_GMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables21DOCSidebarSectionKindOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables21DOCSidebarSectionKindOGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17DesktopServicesUI20DSLightweightTagInfoCGMd, &_ss11_SetStorageCy17DesktopServicesUI20DSLightweightTagInfoCGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v27 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for DSLightweightTagInfo();
      lazy protocol witness table accessor for type DSLightweightTagInfo and conformance DSLightweightTagInfo();

      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
      v10 = v27;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v27 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCyScTyyts5NeverOGGMd, &_ss11_SetStorageCyScTyyts5NeverOGGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();

      Task.hash(into:)();
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  specialized _NativeSet.copyAndResize(capacity:)(a1, &_ss11_SetStorageCy26DocumentManagerExecutables21DOCItemCollectionCellCGMd, "~V\t");
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables27DOCIdentityHashableLocationVGMd, &_ss11_SetStorageCy26DocumentManagerExecutables27DOCIdentityHashableLocationVGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      outlined init with copy of DOCIdentityHashableLocation(*(v3 + 48) + 56 * (v17 | (v6 << 6)), v28);
      Hasher.init(_seed:)();
      __swift_project_boxed_opaque_existential_1(v28 + 1, v29);
      dispatch thunk of Hashable.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 56 * v12;
      v14 = v28[0];
      v15 = v28[1];
      v16 = v29;
      *(v13 + 48) = v30;
      *(v13 + 16) = v15;
      *(v13 + 32) = v16;
      *v13 = v14;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables15DOCFilenameViewC0fG19TextFieldUpdateTypeOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables15DOCFilenameViewC0fG19TextFieldUpdateTypeOGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (!*(v3 + 16))
  {

LABEL_34:
    *v2 = v5;
    return;
  }

  v6 = 0;
  v7 = 1 << *(v3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v3 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v4 + 56;
  while (v9)
  {
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_15:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    Hasher.init(_seed:)();
    switch(v16)
    {
      case 2:
        v17 = 1;
        goto LABEL_21;
      case 3:
        v17 = 2;
        goto LABEL_21;
      case 4:
        v17 = 3;
LABEL_21:
        MEMORY[0x24C1FCBD0](v17);
        goto LABEL_23;
    }

    MEMORY[0x24C1FCBD0](0);
    Hasher._combine(_:)(v16 & 1);
LABEL_23:
    v18 = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v21);
        if (v25 != -1)
        {
          v12 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_36;
    }

    v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    *(*(v5 + 48) + v12) = v16;
    ++*(v5 + 16);
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v10)
    {

      v2 = v1;
      goto LABEL_34;
    }

    v15 = *(v3 + 56 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v9 = (v15 - 1) & v15;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

{
  specialized _NativeSet.copyAndResize(capacity:)(a1, &_ss11_SetStorageCySo7UITouchCGMd, &_ss11_SetStorageCySo7UITouchCGMR);
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables9USBFormatOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables9USBFormatOGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v12 = Hasher._finalize()();
      v13 = -1 << *(v5 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables14DOCSidebarItemOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables14DOCSidebarItemOGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v19 = (*(v3 + 48) + 48 * (v16 | (v6 << 6)));
      v21 = *v19;
      v20 = v19[1];
      *(v32 + 9) = *(v19 + 25);
      v31 = v21;
      v32[0] = v20;
      Hasher.init(_seed:)();
      outlined init with copy of DOCSidebarItem(&v31, v30);
      DOCSidebarItem.hashComparableValue.getter();
      String.hash(into:)();

      v22 = Hasher._finalize()();
      v23 = -1 << *(v5 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v11 + 8 * v25);
          if (v29 != -1)
          {
            v12 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 48 * v12);
      v14 = v31;
      v15 = v32[0];
      *(v13 + 25) = *(v32 + 9);
      *v13 = v14;
      v13[1] = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  specialized _NativeSet.copyAndResize(capacity:)(a1, &_ss11_SetStorageCySo6FINodeCGMd, &_ss11_SetStorageCySo6FINodeCGMR);
}

{
  specialized _NativeSet.copyAndResize(capacity:)(a1, &_ss11_SetStorageCySo6DOCTagCGMd, &_ss11_SetStorageCySo6DOCTagCGMR);
}

{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables17DOCUpdateGuardian33_CB37C9735DA83DB0F256B049CF8CC7E8LLC21UpdatesDisabledReasonOGMd, &_ss11_SetStorageCy26DocumentManagerExecutables17DOCUpdateGuardian33_CB37C9735DA83DB0F256B049CF8CC7E8LLC21UpdatesDisabledReasonOGMR);
  v3 = static _SetStorage.resize(original:capacity:move:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
LABEL_13:
      Hasher.init(_seed:)();
      MEMORY[0x24C1FCBD0](0);
      v13 = Hasher._finalize()();
      v14 = -1 << *(v4 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v10 + 8 * (v15 >> 6))) == 0)
      {
        v17 = 0;
        v18 = (63 - v14) >> 6;
        while (++v16 != v18 || (v17 & 1) == 0)
        {
          v19 = v16 == v18;
          if (v16 == v18)
          {
            v16 = 0;
          }

          v17 |= v19;
          v20 = *(v10 + 8 * v16);
          if (v20 != -1)
          {
            v11 = __clz(__rbit64(~v20)) + (v16 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_24;
      }

      v11 = __clz(__rbit64((-1 << v15) & ~*(v10 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v8 &= v8 - 1;
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      ++*(v4 + 16);
    }

    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_22;
      }

      v8 = *(v2 + 56 + 8 * v12);
      ++v5;
      if (v8)
      {
        v5 = v12;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    *v1 = v4;
  }
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables18DOCPersonSuggesterC0F033_4B0919F08E5F790AA08A839C1D7CB05FLLVGMd, &_ss11_SetStorageCy26DocumentManagerExecutables18DOCPersonSuggesterC0F033_4B0919F08E5F790AA08A839C1D7CB05FLLVGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v31 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 24 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      Hasher.init(_seed:)();

      v22 = MEMORY[0x24C1FAF70](v19, v20);
      MEMORY[0x24C1FCBD0](v22);
      v23 = Hasher._finalize()();
      v24 = -1 << *(v5 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 24 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v3;
    v30 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v20 = v19;
      String.hash(into:)();
      v21 = Hasher._finalize()();

      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v4 = v29;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }
}

{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v28 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v7 + 40);
      v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v20 = NSObject._rawHashValue(seed:)(v18);
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v19;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v28;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }
}

uint64_t specialized Set._Variant.remove(at:)(unint64_t a1, int a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((a1 & 0x8000000000000000) != 0 || (v7 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v8 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v8 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v8 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = *v3;
  if (!v7)
  {
LABEL_10:
    v11 = isUniquelyReferenced_nonNull_native;
    specialized _NativeSet.copy()();
    isUniquelyReferenced_nonNull_native = v11;
    v8 = v12;
  }

  v9 = *(*(v8 + 48) + isUniquelyReferenced_nonNull_native);
  specialized _NativeSet._delete(at:)(isUniquelyReferenced_nonNull_native);
  *v3 = v12;
  return v9;
}

char *specialized DOC_FIRenameOperation.init(node:rawName:undoManager:shouldRegisterUndo:)(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5, _BYTE *a6)
{
  v12 = &a6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_originalRawName];
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  a6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_hideExtension] = 2;
  *&a6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_docNode] = a1;
  v13 = [swift_unknownObjectRetain() filename];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *v12 = v14;
  v12[1] = v16;

  *&a6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_undoManager] = a4;
  a6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_didRegisterUndo] = a5;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClassUnconditional();
    v18 = a1;
    v19 = a4;
    v20 = MEMORY[0x24C1FAD20](a2, a3);

    v27.receiver = a6;
    v27.super_class = type metadata accessor for DOC_FIRenameOperation();
    v21 = objc_msgSendSuper2(&v27, sel_initWithNode_rawName_, v17, v20);
  }

  else
  {
    objc_opt_self();
    v22 = swift_dynamicCastObjCClassUnconditional();
    v18 = a1;
    v19 = a4;
    v20 = MEMORY[0x24C1FAD20](a2, a3);

    v28.receiver = a6;
    v28.super_class = type metadata accessor for DOC_FIRenameOperation();
    v21 = objc_msgSendSuper2(&v28, sel_initWithItem_rawName_, v22, v20);
  }

  v23 = v21;

  if (v23)
  {

    if (v23[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_didRegisterUndo] == 1)
    {
      v24 = *&v23[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_undoManager];
      v25 = v23;
      [v24 registerUndoOperationForSender_];
    }
  }

  else
  {
  }

  return v23;
}

objc_class *specialized DOCRenameViewController.init(renamingItem:transitionProxy:initialThumbnail:)(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v56 - v15;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCRenameViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v17 = [a1 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  static UTType.folder.getter();
  LOBYTE(v17) = static UTType.== infix(_:_:)();
  v18 = *(v9 + 8);
  v18(v12, v8);
  v18(v16, v8);
  result = _DocumentManagerBundle();
  v20 = result;
  if ((v17 & 1) == 0)
  {
    if (result)
    {
      v55 = 0x8000000249BE5160;
      v21 = 0x4420656D616E6552;
      v22 = 0xEF746E656D75636FLL;
      v23 = 0x617A696C61636F4CLL;
      v24 = 0xEB00000000656C62;
      v28 = 0xD000000000000035;
      v25.super.isa = v20;
      v26 = 0;
      v27 = 0xE000000000000000;
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v55 = 0x8000000249BE51A0;
  v21 = 0x4620656D616E6552;
  v22 = 0xED00007265646C6FLL;
  v23 = 0x617A696C61636F4CLL;
  v24 = 0xEB00000000656C62;
  v25.super.isa = v20;
  v26 = 0;
  v27 = 0xE000000000000000;
  v28 = 0xD000000000000033;
LABEL_6:
  v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v21, *&v23, v25, *&v26, *&v28);

  if (a3)
  {
    if ([a3 isRepresentativeIcon])
    {
      swift_unknownObjectRetain();
    }

    else
    {
      a3 = 0;
    }
  }

  v58 = a3;
  v30 = objc_allocWithZone(type metadata accessor for DOCRenameThumbnailView());
  swift_unknownObjectRetain();
  v31 = a1;
  v32 = DOCRenameThumbnailView.init(item:initialThumbnail:maxThumbnailSize:)(a1, a3, 186.0, 186.0);
  v33 = [v31 displayName];
  if (!v33)
  {
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = MEMORY[0x24C1FAD20](v34);
  }

  v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_keyboardWasOnScreenInViewWillAppear] = 2;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing] = 0;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_visibilityState] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_transitionProxy] = a2;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_item] = a1;
  v35 = objc_allocWithZone(type metadata accessor for DOCFilenameView());
  swift_unknownObjectRetain();
  v36 = v32;
  v57 = v31;
  v37 = v36;
  v38 = DOCFilenameView.init(thumbnailView:maxThumbnailSize:)(v37, 186.0, 186.0);
  v39 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView] = v38;
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v4[v39] setAlpha_];
  v40 = *(*&v4[v39] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField);
  [v40 setText_];

  v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_contentMustBeSelected] = 0;
  v41 = type metadata accessor for DOCFilenameViewController();
  v61.receiver = v4;
  v61.super_class = v41;
  v42 = objc_msgSendSuper2(&v61, sel_initWithNibName_bundle_, 0, 0);
  v43 = MEMORY[0x24C1FAD20](v29._countAndFlagsBits, v29._object);

  [v42 setTitle_];

  v44 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView;
  [*(*&v42[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField) addTarget:v42 action:sel_editingDidEnd_ forControlEvents:0x80000];
  v45 = *(*&v42[v44] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField);
  [v45 addTarget:v42 action:sel_editingDidChange_ forControlEvents:0x20000];

  v46 = [v42 navigationItem];
  v60[3] = swift_getObjectType();
  v60[0] = v42;
  v47 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v48 = v42;
  v49 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0(v60);
  v50 = [v47 initWithBarButtonSystemItem:0 target:v49 action:sel_editingDidEnd_];
  swift_unknownObjectRelease();
  [v46 setRightBarButtonItem_];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x277D751E0);
  v51 = static UIBarButtonItem.doc_adaptableDismissButton(_:target:action:)(1, v48, sel_cancelViewController);
  [v46 setLeftBarButtonItem_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_249B9A480;
  v53 = type metadata accessor for UITraitUserInterfaceStyle();
  v54 = MEMORY[0x277D74BF0];
  *(v52 + 32) = v53;
  *(v52 + 40) = v54;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v48;
}

char *specialized DOCCreateFolderViewController.init(creatingFolderInParentItem:suggestedName:transitionProxy:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_getObjectType();
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables29DOCCreateFolderViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables29DOCCreateFolderViewController_parentItem] = a1;
  v10 = a1;
  result = _DocumentManagerBundle();
  if (result)
  {
    v12 = result;
    v39._object = 0x8000000249BE5AD0;
    v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v13.value._object = 0xEB00000000656C62;
    v14._countAndFlagsBits = 0x646C6F462077654ELL;
    v15._object = 0x8000000249BE5AB0;
    v39._countAndFlagsBits = 0xD000000000000033;
    v15._countAndFlagsBits = 0xD000000000000012;
    v14._object = 0xEA00000000007265;
    v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v13, v12, v14, v39);

    v17 = objc_allocWithZone(type metadata accessor for DOCFolderThumbnailView());
    v18 = DOCFolderThumbnailView.init(item:maxThumbnailSize:)(v10, 186.0, 186.0);
    v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_keyboardWasOnScreenInViewWillAppear] = 2;
    v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing] = 0;
    v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_visibilityState] = 0;
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_transitionProxy] = a4;
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_item] = 0;
    objc_allocWithZone(type metadata accessor for DOCFilenameView());
    swift_unknownObjectRetain();
    v19 = v18;
    v20 = DOCFilenameView.init(thumbnailView:maxThumbnailSize:)(v19, 186.0, 186.0);
    v21 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView;
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView] = v20;
    [v20 setTranslatesAutoresizingMaskIntoConstraints_];
    [*&v5[v21] setAlpha_];
    v22 = *(*&v5[v21] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField);
    v23 = MEMORY[0x24C1FAD20](a2, a3);

    [v22 setText_];

    v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_contentMustBeSelected] = 1;
    v38.receiver = v5;
    v38.super_class = type metadata accessor for DOCFilenameViewController();
    v24 = objc_msgSendSuper2(&v38, sel_initWithNibName_bundle_, 0, 0);
    v25 = MEMORY[0x24C1FAD20](v16._countAndFlagsBits, v16._object);

    [v24 setTitle_];

    v26 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView;
    [*(*&v24[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField) addTarget:v24 action:sel_editingDidEnd_ forControlEvents:0x80000];
    v27 = *(*&v24[v26] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField);
    [v27 addTarget:v24 action:sel_editingDidChange_ forControlEvents:0x20000];

    v28 = [v24 navigationItem];
    v37[3] = swift_getObjectType();
    v37[0] = v24;
    v29 = objc_allocWithZone(MEMORY[0x277D751E0]);
    v30 = v24;
    v31 = _bridgeAnythingToObjectiveC<A>(_:)();
    __swift_destroy_boxed_opaque_existential_0(v37);
    v32 = [v29 initWithBarButtonSystemItem:0 target:v31 action:sel_editingDidEnd_];
    swift_unknownObjectRelease();
    [v28 setRightBarButtonItem_];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x277D751E0);
    v33 = static UIBarButtonItem.doc_adaptableDismissButton(_:target:action:)(1, v30, sel_cancelViewController);
    [v28 setLeftBarButtonItem_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_249B9A480;
    v35 = type metadata accessor for UITraitUserInterfaceStyle();
    v36 = MEMORY[0x277D74BF0];
    *(v34 + 32) = v35;
    *(v34 + 40) = v36;
    UIViewController.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of UTType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type FilenameValidationError._ProgrammerError and conformance FilenameValidationError._ProgrammerError()
{
  result = lazy protocol witness table cache variable for type FilenameValidationError._ProgrammerError and conformance FilenameValidationError._ProgrammerError;
  if (!lazy protocol witness table cache variable for type FilenameValidationError._ProgrammerError and conformance FilenameValidationError._ProgrammerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilenameValidationError._ProgrammerError and conformance FilenameValidationError._ProgrammerError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCFilenameView.DOCFilenameViewTextFieldUpdateType and conformance DOCFilenameView.DOCFilenameViewTextFieldUpdateType()
{
  result = lazy protocol witness table cache variable for type DOCFilenameView.DOCFilenameViewTextFieldUpdateType and conformance DOCFilenameView.DOCFilenameViewTextFieldUpdateType;
  if (!lazy protocol witness table cache variable for type DOCFilenameView.DOCFilenameViewTextFieldUpdateType and conformance DOCFilenameView.DOCFilenameViewTextFieldUpdateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCFilenameView.DOCFilenameViewTextFieldUpdateType and conformance DOCFilenameView.DOCFilenameViewTextFieldUpdateType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FilenameValidationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 5)
  {
    return v8 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FilenameValidationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for FilenameValidationError(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for FilenameValidationError(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCFilenameView.DOCFilenameViewTextFieldUpdateType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for DOCFilenameView.DOCFilenameViewTextFieldUpdateType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VisibilityState and conformance VisibilityState()
{
  result = lazy protocol witness table cache variable for type VisibilityState and conformance VisibilityState;
  if (!lazy protocol witness table cache variable for type VisibilityState and conformance VisibilityState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VisibilityState and conformance VisibilityState);
  }

  return result;
}

void partial apply for closure #2 in closure #3 in DOCFilenameTransitionCoordinator.presentFilenameViewController(_:using:)()
{
  v1 = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_visibilityState) = 1;
  DOCFilenameViewController.visibilityState.didset();

  dispatch_group_leave(v1);
}

void partial apply for closure #5 in DOCFilenameTransitionCoordinator.dismissFilenameViewController(_:using:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  [*(v0 + 16) removeFromSuperview];
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_visibilityState) = 0;
  DOCFilenameViewController.visibilityState.didset();

  dispatch_group_leave(v2);
}

id specialized static DOCRenameThumbnailView.updateDecoration(on:addDecoration:)(void *a1, char a2)
{
  if (a2)
  {
    [a1 setClipsToBounds_];
    v3 = [a1 layer];
    [v3 setBorderWidth_];

    v4 = [a1 layer];
    v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.121568627];
    v6 = [v5 CGColor];

    [v4 setBorderColor_];
    [a1 bounds];
    Width = CGRectGetWidth(v13);
    [a1 bounds];
    Height = CGRectGetHeight(v14);
    if (Width > Height)
    {
      Height = Width;
    }

    v9 = Height * 6.0 * 0.0078125 + -1.0;
  }

  else
  {
    [a1 setClipsToBounds_];
    v10 = [a1 layer];
    v9 = 0.0;
    [v10 setBorderWidth_];
  }

  return [a1 _setContinuousCornerRadius_];
}

BOOL specialized DOCFilenameView.layout(for:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = DOCUsePadIdiomForTraits();
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  Width = CGRectGetWidth(v13);
  if (!v8)
  {
    return Width >= 430.0;
  }

  if (Width <= 551.0)
  {
    return 0;
  }

  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  Height = CGRectGetHeight(v14);
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  v11 = CGRectGetWidth(v15);
  if (v11 >= 1.0)
  {
    if (Height / v11 > 0.7)
    {
      return 0;
    }
  }

  else if (Height > 0.7)
  {
    return 0;
  }

  return 1;
}

id DOCFilenameTransitioningDelegate.animationController(forDismissed:)(uint64_t a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    result = [result topViewController];
    if (result)
    {
      v3 = result;
      type metadata accessor for DOCFilenameViewController();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_item);
        if (v5)
        {
          v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitioningDelegate_transitionProxy);
          objc_allocWithZone(type metadata accessor for DOCFilenameTransitionCoordinator());
          swift_unknownObjectRetain();
          v7 = DOCFilenameTransitionCoordinator.init(item:transitionProxy:)(v5, v6);
        }

        else
        {
          v7 = [objc_allocWithZone(type metadata accessor for DOCFilenameTransitionCoordinator()) init];
        }

        v8 = v7;

        return v8;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

void partial apply for closure #1 in closure #1 in DOCFilenameTransitionCoordinator.init(item:transitionProxy:)(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = *(v6 + 16);
  v13 = *(v12 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnail);
  *(v12 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnail) = a1;
  v14 = a1;

  v15 = v12 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnailStyle;
  *v15 = a2;
  *(v15 + 8) = 0;
  v16 = v12 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_sourceRect;
  *v16 = a3;
  *(v16 + 8) = a4;
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  *(v16 + 32) = 0;
}

uint64_t objectdestroy_138Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t objectdestroy_307Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t lazy protocol witness table accessor for type UTType and conformance UTType(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_317Tm()
{

  swift_unknownObjectRelease();
  outlined consume of RenameProposition(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t DOCCompositionalCandidateSource.__allocating_init(candidateSources:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = [objc_opt_self() mapTableWithKeyOptions:0 valueOptions:0];
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return v2;
}

id DOCGoToViewController.__allocating_init(currentLocation:initialCandidateSource:)(void *a1, void *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = a2[3];
  v9 = a2[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v8);
  v11 = specialized DOCGoToViewController.__allocating_init(currentLocation:initialCandidateSource:)(v7, v10, v2, v5, v8, v6, v9);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

double DOCGoToMetrics.init()@<D0>(uint64_t a1@<X8>)
{
  __asm
  {
    FMOV            V0.2D, #16.0
    FMOV            V1.2D, #12.0
  }

  *a1 = _Q0;
  *(a1 + 16) = _Q1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

objc_class *DOCGoToLocationSection.localizedName.getter(uint64_t a1)
{
  v2 = *v1;
  result = _DocumentManagerBundle();
  v4 = result;
  if (v2)
  {
    if (result)
    {
      v14 = 0x8000000249BE5B30;
      v5 = 0x617A696C61636F4CLL;
      v6 = 0xEB00000000656C62;
      v7 = 0x6E6F697461636F4CLL;
      v8 = 0xD00000000000001ELL;
      v9 = 0x8000000249BE5B10;
      v10 = 0xD000000000000039;
      v11.super.isa = v4;
      v12 = 0xE900000000000073;
LABEL_6:
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v8, *&v5, v11, *&v7, *&v10)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
  }

  else if (result)
  {
    v14 = 0x8000000249BE5B90;
    v5 = 0x617A696C61636F4CLL;
    v6 = 0xEB00000000656C62;
    v7 = 0x73746E65636552;
    v9 = 0x8000000249BE5B70;
    v10 = 0xD000000000000037;
    v8 = 0xD00000000000001CLL;
    v11.super.isa = v4;
    v12 = 0xE700000000000000;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

__n128 DOCGoToMetrics.cellLayoutMargins.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void *DOCGoToMetrics.customSymbolConfiguration.getter()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void *DOCGoToMetrics.customTextFont.getter()
{
  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

Swift::Int DOCGoToLocationSection.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

uint64_t DOCGoToViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCGoToViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCSidebarItemCell.delegate.modify;
}

double DOCGoToViewController.selectedOrFirstSuggestion.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x240);
  v5 = v4();
  (*((*v3 & *v5) + 0xE0))(&v9);

  if (v10)
  {
    outlined init with take of DOCGoToFolderCandidate(&v9, a1);
  }

  else
  {
    v7 = v4();
    v8 = (*((*v3 & *v7) + 0xB0))();

    if (*(v8 + 16))
    {
      outlined init with copy of DOCSidebarItemIconProvider(v8 + 32, a1);
    }

    else
    {

      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  return result;
}

void DOCGoToViewController.currentGoToLocation.didset(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_currentGoToLocation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v2 + v4, v15, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd, _s26DocumentManagerExecutables15DOCGoToLocation_pSgMR);
  v5 = v16;
  v6 = outlined destroy of CharacterSet?(v15, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd, _s26DocumentManagerExecutables15DOCGoToLocation_pSgMR);
  if (!v5 || !*(a1 + 24))
  {
    goto LABEL_6;
  }

  outlined init with copy of DOCGridLayout.Spec?(a1, v15, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd, _s26DocumentManagerExecutables15DOCGoToLocation_pSgMR);
  v7 = v16;
  if (v16)
  {
    v8 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    outlined init with copy of DOCGridLayout.Spec?(v2 + v4, v14, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd, _s26DocumentManagerExecutables15DOCGoToLocation_pSgMR);
    if (v14[3])
    {
      v9 = (*(v8 + 16))(v14, v7, v8);
      __swift_destroy_boxed_opaque_existential_0(v14);
      v6 = __swift_destroy_boxed_opaque_existential_0(v15);
      if (v9)
      {
LABEL_7:
        v12 = DOCGoToViewController.goButton.getter();
        outlined init with copy of DOCGridLayout.Spec?(v2 + v4, v15, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd, _s26DocumentManagerExecutables15DOCGoToLocation_pSgMR);
        v13 = v16 == 0;
        outlined destroy of CharacterSet?(v15, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd, _s26DocumentManagerExecutables15DOCGoToLocation_pSgMR);
        [v12 setHidden_];

        return;
      }

LABEL_6:
      v10 = MEMORY[0x277D85000];
      v11 = (*((*MEMORY[0x277D85000] & *v2) + 0x240))(v6);
      (*((*v10 & *v11) + 0xB8))(MEMORY[0x277D84F90]);

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *closure #1 in DOCGoToViewController.inputField.getter(void *a1)
{
  type metadata accessor for DOCGoToTextField();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = _DocumentManagerBundle();
  if (result)
  {
    v4 = result;
    v15._object = 0x8000000249BE6130;
    v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v5.value._object = 0xEB00000000656C62;
    v6._countAndFlagsBits = 0x6F46206F74206F47;
    v6._object = 0xAFA680E27265646CLL;
    v7._object = 0x8000000249BE6110;
    v15._countAndFlagsBits = 0xD000000000000027;
    v7._countAndFlagsBits = 0xD00000000000001ALL;
    v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v5, v4, v6, v15);

    v9 = MEMORY[0x24C1FAD20](v8._countAndFlagsBits, v8._object);

    [v2 setPlaceholder_];

    [v2 addTarget:a1 action:sel_inputTextFieldDidChange_ forControlEvents:0x20000];
    v10 = v2;
    LODWORD(v11) = 1148846080;
    [v10 setContentCompressionResistancePriority:1 forAxis:v11];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];

    [v10 setAdjustsFontForContentSizeCategory_];
    [v10 setClearButtonMode_];
    [v10 setReturnKeyType_];
    v12 = *((*MEMORY[0x277D85000] & *v10) + 0x78);
    v13 = v10;
    v14 = a1;
    v12(a1, &protocol witness table for DOCGoToViewController);

    [v13 setDelegate_];
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id closure #1 in DOCGoToViewController.goButton.getter()
{
  v0 = type metadata accessor for UIButton.Configuration();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v26 - v7;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v26 - v11;
  v13 = objc_opt_self();

  static UIButton.Configuration.borderless()();
  closure #1 in closure #1 in DOCGoToViewController.goButton.getter();
  if (_UISolariumEnabled())
  {
    v14 = objc_opt_self();
    v15 = [v14 tintColor];
    v16 = [v14 _doc_safeTintColor_];

    UIButton.Configuration.baseForegroundColor.setter();
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIButton, 0x277D75220);
  v17 = *(v1 + 16);
  v17(v8, v12, v0);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17(v4, v8, v0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
  v19 = swift_allocObject();
  *(v19 + 16) = partial apply for closure #3 in closure #1 in DOCGoToViewController.goButton.getter;
  *(v19 + 24) = v18;
  swift_retain_n();
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v20 = UIButton.init(configuration:primaryAction:)();

  v21 = *(v1 + 8);
  v21(v8, v0);

  v22 = v20;
  LODWORD(v23) = 1144750080;
  [v22 setContentHuggingPriority:0 forAxis:v23];
  LODWORD(v24) = 1144750080;
  [v22 setContentHuggingPriority:1 forAxis:v24];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  [v22 setHidden_];

  [v22 setPointerInteractionEnabled_];
  UIButton.pointerStyleProvider.setter();
  v21(v12, v0);
  return v22;
}

void closure #1 in closure #1 in DOCGoToViewController.goButton.getter()
{
  v0 = *MEMORY[0x277D76988];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithTextStyle_];
  v3 = [v1 configurationWithWeight_];
  v4 = [v2 configurationByApplyingConfiguration_];

  v7 = v4;
  v5 = MEMORY[0x24C1FAD20](0xD000000000000019, 0x8000000249BE60F0);
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v7];

  UIButton.Configuration.image.setter();
  UIButton.Configuration.contentInsets.setter();
}

void closure #3 in closure #1 in DOCGoToViewController.goButton.getter(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x290))();
  }
}

uint64_t closure #4 in closure #1 in DOCGoToViewController.goButton.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit14UIPointerShapeOSgMd, ":<\t");
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v14 - v4;
  v6 = type metadata accessor for UIPointerEffect();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [objc_allocWithZone(MEMORY[0x277D75B90]) initWithView_];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPointerStyle, 0x277D75890);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D74B00], v6);
  v12 = type metadata accessor for UIPointerShape();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  return UIPointerStyle.init(effect:shape:)();
}

id DOCGoToViewController.topView.getter(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) init];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id DOCGoToViewController.noResultsView.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___noResultsView;
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___noResultsView);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___noResultsView);
  }

  else
  {
    closure #1 in DOCGoToViewController.noResultsView.getter(a1);
    v5 = *(v1 + v2);
    *(v1 + v2) = v6;
    v4 = v6;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

void closure #1 in DOCGoToViewController.noResultsView.getter(uint64_t a1)
{
  v1 = _DocumentManagerBundle();
  if (v1)
  {
    v2 = v1;
    v11._object = 0x8000000249BE60B0;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v4._object = 0x8000000249BE6090;
    v5._object = 0x8000000249BE6090;
    v11._countAndFlagsBits = 0xD00000000000003ALL;
    v4._countAndFlagsBits = 0xD000000000000013;
    v5._countAndFlagsBits = 0xD000000000000013;
    v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v11);

    v7 = objc_allocWithZone(type metadata accessor for DOCGoToNoResultsView());
    v8 = MEMORY[0x24C1FAD20](v6._countAndFlagsBits, v6._object);
    v9 = [v7 initWithFrame:v8 title:0 style:{0.0, 0.0, 0.0, 0.0}];

    if (v9)
    {

      v10 = v9;
      [v10 setTranslatesAutoresizingMaskIntoConstraints_];
      [v10 setUserInteractionEnabled_];
      [v10 setHidden_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id DOCGoToViewController.inputField.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

char *closure #1 in DOCGoToViewController.suggestionsTableViewController.getter(char *a1)
{
  [a1 loadViewIfNeeded];
  v2 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 80];
  v57 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 64];
  v58 = v2;
  v59 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 96];
  v3 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 16];
  v53 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics];
  v54 = v3;
  v4 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 48];
  v55 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 32];
  v56 = v4;
  v5 = type metadata accessor for DOCGoToSuggestionsViewController();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_suggestionsTableViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = MEMORY[0x277D84F90];
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_suggestions] = MEMORY[0x277D84F90];
  v6[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_isFiltering] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_sections] = v7;
  v8 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_metrics];
  v9 = v53;
  v10 = v55;
  v8[1] = v54;
  v8[2] = v10;
  *v8 = v9;
  v11 = v56;
  v12 = v57;
  v13 = v59;
  v8[5] = v58;
  v8[6] = v13;
  v8[3] = v11;
  v8[4] = v12;
  v14 = objc_allocWithZone(MEMORY[0x277D75300]);
  outlined init with copy of DOCGoToMetrics(&v53, &v52);
  v15 = [v14 init];
  v51.receiver = v6;
  v51.super_class = v5;
  v16 = objc_msgSendSuper2(&v51, sel_initWithCollectionViewLayout_, v15);

  result = [v16 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v18 = result;
  v19 = *((*MEMORY[0x277D85000] & *v16) + 0xA0);
  v20 = swift_unknownObjectRetain();
  v19(v20, &protocol witness table for DOCGoToViewController);
  result = [v16 collectionView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v21 = result;
  v52 = result;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v23 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_scrollViewDidScrollObservation];
  *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_scrollViewDidScrollObservation] = v22;

  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v24 = [objc_opt_self() clearColor];
  [v18 setBackgroundColor_];

  v25 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_contentView;
  result = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_contentView];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [result addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_249BAD7D0;
  result = [a1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v27 = result;
  v28 = [result widthAnchor];

  v29 = [v18 widthAnchor];
  v30 = [v28 constraintGreaterThanOrEqualToAnchor:v29 multiplier:1.0];

  *(v26 + 32) = v30;
  result = [a1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v31 = result;
  v32 = [result bottomAnchor];

  v33 = [v18 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v26 + 40) = v34;
  v35 = [v18 centerXAnchor];
  result = [a1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v36 = result;
  v37 = [result centerXAnchor];

  v38 = [v35 constraintEqualToAnchor_];
  *(v26 + 48) = v38;
  v39 = [v18 leadingAnchor];
  result = *&a1[v25];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v40 = [result leadingAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v26 + 56) = v41;
  v42 = [v18 trailingAnchor];
  result = *&a1[v25];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v43 = [result trailingAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v26 + 64) = v44;
  result = [v18 bottomAnchor];
  v45 = *&a1[v25];
  if (v45)
  {
    v46 = result;
    v47 = objc_opt_self();
    v48 = [v45 bottomAnchor];
    v49 = [v46 constraintEqualToAnchor_];

    *(v26 + 72) = v49;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v47 activateConstraints_];

    return v16;
  }

LABEL_19:
  __break(1u);
  return result;
}

void closure #1 in closure #1 in DOCGoToViewController.suggestionsTableViewController.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    DOCGoToViewController.updateSeparatorVisibility()();
  }
}

void DOCGoToViewController.suggestionsTableViewController.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___suggestionsTableViewController);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___suggestionsTableViewController) = a1;
}

void (*DOCGoToViewController.suggestionsTableViewController.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCGoToViewController.suggestionsTableViewController.getter();
  return DOCGoToViewController.suggestionsTableViewController.modify;
}

void DOCGoToViewController.suggestionsTableViewController.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___suggestionsTableViewController);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___suggestionsTableViewController) = v2;
}

id DOCGoToViewController.init(currentLocation:initialCandidateSource:)(void *a1, void *a2)
{
  v3 = v2;
  v7 = a1[3];
  v6 = a1[4];
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v9 = MEMORY[0x28223BE20](v8, v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v16 = MEMORY[0x28223BE20](v15, v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = specialized DOCGoToViewController.init(currentLocation:initialCandidateSource:)(v11, v18, v3, v7, v13, v6, v14);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v20;
}

uint64_t DOCGoToViewController.metrics.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 80);
  v13 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 96);
  v4 = v15;
  v5 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 16);
  v10[0] = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics);
  v10[1] = v5;
  v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 48);
  v11 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[5] = v3;
  a1[6] = v4;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  return outlined init with copy of DOCGoToMetrics(v10, &v9);
}

Swift::Void __swiftcall DOCGoToViewController.loadView()()
{
  v1 = v0;
  v2 = type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x28223BE20](v2 - 8, v3);
  if (_UISolariumEnabled())
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v0 setView_];

    v5 = [v0 view];
    v6 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_contentView;
    v7 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_contentView];
    *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_contentView] = v5;
    v8 = v5;

    if (v8)
    {
      static _Glass._GlassVariant.regular.getter();
      v17[3] = type metadata accessor for _Glass();
      v17[4] = MEMORY[0x277D74E20];
      __swift_allocate_boxed_opaque_existential_1(v17);
      _Glass.init(_:smoothness:)();
      UIView._background.setter();

      v9 = *&v0[v6];
      if (v9)
      {
        v10 = objc_opt_self();
        v11 = v9;
        v12 = [v10 clearColor];
        [v11 setBackgroundColor_];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v13 = [objc_opt_self() effectWithStyle_];
    v14 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
    [v1 setView_];
    v15 = [v14 contentView];

    v16 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_contentView];
    *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_contentView] = v15;
  }
}

void *DOCGoToViewController.closeBox.getter()
{
  v0 = specialized DOCGoToViewController.closeBox.getter();
  v1 = v0;
  return v0;
}

void DOCGoToViewController.closeBox.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___closeBox);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___closeBox) = a1;
  outlined consume of DOCProgressCollectionIndicatorView??(v2);
}

void (*DOCGoToViewController.closeBox.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = specialized DOCGoToViewController.closeBox.getter();
  *a1 = v3;
  v4 = v3;
  return DOCGoToViewController.closeBox.modify;
}

void DOCGoToViewController.closeBox.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___closeBox);
  *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___closeBox) = *a1;
  if (a2)
  {
    v5 = v2;
    outlined consume of DOCProgressCollectionIndicatorView??(v4);
  }

  else
  {

    outlined consume of DOCProgressCollectionIndicatorView??(v4);
  }
}

Swift::Void __swiftcall DOCGoToViewController.viewDidLoad()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMd, &_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v161 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd, &_s5UIKit29_UICornerMaskingConfigurationVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v161 - v8;
  v10 = type metadata accessor for DOCGoToViewController(0);
  v170.receiver = v0;
  v170.super_class = v10;
  objc_msgSendSuper2(&v170, sel_viewDidLoad);
  DOCGoToViewController.updatePreferredContentSize()();
  v11 = DOCGoToViewController.inputField.getter();
  v12 = MEMORY[0x277D85000];
  v13 = *MEMORY[0x277D85000] & *v0;
  v165 = *(v13 + 0x240);
  v166 = v13 + 576;
  v14 = v165();
  v15 = *&v11[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF16DOCGoToTextField_coresponder];
  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_FE402B1CD7048B20557F1F41FB0A2CFF16DOCGoToTextField_coresponder] = v14;

  if (_UISolariumEnabled())
  {
    v16 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___inputField);
    static _UICornerMaskingConfiguration.CornerStyle.fixed(radius:)();
    v17 = type metadata accessor for _UICornerMaskingConfiguration.CornerStyle();
    (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
    static _UICornerMaskingConfiguration.containerConcentric(symmetric:fallbackStyle:)();
    outlined destroy of CharacterSet?(v5, &_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMd, &_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMR);
    v18 = type metadata accessor for _UICornerMaskingConfiguration();
    (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
    UIView.cornerMaskingConfiguration.setter();
  }

  v19 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_contentView;
  v20 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_contentView);
  if (!v20)
  {
    __break(1u);
    goto LABEL_33;
  }

  v21 = v20;
  v22 = DOCGoToViewController.topView.getter();
  [v21 addSubview_];

  v23 = *(v1 + v19);
  if (!v23)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v168 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___inputField;
  [v23 addSubview_];
  v24 = *(v1 + v19);
  if (!v24)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v25 = v24;
  v26 = DOCGoToViewController.goButton.getter();
  [v25 addSubview_];

  v27 = *(v1 + v19);
  if (!v27)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v28 = v27;
  v29 = DOCGoToViewController.separatorView.getter();
  [v28 addSubview_];

  v30 = *(v1 + v19);
  if (!v30)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v31 = v30;
  v32 = DOCGoToViewController.noResultsView.getter(v31);
  [v31 addSubview_];

  v169 = MEMORY[0x277D84F90];
  v33 = (*((*v12 & *v1) + 0x260))();
  if (v33)
  {
    v34 = v33;
    [v34 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v35) = 1148846080;
    [v34 setContentHuggingPriority:0 forAxis:v35];
    LODWORD(v36) = 1148846080;
    [v34 setContentHuggingPriority:1 forAxis:v36];
    v37 = *(v1 + v19);
    if (!v37)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    [v37 addSubview_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA37E0;
    v39 = [v34 leadingAnchor];
    v40 = [v1 view];
    if (!v40)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v41 = v40;
    v42 = [v40 layoutMarginsGuide];

    v43 = [v42 leadingAnchor];
    v44 = [v39 constraintEqualToAnchor_];

    *(inited + 32) = v44;
    v45 = [v34 topAnchor];
    v46 = v168;
    v47 = [*(v1 + v168) topAnchor];
    v48 = [v45 constraintEqualToAnchor_];

    *(inited + 40) = v48;
    v49 = [*(v1 + v46) leadingAnchor];
    v50 = [v34 trailingAnchor];

    v51 = [v49 constraintEqualToAnchor:v50 constant:*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics + 24)];
    *(inited + 48) = v51;
    specialized Array.append<A>(contentsOf:)(inited);

LABEL_14:
    v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v58 = swift_initStackObject();
    *(v58 + 16) = xmmword_249BA75C0;
    v59 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___topView;
    v60 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___topView) topAnchor];
    v61 = [v1 view];
    if (v61)
    {
      v62 = v61;
      v63 = [v61 topAnchor];

      v64 = [v60 constraintEqualToAnchor_];
      *(v58 + 32) = v64;
      v65 = [*(v1 + v59) leadingAnchor];
      v66 = [v1 view];
      if (v66)
      {
        v67 = v66;
        v68 = [v66 leadingAnchor];

        v69 = [v65 constraintEqualToAnchor_];
        *(v58 + 40) = v69;
        v70 = [*(v1 + v59) trailingAnchor];
        v71 = [v1 view];
        if (v71)
        {
          v72 = v71;
          v164 = v59;
          v73 = [v71 trailingAnchor];

          v74 = [v70 constraintEqualToAnchor_];
          *(v58 + 48) = v74;
          v75 = v168;
          v76 = [*(v1 + v168) trailingAnchor];
          v77 = [v1 view];
          if (v77)
          {
            v78 = v77;
            v79 = [v77 trailingAnchor];

            v80 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics);
            v81 = [v76 constraintEqualToAnchor:v79 constant:-*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics)];

            *(v58 + 56) = v81;
            v82 = [*(v1 + v75) topAnchor];
            v83 = [v1 view];
            if (v83)
            {
              v84 = v83;
              v85 = [v83 topAnchor];

              v86 = [v82 constraintEqualToAnchor:v85 constant:v80[1]];
              *(v58 + 64) = v86;
              v163 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___goButton;
              v87 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___goButton) trailingAnchor];
              v88 = [*(v1 + v75) trailingAnchor];
              v89 = [v87 constraintEqualToAnchor:v88 constant:-v80[2]];

              *(v58 + 72) = v89;
              v90 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___separatorView;
              v91 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___separatorView) leadingAnchor];
              v92 = [v1 view];
              if (v92)
              {
                v93 = v92;
                v94 = [v92 leadingAnchor];

                v95 = [v91 constraintEqualToAnchor:v94 constant:0.0];
                *(v58 + 80) = v95;
                v162 = v90;
                v96 = [*(v1 + v90) trailingAnchor];
                v97 = [v1 view];
                if (v97)
                {
                  v98 = v97;
                  v99 = [v97 trailingAnchor];

                  v100 = [v96 constraintEqualToAnchor:v99 constant:0.0];
                  *(v58 + 88) = v100;
                  v101 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___noResultsView;
                  v102 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___noResultsView) leftAnchor];
                  v103 = [v1 view];
                  if (v103)
                  {
                    v104 = v103;
                    v105 = [v103 leftAnchor];

                    v106 = [v102 constraintEqualToAnchor_];
                    *(v58 + 96) = v106;
                    v107 = [*(v1 + v101) rightAnchor];
                    v108 = [v1 view];
                    if (v108)
                    {
                      v109 = v108;
                      v110 = [v108 rightAnchor];

                      v111 = [v107 constraintEqualToAnchor_];
                      *(v58 + 104) = v111;
                      v112 = [*(v1 + v101) topAnchor];
                      v113 = [v1 view];
                      if (v113)
                      {
                        v114 = v113;
                        v115 = [v113 topAnchor];

                        v116 = [v112 constraintEqualToAnchor:v115 constant:50.0];
                        *(v58 + 112) = v116;
                        v117 = [*(v1 + v101) bottomAnchor];
                        v118 = [v1 view];
                        if (v118)
                        {
                          v119 = v118;
                          v120 = [v118 bottomAnchor];

                          v121 = [v117 constraintEqualToAnchor_];
                          *(v58 + 120) = v121;
                          specialized Array.append<A>(contentsOf:)(v58);
                          v122 = v165();
                          v123 = [v122 view];

                          v161 = v123;
                          if (v123)
                          {
                            v124 = swift_initStackObject();
                            *(v124 + 16) = xmmword_249BA37E0;
                            v125 = [*(v1 + v164) bottomAnchor];
                            v126 = v168;
                            v127 = [*(v1 + v168) bottomAnchor];
                            v128 = [v125 constraintEqualToAnchor:v127 constant:16.0];

                            *(v124 + 32) = v128;
                            v129 = [*(v1 + v163) centerYAnchor];
                            v130 = [*(v1 + v126) centerYAnchor];
                            v131 = [v129 constraintEqualToAnchor_];

                            *(v124 + 40) = v131;
                            v132 = [*(v1 + v162) topAnchor];
                            v133 = [*(v1 + v126) bottomAnchor];
                            v134 = [v132 constraintEqualToAnchor:v133 constant:16.0];

                            *(v124 + 48) = v134;
                            specialized Array.append<A>(contentsOf:)(v124);
                            if (!_UISolariumEnabled())
                            {
                              v153 = swift_initStackObject();
                              *(v153 + 16) = xmmword_249BA0290;
                              v154 = v161;
                              v155 = [v161 topAnchor];
                              v156 = *(v1 + v126);
                              v136 = v154;
                              v157 = [v156 bottomAnchor];
                              v158 = [v155 constraintEqualToAnchor:v157 constant:16.0];

                              *(v153 + 32) = v158;
                              specialized Array.append<A>(contentsOf:)(v153);
LABEL_31:
                              v159 = objc_opt_self();
                              type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
                              isa = Array._bridgeToObjectiveC()().super.isa;

                              [v159 activateConstraints_];

                              return;
                            }

                            v135 = swift_initStackObject();
                            *(v135 + 16) = xmmword_249BA1010;
                            v136 = v161;
                            v137 = [v161 topAnchor];
                            v138 = [v1 view];
                            if (v138)
                            {
                              v139 = v138;
                              v140 = [v138 topAnchor];

                              v141 = [v137 constraintEqualToAnchor_];
                              *(v135 + 32) = v141;
                              v142 = [v136 safeAreaLayoutGuide];
                              v143 = [v142 topAnchor];

                              v144 = v164;
                              v145 = [*(v1 + v164) bottomAnchor];
                              v146 = [v143 constraintEqualToAnchor_];

                              *(v135 + 40) = v146;
                              specialized Array.append<A>(contentsOf:)(v135);
                              v147 = v165();
                              v148 = [v147 collectionView];

                              if (v148)
                              {
                                v149 = *(v1 + v144);
                                v150 = objc_allocWithZone(MEMORY[0x277D76220]);
                                v151 = v149;
                                v152 = [v150 initWithScrollView:v148 edge:1 style:0];
                                [v151 addInteraction_];
                              }

                              goto LABEL_31;
                            }

                            goto LABEL_51;
                          }

                          goto LABEL_48;
                        }

LABEL_47:
                        __break(1u);
LABEL_48:
                        __break(1u);
                        goto LABEL_49;
                      }

LABEL_46:
                      __break(1u);
                      goto LABEL_47;
                    }

LABEL_45:
                    __break(1u);
                    goto LABEL_46;
                  }

LABEL_44:
                  __break(1u);
                  goto LABEL_45;
                }

LABEL_43:
                __break(1u);
                goto LABEL_44;
              }

LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_249BA0290;
  v53 = [*(v1 + v168) leadingAnchor];
  v54 = [v1 view];
  if (v54)
  {
    v55 = v54;
    v56 = [v54 leadingAnchor];

    v57 = [v53 constraintEqualToAnchor:v56 constant:*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_metrics)];
    *(v52 + 32) = v57;
    specialized Array.append<A>(contentsOf:)(v52);
    goto LABEL_14;
  }

LABEL_52:
  __break(1u);
}

Swift::Void __swiftcall DOCGoToViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for DOCGoToViewController(0);
  objc_msgSendSuper2(&v8, sel_viewWillAppear_, a1);
  v3 = DOCGoToViewController.inputField.getter();
  [v3 becomeFirstResponder];

  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_currentGoToLocation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v1 + v4, &v5, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd, _s26DocumentManagerExecutables15DOCGoToLocation_pSgMR);
  if (v6)
  {
    outlined init with take of DOCGoToFolderCandidate(&v5, v7);
    DOCGoToViewController.fetchFilteringSource(for:)(v7);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    outlined destroy of CharacterSet?(&v5, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd, _s26DocumentManagerExecutables15DOCGoToLocation_pSgMR);
  }

  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_initialSuggestionsToken) == 1)
  {
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_initialSuggestionsToken) = 0;
    DOCGoToViewController.suggestCandidates(for:selectingFirst:)(0, 0xE000000000000000, 0);
  }
}

uint64_t DOCGoToViewController.goToLocation()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_currentGoToLocation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v0 + v1, &v7, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd, _s26DocumentManagerExecutables15DOCGoToLocation_pSgMR);
  if (!v8)
  {
    return outlined destroy of CharacterSet?(&v7, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd, _s26DocumentManagerExecutables15DOCGoToLocation_pSgMR);
  }

  v2 = outlined init with take of DOCGoToFolderCandidate(&v7, v9);
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xF8))(v2))
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 32))(v0, v9, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v9);
}

Swift::Void __swiftcall DOCGoToViewController.didTab()()
{
  DOCGoToViewController.selectedOrFirstSuggestion.getter(&v0);
  if (v1)
  {
    outlined init with take of DOCGoToFolderCandidate(&v0, v2);
    DOCGoToViewController.confirmSuggestion(_:)(v2);
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    outlined destroy of CharacterSet?(&v0, &_s26DocumentManagerExecutables22DOCGoToFolderCandidate_pSgMd, "vN\t");
  }
}

Swift::Void __swiftcall DOCGoToViewController.didReturn()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x240))();
  (*((*v2 & *v3) + 0xE0))(&v9);

  if (v10)
  {
    outlined init with take of DOCGoToFolderCandidate(&v9, v11);
    DOCGoToViewController.confirmSuggestion(_:)(v11);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    outlined destroy of CharacterSet?(&v9, &_s26DocumentManagerExecutables22DOCGoToFolderCandidate_pSgMd, "vN\t");
  }

  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_currentGoToLocation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v1 + v4, &v9, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd, _s26DocumentManagerExecutables15DOCGoToLocation_pSgMR);
  if (v10)
  {
    v5 = outlined init with take of DOCGoToFolderCandidate(&v9, v11);
    if ((*((*v2 & *v1) + 0xF8))(v5))
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      (*(v7 + 32))(v1, v11, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    outlined destroy of CharacterSet?(&v9, &_s26DocumentManagerExecutables15DOCGoToLocation_pSgMd, _s26DocumentManagerExecutables15DOCGoToLocation_pSgMR);
  }
}

Swift::Void __swiftcall DOCGoToViewController.viewDidLayoutSubviews()()
{
  if (!_UISolariumEnabled())
  {
    goto LABEL_4;
  }

  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x240))();
  v2 = [v1 collectionView];

  if (v2)
  {
    v3 = DOCGoToViewController.topView.getter();
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v13.origin.x = v5;
    v13.origin.y = v7;
    v13.size.width = v9;
    v13.size.height = v11;
    [v2 setContentInset_];

LABEL_4:
    v12.receiver = v0;
    v12.super_class = type metadata accessor for DOCGoToViewController(0);
    objc_msgSendSuper2(&v12, sel_viewDidLayoutSubviews);
    return;
  }

  __break(1u);
}

uint64_t DOCGoToViewController.suggestCandidates(for:selectingFirst:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v43 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v39 - v14;
  v49[0] = a1;
  v49[1] = a2;
  v16 = [objc_opt_self() currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = type metadata accessor for Locale();
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  lazy protocol witness table accessor for type String and conformance String();
  v41 = StringProtocol.folding(options:locale:)();
  v42 = v18;
  outlined destroy of CharacterSet?(v15, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v19 = DOCGoToViewController.inputField.getter();
  v20 = MEMORY[0x277D85000];
  v21 = (*((*MEMORY[0x277D85000] & *v19) + 0xA0))();

  v22 = *(v21 + 16);

  if (v22)
  {
    v23 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_filteringSource;
    swift_beginAccess();
    v24 = outlined init with copy of DOCGridLayout.Spec?(&v4[v23], v49, &_s26DocumentManagerExecutables22DOCGoToCandidateSource_pSgMd, _s26DocumentManagerExecutables22DOCGoToCandidateSource_pSgMR);
  }

  else
  {
    v24 = outlined init with copy of DOCSidebarItemIconProvider(&v4[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_initialCandidateSource], v49);
  }

  v25 = (*((*v20 & *v4) + 0x240))(v24);
  v26 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController____lazy_storage___inputField];
  v27 = *((*v20 & *v26) + 0x98);
  v28 = v26;
  LOBYTE(v27) = v27();

  (*((*v20 & *v25) + 0xD0))((v27 & 1) == 0);
  outlined init with copy of DOCGridLayout.Spec?(v49, &v44, &_s26DocumentManagerExecutables22DOCGoToCandidateSource_pSgMd, _s26DocumentManagerExecutables22DOCGoToCandidateSource_pSgMR);
  if (v45)
  {
    v29 = outlined init with take of DOCGoToFolderCandidate(&v44, v46);
    v30 = DOCGoToViewController.noResultsView.getter(v29);
    [v30 setHidden_];

    UUID.init()();
    v31 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_requestID;
    swift_beginAccess();
    (*(v8 + 40))(&v4[v31], v11, v7);
    swift_endAccess();
    v32 = v48;
    v40 = v47;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    (*(v8 + 16))(v11, &v4[v31], v7);
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v4;
    *(v34 + 32) = v43 & 1;
    v35 = v7;
    v36 = *(v32 + 8);

    v37 = v4;
    v36(v41, v42, v11, partial apply for closure #1 in DOCGoToViewController.suggestCandidates(for:selectingFirst:), v34, v40, v32);

    (*(v8 + 8))(v11, v35);
    outlined destroy of CharacterSet?(v49, &_s26DocumentManagerExecutables22DOCGoToCandidateSource_pSgMd, _s26DocumentManagerExecutables22DOCGoToCandidateSource_pSgMR);

    return __swift_destroy_boxed_opaque_existential_0(v46);
  }

  else
  {
    outlined destroy of CharacterSet?(&v44, &_s26DocumentManagerExecutables22DOCGoToCandidateSource_pSgMd, _s26DocumentManagerExecutables22DOCGoToCandidateSource_pSgMR);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *deduplicated #1 (_:) in DOCGoToViewController.suggestCandidates(for:selectingFirst:)(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
  v27 = *(a1 + 16);
  if (!v27)
  {
    return v1;
  }

  v2 = 0;
  v26 = a1 + 32;
  while (1)
  {
    v28 = v2;
    outlined init with copy of DOCSidebarItemIconProvider(v26 + 40 * v2, v33);
    v3 = v1[2];
    if (v3)
    {
      break;
    }

LABEL_10:
    outlined init with copy of DOCSidebarItemIconProvider(v33, &v30);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    }

    v15 = v1[2];
    v14 = v1[3];
    if (v15 >= v14 >> 1)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v1);
    }

    v1[2] = v15 + 1;
    outlined init with take of DOCGoToFolderCandidate(&v30, &v1[5 * v15 + 4]);
    v36 = v1;
LABEL_5:
    v2 = v28 + 1;
    __swift_destroy_boxed_opaque_existential_0(v33);
    if (v28 + 1 == v27)
    {
      return v1;
    }
  }

  v4 = 0;
  v5 = v1 + 4;
  while (1)
  {
    v6 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v7 + 24))(&v30, v6, v7);
    v8 = v31;
    v9 = v32;
    __swift_project_boxed_opaque_existential_1(&v30, v31);
    v10 = v34;
    v11 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    (*(v11 + 24))(v29, v10, v11);
    v12 = (*(v9 + 16))(v29, v8, v9);
    __swift_destroy_boxed_opaque_existential_0(v29);
    result = __swift_destroy_boxed_opaque_existential_0(&v30);
    if (v12)
    {
      break;
    }

    ++v4;
    v5 += 5;
    if (v3 == v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < v1[2])
  {
    outlined init with copy of DOCSidebarItemIconProvider(v5, &v30);
    v16 = v34;
    v17 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v18 = (*(v17 + 16))(v16, v17);
    v19 = [v18 length];

    v20 = v31;
    v21 = v32;
    __swift_project_boxed_opaque_existential_1(&v30, v31);
    v22 = (*(v21 + 16))(v20, v21);
    v23 = [v22 length];

    if (v23 < v19)
    {
      specialized Array.remove(at:)(v4, v29);
      __swift_destroy_boxed_opaque_existential_0(v29);
      outlined init with copy of DOCSidebarItemIconProvider(v33, v29);
      v1 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
      }

      v25 = v1[2];
      v24 = v1[3];
      if (v25 >= v24 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v1);
      }

      v1[2] = v25 + 1;
      outlined init with take of DOCGoToFolderCandidate(v29, &v1[5 * v25 + 4]);
      v36 = v1;
    }

    __swift_destroy_boxed_opaque_existential_0(&v30);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void updateSuggestions #1 (_:) in DOCGoToViewController.suggestCandidates(for:selectingFirst:)(uint64_t a1, void *a2, char a3)
{
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *a2) + 0x240);
  v7 = v6();
  v8 = *((*v5 & *v7) + 0xB8);

  v8(v9);

  if ((a3 & 1) != 0 && *(a1 + 16))
  {
    v10 = v6();
    (*((*v5 & *v10) + 0x108))();
  }

  v11 = DOCGoToViewController.inputField.getter();
  (*((*v5 & *v11) + 0x108))();

  v13 = DOCGoToViewController.noResultsView.getter(v12);
  [v13 setHidden_];
}

void closure #1 in DOCGoToViewController.suggestCandidates(for:selectingFirst:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v48 = a5;
  v49 = a4;
  v47 = a2;
  v54 = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v50 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v46 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v53 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v45 - v21;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v45 - v25;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_requestID;
    v29 = Strong;
    swift_beginAccess();
    v30 = *(v9 + 16);
    v30(v26, &v29[v28], v8);

    v31 = *(v9 + 56);
    v31(v26, 0, 1, v8);
  }

  else
  {
    v31 = *(v9 + 56);
    v31(v26, 1, 1, v8);
    v30 = *(v9 + 16);
  }

  v30(v22, v54, v8);
  v31(v22, 0, 1, v8);
  v32 = *(v12 + 48);
  outlined init with copy of DOCGridLayout.Spec?(v26, v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of DOCGridLayout.Spec?(v22, &v15[v32], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v33 = *(v9 + 48);
  if (v33(v15, 1, v8) != 1)
  {
    v34 = v53;
    outlined init with copy of DOCGridLayout.Spec?(v15, v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v33(&v15[v32], 1, v8) != 1)
    {
      v35 = v46;
      (*(v9 + 32))(v46, &v15[v32], v8);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v36 = v34;
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v9 + 8);
      v38(v35, v8);
      outlined destroy of CharacterSet?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of CharacterSet?(v26, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v38(v36, v8);
      outlined destroy of CharacterSet?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ((v37 & 1) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    outlined destroy of CharacterSet?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of CharacterSet?(v26, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v9 + 8))(v34, v8);
LABEL_9:
    outlined destroy of CharacterSet?(v15, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    return;
  }

  outlined destroy of CharacterSet?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of CharacterSet?(v26, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v33(&v15[v32], 1, v8) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of CharacterSet?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_11:
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v39 = static OS_dispatch_queue.main.getter();
  v41 = v50;
  v40 = v51;
  *v50 = v39;
  v42 = v52;
  (*(v40 + 104))(v41, *MEMORY[0x277D85200], v52);
  v43 = _dispatchPreconditionTest(_:)();
  (*(v40 + 8))(v41, v42);
  if (v43)
  {
    v44 = deduplicated #1 (_:) in DOCGoToViewController.suggestCandidates(for:selectingFirst:)(v47);
    updateSuggestions #1 (_:) in DOCGoToViewController.suggestCandidates(for:selectingFirst:)(v44, v49, v48 & 1);
  }

  else
  {
    __break(1u);
  }
}

void DOCGoToViewController.updateSeparatorVisibility()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x240))();
  v2 = [v1 collectionView];

  if (v2)
  {
    [v2 contentOffset];
    v4 = v3;

    v7 = DOCGoToViewController.separatorView.getter();
    v5 = 0.0;
    if ((_UISolariumEnabled() & 1) == 0)
    {
      if (v4 <= 15.0)
      {
        v6 = v4;
      }

      else
      {
        v6 = 15.0;
      }

      v5 = v6 / 15.0;
    }

    [v7 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

id DOCGoToViewController.updatePreferredContentSize()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];
  if (UIContentSizeCategory.isAccessibilityCategory.getter())
  {
    v3 = static UIContentSizeCategory.> infix(_:_:)();

    if (v3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {

    v4 = 0;
  }

  if (specialized Sequence<>.contains(_:)(v4, &outlined read-only object #0 of DOCGoToViewController.updatePreferredContentSize()))
  {
    v5 = DOCScreenSizePad12_9();
    v6 = 500.0;
    if (!v5)
    {
      v6 = 420.0;
    }

    v7 = 640.0;
    if (v5)
    {
      v7 = 840.0;
    }
  }

  else
  {
    v7 = 640.0;
    v6 = 420.0;
  }

  return [v0 setPreferredContentSize_];
}

void DOCGoToViewController.fetchFilteringSource(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xF8))())
  {
    v6 = v5;
    v7 = DOCGoToViewController.inputField.getter();
    v8 = (*((*v4 & *v7) + 0xA0))();

    v9 = *(v8 + 16);

    if (v9)
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v12, v2, a1, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      outlined init with copy of DOCSidebarItemIconProvider(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_initialCandidateSource, v12);
    }

    v11 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_filteringSource;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v12, v2 + v11, &_s26DocumentManagerExecutables22DOCGoToCandidateSource_pSgMd, _s26DocumentManagerExecutables22DOCGoToCandidateSource_pSgMR);
    swift_endAccess();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}