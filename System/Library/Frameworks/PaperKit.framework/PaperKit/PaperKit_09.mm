uint64_t closure #1 in ExtensionViewController.documentViewController(_:didFailToLoad:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    swift_unknownObjectRetain();
    v3 = _convertErrorToNSError(_:)();
    [v2 paperDidFailToLoad_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in ExtensionViewController.revertAllChanges()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ExtensionViewController.revertAllChanges()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ExtensionViewController.addNewCanvasElement(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ExtensionViewController.addNewCanvasElement(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in ExtensionViewController.setIndirectPointerTouchMode(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ExtensionViewController.setIndirectPointerTouchMode(_:)(a1, v4, v5, v7, v6);
}

unint64_t lazy protocol witness table accessor for type ExtensionViewController.DecryptionError and conformance ExtensionViewController.DecryptionError()
{
  result = lazy protocol witness table cache variable for type ExtensionViewController.DecryptionError and conformance ExtensionViewController.DecryptionError;
  if (!lazy protocol witness table cache variable for type ExtensionViewController.DecryptionError and conformance ExtensionViewController.DecryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtensionViewController.DecryptionError and conformance ExtensionViewController.DecryptionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtensionViewController.DecryptionError and conformance ExtensionViewController.DecryptionError;
  if (!lazy protocol witness table cache variable for type ExtensionViewController.DecryptionError and conformance ExtensionViewController.DecryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtensionViewController.DecryptionError and conformance ExtensionViewController.DecryptionError);
  }

  return result;
}

uint64_t dispatch thunk of ExtensionViewController.encrypt(_:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3B8))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3C0))();
}

uint64_t getEnumTagSinglePayload for ExtensionViewController.DecryptionError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ExtensionViewController.DecryptionError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in ExtensionViewController.LiveStreamMessenger.messages.getter(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy10Foundation4DataV_GMd, &_sScS12ContinuationVy10Foundation4DataV_GMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in closure #1 in ExtensionViewController.LiveStreamMessenger.messages.getter(a1, v6, v7, v8, v1 + v5);
}

unint64_t specialized ContainerCanvasElementView.didScroll(in:)(uint64_t a1)
{
  v2 = v1;
  result = specialized ContainerCanvasElementView.subelementViews.getter();
  v5 = result;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    v6 = result;
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7D40];
  if (v6)
  {
    if (v6 < 1)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA6CE0C0](i, v5);
      }

      else
      {
        v9 = *(v5 + 8 * i + 32);
      }

      v10 = v9;
      (*((*v7 & *v9) + 0x258))(a1);
    }
  }

  v11 = *((*v7 & *v2) + 0x3D0);

  return v11();
}

void specialized closure #1 in Canvas.scheduleFinalizeTask()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC8PaperKit9AnyCanvas_context);
    v4 = *(Strong + direct field offset for Canvas.paperView);
    v5 = MEMORY[0x1E69E7D40];
    v6 = Strong;
    swift_beginAccess();
    v7 = v3;
    v8 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
    Capsule.finalizeTimestamps(_:)();
    swift_endAccess();

    (*((*v5 & *v6) + 0x7E0))();
  }
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC8PaperKit9AnyCanvas_context);
    v4 = *(Strong + direct field offset for Canvas.paperView);
    v5 = Strong;
    swift_beginAccess();
    v6 = v3;
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
    Capsule.finalizeTimestamps(_:)();
    swift_endAccess();

    specialized Canvas.mergeToCanvasElements()();
  }
}

uint64_t partial apply for closure #1 in ExtensionViewController.receiveLiveStreamData(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ExtensionViewController.receiveLiveStreamData(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in ExtensionViewController.setMathEnabled(_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ExtensionViewController.setMathEnabled(_:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in ExtensionViewController.setMathResult(_:expressionUUID:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ExtensionViewController.setMathResult(_:expressionUUID:)(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t partial apply for closure #1 in ExtensionViewController.setMathDocument(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ExtensionViewController.setMathDocument(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in ExtensionViewController.setTool(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ExtensionViewController.setTool(_:)(a1, v4, v5, v7, v6);
}

uint64_t outlined init with copy of FindResult(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t partial apply for closure #1 in ExtensionViewController.loadBookmark(_:readOnly:)(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));
  v9 = *(v8 + *(v4 + 64));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ExtensionViewController.loadBookmark(_:readOnly:)(a1, v5, v6, v7, v8, v9);
}

uint64_t partial apply for closure #1 in ExtensionViewController.loadPaper(_:paperBookmark:coherenceContextBookmark:encrypted:userInterfaceState:)(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v1[3];
  v12 = v1[2];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = *(v1 + ((v4 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ExtensionViewController.loadPaper(_:paperBookmark:coherenceContextBookmark:encrypted:userInterfaceState:)(a1, v12, v5, v6, v7, v8, v1 + v4, v9);
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ExtensionViewController.loadPaper(_:paperURL:coherenceContextURL:encrypted:userInterfaceState:)(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = v5 & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = v1[3];
  v14 = v1[2];
  v8 = v1[4];
  v9 = v1[5];
  v10 = *(v1 + v5);
  v11 = *(v1 + v6 + 8);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ExtensionViewController.loadPaper(_:paperURL:coherenceContextURL:encrypted:userInterfaceState:)(a1, v14, v7, v8, v9, v1 + v4, v10, v11);
}

uint64_t objectdestroy_168Tm()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v11 = *(v6 + 64);
  swift_unknownObjectRelease();

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);

  if (!(*(v2 + 48))(v0 + v8, 1, v1))
  {
    v9(v0 + v8, v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, v8 + v11, v3 | v7 | 7);
}

void partial apply for specialized closure #1 in Canvas.scheduleFinalizeTask()(uint64_t a1)
{
  specialized closure #1 in Canvas.scheduleFinalizeTask()(a1, v1);
}

{
  specialized closure #1 in Canvas.scheduleFinalizeTask()(a1, v1);
}

uint64_t outlined assign with copy of EncryptionDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18EncryptionDelegate_pSgMd, &_s9Coherence18EncryptionDelegate_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ExtensionViewController.openLink(_:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in ExtensionViewController.openLink(_:)(v2, v3);
}

uint64_t objectdestroy_148Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for closure #1 in ExtensionViewController.newMultipeerConnection(model:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in ExtensionViewController.newMultipeerConnection(model:)(a1, v4, v5, v7, v6);
}

double specialized ExtensionViewController.documentViewController(_:didFailToLoad:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueue);
  v10 = *(v1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostProxyWrapper);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in ExtensionViewController.documentViewController(_:didFailToLoad:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_304;
  v12 = _Block_copy(aBlock);

  v13 = a1;
  static DispatchQoS.unspecified.getter();
  v17 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1DA6CD890](0, v9, v6, v12);
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16);

  return result;
}

double specialized ExtensionViewController.search(for:ignoreCase:wholeWords:reply:)(uint64_t a1, uint64_t a2, int a3, int a4, char *a5, void (**a6)(void, void))
{
  v42 = a3;
  v43 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v42 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a6;
  _Block_copy(a6);
  if (one-time initialization token for extensionLogger != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, extensionLogger);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D38C4000, v15, v16, "search(for:ignoreCase:wholeWords:reply:)", v17, 2u);
    MEMORY[0x1DA6D0660](v17, -1, -1);
  }

  *&a5[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_currentFindResults] = MEMORY[0x1E69E7CC0];

  v18 = *&a5[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperDocumentViewController];
  if (v18)
  {
    v19 = *(v18 + OBJC_IVAR____TtC8PaperKit39PaperKitExtensionDocumentViewController_inlineView);
    if (v19)
    {
      v20 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView;
      swift_beginAccess();
      v21 = *(v19 + v20);
      if (v21)
      {
        v22 = type metadata accessor for TaskPriority();
        (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
        type metadata accessor for MainActor();
        v23 = v21;

        v24 = a5;

        v25 = v23;
        v26 = static MainActor.shared.getter();
        v27 = swift_allocObject();
        v28 = MEMORY[0x1E69E85E0];
        *(v27 + 16) = v26;
        *(v27 + 24) = v28;
        *(v27 + 32) = v25;
        *(v27 + 40) = a1;
        *(v27 + 48) = a2;
        *(v27 + 56) = v42 & 1;
        *(v27 + 57) = v43 & 1;
        *(v27 + 64) = v24;
        *(v27 + 72) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Int) -> ();
        *(v27 + 80) = v13;
        v29 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in ExtensionViewController.search(for:ignoreCase:wholeWords:reply:), v27);

        *&v24[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_currentFindTask] = v29;
LABEL_11:

        goto LABEL_15;
      }
    }
  }

  v30 = *&a5[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperTextCanvasView];
  if (v30)
  {
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v12, 1, 1, v31);
    type metadata accessor for MainActor();
    v32 = v30;

    v33 = a5;

    v34 = static MainActor.shared.getter();
    v35 = swift_allocObject();
    v36 = MEMORY[0x1E69E85E0];
    *(v35 + 16) = v34;
    *(v35 + 24) = v36;
    *(v35 + 32) = v32;
    *(v35 + 40) = a1;
    *(v35 + 48) = a2;
    *(v35 + 56) = v42 & 1;
    *(v35 + 57) = v43 & 1;
    *(v35 + 64) = v33;
    *(v35 + 72) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Int) -> ();
    *(v35 + 80) = v13;
    v37 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #2 in ExtensionViewController.search(for:ignoreCase:wholeWords:reply:), v35);

    *&v33[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_currentFindTask] = v37;
    goto LABEL_11;
  }

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1D38C4000, v38, v39, "Unable to search without an inline paper document view.", v40, 2u);
    MEMORY[0x1DA6D0660](v40, -1, -1);
  }

  a6[2](a6, 0);
LABEL_15:

  return result;
}

void specialized ExtensionViewController.searchFrame(for:reply:)(uint64_t a1, unint64_t a2, void (**a3)(void))
{
  if (one-time initialization token for extensionLogger != -1)
  {
LABEL_25:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, extensionLogger);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D38C4000, v7, v8, "searchFrame(for:reply:)", v9, 2u);
    MEMORY[0x1DA6D0660](v9, -1, -1);
  }

  ExtensionViewController.searchResultAndDocumentView(for:)(a1, &v57);
  v10 = v57;
  if (!v57)
  {
    v20 = ExtensionViewController.searchResultAndCanvasView(for:)(a1);
    if (!v20)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
      v56 = MEMORY[0x1DA6CDBE0](MEMORY[0x1E69E7CC0]);
      a3[2](a3);
      goto LABEL_20;
    }

    v22 = v21;
    v56 = v20;
    aBlock = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd, &_ss23_ContiguousArrayStorageCySo6CGRectVGMR);
    v17 = swift_allocObject();
    v17[1] = xmmword_1D4058CF0;
    v23 = *(v22 + 40);
    v17[2] = *(v22 + 24);
    v17[3] = v23;

    v18 = 1;
    goto LABEL_10;
  }

  aBlock = a3;
  v12 = v61;
  v11 = v62;
  v14 = v59;
  v13 = v60;
  v15 = v58;
  v57 = v58;
  v58 = v59;
  v59 = v60;
  v60 = v61;
  v61 = v62;
  v16 = v63 & 1;
  LOBYTE(v62) = v63 & 1;
  v56 = v10;
  v17 = PaperDocumentFindResult.frames(in:)(v10);
  outlined consume of PaperDocumentFindResult.Content(v15, v14, v13, v12, v11, v16);
  v18 = *(v17 + 2);
  if (v18)
  {
LABEL_10:
    v57 = MEMORY[0x1E69E7CC0];
    v56 = v56;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v24 = 0;
    a1 = v57;
    v25 = v17 + 7;
    v26 = a2;
    do
    {
      if (v24 >= *(v17 + 2))
      {
        __break(1u);
        goto LABEL_25;
      }

      v27 = *(v25 - 3);
      v28 = *(v25 - 2);
      v29 = *(v25 - 1);
      v30 = *v25;
      a3 = v26;
      v31 = [v26 view];
      if (!v31)
      {
        _Block_release(aBlock);
        __break(1u);
        return;
      }

      v32 = v31;
      [v31 convertRect:v56 fromCoordinateSpace:{v27, v28, v29, v30}];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;

      v57 = a1;
      a2 = *(a1 + 16);
      v41 = *(a1 + 24);
      if (a2 >= v41 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), a2 + 1, 1);
        a1 = v57;
      }

      ++v24;
      *(a1 + 16) = a2 + 1;
      v42 = (a1 + 32 * a2);
      v42[4] = v34;
      v42[5] = v36;
      v42[6] = v38;
      v42[7] = v40;
      v25 += 4;
      v26 = a3;
    }

    while (v18 != v24);

    v19 = *(a1 + 16);
    if (!v19)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  a1 = MEMORY[0x1E69E7CC0];
  v19 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v19)
  {
LABEL_17:
    v57 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
    v43 = (a1 + 56);
    v44 = MEMORY[0x1E69E7DE0];
    do
    {
      v45 = *(v43 - 3);
      v46 = *(v43 - 2);
      v47 = *(v43 - 1);
      v48 = *v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1D405C110;
      v65.origin.x = v45;
      v65.origin.y = v46;
      v65.size.width = v47;
      v65.size.height = v48;
      MinX = CGRectGetMinX(v65);
      *(v49 + 56) = v44;
      *(v49 + 32) = MinX;
      v66.origin.x = v45;
      v66.origin.y = v46;
      v66.size.width = v47;
      v66.size.height = v48;
      MinY = CGRectGetMinY(v66);
      *(v49 + 88) = v44;
      *(v49 + 64) = MinY;
      v67.origin.x = v45;
      v67.origin.y = v46;
      v67.size.width = v47;
      v67.size.height = v48;
      Width = CGRectGetWidth(v67);
      *(v49 + 120) = v44;
      *(v49 + 96) = Width;
      v68.origin.x = v45;
      v68.origin.y = v46;
      v68.size.width = v47;
      v68.size.height = v48;
      Height = CGRectGetHeight(v68);
      *(v49 + 152) = v44;
      *(v49 + 128) = Height;
      MEMORY[0x1DA6CDC00](v49);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v43 += 4;
      --v19;
    }

    while (v19);
  }

LABEL_19:

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  (aBlock[2])(aBlock, isa);

LABEL_20:
}

void specialized ExtensionViewController.searchDrawImage(for:reply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for extensionLogger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, extensionLogger);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D38C4000, v6, v7, "searchDrawImage(for:reply:)", v8, 2u);
    MEMORY[0x1DA6D0660](v8, -1, -1);
  }

  ExtensionViewController.searchResultAndDocumentView(for:)(a1, &v36);
  v9 = v36;
  if (v36)
  {
    v11 = v40;
    v10 = v41;
    v13 = v38;
    v12 = v39;
    v14 = v37;
    v36 = v37;
    v37 = v38;
    v38 = v39;
    v39 = v40;
    v40 = v41;
    v15 = v42 & 1;
    LOBYTE(v41) = v42 & 1;
    PaperDocumentFindResult.draw(for:)(v9);
    v34 = v16;

    outlined consume of PaperDocumentFindResult.Content(v14, v13, v12, v11, v10, v15);
    v17 = v34;
    if (!v34)
    {
      goto LABEL_15;
    }

LABEL_10:
    v22 = v17;
    v23 = [v22 imageWithRenderingMode_];
    v24 = UIImagePNGRepresentation(v23);

    if (v24)
    {
      v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      outlined copy of Data._Representation(v25, v27);
      [v22 size];
      v29 = v28;
      [v22 size];
      v31 = v30;
      isa = Data._bridgeToObjectiveC()().super.isa;
      (*(a3 + 16))(a3, isa, v29, v31);

      outlined consume of Data._Representation(v25, v27);

      outlined consume of Data._Representation(v25, v27);
      return;
    }

    v17 = v34;
LABEL_15:
    v35 = v17;
    (*(a3 + 16))(a3, 0, 0.0, 0.0);

    return;
  }

  v18 = ExtensionViewController.searchResultAndCanvasView(for:)(a1);
  if (v18)
  {
    v21 = v18;
    v34 = DrawingFindResult.draw(for:)(v18);

    v17 = v34;
    if (!v34)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v33 = *(a3 + 16);
  v19.n128_u64[0] = 0;
  v20.n128_u64[0] = 0;

  v33(a3, 0, v19, v20);
}

uint64_t partial apply for closure #2 in ExtensionViewController.search(for:ignoreCase:wholeWords:reply:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 57);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #2 in ExtensionViewController.search(for:ignoreCase:wholeWords:reply:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_214Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t partial apply for closure #1 in ExtensionViewController.search(for:ignoreCase:wholeWords:reply:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 57);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ExtensionViewController.search(for:ignoreCase:wholeWords:reply:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in ExtensionViewController.reportSafeAreaInsets(top:left:bottom:right:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = *(v1 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ExtensionViewController.reportSafeAreaInsets(top:left:bottom:right:)(v6, v7, v8, v9, a1, v4, v5, v10);
}

uint64_t partial apply for closure #1 in ExtensionViewController.setPaperDocumentInlineThumbnailsVisible(_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in ExtensionViewController.setPaperDocumentInlineThumbnailsVisible(_:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in ExtensionViewController.setScreenPotentialHeadroom(_:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ExtensionViewController.setScreenPotentialHeadroom(_:)(v6, a1, v4, v5, v7);
}

uint64_t objectdestroy_138Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for closure #1 in ExtensionViewController.setUserInterfaceStyle(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ExtensionViewController.setUserInterfaceStyle(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in ExtensionViewController.setCanvasContentMode(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ExtensionViewController.setCanvasContentMode(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in ExtensionViewController.setHasLiveStreamMessenger(_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ExtensionViewController.setHasLiveStreamMessenger(_:)(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_8Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t partial apply for closure #1 in ExtensionViewController.setLinedPaper(horizontalLineSpacing:verticalLineSpacing:horizontalInset:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ExtensionViewController.setLinedPaper(horizontalLineSpacing:verticalLineSpacing:horizontalInset:)(v7, v8, v9, a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ExtensionViewController.setupWithData(_:transparentBackground:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ExtensionViewController.setupWithData(_:transparentBackground:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_120Tm()
{
  swift_unknownObjectRelease();
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t partial apply for closure #1 in ExtensionViewController.receiveMulticastData(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ExtensionViewController.receiveMulticastData(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s8PaperKit0A0VWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double specialized ExtensionViewController.documentViewControllerDidSave(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v2 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueue);
  v12 = *(v2 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostProxyWrapper);
  aBlock[4] = a1;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a2;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1DA6CD890](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v16);

  return result;
}

id partial apply for closure #1 in ExtensionViewController.documentViewControllerDidScroll(_:)()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result reportPaperScroll];
  }

  return result;
}

id partial apply for closure #1 in ExtensionViewController.documentViewControllerDidSave(_:)()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result paperDidSave];
  }

  return result;
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GraphableExpressionsView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for GraphableExpressionsView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t key path getter for GraphableExpressionState.graphableVariables : GraphableExpressionState@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariables);
}

void *specialized Collection.count.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySaySSGGMd, &_s7SwiftUI7BindingVySaySSGGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6318]);
  Binding<A>.startIndex.getter();
  Binding<A>.endIndex.getter();
  return 0;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay8PaperKit24GraphableExpressionStateCGGMd, &_s7SwiftUI7BindingVySay8PaperKit24GraphableExpressionStateCGGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [GraphableExpressionState] and conformance [A], &_sSay8PaperKit24GraphableExpressionStateCGMd, &_sSay8PaperKit24GraphableExpressionStateCGMR, MEMORY[0x1E69E6318]);
  Binding<A>.startIndex.getter();
  Binding<A>.endIndex.getter();
  return 0;
}

void key path getter for GraphableExpressionState.expressionIndex : GraphableExpressionState(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
}

uint64_t GraphableExpressionsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v33 = a3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAUyAJ0klD0VAA14_PaddingLayoutVG_Qo_AA0V18AttachmentModifierVG_AJ0k9VariablesD0VSgAA7DividerVSgtGGGGMd, &_s7SwiftUI10ScrollViewVyAA6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAUyAJ0klD0VAA14_PaddingLayoutVG_Qo_AA0V18AttachmentModifierVG_AJ0k9VariablesD0VSgAA7DividerVSgtGGGGMR);
  v29 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v28 = &v28 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA08ModifiedD0VyAA0R0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAWyAL0lmR0VAA14_PaddingLayoutVG_Qo_AA0W18AttachmentModifierVG_AL0l9VariablesR0VSgAA7DividerVSgtGGGAA06ScrollR0VyA19_G_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA08ModifiedD0VyAA0R0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAWyAL0lmR0VAA14_PaddingLayoutVG_Qo_AA0W18AttachmentModifierVG_AL0l9VariablesR0VSgAA7DividerVSgtGGGAA06ScrollR0VyA19_G_GMR);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA08ModifiedD0VyAA0Q0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAUyAJ0klQ0VAA14_PaddingLayoutVG_Qo_AA0V18AttachmentModifierVG_AJ0k9VariablesQ0VSgAA7DividerVSgtGGGAA06ScrollQ0VyA17_GGMd, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA08ModifiedD0VyAA0Q0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAUyAJ0klQ0VAA14_PaddingLayoutVG_Qo_AA0V18AttachmentModifierVG_AJ0k9VariablesQ0VSgAA7DividerVSgtGGGAA06ScrollQ0VyA17_GGMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA15ModifiedContentVyAA0O0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyASyAH0ijO0VAA14_PaddingLayoutVG_Qo_AA0U18AttachmentModifierVG_AH0i9VariablesO0VSgAA7DividerVSgtGGGMd, &_s7SwiftUI6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA15ModifiedContentVyAA0O0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyASyAH0ijO0VAA14_PaddingLayoutVG_Qo_AA0U18AttachmentModifierVG_AH0i9VariablesO0VSgAA7DividerVSgtGGGMR);
  MEMORY[0x1EEE9AC00](v31);
  v15 = &v28 - v14;
  *v15 = static HorizontalAlignment.leading.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAWyAL0mnD0VAA08_PaddingG0VG_Qo_AA0X18AttachmentModifierVG_AL0m9VariablesD0VSgAA7DividerVSgtGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAWyAL0mnD0VAA08_PaddingG0VG_Qo_AA0X18AttachmentModifierVG_AL0m9VariablesD0VSgAA7DividerVSgtGGGMR);
  closure #1 in GraphableExpressionsView.body.getter(a1, a2);
  v34 = a1;
  v35 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy8PaperKit020GraphableExpressionsC0CGMd, &_s7SwiftUI5StateVy8PaperKit020GraphableExpressionsC0CGMR);
  State.projectedValue.getter();
  v17 = v36;
  v16 = v37;
  v18 = v38;
  swift_getKeyPath();
  v36 = v17;
  v37 = v16;
  v38 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit25GraphableExpressionsStateCGMd, &_s7SwiftUI7BindingVy8PaperKit25GraphableExpressionsStateCGMR);
  Binding.subscript.getter();

  v19 = specialized Collection.count.getter();

  if (v19 == 1)
  {
    outlined init with copy of Date?(v15, v7, &_s7SwiftUI6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA15ModifiedContentVyAA0O0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyASyAH0ijO0VAA14_PaddingLayoutVG_Qo_AA0U18AttachmentModifierVG_AH0i9VariablesO0VSgAA7DividerVSgtGGGMd, &_s7SwiftUI6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA15ModifiedContentVyAA0O0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyASyAH0ijO0VAA14_PaddingLayoutVG_Qo_AA0U18AttachmentModifierVG_AH0i9VariablesO0VSgAA7DividerVSgtGGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type VStack<ForEach<Binding<[GraphableExpressionState]>, UUID, TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, GraphableVariablesView?, Divider?)>>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA15ModifiedContentVyAA0O0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyASyAH0ijO0VAA14_PaddingLayoutVG_Qo_AA0U18AttachmentModifierVG_AH0i9VariablesO0VSgAA7DividerVSgtGGGMd, &_s7SwiftUI6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA15ModifiedContentVyAA0O0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyASyAH0ijO0VAA14_PaddingLayoutVG_Qo_AA0U18AttachmentModifierVG_AH0i9VariablesO0VSgAA7DividerVSgtGGGMR, MEMORY[0x1E6981870]);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type ScrollView<VStack<ForEach<Binding<[GraphableExpressionState]>, UUID, TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, GraphableVariablesView?, Divider?)>>>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAUyAJ0klD0VAA14_PaddingLayoutVG_Qo_AA0V18AttachmentModifierVG_AJ0k9VariablesD0VSgAA7DividerVSgtGGGGMd, &_s7SwiftUI10ScrollViewVyAA6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAUyAJ0klD0VAA14_PaddingLayoutVG_Qo_AA0V18AttachmentModifierVG_AJ0k9VariablesD0VSgAA7DividerVSgtGGGGMR, MEMORY[0x1E697BE60]);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v20);
    *(&v28 - 2) = v15;
    static Axis.Set.vertical.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type VStack<ForEach<Binding<[GraphableExpressionState]>, UUID, TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, GraphableVariablesView?, Divider?)>>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA15ModifiedContentVyAA0O0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyASyAH0ijO0VAA14_PaddingLayoutVG_Qo_AA0U18AttachmentModifierVG_AH0i9VariablesO0VSgAA7DividerVSgtGGGMd, &_s7SwiftUI6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA15ModifiedContentVyAA0O0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyASyAH0ijO0VAA14_PaddingLayoutVG_Qo_AA0U18AttachmentModifierVG_AH0i9VariablesO0VSgAA7DividerVSgtGGGMR, MEMORY[0x1E6981870]);
    v21 = v28;
    ScrollView.init(_:showsIndicators:content:)();
    v22 = v29;
    v23 = v32;
    (*(v29 + 16))(v7, v21, v32);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type ScrollView<VStack<ForEach<Binding<[GraphableExpressionState]>, UUID, TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, GraphableVariablesView?, Divider?)>>>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAUyAJ0klD0VAA14_PaddingLayoutVG_Qo_AA0V18AttachmentModifierVG_AJ0k9VariablesD0VSgAA7DividerVSgtGGGGMd, &_s7SwiftUI10ScrollViewVyAA6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAUyAJ0klD0VAA14_PaddingLayoutVG_Qo_AA0V18AttachmentModifierVG_AJ0k9VariablesD0VSgAA7DividerVSgtGGGGMR, MEMORY[0x1E697BE60]);
    _ConditionalContent<>.init(storage:)();
    (*(v22 + 8))(v21, v23);
  }

  outlined init with copy of Date?(v13, v10, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA08ModifiedD0VyAA0Q0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAUyAJ0klQ0VAA14_PaddingLayoutVG_Qo_AA0V18AttachmentModifierVG_AJ0k9VariablesQ0VSgAA7DividerVSgtGGGAA06ScrollQ0VyA17_GGMd, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA08ModifiedD0VyAA0Q0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAUyAJ0klQ0VAA14_PaddingLayoutVG_Qo_AA0V18AttachmentModifierVG_AJ0k9VariablesQ0VSgAA7DividerVSgtGGGAA06ScrollQ0VyA17_GGMR);
  v24 = v33;
  *v33 = 0;
  *(v24 + 8) = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA19_ConditionalContentVyAA6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA08ModifiedE0VyAA0R0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAWyAL0lmR0VAA14_PaddingLayoutVG_Qo_AA0W18AttachmentModifierVG_AL0l9VariablesR0VSgAA7DividerVSgtGGGAA06ScrollR0VyA19_GGACtMd, &_s7SwiftUI6SpacerV_AA19_ConditionalContentVyAA6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA08ModifiedE0VyAA0R0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAWyAL0lmR0VAA14_PaddingLayoutVG_Qo_AA0W18AttachmentModifierVG_AL0l9VariablesR0VSgAA7DividerVSgtGGGAA06ScrollR0VyA19_GGACtMR);
  outlined init with copy of Date?(v10, v24 + *(v25 + 48), &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA08ModifiedD0VyAA0Q0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAUyAJ0klQ0VAA14_PaddingLayoutVG_Qo_AA0V18AttachmentModifierVG_AJ0k9VariablesQ0VSgAA7DividerVSgtGGGAA06ScrollQ0VyA17_GGMd, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA08ModifiedD0VyAA0Q0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAUyAJ0klQ0VAA14_PaddingLayoutVG_Qo_AA0V18AttachmentModifierVG_AJ0k9VariablesQ0VSgAA7DividerVSgtGGGAA06ScrollQ0VyA17_GGMR);
  v26 = v24 + *(v25 + 64);
  *v26 = 0;
  v26[8] = 1;
  outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA08ModifiedD0VyAA0Q0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAUyAJ0klQ0VAA14_PaddingLayoutVG_Qo_AA0V18AttachmentModifierVG_AJ0k9VariablesQ0VSgAA7DividerVSgtGGGAA06ScrollQ0VyA17_GGMd, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA08ModifiedD0VyAA0Q0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAUyAJ0klQ0VAA14_PaddingLayoutVG_Qo_AA0V18AttachmentModifierVG_AJ0k9VariablesQ0VSgAA7DividerVSgtGGGAA06ScrollQ0VyA17_GGMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA08ModifiedD0VyAA0Q0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAUyAJ0klQ0VAA14_PaddingLayoutVG_Qo_AA0V18AttachmentModifierVG_AJ0k9VariablesQ0VSgAA7DividerVSgtGGGAA06ScrollQ0VyA17_GGMd, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA08ModifiedD0VyAA0Q0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAUyAJ0klQ0VAA14_PaddingLayoutVG_Qo_AA0V18AttachmentModifierVG_AJ0k9VariablesQ0VSgAA7DividerVSgtGGGAA06ScrollQ0VyA17_GGMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s7SwiftUI6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA15ModifiedContentVyAA0O0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyASyAH0ijO0VAA14_PaddingLayoutVG_Qo_AA0U18AttachmentModifierVG_AH0i9VariablesO0VSgAA7DividerVSgtGGGMd, &_s7SwiftUI6VStackVyAA7ForEachVyAA7BindingVySay8PaperKit24GraphableExpressionStateCGG10Foundation4UUIDVAA9TupleViewVyAA15ModifiedContentVyAA0O0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyASyAH0ijO0VAA14_PaddingLayoutVG_Qo_AA0U18AttachmentModifierVG_AH0i9VariablesO0VSgAA7DividerVSgtGGGMR);
}

uint64_t closure #1 in GraphableExpressionsView.body.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy8PaperKit020GraphableExpressionsC0CGMd, &_s7SwiftUI5StateVy8PaperKit020GraphableExpressionsC0CGMR);
  State.projectedValue.getter();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit25GraphableExpressionsStateCGMd, &_s7SwiftUI7BindingVy8PaperKit25GraphableExpressionsStateCGMR);
  Binding.subscript.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay8PaperKit24GraphableExpressionStateCGGMd, &_s7SwiftUI7BindingVySay8PaperKit24GraphableExpressionStateCGGMR);
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEy8PaperKit019GraphableExpressionD0VAA14_PaddingLayoutVG_Qo_AA0J18AttachmentModifierVG_AL0o9VariablesD0VSgAA7DividerVSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEy8PaperKit019GraphableExpressionD0VAA14_PaddingLayoutVG_Qo_AA0J18AttachmentModifierVG_AL0o9VariablesD0VSgAA7DividerVSgtGMR);
  lazy protocol witness table accessor for type Binding<[GraphableExpressionState]> and conformance <A> Binding<A>();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, GraphableVariablesView?, Divider?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEy8PaperKit019GraphableExpressionD0VAA14_PaddingLayoutVG_Qo_AA0J18AttachmentModifierVG_AL0o9VariablesD0VSgAA7DividerVSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEy8PaperKit019GraphableExpressionD0VAA14_PaddingLayoutVG_Qo_AA0J18AttachmentModifierVG_AL0o9VariablesD0VSgAA7DividerVSgtGMR, MEMORY[0x1E6981F48]);
  lazy protocol witness table accessor for type Binding<GraphableExpressionState> and conformance <A> Binding<A>();
  return ForEach<>.init(_:content:)();
}

uint64_t key path getter for GraphableExpressionsState.expressionStates : GraphableExpressionsState@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionsState and conformance GraphableExpressionsState, type metadata accessor for GraphableExpressionsState, &protocol conformance descriptor for GraphableExpressionsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

double key path setter for GraphableExpressionsState.expressionStates : GraphableExpressionsState(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionsState and conformance GraphableExpressionsState, type metadata accessor for GraphableExpressionsState, &protocol conformance descriptor for GraphableExpressionsState);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void closure #1 in implicit closure #1 in closure #1 in GraphableExpressionsView.body.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v83 = a4;
  v81 = type metadata accessor for Divider();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v78 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7DividerVSgMd, &_s7SwiftUI7DividerVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v82 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v77 - v11;
  v12 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v90 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for AccessibilityChildBehavior();
  v92 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v91 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy8PaperKit23GraphableExpressionViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy8PaperKit23GraphableExpressionViewVAA14_PaddingLayoutVGMR);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v77 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVy8PaperKit019GraphableExpressionC0VAA14_PaddingLayoutVG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVy8PaperKit019GraphableExpressionC0VAA14_PaddingLayoutVG_Qo_MR);
  v86 = *(v18 - 8);
  v87 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v77 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACy8PaperKit019GraphableExpressionE0VAA14_PaddingLayoutVG_Qo_AA0I18AttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACy8PaperKit019GraphableExpressionE0VAA14_PaddingLayoutVG_Qo_AA0I18AttachmentModifierVGMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v79 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v98 = &v77 - v24;
  v101 = a1;
  v102 = a2;
  v103 = a3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMd, &_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMR);
  MEMORY[0x1DA6CA790](&v99);
  v26 = v99;
  swift_getKeyPath();
  v101 = v26;
  v93 = lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = *(v26 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__graphableVariables);

  v28 = *(v27 + 16);

  v85 = v28;
  v94 = a1;
  v95 = a2;
  v101 = a1;
  v102 = a2;
  v96 = a3;
  v103 = a3;
  Binding.projectedValue.getter();
  v29 = v99;
  v89 = v100;
  KeyPath = swift_getKeyPath();
  *&v17[*(type metadata accessor for GraphableExpressionView(0) + 24)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0C6ValuesV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA0C6ValuesV_GMR);
  swift_storeEnumTagMultiPayload();
  *v17 = v29;
  *(v17 + 8) = v89;
  LOBYTE(v99) = v28 < 2;
  State.init(wrappedValue:)();
  v31 = v102;
  v17[24] = v101;
  *(v17 + 4) = v31;
  LOBYTE(KeyPath) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v32 = &v17[*(v15 + 36)];
  *v32 = KeyPath;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  v37 = v91;
  static AccessibilityChildBehavior.contain.getter();
  v38 = lazy protocol witness table accessor for type ModifiedContent<GraphableExpressionView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v84 = v20;
  *&v89 = v15;
  View.accessibilityElement(children:)();
  (*(v92 + 8))(v37, v97);
  outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s7SwiftUI15ModifiedContentVy8PaperKit23GraphableExpressionViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy8PaperKit23GraphableExpressionViewVAA14_PaddingLayoutVGMR);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v39);
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v104._object = 0x80000001D4082FE0;
  v40.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v40.value._object = 0xEB00000000656C62;
  v41._countAndFlagsBits = 0x6E6F697461757145;
  v42._object = 0x80000001D4082FC0;
  v104._countAndFlagsBits = 0xD000000000000028;
  v42._countAndFlagsBits = 0xD000000000000018;
  v41._object = 0xE800000000000000;
  v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, v40, paperKitBundle, v41, v104);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v43);

  v44._countAndFlagsBits = 32;
  v44._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v44);
  v45 = v95;
  v46 = v94;
  v101 = v94;
  v102 = v95;
  v47 = v96;
  v103 = v96;
  v97 = v25;
  MEMORY[0x1DA6CA790](&v99, v25);
  v48 = v99;
  swift_getKeyPath();
  v101 = v48;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v49 = *(v48 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__expressionIndex);

  if (__OFADD__(v49, 1))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v101 = v49 + 1;
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v50);
  LocalizedStringKey.init(stringInterpolation:)();
  v101 = v89;
  v102 = v38;
  swift_getOpaqueTypeConformance2();
  v51 = v87;
  v52 = v84;
  View.accessibilityLabel(_:)();

  (*(v86 + 8))(v52, v51);
  v53 = 0;
  v54 = 0;
  v55 = 0;
  if (v85 >= 2)
  {
    v101 = v46;
    v102 = v45;
    v103 = v47;
    Binding.projectedValue.getter();
    v53 = v99;
    v55 = *(&v100 + 1);
    v54 = v100;
  }

  v91 = v54;
  v92 = v55;
  v56 = v53;
  v101 = v46;
  v102 = v45;
  v103 = v47;
  v57 = v97;
  MEMORY[0x1DA6CA790](&v99, v97);
  v58 = v99;
  swift_getKeyPath();
  v59 = v45;
  v101 = v58;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v60 = *(v58 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__expressionIndex);

  v101 = v46;
  v102 = v59;
  v103 = v47;
  MEMORY[0x1DA6CA790](&v99, v57);
  v61 = v99;
  swift_getKeyPath();
  v101 = v61;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v62 = *(v61 + OBJC_IVAR____TtC8PaperKit24GraphableExpressionState__numExpressions);

  v63 = v88;
  if (__OFSUB__(v62, 1))
  {
    goto LABEL_12;
  }

  if (v60 >= v62 - 1)
  {
    v68 = 1;
    v67 = v81;
    v65 = v80;
  }

  else
  {
    v64 = v78;
    Divider.init()();
    v65 = v80;
    v66 = v64;
    v67 = v81;
    (*(v80 + 32))(v63, v66, v81);
    v68 = 0;
  }

  (*(v65 + 56))(v63, v68, 1, v67);
  v69 = v98;
  v70 = v79;
  outlined init with copy of Date?(v98, v79, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACy8PaperKit019GraphableExpressionE0VAA14_PaddingLayoutVG_Qo_AA0I18AttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACy8PaperKit019GraphableExpressionE0VAA14_PaddingLayoutVG_Qo_AA0I18AttachmentModifierVGMR);
  v71 = v82;
  outlined init with copy of Divider?(v63, v82);
  v72 = v83;
  outlined init with copy of Date?(v70, v83, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACy8PaperKit019GraphableExpressionE0VAA14_PaddingLayoutVG_Qo_AA0I18AttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACy8PaperKit019GraphableExpressionE0VAA14_PaddingLayoutVG_Qo_AA0I18AttachmentModifierVGMR);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACy8PaperKit019GraphableExpressionE0VAA14_PaddingLayoutVG_Qo_AA0I18AttachmentModifierVG_AJ0n9VariablesE0VSgAA7DividerVSgtMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACy8PaperKit019GraphableExpressionE0VAA14_PaddingLayoutVG_Qo_AA0I18AttachmentModifierVG_AJ0n9VariablesE0VSgAA7DividerVSgtMR);
  v74 = (v72 + *(v73 + 48));
  v76 = v91;
  v75 = v92;
  *v74 = v56;
  v74[1] = v76;
  v74[2] = v75;
  outlined init with copy of Divider?(v71, v72 + *(v73 + 64));
  outlined copy of GraphableVariablesView?(v56, v76, v75);
  outlined consume of GraphableVariablesView?(v56, v76, v75);
  outlined destroy of StocksKitCurrencyCache.Provider?(v63, &_s7SwiftUI7DividerVSgMd, &_s7SwiftUI7DividerVSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACy8PaperKit019GraphableExpressionE0VAA14_PaddingLayoutVG_Qo_AA0I18AttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACy8PaperKit019GraphableExpressionE0VAA14_PaddingLayoutVG_Qo_AA0I18AttachmentModifierVGMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v71, &_s7SwiftUI7DividerVSgMd, &_s7SwiftUI7DividerVSgMR);
  outlined consume of GraphableVariablesView?(v56, v76, v75);
  outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACy8PaperKit019GraphableExpressionE0VAA14_PaddingLayoutVG_Qo_AA0I18AttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACy8PaperKit019GraphableExpressionE0VAA14_PaddingLayoutVG_Qo_AA0I18AttachmentModifierVGMR);
}

unint64_t lazy protocol witness table accessor for type Binding<[GraphableExpressionState]> and conformance <A> Binding<A>()
{
  result = lazy protocol witness table cache variable for type Binding<[GraphableExpressionState]> and conformance <A> Binding<A>;
  if (!lazy protocol witness table cache variable for type Binding<[GraphableExpressionState]> and conformance <A> Binding<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7BindingVySay8PaperKit24GraphableExpressionStateCGGMd, &_s7SwiftUI7BindingVySay8PaperKit24GraphableExpressionStateCGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [GraphableExpressionState] and conformance [A], &_sSay8PaperKit24GraphableExpressionStateCGMd, &_sSay8PaperKit24GraphableExpressionStateCGMR, MEMORY[0x1E69E6318]);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [GraphableExpressionState] and conformance [A], &_sSay8PaperKit24GraphableExpressionStateCGMd, &_sSay8PaperKit24GraphableExpressionStateCGMR, MEMORY[0x1E69E6338]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Binding<[GraphableExpressionState]> and conformance <A> Binding<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Binding<GraphableExpressionState> and conformance <A> Binding<A>()
{
  result = lazy protocol witness table cache variable for type Binding<GraphableExpressionState> and conformance <A> Binding<A>;
  if (!lazy protocol witness table cache variable for type Binding<GraphableExpressionState> and conformance <A> Binding<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMd, &_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMR);
    lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Binding<GraphableExpressionState> and conformance <A> Binding<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GraphableExpressionView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GraphableExpressionView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GraphableExpressionView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy8PaperKit23GraphableExpressionViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy8PaperKit23GraphableExpressionViewVAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(&lazy protocol witness table cache variable for type GraphableExpressionView and conformance GraphableExpressionView, type metadata accessor for GraphableExpressionView, &protocol conformance descriptor for GraphableExpressionView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GraphableExpressionView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type GraphableExpressionsState and conformance GraphableExpressionsState(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of Divider?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7DividerVSgMd, &_s7SwiftUI7DividerVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of GraphableVariablesView?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return v3;
}

double outlined consume of GraphableVariablesView?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

void closure #1 in StickerDragPreviewContainerView._animateLift(alongside:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v16 = partial apply for closure #1 in closure #1 in StickerDragPreviewContainerView._animateLift(alongside:completion:);
  v17 = v7;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v15 = &block_descriptor_70;
  v8 = _Block_copy(&v12);
  v9 = a1;

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v16 = partial apply for closure #2 in closure #1 in StickerDragPreviewContainerView._animateLiftCancellation(alongside:completion:);
  v17 = v10;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v15 = &block_descriptor_76;
  v11 = _Block_copy(&v12);

  [v6 animateWithDuration:0 delay:v8 usingSpringWithDamping:v11 initialSpringVelocity:3.0 options:0.0 animations:0.95 completion:0.0];
  _Block_release(v11);
  _Block_release(v8);
}

void closure #1 in StickerDragPreviewContainerView._animateLiftCancellation(alongside:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v16 = partial apply for closure #1 in closure #1 in StickerDragPreviewContainerView._animateLiftCancellation(alongside:completion:);
  v17 = v7;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v15 = &block_descriptor_48;
  v8 = _Block_copy(&v12);
  v9 = a1;

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v16 = partial apply for closure #2 in closure #1 in StickerDragPreviewContainerView._animateLiftCancellation(alongside:completion:);
  v17 = v10;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v15 = &block_descriptor_54;
  v11 = _Block_copy(&v12);

  [v6 animateWithDuration:0 delay:v8 usingSpringWithDamping:v11 initialSpringVelocity:2.0 options:0.0 animations:0.95 completion:0.0];
  _Block_release(v11);
  _Block_release(v8);
}

Swift::Void __swiftcall StickerDragPreviewContainerView.peelAnimation()()
{
  v0[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_isLifted] = 1;
  v1 = *&v0[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_shadowView];
  if (v1)
  {
    v2 = v1;
    [v2 center];
    v4 = v3;
    [v2 center];
    [v2 setCenter_];
    [v2 setAlpha_];
    CGAffineTransformMakeScale(&v53, 1.2, 1.2);
    [v2 setTransform_];
  }

  v6 = *&v0[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_meshView];
  if (v6)
  {
    v7 = v6;
    [v7 center];
    v9 = v8;
    [v7 center];
    v11 = v10;
    [v0 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    CGAffineTransformMakeScale(&v53, 1.2, 1.2);
    CGAffineTransformInvert(&v52, &v53);
    v53 = v52;
    v54.origin.x = v13;
    v54.origin.y = v15;
    v54.size.width = v17;
    v54.size.height = v19;
    v55 = CGRectApplyAffineTransform(v54, &v53);
    Height = CGRectGetHeight(v55);
    [v7 setCenter_];
  }

  v21 = *&v0[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_transformView];
  if (v21)
  {
    v22 = v21;
    [v22 center];
    v24 = v23;
    [v22 center];
    v26 = v25;
    [v0 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    CGAffineTransformMakeScale(&v53, 1.2, 1.2);
    CGAffineTransformInvert(&v52, &v53);
    v53 = v52;
    v56.origin.x = v28;
    v56.origin.y = v30;
    v56.size.width = v32;
    v56.size.height = v34;
    v57 = CGRectApplyAffineTransform(v56, &v53);
    v35 = CGRectGetHeight(v57);
    [v22 setCenter_];
  }

  v36 = *&v0[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_shineView];
  if (v36)
  {
    v37 = v36;
    [v37 frame];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    [v0 bounds];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    CGAffineTransformMakeScale(&v53, 1.2, 1.2);
    CGAffineTransformInvert(&v52, &v53);
    v53 = v52;
    v58.origin.x = v45;
    v58.origin.y = v47;
    v58.size.width = v49;
    v58.size.height = v51;
    v59 = CGRectApplyAffineTransform(v58, &v53);
    [v37 setFrame_];
  }
}

Swift::Void __swiftcall StickerDragPreviewContainerView.stickAnimation()()
{
  v0[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_isLifted] = 0;
  v1 = *&v0[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_shadowView];
  if (v1)
  {
    v2 = v1;
    [v2 center];
    v4 = v3;
    [v2 center];
    [v2 setCenter_];
    [v2 setAlpha_];
    v39.a = 1.0;
    v39.b = 0.0;
    v39.c = 0.0;
    v39.d = 1.0;
    v39.tx = 0.0;
    v39.ty = 0.0;
    [v2 setTransform_];
  }

  v6 = *&v0[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_meshView];
  if (v6)
  {
    v7 = v6;
    [v7 center];
    v9 = v8;
    [v7 center];
    v11 = v10;
    [v0 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    CGAffineTransformMakeScale(&v39, 1.2, 1.2);
    CGAffineTransformInvert(&v38, &v39);
    v39 = v38;
    v40.origin.x = v13;
    v40.origin.y = v15;
    v40.size.width = v17;
    v40.size.height = v19;
    v41 = CGRectApplyAffineTransform(v40, &v39);
    Height = CGRectGetHeight(v41);
    [v7 setCenter_];
  }

  v21 = *&v0[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_transformView];
  if (v21)
  {
    v22 = v21;
    [v22 center];
    v24 = v23;
    [v22 center];
    v26 = v25;
    [v0 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    CGAffineTransformMakeScale(&v39, 1.2, 1.2);
    CGAffineTransformInvert(&v38, &v39);
    v39 = v38;
    v42.origin.x = v28;
    v42.origin.y = v30;
    v42.size.width = v32;
    v42.size.height = v34;
    v43 = CGRectApplyAffineTransform(v42, &v39);
    v35 = CGRectGetHeight(v43);
    [v22 setCenter_];
  }

  v36 = *&v0[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_shineView];
  if (v36)
  {
    v37 = v36;
    [v37 frame];
    [v37 setFrame_];
  }
}

id StickerDragPreviewContainerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerDragPreviewContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized static StickerDragPreviewContainerView._UIStickerMeshTransformForLiftedScale(_:)(double a1)
{
  memset(v13, 0, sizeof(v13));
  v14 = (a1 + -1.0) / a1 + (a1 + -1.0) / a1;
  v15 = xmmword_1D4059320;
  v16 = xmmword_1D4059320;
  v17 = v14;
  v18 = xmmword_1D405C870;
  v19 = xmmword_1D405C870;
  v21 = xmmword_1D405C880;
  v22 = xmmword_1D405C880;
  v20 = v14;
  v23 = v14;
  v24 = xmmword_1D405C890;
  v25 = xmmword_1D405C890;
  v27 = xmmword_1D405C8A0;
  v28 = xmmword_1D405C8A0;
  v26 = v14;
  v29 = v14;
  v30 = xmmword_1D405C8B0;
  v31 = xmmword_1D405C8B0;
  v32 = v14;
  v33 = 0x3FF0000000000000;
  v34 = xmmword_1D405C8C0;
  v35 = 0x3FD3333333333333;
  v36 = v14;
  v37 = xmmword_1D405C8D0;
  v38 = xmmword_1D405C8D0;
  v39 = v14;
  v40 = 0x3FF0000000000000;
  v41 = xmmword_1D405C8E0;
  v42 = 0x3FD999999999999ALL;
  v43 = v14;
  v44 = xmmword_1D405C8F0;
  v45 = xmmword_1D405C8F0;
  v46 = v14;
  v47 = 0x3FF0000000000000;
  v48 = xmmword_1D405C900;
  v49 = 0x3FE0000000000000;
  v50 = v14;
  v51 = xmmword_1D405C910;
  v52 = xmmword_1D405C910;
  v53 = xmmword_1D4059310;
  v54 = xmmword_1D405C920;
  v55 = 0x3FE3333333333333;
  v56 = 0u;
  v57 = 0x3FE6666666666666;
  v58 = xmmword_1D405C930;
  v59 = xmmword_1D4059310;
  v60 = xmmword_1D405C940;
  v61 = 0x3FE6666666666666;
  v62 = 0u;
  v63 = 0x3FE999999999999ALL;
  v64 = xmmword_1D405C950;
  v65 = xmmword_1D4059310;
  v66 = xmmword_1D405C960;
  v67 = 0x3FE999999999999ALL;
  v68 = 0u;
  v69 = 0x3FECCCCCCCCCCCCDLL;
  v70 = xmmword_1D405C970;
  v71 = xmmword_1D4059310;
  v72 = xmmword_1D405C980;
  v73 = 0x3FECCCCCCCCCCCCDLL;
  v74 = 0u;
  v75 = 0x3FF0000000000000;
  v76 = xmmword_1D4059310;
  v77 = xmmword_1D4059310;
  __asm { FMOV            V1.2D, #1.0 }

  v78 = _Q1;
  v79 = xmmword_1D4059320;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = objc_allocWithZone(MEMORY[0x1E69793D8]);
  v10 = MEMORY[0x1DA6CCED0](v6, v8);

  v11 = [v9 initWithVertexCount:22 vertices:v13 faceCount:10 faces:&unk_1F4F51600 depthNormalization:v10];

  return v11;
}

void specialized StickerDragPreviewContainerView._preparePreviewContainer(preview:source:initialTransform:)(void *a1, void *a2)
{
  v3 = v2;
  [v2 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  CGAffineTransformMakeScale(&v177, 1.2, 1.2);
  CGAffineTransformInvert(&v184, &v177);
  v177 = v184;
  v185.origin.x = v6;
  v185.origin.y = v8;
  v185.size.width = v10;
  v185.size.height = v12;
  v186 = CGRectApplyAffineTransform(v185, &v177);
  x = v186.origin.x;
  y = v186.origin.y;
  width = v186.size.width;
  height = v186.size.height;
  v17 = CGRectGetWidth(v186);
  v175 = x;
  rect = y;
  v187.origin.x = x;
  v187.origin.y = y;
  v173 = height;
  v174 = width;
  v187.size.width = width;
  v187.size.height = height;
  v18 = CGRectGetHeight(v187);
  [v2 bounds];
  v19 = v188.origin.x;
  v20 = v188.origin.y;
  v21 = v188.size.width;
  v22 = v188.size.height;
  v189 = CGRectInset(v188, v17 * 0.1, v18 * 0.1);
  v23 = v189.origin.x;
  v24 = v189.origin.y;
  v25 = v189.size.width;
  v26 = v189.size.height;
  v27 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v2 addSubview_];
  v28 = [a2 snapshotViewAfterScreenUpdates_];
  if (v28)
  {
    v29 = v28;
    [v28 setFrame_];
    v163 = *MEMORY[0x1E6979928];
    v30 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    v162 = *MEMORY[0x1E6979BA8];
    [v30 setValue:isa forKey:?];

    v32 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    v33 = NSNumber.init(floatLiteral:)(1.8).super.super.isa;
    [v32 setValue:v33 forKey:*MEMORY[0x1E6979990]];

    v34 = [v29 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1D405C990;
    v36 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for CAFilter, 0x1E6979378);
    *(v35 + 32) = v30;
    *(v35 + 88) = v36;
    v164 = v36;
    *(v35 + 56) = v36;
    *(v35 + 64) = v32;
    v166 = v30;
    v165 = v32;
    v37 = Array._bridgeToObjectiveC()().super.isa;

    [v34 setFilters_];

    v38 = [v29 layer];
    v39 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.75 alpha:1.0];
    v40 = [v39 CGColor];

    [v38 setContentsMultiplyColor_];
    v41 = [v29 layer];
    v42 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    [v41 setCompositingFilter_];

    v43 = [v29 layer];
    [v43 setShouldRasterize_];

    [v29 center];
    [v29 setCenter_];
    [v29 setAlpha_];
    [v27 addSubview_];
    v44 = *&v3[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_shadowView];
    *&v3[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_shadowView] = v29;
    v172 = v29;

    v190.origin.x = v175;
    v190.origin.y = rect;
    v190.size.width = v174;
    v190.size.height = v173;
    v171 = CGRectGetWidth(v190) * 0.5;
    v191.origin.x = v175;
    v191.origin.y = rect;
    v191.size.width = v174;
    v191.size.height = v173;
    v169 = CGRectGetHeight(v191) * 0.5;
    v45 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    v46 = [v45 layer];
    v47 = *(MEMORY[0x1E69792E8] + 48);
    *&v177.tx = *(MEMORY[0x1E69792E8] + 32);
    v178 = v47;
    v179 = *(MEMORY[0x1E69792E8] + 64);
    v48 = *(MEMORY[0x1E69792E8] + 80);
    v49 = *(MEMORY[0x1E69792E8] + 16);
    *&v177.a = *MEMORY[0x1E69792E8];
    *&v177.c = v49;
    v180 = v48;
    v181 = 0xBFF0000000000000;
    v50 = *(MEMORY[0x1E69792E8] + 112);
    v182 = *(MEMORY[0x1E69792E8] + 96);
    v183 = v50;
    [v46 setSublayerTransform_];

    v167 = v27;
    [v27 addSubview_];
    v192.origin.x = v175;
    v192.origin.y = rect;
    v192.size.width = v174;
    v192.size.height = v173;
    v51 = CGRectGetWidth(v192) * 1.2;
    v193.origin.x = v175;
    v193.origin.y = rect;
    v193.size.width = v174;
    v193.size.height = v173;
    v52 = CGRectGetHeight(v193) * 1.2;
    [v3 bounds];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    CGAffineTransformMakeScale(&v177, 1.2, 1.2);
    CGAffineTransformInvert(&v184, &v177);
    v177 = v184;
    v194.origin.x = v54;
    v194.origin.y = v56;
    v194.size.width = v58;
    v194.size.height = v60;
    v195 = CGRectApplyAffineTransform(v194, &v177);
    v61 = CGRectGetHeight(v195);
    v62 = [objc_allocWithZone(MEMORY[0x1E69DD250]) &selRef_asset];
    v63 = [v62 layer];
    v64 = specialized static StickerDragPreviewContainerView._UIStickerMeshTransformForLiftedScale(_:)(1.2);
    [v63 setMeshTransform_];

    v65 = [v62 layer];
    v66 = [v3 traitCollection];
    [v66 displayScale];
    v68 = v67;

    [v65 setRasterizationScale_];
    [v45 addSubview_];
    v69 = *&v3[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_meshView];
    *&v3[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_meshView] = v62;
    v70 = v62;

    v71 = [objc_allocWithZone(MEMORY[0x1E69DD250]) &selRef_asset];
    [v70 addSubview_];
    v72 = *&v3[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_transformView];
    *&v3[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_transformView] = v71;
    v73 = v71;

    [v73 addSubview_];
    [v3 bounds];
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v81 = v80;
    CGAffineTransformMakeScale(&v177, 1.2, 1.2);
    CGAffineTransformInvert(&v184, &v177);
    v177 = v184;
    v196.origin.x = v75;
    v196.origin.y = v77;
    v196.size.width = v79;
    v196.size.height = v81;
    v197 = CGRectApplyAffineTransform(v196, &v177);
    v160 = v169 - CGRectGetHeight(v197) * 1.1 + -4.0;
    [v70 frame];
    MidX = CGRectGetMidX(v198);
    [v70 frame];
    MidY = CGRectGetMidY(v199);
    [v3 bounds];
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v90 = v89;
    CGAffineTransformMakeScale(&v177, 1.2, 1.2);
    CGAffineTransformInvert(&v184, &v177);
    v177 = v184;
    v200.origin.x = v84;
    v200.origin.y = v86;
    v200.size.width = v88;
    v200.size.height = v90;
    v201 = CGRectApplyAffineTransform(v200, &v177);
    v91 = MidY + CGRectGetHeight(v201) * 1.1 + 4.0;
    CGAffineTransformMakeScale(&v177, 1.2, 1.2);
    CGAffineTransformInvert(&v184, &v177);
    v177 = v184;
    [v45 setTransform_];
    [v3 bounds];
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v99 = v98;
    CGAffineTransformMakeScale(&v177, 1.2, 1.2);
    CGAffineTransformInvert(&v184, &v177);
    v177 = v184;
    v202.origin.x = v93;
    v202.origin.y = v95;
    v202.size.width = v97;
    v202.size.height = v99;
    v203 = CGRectApplyAffineTransform(v202, &v177);
    v100 = CGRectGetHeight(v203);
    v101 = v160 + v100 * 1.1 + v100 * 1.1;
    [v3 bounds];
    v103 = v102;
    v105 = v104;
    v107 = v106;
    v109 = v108;
    CGAffineTransformMakeScale(&v177, 1.2, 1.2);
    CGAffineTransformInvert(&v184, &v177);
    v177 = v184;
    v204.origin.x = v103;
    v204.origin.y = v105;
    v204.size.width = v107;
    v204.size.height = v109;
    v205 = CGRectApplyAffineTransform(v204, &v177);
    v110 = CGRectGetHeight(v205);
    v111 = v91 - (v110 * 1.1 + v110 * 1.1);
    v161 = v70;
    [v70 setCenter_];
    v112 = v73;
    [v73 setCenter_];
    [a1 setCenter_];
    v113 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
    [v113 setFrame_];
    v114 = [v172 layer];
    v115 = [v114 contents];

    if (v115)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_project_boxed_opaque_existential_1(&v177, *&v177.d);
      v115 = _bridgeAnythingToObjectiveC<A>(_:)();
      __swift_destroy_boxed_opaque_existential_0(&v177);
    }

    v170 = v113;
    [v113 setContents_];
    swift_unknownObjectRelease();
    v116 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    v117 = [v116 &selRef_influxRecipe];
    [v117 setMask_];

    v159 = v112;
    [v112 addSubview_];
    [v3 &selRef_setCurrentPDFPageIndex_];
    v119 = v118;
    v121 = v120;
    v123 = v122;
    v125 = v124;
    CGAffineTransformMakeScale(&v177, 1.2, 1.2);
    CGAffineTransformInvert(&v184, &v177);
    v177 = v184;
    v206.origin.x = v119;
    v206.origin.y = v121;
    v206.size.width = v123;
    v206.size.height = v125;
    v207 = CGRectApplyAffineTransform(v206, &v177);
    v126 = CGRectGetHeight(v207) * 1.1;
    v208.origin.x = v175;
    v208.origin.y = rect;
    v208.size.width = v174;
    v208.size.height = v173;
    v127 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    [v116 center];
    v129 = v128;
    v131 = v130;
    CGAffineTransformMakeScale(&v177, 1.2, 1.2);
    [v116 setTransform_];
    [v116 setCenter_];
    [v116 addSubview_];
    v132 = *&v3[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_shineView];
    *&v3[OBJC_IVAR____TtC8PaperKit31StickerDragPreviewContainerView_shineView] = v127;
    v133 = v127;

    v134 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    v135 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v134 setValue:v135 forKey:v162];

    v136 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
    [v3 &selRef_setCurrentPDFPageIndex_];
    [v136 setBounds_];
    [v136 setPosition_];
    v137 = objc_opt_self();
    v138 = [v137 whiteColor];
    v139 = [v138 CGColor];

    [v136 setBackgroundColor_];
    v140 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    [v136 setCompositingFilter_];

    LODWORD(v141) = 1035489772;
    [v136 setOpacity_];
    v142 = swift_allocObject();
    *(v142 + 16) = xmmword_1D4058CF0;
    *(v142 + 56) = v164;
    *(v142 + 32) = v134;
    v143 = v134;
    v144 = Array._bridgeToObjectiveC()().super.isa;

    [v136 setFilters_];

    [v136 setShouldRasterize_];
    v145 = [v3 traitCollection];
    [v145 displayScale];
    v147 = v146;

    [v136 setRasterizationScale_];
    v148 = [v133 layer];
    [v148 addSublayer_];

    v149 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
    [v3 bounds];
    [v149 setBounds_];
    [v136 position];
    [v149 setPosition_];
    v151 = [v137 blackColor];
    v152 = [v151 CGColor];

    [v149 setBackgroundColor_];
    LODWORD(v153) = 1043542835;
    [v149 setOpacity_];
    v154 = swift_allocObject();
    *(v154 + 16) = xmmword_1D4058CF0;
    *(v154 + 56) = v164;
    *(v154 + 32) = v143;
    v155 = v143;
    v156 = Array._bridgeToObjectiveC()().super.isa;

    [v149 setFilters_];

    [v149 setShouldRasterize_];
    [v136 rasterizationScale];
    [v149 setRasterizationScale_];
    v157 = [v133 layer];
    [v157 addSublayer_];
  }

  else
  {
    __break(1u);
  }
}

void specialized StickerDragPreviewContainerView._animateDrop(alongside:completion:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  v15 = partial apply for closure #1 in StickerDragPreviewContainerView._animateDrop(alongside:completion:);
  v16 = v6;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v14 = &block_descriptor_4;
  v7 = _Block_copy(&v11);
  v8 = v2;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v15 = partial apply for closure #2 in StickerDragPreviewContainerView._animateDrop(alongside:completion:);
  v16 = v9;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v14 = &block_descriptor_32;
  v10 = _Block_copy(&v11);

  [v5 animateWithDuration:0 delay:v7 usingSpringWithDamping:v10 initialSpringVelocity:2.0 options:0.0 animations:0.95 completion:0.0];
  _Block_release(v10);
  _Block_release(v7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_38Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t one-time initialization function for markupToolbarVC()
{
  type metadata accessor for MarkupToolbarViewController();
  result = swift_allocObject();
  markupToolbarVC = result;
  return result;
}

uint64_t closure #1 in PaperMarkupViewController.setScreenPotentialHeadroom(_:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a5;
  *(v5 + 48) = a1;
  type metadata accessor for MainActor();
  *(v5 + 64) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.setScreenPotentialHeadroom(_:), v7, v6);
}

uint64_t closure #1 in PaperMarkupViewController.setScreenPotentialHeadroom(_:)()
{

  if (one-time initialization token for extensionLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, extensionLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 6);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D38C4000, v2, v3, "canvasView setScreenPotentialHeadroom: %f", v5, 0xCu);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView);
    v8 = Strong;
    v9 = v7;

    if (v7)
    {
      v10 = v0[6];
      v11 = *&v9[OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride];
      if (v11 == v10)
      {
        *&v9[OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride] = v10;
        AnyCanvas._potentialHeadroomOverride.didset(v11);
      }

      else
      {
        swift_getKeyPath();
        v12 = swift_task_alloc();
        *(v12 + 16) = v9;
        *(v12 + 24) = v10;
        *(v0 + 5) = v9;
        lazy protocol witness table accessor for type PaperMarkupViewController and conformance PaperMarkupViewController(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  v13 = *(v0 + 1);

  return v13();
}

uint64_t closure #1 in PaperMarkupViewController.setEnableUndo(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 64) = a4;
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.setEnableUndo(_:), v7, v6);
}

uint64_t closure #1 in PaperMarkupViewController.setEnableUndo(_:)()
{

  if (one-time initialization token for extensionLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, extensionLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 64);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D38C4000, v2, v3, "setEnableUndo %{BOOL}d", v5, 8u);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(v0 + 64);
    if (v7 == Strong[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__undoIsEnabled])
    {
      Strong[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__undoIsEnabled] = v7;
    }

    else
    {
      v8 = Strong;
      swift_getKeyPath();
      v9 = swift_task_alloc();
      *(v9 + 16) = v8;
      *(v9 + 24) = v7;
      *(v0 + 40) = v8;
      lazy protocol witness table accessor for type PaperMarkupViewController and conformance PaperMarkupViewController(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t PaperMarkupViewController.setDataModel(_:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22[-v12];
  outlined copy of Data._Representation(a1, a2);
  PaperMarkup.init(dataRepresentation:)(a1, a2, v13);
  v14 = type metadata accessor for PaperMarkup(0);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of Date?(v13, v10, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  v19[2] = v17;
  v19[3] = v20;
  v19[4] = v16;
  outlined init with take of PaperMarkup?(v10, v19 + v18);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.setDataModel(_:), v19);

  return outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
}

uint64_t closure #1 in PaperMarkupViewController.setDataModel(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
  v5[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v6 = type metadata accessor for PaperMarkup(0);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.setDataModel(_:), v8, v7);
}

uint64_t closure #1 in PaperMarkupViewController.setDataModel(_:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[11];
    v4 = v0[12];
    v5 = v0[10];
    outlined init with copy of Date?(v0[7], v5, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v0[10], &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
    }

    else
    {
      v6 = v0[13];
      v7 = v0[8];
      outlined init with take of PaperMarkup(v0[10], v6, type metadata accessor for PaperMarkup);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
      v9 = *(v8 - 8);
      (*(v9 + 16))(v7, v6, v8);
      (*(v9 + 56))(v7, 0, 1, v8);
      swift_unknownObjectRetain();
      v10 = PaperMarkupViewController.newMulticastConnection(model:hostProxy:)(v7);
      swift_unknownObjectRelease();
      outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
      swift_getKeyPath();
      v11 = swift_task_alloc();
      *(v11 + 16) = v2;
      *(v11 + 24) = v10;
      v0[5] = v2;
      lazy protocol witness table accessor for type PaperMarkupViewController and conformance PaperMarkupViewController(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      outlined destroy of PaperMarkup(v6, type metadata accessor for PaperMarkup);
    }

    v12 = v0[9];
    outlined init with copy of Date?(v0[7], v12, &_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
    PaperMarkupViewController.markup.setter(v12);
  }

  v13 = v0[1];

  return v13();
}

double PaperMarkupViewController.setSelection(_:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - v5;
  outlined copy of Data._Representation(a1, a2);
  lazy protocol witness table accessor for type CanvasMembers and conformance CanvasMembers();
  CRValue.init(serializedData:)();
  v7 = v16;
  v8 = v17;
  v9 = type metadata accessor for TaskPriority();
  v15[0] = v15[2];
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = v10;
  *(v12 + 40) = v15[0];
  *(v12 + 56) = v7;
  *(v12 + 64) = v8;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.setSelection(_:), v12);

  return result;
}

uint64_t closure #1 in PaperMarkupViewController.setSelection(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 88) = a8;
  *(v8 + 64) = a6;
  *(v8 + 72) = a7;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 40) = a1;
  type metadata accessor for MainActor();
  *(v8 + 80) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.setSelection(_:), v10, v9);
}

uint64_t closure #1 in PaperMarkupViewController.setSelection(_:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView), v3 = Strong, v4 = v2, v3, v2))
  {
    v5 = *(v0 + 88);
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v8 = *(v0 + 56);

    AnyCanvas.selection.setter(v8, v7, v6, v5 & 1);

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  **(v0 + 40) = v9;
  v10 = *(v0 + 8);

  return v10();
}

Swift::Void __swiftcall PaperMarkupViewController.insertNewShape(_:)(Swift::Int a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  PaperNewShapeType_Internal.init(rawValue:)(a1);
  v5 = 0;
  if (v12 <= 5u)
  {
    if (v12 <= 2u)
    {
      if (v12)
      {
        if (v12 == 1)
        {
          v5 = 1;
          goto LABEL_20;
        }

LABEL_16:
        v5 = 5;
      }

LABEL_20:
      v6 = type metadata accessor for TaskPriority();
      (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v8 = static MainActor.shared.getter();
      v9 = swift_allocObject();
      v10 = MEMORY[0x1E69E85E0];
      *(v9 + 16) = v8;
      *(v9 + 24) = v10;
      *(v9 + 32) = v7;
      *(v9 + 40) = v5;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.insertNewShape(_:), v9);

      return;
    }

    if (v12 != 3)
    {
      if (v12 == 4)
      {
        v5 = 3;
      }

      else
      {
        v5 = 4;
      }

      goto LABEL_20;
    }

LABEL_17:
    v5 = 2;
    goto LABEL_20;
  }

  if (v12 <= 8u)
  {
    if (v12 == 6)
    {
      goto LABEL_16;
    }

    if (v12 == 7)
    {
      v5 = 6;
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v12 == 9)
  {
    v5 = 7;
    goto LABEL_20;
  }

  if (v12 == 10)
  {
    goto LABEL_20;
  }
}

uint64_t closure #1 in PaperMarkupViewController.insertNewShape(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.insertNewShape(_:), v7, v6);
}

uint64_t closure #1 in PaperMarkupViewController.insertNewShape(_:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView), v3 = Strong, v4 = v2, v3, v2))
  {
    if (one-time initialization token for markupToolbarVC != -1)
    {
      swift_once();
    }

    specialized NewCanvasElementDelegate.addNewCanvasElement(_:)(0x907060504030100uLL >> (8 * *(v0 + 64)));

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  **(v0 + 40) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t closure #1 in PaperMarkupViewController.insertNewLine(lineStartMarker:lineEndMarker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 65) = a6;
  *(v6 + 64) = a5;
  *(v6 + 40) = a1;
  *(v6 + 48) = a4;
  type metadata accessor for MainActor();
  *(v6 + 56) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.insertNewLine(lineStartMarker:lineEndMarker:), v8, v7);
}

uint64_t closure #1 in PaperMarkupViewController.insertNewLine(lineStartMarker:lineEndMarker:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView), v3 = Strong, v4 = v2, v3, v2))
  {
    if (one-time initialization token for markupToolbarVC != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 65);
    v6 = *(v0 + 64);

    specialized Canvas.markupToolbarViewController(_:insertNewLineWithStartMarker:endMarker:)(v6, v5);

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  **(v0 + 40) = v7;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t PaperMarkupViewController.insertNew(contentsOf:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24[-v8];
  v10 = type metadata accessor for PaperMarkup(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24[-v15];
  outlined copy of Data._Representation(a1, a2);
  PaperMarkup.init(dataRepresentation:)(a1, a2, v9);
  (*(v11 + 56))(v9, 0, 1, v10);
  outlined init with take of PaperMarkup(v9, v16, type metadata accessor for PaperMarkup);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of PaperMarkup(v16, v13, type metadata accessor for PaperMarkup);
  type metadata accessor for MainActor();

  v19 = static MainActor.shared.getter();
  v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  v21[2] = v19;
  v21[3] = v22;
  v21[4] = v18;
  outlined init with take of PaperMarkup(v13, v21 + v20, type metadata accessor for PaperMarkup);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.insertNew(contentsOf:), v21);

  return outlined destroy of PaperMarkup(v16, type metadata accessor for PaperMarkup);
}

uint64_t closure #1 in PaperMarkupViewController.insertNew(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.insertNew(contentsOf:), v7, v6);
}

uint64_t closure #1 in PaperMarkupViewController.insertNew(contentsOf:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView), v3 = Strong, v4 = v2, v3, v2))
  {
    if (one-time initialization token for markupToolbarVC != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 56);

    specialized Canvas.markupToolbarViewController(_:insertNewContents:)(v5);

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  **(v0 + 40) = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t closure #1 in PaperMarkupViewController.insertNewTextbox()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.insertNewTextbox(), v6, v5);
}

uint64_t closure #1 in PaperMarkupViewController.insertNewTextbox()()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_canvasView), v3 = Strong, v4 = v2, v3, v2))
  {
    if (one-time initialization token for markupToolbarVC != -1)
    {
      swift_once();
    }

    specialized NewCanvasElementDelegate.addNewCanvasElement(_:)(10);

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  **(v0 + 40) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t closure #1 in PaperMarkupViewController.setIndirectPointerTouchMode(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.setIndirectPointerTouchMode(_:), v7, v6);
}

uint64_t closure #1 in PaperMarkupViewController.setIndirectPointerTouchMode(_:)()
{
  v10 = v0;
  v1 = v0[9];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (v1 < 5) & (4u >> v1);
    v5 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__indirectPointerTouchMode;
    swift_beginAccess();
    if (v4 == v3[v5])
    {
      v9[0] = v4;
      PaperMarkupViewController._indirectPointerTouchMode.setter(v9);
    }

    else
    {
      swift_getKeyPath();
      v6 = swift_task_alloc();
      *(v6 + 16) = v3;
      *(v6 + 24) = v4;
      v0[8] = v3;
      lazy protocol witness table accessor for type PaperMarkupViewController and conformance PaperMarkupViewController(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v7 = v0[1];

  return v7();
}

void @objc PaperMarkupViewController.setUserInterfaceStyle(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v13 = a1;

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = a3;
  v15[5] = v12;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, a5, v15);
}

uint64_t closure #1 in PaperMarkupViewController.xpc_setContentVisibleFrame(_:animated:)(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *(v9 + 104) = a9;
  *(v9 + 80) = a4;
  *(v9 + 88) = a5;
  *(v9 + 64) = a2;
  *(v9 + 72) = a3;
  *(v9 + 48) = a1;
  *(v9 + 56) = a8;
  type metadata accessor for MainActor();
  *(v9 + 96) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.xpc_setContentVisibleFrame(_:animated:), v11, v10);
}

uint64_t closure #1 in PaperMarkupViewController.xpc_setContentVisibleFrame(_:animated:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 104);
    v6 = *(v0 + 80);
    v7 = *(v0 + 64);
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = Strong;
    *(v3 + 40) = v6;
    *(v3 + 24) = v7;
    *(v3 + 56) = v2;
    *(v0 + 40) = Strong;
    lazy protocol witness table accessor for type PaperMarkupViewController and conformance PaperMarkupViewController(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  **(v0 + 48) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #1 in PaperMarkupViewController.setZoomRange(min:max:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 88) = a2;
  *(v6 + 96) = a3;
  *(v6 + 72) = a1;
  *(v6 + 80) = a6;
  type metadata accessor for MainActor();
  *(v6 + 104) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.setZoomRange(min:max:), v8, v7);
}

char *closure #1 in PaperMarkupViewController.setZoomRange(min:max:)()
{

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = result;
  if (result)
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    if (v4 > v3)
    {
      __break(1u);
      return result;
    }

    v5 = &result[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__zoomRange];
    swift_beginAccess();
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    if (*v5 == v4 && v5[1] == v3)
    {
      *v5 = v7;
      *(v5 + 1) = v6;
      PaperMarkupViewController._zoomRange.didset();
    }

    else
    {
      swift_getKeyPath();
      v9 = swift_task_alloc();
      v9[2] = v2;
      v9[3] = v7;
      v9[4] = v6;
      *(v0 + 64) = v2;
      lazy protocol witness table accessor for type PaperMarkupViewController and conformance PaperMarkupViewController(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  **(v0 + 72) = v2 == 0;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t closure #1 in PaperMarkupViewController.setIsEditable(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = a5;
  *(v5 + 48) = a1;
  *(v5 + 56) = a4;
  type metadata accessor for MainActor();
  *(v5 + 64) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.setIsEditable(_:), v7, v6);
}

uint64_t closure #1 in PaperMarkupViewController.setIsEditable(_:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    v3 = *(v0 + 72);
    v4 = *(Strong + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__isEditable);
    if (v3 == v4)
    {
      v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__isEditable] = v3;
      PaperMarkupViewController._isEditable.didset(v4);
    }

    else
    {
      swift_getKeyPath();
      v5 = swift_task_alloc();
      *(v5 + 16) = v2;
      *(v5 + 24) = v3;
      *(v0 + 40) = v2;
      lazy protocol witness table accessor for type PaperMarkupViewController and conformance PaperMarkupViewController(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  **(v0 + 48) = v2 == 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t closure #1 in PaperMarkupViewController.setTransparentBackground(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 88) = a5;
  *(v5 + 72) = a4;
  type metadata accessor for MainActor();
  *(v5 + 80) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.setTransparentBackground(_:), v7, v6);
}

uint64_t closure #1 in PaperMarkupViewController.setTransparentBackground(_:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 88);
    swift_getKeyPath();
    *(v0 + 40) = v2;
    lazy protocol witness table accessor for type PaperMarkupViewController and conformance PaperMarkupViewController(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__contentView;
    swift_beginAccess();
    if (*&v2[v4])
    {
      v5 = 1;
    }

    else
    {
      v5 = v3 == 0;
    }

    if (v5)
    {
      swift_getKeyPath();
      *(v0 + 64) = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (!*&v2[v4] || (*(v0 + 88) & 1) != 0)
      {

        goto LABEL_17;
      }

      swift_getKeyPath();
      v12 = swift_task_alloc();
      *(v12 + 16) = v2;
      *(v12 + 24) = 0;
      *(v0 + 64) = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      v6 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
      v7 = [objc_opt_self() clearColor];
      [v6 setBackgroundColor_];

      v8 = *&v2[v4];
      if (v8)
      {
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
        v9 = v6;
        v10 = v8;
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          PaperMarkupViewController._contentView.setter(v6);

          goto LABEL_17;
        }
      }

      swift_getKeyPath();
      v13 = swift_task_alloc();
      *(v13 + 16) = v2;
      *(v13 + 24) = v6;
      *(v0 + 64) = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

LABEL_17:
  v14 = *(v0 + 8);

  return v14();
}

double PaperMarkupViewController.xpc_setSupportedFeatureSet(_:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - v3;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  lazy protocol witness table accessor for type FeatureSet_Internal and conformance FeatureSet_Internal();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v13 = v12[1];
  v14 = v12[2];
  v15 = v12[3];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 32) = v6;
  v10 = v14;
  *(v8 + 40) = v13;
  *(v8 + 56) = v10;
  *(v8 + 72) = v15;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.xpc_setSupportedFeatureSet(_:), v8);

  return result;
}

uint64_t closure #1 in PaperMarkupViewController.xpc_setSupportedFeatureSet(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.xpc_setSupportedFeatureSet(_:), v7, v6);
}

uint64_t closure #1 in PaperMarkupViewController.xpc_setSupportedFeatureSet(_:)()
{
  v10 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    FeatureSet_Internal.apiFeatureSet.getter(v4);
    v7[0] = v4[0];
    v7[1] = v4[1];
    v8 = v5;
    v9 = v6;
    PaperMarkupViewController._supportedFeatureSet.setter(v7);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in PaperMarkupViewController.xpc_receiveMulticastData(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a1;
  v6[7] = a4;
  type metadata accessor for MainActor();
  v6[10] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.xpc_receiveMulticastData(_:), v8, v7);
}

uint64_t closure #1 in PaperMarkupViewController.xpc_receiveMulticastData(_:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, swift_getKeyPath(), *(v0 + 40) = v2, lazy protocol witness table accessor for type PaperMarkupViewController and conformance PaperMarkupViewController(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v3 = *&v2[OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController__multicastConnection], , v2, v3))
  {
    CRMulticastSyncManager.receive(_:)();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  **(v0 + 48) = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t closure #1 in PaperMarkupViewController.xpc_receiveFileBookmark(_:)()
{
  v1 = type metadata accessor for ContinuousClock();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.xpc_receiveFileBookmark(_:), 0, 0);
}

{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = closure #1 in PaperMarkupViewController.xpc_receiveFileBookmark(_:);

  return specialized Clock.sleep(for:tolerance:)(5000000000000000000, 0, 0, 0, 1);
}

{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  *(*v1 + 48) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = closure #1 in PaperMarkupViewController.xpc_receiveFileBookmark(_:);
  }

  else
  {
    v5 = closure #1 in PaperMarkupViewController.xpc_receiveFileBookmark(_:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

double PaperMarkupViewController.xpc_startMulticast(sharedContextSecurityScopedUrl:)(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v27 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v27 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v27 - v16;
  if (a2 >> 60 != 15)
  {
    v27[0] = v2;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x1E696ACD0);
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSSecurityScopedURLWrapper, 0x1E696AE98);
    outlined copy of Data._Representation(a1, a2);
    v18 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (v18)
    {
      v25 = v18;
      v26 = [v18 url];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v9 + 32))(v17, v14, v8);
      if (URL.startAccessingSecurityScopedResource()())
      {
        type metadata accessor for CRContext();
        (*(v9 + 16))(v11, v17, v8);
        static CRContext.sharedContextURL.setter();
        outlined consume of Data?(a1, a2);
        (*(v9 + 8))(v17, v8);
        goto LABEL_4;
      }

      (*(v9 + 8))(v17, v8);
    }

    outlined consume of Data?(a1, a2);
LABEL_4:
    v2 = v27[0];
  }

  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  type metadata accessor for MainActor();
  v20 = v2;
  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v20;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.xpc_startMulticast(sharedContextSecurityScopedUrl:), v22);

  return result;
}

uint64_t closure #1 in PaperMarkupViewController.xpc_startMulticast(sharedContextSecurityScopedUrl:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
  v4[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.xpc_startMulticast(sharedContextSecurityScopedUrl:), v6, v5);
}

id closure #1 in PaperMarkupViewController.xpc_startMulticast(sharedContextSecurityScopedUrl:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  swift_unknownObjectRetain();
  v4 = PaperMarkupViewController.newMulticastConnection(model:hostProxy:)(v2);
  swift_unknownObjectRelease();
  outlined destroy of StocksKitCurrencyCache.Provider?(v2, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  v0[2] = v1;
  lazy protocol witness table accessor for type PaperMarkupViewController and conformance PaperMarkupViewController(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  result = [v1 view];
  if (result)
  {
    v7 = result;

    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor_];

    v9 = v0[1];

    return v9();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PaperMarkupViewController.xpc_setDrawingTool(_:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  PKTool_decode(dataRepresentation:)(a1, a2, &v13);
  if (!v14)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(&v13, &_s9PencilKit6PKTool_pSgMd, &_s9PencilKit6PKTool_pSgMR);
  }

  outlined init with take of PaperKitHashable(&v13, v15);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of FindResult(v15, &v13);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  outlined init with take of PaperKitHashable(&v13, (v10 + 5));

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.xpc_setDrawingTool(_:), v10);

  return __swift_destroy_boxed_opaque_existential_0(v15);
}

uint64_t closure #1 in PaperMarkupViewController.xpc_setDrawingTool(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[11] = a1;
  type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.xpc_setDrawingTool(_:), v7, v6);
}

uint64_t closure #1 in PaperMarkupViewController.xpc_setDrawingTool(_:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    outlined init with copy of FindResult(*(v0 + 104), v0 + 16);
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = Strong;
    *(v2 + 24) = v0 + 16;
    *(v0 + 80) = Strong;
    lazy protocol witness table accessor for type PaperMarkupViewController and conformance PaperMarkupViewController(&lazy protocol witness table cache variable for type PaperMarkupViewController and conformance PaperMarkupViewController, type metadata accessor for PaperMarkupViewController, &protocol conformance descriptor for PaperMarkupViewController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  **(v0 + 88) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

void @objc PaperMarkupViewController.setDataModel(_:)(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
{
  v6 = a3;
  v10 = a1;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  a4(v7, v9);
  outlined consume of Data._Representation(v7, v9);
}

uint64_t closure #1 in PaperMarkupViewController.xpc_setShowsVerticalScrollIndicator(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.xpc_setShowsVerticalScrollIndicator(_:), v7, v6);
}

uint64_t closure #1 in PaperMarkupViewController.xpc_setShowsVerticalScrollIndicator(_:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    PaperMarkupViewController.showsVerticalScrollIndicator.setter(*(v0 + 64));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in PaperMarkupViewController.xpc_setShowsHorizontalScrollIndicator(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperMarkupViewController.xpc_setShowsHorizontalScrollIndicator(_:), v7, v6);
}

uint64_t closure #1 in PaperMarkupViewController.xpc_setShowsHorizontalScrollIndicator(_:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    PaperMarkupViewController.showsHorizontalScrollIndicator.setter(*(v0 + 64));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void @objc PaperMarkupViewController.setIsEditable(_:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void, char *, uint64_t, uint64_t, __n128))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v15 = a1;

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = v14;
  *(v17 + 40) = a3;

  (a6)(0, 0, v12, a5, v17);
}

Swift::Void __swiftcall PaperMarkupViewController.accept(_:)(NSXPCConnection a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *&v4 = MEMORY[0x1EEE9AC00](v3 - 8).n128_u64[0];
  v6 = &v24 - v5;
  [(objc_class *)a1.super.isa setExportedObject:v1, v4];
  v7 = objc_opt_self();
  v8 = [v7 interfaceWithProtocol_];
  [(objc_class *)a1.super.isa setExportedInterface:v8];

  v9 = [v7 interfaceWithProtocol_];
  [(objc_class *)a1.super.isa setRemoteObjectInterface:v9];

  [(objc_class *)a1.super.isa resume];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static ScrollWheelEventSwizzler.shared;
  [(objc_class *)a1.super.isa auditToken];
  v11 = aBlock;
  v12 = v26;
  v13 = v27;
  v14 = v28;
  v15 = *(v10 + 16);

  os_unfair_lock_lock((v15 + 20));
  closure #1 in ScrollWheelEventSwizzler.enableScrollEventForwardingIfNecessary(_:)((v15 + 16), v11, v12, v13, v14);
  os_unfair_lock_unlock((v15 + 20));

  v29 = closure #1 in ExtensionViewController.accept(_:);
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v28 = &block_descriptor_5;
  v16 = _Block_copy(&aBlock);
  v17 = [(objc_class *)a1.super.isa synchronousRemoteObjectProxyWithErrorHandler:v16];
  _Block_release(v16);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18APIHostXPCProtocol_pMd, &_s8PaperKit18APIHostXPCProtocol_pMR);
  if (swift_dynamicCast())
  {
    v18 = v24;
  }

  else
  {
    v18 = 0;
  }

  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  type metadata accessor for MainActor();
  swift_unknownObjectRetain();
  v20 = v1;
  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v20;
  v22[5] = v18;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #2 in PaperMarkupViewController.accept(_:), v22);

  swift_unknownObjectRelease();
}

uint64_t closure #2 in PaperMarkupViewController.accept(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in PaperMarkupViewController.accept(_:), v7, v6);
}

uint64_t closure #2 in PaperMarkupViewController.accept(_:)()
{
  v1 = v0[3];
  v2 = v0[2];

  *(v2 + OBJC_IVAR____TtC8PaperKit25PaperMarkupViewController_hostProxy) = v1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #2 in PaperMarkupViewController.accept(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #2 in PaperMarkupViewController.accept(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.xpc_setShowsHorizontalScrollIndicator(_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperMarkupViewController.xpc_setShowsHorizontalScrollIndicator(_:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.xpc_setShowsVerticalScrollIndicator(_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperMarkupViewController.xpc_setShowsVerticalScrollIndicator(_:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.xpc_setDrawingTool(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperMarkupViewController.xpc_setDrawingTool(_:)(a1, v4, v5, v6, (v1 + 5));
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.xpc_startMulticast(sharedContextSecurityScopedUrl:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperMarkupViewController.xpc_startMulticast(sharedContextSecurityScopedUrl:)(a1, v4, v5, v6);
}

uint64_t specialized Canvas.markupToolbarViewController(_:insertNewLineWithStartMarker:endMarker:)(int a1, int a2)
{
  v123 = a1;
  v124 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
  v121 = *(v2 - 8);
  v122 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v120 = v82 - v3;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v130 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v82[0] = v82 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v118 = *(v5 - 8);
  v119 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v117 = v82 - v6;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v114 = v82 - v7;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMR);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v111 = v82 - v8;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = v82 - v9;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  MEMORY[0x1EEE9AC00](v105);
  v104 = v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v103 = v82 - v12;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  MEMORY[0x1EEE9AC00](v102);
  v101 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v100 = v82 - v15;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v96);
  v95 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v94 = v82 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v106 = v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v128 = v82 - v22;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v129);
  v24 = v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v82 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v82 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v82 - v32;
  v34 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v34);
  v83 = v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v99 = v82 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = (v82 - v39);
  v41 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = v82 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v110 = v82 - v45;
  if (one-time initialization token for defaultLine != -1)
  {
    swift_once();
  }

  v46 = *algn_1EC7C40D0;
  *v40 = static UIConstants.defaultLine;
  v40[1] = v46;
  v40[2] = xmmword_1EC7C40E0;
  swift_storeEnumTagMultiPayload();
  v47 = type metadata accessor for Color(0);
  v48 = *(v47 - 8);
  v125 = v34;
  v49 = *(v48 + 56);
  v127 = v40;
  v97 = v33;
  v49(v33, 1, 1, v47);
  v98 = v30;
  v49(v30, 1, 1, v47);
  v87 = v49;
  (*(v130 + 56))(v128, 1, 1, v126);
  type metadata accessor for CGRect(0);
  v92 = v50;
  v91 = lazy protocol witness table accessor for type PaperMarkupViewController and conformance PaperMarkupViewController(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v131 = 0u;
  v132 = 0u;
  CRRegister.init(wrappedValue:)();
  *&v131 = 0;
  v82[1] = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(_:)();
  v93 = *(v41 + 24);
  v49(v27, 1, 1, v47);
  outlined init with copy of Date?(v27, v24, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v89 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v90 = *(v41 + 28);
  v87(v27, 1, 1, v47);
  v88 = v27;
  outlined init with copy of Date?(v27, v24, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v51 = v41;
  v52 = v43;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v87 = v51[8];
  *&v131 = 0x4014000000000000;
  CRRegister.init(wrappedValue:)();
  v85 = v51[9];
  v53 = v99;
  swift_storeEnumTagMultiPayload();
  v86 = type metadata accessor for ShapeType;
  outlined init with copy of PaperMarkup(v53, v83, type metadata accessor for ShapeType);
  v84 = lazy protocol witness table accessor for type PaperMarkupViewController and conformance PaperMarkupViewController(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType, &protocol conformance descriptor for ShapeType);
  CRRegister.init(wrappedValue:)();
  outlined destroy of PaperMarkup(v53, type metadata accessor for ShapeType);
  *&v131 = 0x3FF0000000000000;
  CRRegister.init(wrappedValue:)();
  *&v131 = 0;
  BYTE8(v131) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMR, MEMORY[0x1E69950E8]);
  CRRegister.init(wrappedValue:)();
  *&v131 = 0;
  BYTE8(v131) = 0;
  CRRegister.init(wrappedValue:)();
  v54 = v51[13];
  lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  v83 = v54;
  CRAttributedString.init(_:)();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v56 = v94;
  (*(*(v55 - 8) + 56))(v94, 1, 1, v55);
  outlined init with copy of Date?(v56, v95, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  v57 = v51[15];
  *&v131 = 0;
  v58 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  v96 = v57;
  v95 = v58;
  CRRegister.init(wrappedValue:)();
  *&v131 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v59 = type metadata accessor for StrokeStyle(0);
  v60 = v100;
  (*(*(v59 - 8) + 56))(v100, 1, 1, v59);
  outlined init with copy of Date?(v60, v101, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  v61 = type metadata accessor for Shadow(0);
  v62 = v103;
  (*(*(v61 - 8) + 56))(v103, 1, 1, v61);
  outlined init with copy of Date?(v62, v104, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v62, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  v132 = 0u;
  v133 = 0u;
  v131 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd, &_s8PaperKit18ShapeAuxiliaryInfoVSgMR);
  lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  v105 = v51;
  UnknownProperties.init()();
  v131 = 0u;
  v132 = 0u;
  v63 = v107;
  CRRegister.init(_:)();
  (*(v108 + 40))(v43, v63, v109);
  outlined init with copy of PaperMarkup(v127, v53, v86);
  v64 = v111;
  CRRegister.init(_:)();
  (*(v112 + 40))(&v43[v85], v64, v113);
  *&v131 = 0x4014000000000000;
  v65 = v114;
  CRRegister.init(_:)();
  (*(v115 + 40))(v87 + v43, v65, v116);
  v66 = v88;
  v67 = v97;
  outlined init with copy of Date?(v97, v88, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v68 = v117;
  CRRegister.init(_:)();
  v69 = v119;
  v70 = *(v118 + 40);
  v70(v52 + v90, v68, v119);
  v71 = v98;
  outlined init with copy of Date?(v98, v66, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  CRRegister.init(_:)();
  v70(v52 + v93, v68, v69);
  v72 = v130;
  v73 = v128;
  v74 = v106;
  outlined init with copy of Date?(v128, v106, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  v75 = v126;
  v76 = (*(v72 + 48))(v74, 1);
  v77 = v74;
  if (v76 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v74, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  }

  else
  {
    v78 = v82[0];
    (*(v72 + 32))(v82[0], v77, v75);
    (*(v72 + 40))(v52 + v83, v78, v75);
  }

  *&v131 = 0;
  v79 = v120;
  CRRegister.init(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v71, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  outlined destroy of PaperMarkup(v127, type metadata accessor for ShapeType);
  (*(v121 + 40))(v52 + v96, v79, v122);
  v80 = v110;
  outlined init with take of PaperMarkup(v52, v110, type metadata accessor for Shape);
  if (v123)
  {
    *&v131 = 1;
    BYTE8(v131) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMR);
    CRRegister.wrappedValue.setter();
  }

  if (v124)
  {
    *&v131 = 1;
    BYTE8(v131) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMR);
    CRRegister.wrappedValue.setter();
  }

  specialized NewCanvasElementDelegate.addLine(_:size:)(v80, 150.0, 150.0);
  return outlined destroy of PaperMarkup(v80, type metadata accessor for Shape);
}

void specialized Canvas.markupToolbarViewController(_:insertNewContents:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-v6];
  v8 = *(v1 + direct field offset for Canvas.paperView);
  v9 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v17 = 0;
  v18 = 0;
  v16 = a1;
  v19 = 1;
  v10 = v8;
  Capsule.mutate<A>(_:)();
  swift_endAccess();

  v20[0] = 3;
  (*((*v9 & *v2) + 0x7B0))(v20);
  (*(v5 + 16))(v7, a1, v4);
  v11 = _s8PaperKit13CanvasMembersV5allInAC9Coherence7CapsuleVyxG_tcAE4CRDTRzAA09ContainerC7ElementRzlufCAA0A0V_Tt0g5(v7);
  AnyCanvas.selection.setter(v11, v13, v14, v12 & 1);
}

uint64_t specialized PaperMarkupViewController.xpc_receiveFileBookmark(_:)(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = &v38 - v5;
  v6 = type metadata accessor for CRAsset();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v38 - v22;
  v48 = 0;
  v24 = *(v17 + 56);
  v24(v12, 1, 1, v16, v21);
  URL.init(resolvingBookmarkData:options:relativeTo:bookmarkDataIsStale:)();
  v47 = v7;
  v25 = v46;
  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (v24)(v15, 0, 1, v16);
  (*(v17 + 32))(v23, v15, v16);
  v26 = *(v17 + 16);
  v40 = v23;
  v26(v19, v23, v16);
  v27 = v16;
  if (one-time initialization token for publicCRContext != -1)
  {
    swift_once();
  }

  CRContext.assetManager.getter();
  v28 = v42;
  CRAsset.init(safelyFrom:coordinated:assetManager:)();
  v30 = v44;
  v29 = v45;
  v31 = v43;
  (*(v44 + 56))(v28, 0, 1, v45);
  v39 = v27;
  v32 = *(v30 + 32);
  v32(v25, v28, v29);
  v33 = type metadata accessor for TaskPriority();
  (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
  v34 = v41;
  (*(v30 + 16))(v41, v25, v29);
  v35 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  v32((v36 + v35), v34, v29);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v31, &async function pointer to partial apply for closure #1 in PaperMarkupViewController.xpc_receiveFileBookmark(_:), v36);

  (*(v30 + 8))(v46, v29);
  return (*(v17 + 8))(v40, v39);
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.xpc_receiveFileBookmark(_:)()
{
  type metadata accessor for CRAsset();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in PaperMarkupViewController.xpc_receiveFileBookmark(_:)();
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.xpc_receiveMulticastData(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperMarkupViewController.xpc_receiveMulticastData(_:)(a1, v4, v5, v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type FeatureSet_Internal and conformance FeatureSet_Internal()
{
  result = lazy protocol witness table cache variable for type FeatureSet_Internal and conformance FeatureSet_Internal;
  if (!lazy protocol witness table cache variable for type FeatureSet_Internal and conformance FeatureSet_Internal)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeatureSet_Internal and conformance FeatureSet_Internal);
  }

  return result;
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.xpc_setSupportedFeatureSet(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperMarkupViewController.xpc_setSupportedFeatureSet(_:)(a1, v4, v5, v6, (v1 + 5));
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.setTransparentBackground(_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperMarkupViewController.setTransparentBackground(_:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.setIsEditable(_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperMarkupViewController.setIsEditable(_:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.setZoomRange(min:max:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperMarkupViewController.setZoomRange(min:max:)(a1, v7, v8, v4, v5, v6);
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.xpc_setContentVisibleFrame(_:animated:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperMarkupViewController.xpc_setContentVisibleFrame(_:animated:)(a1, v7, v8, v9, v10, v4, v5, v6, v11);
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.setIndirectPointerTouchMode(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperMarkupViewController.setIndirectPointerTouchMode(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.insertNewTextbox()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperMarkupViewController.insertNewTextbox()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.insertNew(contentsOf:)(uint64_t a1)
{
  v4 = *(type metadata accessor for PaperMarkup(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperMarkupViewController.insertNew(contentsOf:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.insertNewLine(lineStartMarker:lineEndMarker:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperMarkupViewController.insertNewLine(lineStartMarker:lineEndMarker:)(a1, v4, v5, v6, v7, v8);
}

uint64_t outlined init with copy of PaperMarkup(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of PaperMarkup(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PaperMarkup(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.insertNewShape(_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperMarkupViewController.insertNewShape(_:)(a1, v4, v5, v6, v7);
}

unint64_t lazy protocol witness table accessor for type CanvasMembers and conformance CanvasMembers()
{
  result = lazy protocol witness table cache variable for type CanvasMembers and conformance CanvasMembers;
  if (!lazy protocol witness table cache variable for type CanvasMembers and conformance CanvasMembers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasMembers and conformance CanvasMembers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CanvasMembers and conformance CanvasMembers;
  if (!lazy protocol witness table cache variable for type CanvasMembers and conformance CanvasMembers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasMembers and conformance CanvasMembers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CanvasMembers and conformance CanvasMembers;
  if (!lazy protocol witness table cache variable for type CanvasMembers and conformance CanvasMembers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasMembers and conformance CanvasMembers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CanvasMembers and conformance CanvasMembers;
  if (!lazy protocol witness table cache variable for type CanvasMembers and conformance CanvasMembers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasMembers and conformance CanvasMembers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CanvasMembers and conformance CanvasMembers;
  if (!lazy protocol witness table cache variable for type CanvasMembers and conformance CanvasMembers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasMembers and conformance CanvasMembers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CanvasMembers and conformance CanvasMembers;
  if (!lazy protocol witness table cache variable for type CanvasMembers and conformance CanvasMembers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasMembers and conformance CanvasMembers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CanvasMembers and conformance CanvasMembers;
  if (!lazy protocol witness table cache variable for type CanvasMembers and conformance CanvasMembers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasMembers and conformance CanvasMembers);
  }

  return result;
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.setSelection(_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperMarkupViewController.setSelection(_:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t outlined init with take of PaperMarkup?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.setDataModel(_:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A6MarkupVSgMd, &_s8PaperKit0A6MarkupVSgMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in PaperMarkupViewController.setDataModel(_:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.setEnableUndo(_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperMarkupViewController.setEnableUndo(_:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in PaperMarkupViewController.setScreenPotentialHeadroom(_:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperMarkupViewController.setScreenPotentialHeadroom(_:)(v6, a1, v4, v5, v7);
}

uint64_t lazy protocol witness table accessor for type PaperMarkupViewController and conformance PaperMarkupViewController(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in PaperMarkupViewController.setUserInterfaceStyle(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ExtensionViewController.setUserInterfaceStyle(_:)(a1, v4, v5, v7, v6);
}

uint64_t ImageCanvasElementViewController.resizeImageCanvas(to:)(uint64_t a1)
{
  *(v2 + 80) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  *(v2 + 88) = v4;
  *(v2 + 96) = *(v4 - 8);
  *(v2 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = type metadata accessor for Image(0);
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = *a1;
  *(v2 + 57) = *(a1 + 16);
  type metadata accessor for MainActor();
  *(v2 + 160) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 168) = v6;
  *(v2 + 176) = v5;

  return MEMORY[0x1EEE6DFA0](ImageCanvasElementViewController.resizeImageCanvas(to:), v6, v5);
}

uint64_t ImageCanvasElementViewController.resizeImageCanvas(to:)()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  v3 = swift_task_alloc();
  *v3 = v1;
  v4 = lazy protocol witness table accessor for type Image and conformance Image();
  *(v0 + 184) = v4;
  v3[1] = v4;
  v3[2] = &protocol witness table for Image;
  swift_getKeyPath();

  v5 = direct field offset for CanvasElementViewController._$observationRegistrar;
  *(v0 + 64) = v2;
  *(v0 + 192) = v5;
  *(v0 + 200) = lazy protocol witness table accessor for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = direct field offset for CanvasElementViewController._canvasView;
  *(v0 + 208) = direct field offset for CanvasElementViewController._canvasView;
  v7 = *(v2 + v6);
  if (v7)
  {
    v8 = *(v0 + 112);
    v9 = *(v0 + 88);
    v10 = *(v0 + 96);
    v11 = *(v7 + direct field offset for Canvas.paperView);
    v12 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x3F0);
    swift_beginAccess();
    (*(v10 + 16))(v8, &v11[v12], v9);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = *(v0 + 112);
  v15 = *(v0 + 88);
  v16 = *(v0 + 96);
  (*(v16 + 56))(v14, v13, 1, v15);
  if ((*(v16 + 48))(v14, 1, v15))
  {
    v17 = *(v0 + 112);

    outlined destroy of Capsule<Image>?(v17);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 57);
    v22 = *(v0 + 144);
    v21 = *(v0 + 152);
    v24 = *(v0 + 128);
    v23 = *(v0 + 136);
    v26 = *(v0 + 104);
    v25 = *(v0 + 112);
    v27 = *(v0 + 88);
    v28 = *(v0 + 96);
    (*(v28 + 16))(v26, v25, v27);
    outlined destroy of Capsule<Image>?(v25);
    Capsule.root.getter();
    (*(v28 + 8))(v26, v27);
    outlined init with take of Image(v24, v23);
    *(v0 + 40) = v22;
    *(v0 + 48) = v21;
    *(v0 + 56) = v20;
    v29 = swift_task_alloc();
    *(v0 + 216) = v29;
    *v29 = v0;
    v29[1] = ImageCanvasElementViewController.resizeImageCanvas(to:);

    return Image.resizeImage(to:)(v0 + 40);
  }
}

{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = ImageCanvasElementViewController.resizeImageCanvas(to:);
  }

  else
  {
    v5 = ImageCanvasElementViewController.resizeImageCanvas(to:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 120);
  v4 = *(v0 + 80);

  v5 = swift_task_alloc();
  *v5 = v3;
  v5[1] = v2;
  v5[2] = &protocol witness table for Image;
  swift_getKeyPath();

  *(v0 + 72) = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v4 + v1);
  if (v6)
  {
    v7 = *(v0 + 136);
    v8 = *(v0 + 80);
    v9 = v6;
    specialized Canvas.undoable(newChange:persistSelection:action:)(0, 0, v9, v8, v7);
  }

  outlined destroy of Image(*(v0 + 136), type metadata accessor for Image);

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(v0 + 136);

  outlined destroy of Image(v1, type metadata accessor for Image);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in closure #1 in ImageCanvasElementViewController.resizeImageCanvas(to:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Image(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  outlined init with copy of Image(a2, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Capsule.Ref.root.setter();
}

void static ImageCanvasElementViewController.Resize.pixels(_:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
}

void static ImageCanvasElementViewController.Resize.aspectScale(_:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t ImageCanvasElementViewController.resize(to:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  *(v1 + 64) = type metadata accessor for MainActor();
  *(v1 + 72) = static MainActor.shared.getter();
  if (v4)
  {
    *(v1 + 16) = v2;
    v5 = v1 + 16;
    *(v1 + 24) = 0;
    *(v1 + 32) = 1;
    v6 = swift_task_alloc();
    *(v1 + 96) = v6;
    *v6 = v1;
    v7 = ImageCanvasElementViewController.resize(to:);
  }

  else
  {
    *(v1 + 40) = v2;
    v5 = v1 + 40;
    *(v1 + 48) = v3;
    *(v1 + 56) = 0;
    v6 = swift_task_alloc();
    *(v1 + 80) = v6;
    *v6 = v1;
    v7 = ImageCanvasElementViewController.resize(to:);
  }

  v6[1] = v7;

  return ImageCanvasElementViewController.resizeImageCanvas(to:)(v5);
}

uint64_t ImageCanvasElementViewController.resize(to:)()
{
  *(*v1 + 88) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = ImageCanvasElementViewController.resize(to:);
  }

  else
  {
    v4 = ImageCanvasElementViewController.resize(to:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

{
  *(*v1 + 104) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = ImageCanvasElementViewController.resize(to:);
  }

  else
  {
    v4 = ImageCanvasElementViewController.resize(to:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Int ImageCanvasElementViewController.ResolutionUpdateError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](0);
  return Hasher._finalize()();
}

void ImageCanvasElementViewController.updateResolution(to:)(double *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  v16 = *a1;
  if (*a1 <= 0.0)
  {
    lazy protocol witness table accessor for type ImageCanvasElementViewController.ResolutionUpdateError and conformance ImageCanvasElementViewController.ResolutionUpdateError();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v37 = v8;
  v39 = v2;
  MEMORY[0x1EEE9AC00](v13);
  v44 = type metadata accessor for Image(0);
  *(&v37 - 4) = v44;
  v42 = lazy protocol witness table accessor for type Image and conformance Image();
  *(&v37 - 3) = v42;
  *(&v37 - 2) = &protocol witness table for Image;
  swift_getKeyPath();
  v17 = direct field offset for CanvasElementViewController._$observationRegistrar;
  v49 = v3;
  v18 = lazy protocol witness table accessor for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>();
  v43 = v17;
  v41 = v18;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v40 = direct field offset for CanvasElementViewController._canvasView;
  v19 = *&v3[direct field offset for CanvasElementViewController._canvasView];
  if (v19)
  {
    v20 = *(v19 + direct field offset for Canvas.paperView);
    v21 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x3F0);
    swift_beginAccess();
    (*(v6 + 16))(v15, &v20[v21], v5);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v38 = *(v6 + 56);
  v38(v15, v22, 1, v5);
  v23 = *(v6 + 48);
  if (v23(v15, 1, v5))
  {
    v24 = outlined destroy of Capsule<Image>?(v15);
  }

  else
  {
    v30 = v37;
    (*(v6 + 16))(v37, v15, v5);
    outlined destroy of Capsule<Image>?(v15);
    swift_getKeyPath();
    Capsule.subscript.getter();

    v24 = (*(v6 + 8))(v30, v5);
    if ((v48 & 1) == 0 && v47 == v16)
    {
      return;
    }
  }

  MEMORY[0x1EEE9AC00](v24);
  v25 = v42;
  *(&v37 - 4) = v44;
  *(&v37 - 3) = v25;
  *(&v37 - 2) = &protocol witness table for Image;
  swift_getKeyPath();
  v47 = *&v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = *&v3[v40];
  if (v26)
  {
    v27 = *(v26 + direct field offset for Canvas.paperView);
    v28 = *((*MEMORY[0x1E69E7D40] & *v27) + 0x3F0);
    swift_beginAccess();
    (*(v6 + 16))(v11, &v27[v28], v5);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v38(v11, v29, 1, v5);
  if (v23(v11, 1, v5))
  {
    v31 = outlined destroy of Capsule<Image>?(v11);
LABEL_16:
    MEMORY[0x1EEE9AC00](v31);
    v32 = v42;
    *(&v37 - 4) = v44;
    *(&v37 - 3) = v32;
    *(&v37 - 2) = &protocol witness table for Image;
    swift_getKeyPath();
    v45 = *&v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v33 = *&v3[v40];
    if (v33)
    {
      v34 = v3;
      v35 = v33;
      specialized Canvas.undoable(newChange:persistSelection:action:)(0, 0, v35, v16);
    }

    return;
  }

  v36 = v37;
  (*(v6 + 16))(v37, v11, v5);
  outlined destroy of Capsule<Image>?(v11);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v31 = (*(v6 + 8))(v36, v5);
  if ((v46 & 1) != 0 || v45 != v16)
  {
    goto LABEL_16;
  }
}

uint64_t key path getter for Image.dpiWidth : Image@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ImageMetadata(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  CRRegister.wrappedValue.getter();
  v5 = *(v4 + 2);
  v6 = v4[24];
  result = outlined destroy of Image(v4, type metadata accessor for ImageMetadata);
  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

uint64_t key path setter for Image.dpiWidth : Image(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  v3 = CRRegister.wrappedValue.modify();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  return v3(&v6, 0);
}

uint64_t key path getter for Image.dpiHeight : Image@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ImageMetadata(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  CRRegister.wrappedValue.getter();
  v5 = *(v4 + 4);
  v6 = v4[40];
  result = outlined destroy of Image(v4, type metadata accessor for ImageMetadata);
  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

uint64_t key path setter for Image.dpiHeight : Image(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  v3 = CRRegister.wrappedValue.modify();
  *(v4 + 32) = v1;
  *(v4 + 40) = v2;
  return v3(&v6, 0);
}

uint64_t closure #1 in closure #1 in ImageCanvasElementViewController.updateResolution(to:)(double a1)
{
  swift_getKeyPath();
  Capsule.Ref.subscript.setter();
  swift_getKeyPath();
  return Capsule.Ref.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type Image and conformance Image()
{
  result = lazy protocol witness table cache variable for type Image and conformance Image;
  if (!lazy protocol witness table cache variable for type Image and conformance Image)
  {
    type metadata accessor for Image(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image and conformance Image);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>()
{
  result = lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>;
  if (!lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>);
  }

  return result;
}

uint64_t outlined destroy of Capsule<Image>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Image(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Image(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ImageCanvasElementViewController.ResolutionUpdateError and conformance ImageCanvasElementViewController.ResolutionUpdateError()
{
  result = lazy protocol witness table cache variable for type ImageCanvasElementViewController.ResolutionUpdateError and conformance ImageCanvasElementViewController.ResolutionUpdateError;
  if (!lazy protocol witness table cache variable for type ImageCanvasElementViewController.ResolutionUpdateError and conformance ImageCanvasElementViewController.ResolutionUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageCanvasElementViewController.ResolutionUpdateError and conformance ImageCanvasElementViewController.ResolutionUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageCanvasElementViewController.ResolutionUpdateError and conformance ImageCanvasElementViewController.ResolutionUpdateError;
  if (!lazy protocol witness table cache variable for type ImageCanvasElementViewController.ResolutionUpdateError and conformance ImageCanvasElementViewController.ResolutionUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageCanvasElementViewController.ResolutionUpdateError and conformance ImageCanvasElementViewController.ResolutionUpdateError);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ImageCanvasElementViewController.Resize(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageCanvasElementViewController.Resize(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t outlined destroy of Image(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of Image(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Image(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *specialized Canvas.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:)(void *a1, uint64_t a2, int a3, int a4, int a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v100 = a5;
  v101 = a4;
  v99 = a3;
  v98 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v97 = &v94 - v17;
  v18 = type metadata accessor for CRKeyPath();
  v102 = *(v18 - 8);
  v103 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = (&v94 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v104 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v94 - v28;
  *(v10 + direct field offset for Canvas.multipeerConnection) = 0;
  *(v10 + direct field offset for Canvas.multipeerCanvasStateConnection) = 0;
  *(v10 + direct field offset for Canvas.removeOldEraserStrokesTimer) = 0;
  *(v10 + direct field offset for Canvas.maxHeadroomForAllElements) = 0;
  v30 = (v10 + direct field offset for Canvas.liveStreamMessenger);
  *v30 = 0;
  v30[1] = 0;
  *(v10 + direct field offset for Canvas.childViewControllerCancellable) = 0;
  *(v10 + direct field offset for Canvas.finalizeTimer) = 0;
  *(v10 + direct field offset for Canvas.xpcMulticast) = 0;
  v31 = (v10 + direct field offset for Canvas._editingView);
  *v31 = 0;
  v31[1] = 0;
  *(v10 + direct field offset for Canvas._canvasElementController) = 0;
  v32 = direct field offset for Canvas.delayedPreviewProviders;
  v33 = MEMORY[0x1E69E7CC0];
  *(v10 + v32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_ySo21UITargetedDragPreviewCcTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v34 = direct field offset for Canvas.dropCompletions;
  *(v10 + v34) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_yycTt0g5Tf4g_n(v33);
  *(v10 + direct field offset for Canvas.dropSessionType) = 3;
  *(v10 + direct field offset for Canvas.scribbleDelegate) = 0;
  *(v10 + direct field offset for Canvas.scribbleInteraction) = 0;
  *(v10 + direct field offset for Canvas.indirectScribbleInteraction) = 0;
  *(v10 + direct field offset for Canvas.pointerDelegate) = 0;
  *(v10 + direct field offset for Canvas.dropInteractionSessionIsActive) = 0;
  *(v10 + direct field offset for Canvas.dropInteraction) = 0;
  *(v10 + direct field offset for Canvas.dropDelegate) = 0;
  *(v10 + direct field offset for Canvas.editMenuInteraction) = 0;
  *(v10 + direct field offset for Canvas.editMenuInteractionDelegate) = 0;
  v35 = v10 + direct field offset for Canvas.visibleBoundsOverride;
  *(v35 + 32) = 1;
  *v35 = 0u;
  *(v35 + 16) = 0u;
  *(v10 + direct field offset for Canvas.subscriptions) = v33;
  *(v10 + direct field offset for Canvas.isInUndoableGroup) = 0;
  *(v10 + direct field offset for Canvas.isUndoableGroupNewChange) = 0;
  *(v10 + direct field offset for Canvas.eraserCheckingIndex) = 0;
  v36 = direct field offset for Canvas.dropTargets;
  *(v10 + v36) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_So6CGRectV_12CoreGraphics7CGFloatVtTt0g5Tf4g_n(v33);
  v37 = direct field offset for Canvas.stickerDropPreviewInfoMap;
  *(v10 + v37) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_8PaperKit22StickerDropPreviewInfoVTt0g5Tf4g_n(v33);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  Capsule.root.getter();
  v95 = v38;
  v39 = a2;
  Capsule.rootID.getter();
  off_1F4F629D0(v20, v21);
  v40 = v104;
  (*(v102 + 8))(v20, v103);
  _s8PaperKit0A0VWOhTm_1(v23, type metadata accessor for Paper);
  if ((*(v40 + 48))(v26, 1, v27) == 1)
  {
    goto LABEL_17;
  }

  v41 = *(v40 + 32);
  v102 = v27;
  v41(v29, v26, v27);
  v96 = v29;
  SharedTagged_10<>.layout()(v108);
  v26 = v109;
  v42 = v110;
  __swift_project_boxed_opaque_existential_1(v108, v109);
  v43 = *(v42 + 8);
  v44 = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
  v103 = v39;
  if (!v43(v39, 0, 0, v21, v44, v26, v42))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit26ContainerCanvasElementViewCyAA0A0VGMd, &_s8PaperKit26ContainerCanvasElementViewCyAA0A0VGMR);
  *(v10 + direct field offset for Canvas.paperView) = swift_dynamicCastClassUnconditional();
  __swift_destroy_boxed_opaque_existential_0(v108);
  LOBYTE(v108[0]) = v99;
  v45 = v98;
  v46 = AnyCanvas.init(context:frame:editingMode:transparentBackground:)(v45, v108, v100 & 1, a6, a7, a8, a9);
  v47 = direct field offset for Canvas.paperView;
  v48 = *&v46[direct field offset for Canvas.paperView];
  swift_unknownObjectWeakAssign();
  v49 = MEMORY[0x1E69E7D40];
  v50 = *((*MEMORY[0x1E69E7D40] & *v48) + 0x520);
  v51 = v48;
  v50();

  [v46 addSubview_];
  if (v101)
  {
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18CanvasDropDelegateCyAA0A0VGMd, &_s8PaperKit18CanvasDropDelegateCyAA0A0VGMR);
    v53 = objc_allocWithZone(v52);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v105.receiver = v53;
    v105.super_class = v52;
    v54 = objc_msgSendSuper2(&v105, sel_init);
    v55 = *&v46[direct field offset for Canvas.dropDelegate];
    *&v46[direct field offset for Canvas.dropDelegate] = v54;
    v56 = v54;

    v57 = [objc_allocWithZone(MEMORY[0x1E69DC9B8]) initWithDelegate_];
    if ((*((*v49 & *v46) + 0xED8))())
    {
      v58 = v57;
      [v46 addInteraction_];
    }

    v59 = *&v46[direct field offset for Canvas.dropInteraction];
    *&v46[direct field offset for Canvas.dropInteraction] = v57;
  }

  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit22CanvasScribbleDelegateCyAA0A0VGMd, &_s8PaperKit22CanvasScribbleDelegateCyAA0A0VGMR);
  v61 = objc_allocWithZone(v60);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v107.receiver = v61;
  v107.super_class = v60;
  v62 = v46;
  v63 = objc_msgSendSuper2(&v107, sel_init);
  v64 = direct field offset for Canvas.scribbleDelegate;
  v65 = *&v62[direct field offset for Canvas.scribbleDelegate];
  *&v62[direct field offset for Canvas.scribbleDelegate] = v63;

  v66 = [objc_allocWithZone(MEMORY[0x1E69DCEC8]) initWithDelegate_];
  v26 = direct field offset for Canvas.scribbleInteraction;
  v67 = *&v62[direct field offset for Canvas.scribbleInteraction];
  *&v62[direct field offset for Canvas.scribbleInteraction] = v66;

  v68 = *&v62[v64];
  if (!v68)
  {
    goto LABEL_14;
  }

  v69 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29UIIndirectScribbleInteractionCy8PaperKit06CanvasC8DelegateCyAD0E0VGGMd, &_s5UIKit29UIIndirectScribbleInteractionCy8PaperKit06CanvasC8DelegateCyAD0E0VGGMR));
  v70 = v68;
  v71 = UIIndirectScribbleInteraction.init(delegate:)();
  v72 = direct field offset for Canvas.indirectScribbleInteraction;
  v73 = *&v62[direct field offset for Canvas.indirectScribbleInteraction];
  *&v62[direct field offset for Canvas.indirectScribbleInteraction] = v71;

  v74 = *(&v26->Kind + v62);
  if (!v74)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26 = *&v46[v47];
  [(ValueMetadata *)v26 addInteraction:v74];
  if (!*&v62[v72])
  {
LABEL_16:
    __break(1u);
LABEL_17:
    outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  [(ValueMetadata *)v26 addInteraction:?];

  v75 = [objc_allocWithZone(type metadata accessor for CanvasPointerDelegate()) init];
  v76 = *&v62[direct field offset for Canvas.pointerDelegate];
  *&v62[direct field offset for Canvas.pointerDelegate] = v75;

  v77 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];
  swift_unknownObjectRelease();
  [v62 addInteraction_];
  v109 = &type metadata for PencilAndPaperFeatureFlags;
  v110 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v108[0]) = 0;
  v78 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v108);
  v79 = v62;
  v80 = v103;
  v81 = v96;
  if (v78)
  {
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit22CanvasEditMenuDelegateCyAA0A0VGMd, &_s8PaperKit22CanvasEditMenuDelegateCyAA0A0VGMR);
    v83 = objc_allocWithZone(v82);
    swift_unknownObjectWeakInit();
    v83[direct field offset for CanvasEditMenuDelegate.editMenuIsPresented] = 0;
    swift_unknownObjectWeakAssign();
    v106.receiver = v83;
    v106.super_class = v82;
    v84 = objc_msgSendSuper2(&v106, sel_init);

    v85 = *&v62[direct field offset for Canvas.editMenuInteractionDelegate];
    *&v62[direct field offset for Canvas.editMenuInteractionDelegate] = v84;
    v86 = v84;

    v87 = [objc_allocWithZone(MEMORY[0x1E69DC9E0]) &selRef:v86 :?performAnalysis];
    [v62 addInteraction_];
    v88 = *&v62[direct field offset for Canvas.editMenuInteraction];
    *&v62[direct field offset for Canvas.editMenuInteraction] = v87;
    v79 = v87;

    specialized Canvas.setupBandSelection()();
  }

  v89 = v62;
  v90 = v97;
  Date.init()();

  (*(*(v95 - 8) + 8))(v80);
  (*(v104 + 8))(v81, v102);
  v91 = type metadata accessor for Date();
  (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
  v92 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_analytics_timeOfOpeningContainerView;
  swift_beginAccess();
  outlined assign with take of Date?(v90, &v89[v92]);
  swift_endAccess();

  return v89;
}

{
  v10 = v9;
  v100 = a5;
  v101 = a4;
  v99 = a3;
  v98 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v97 = &v94 - v17;
  v18 = type metadata accessor for CRKeyPath();
  v102 = *(v18 - 8);
  v103 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Image(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = (&v94 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v104 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v94 - v28;
  *(v10 + direct field offset for Canvas.multipeerConnection) = 0;
  *(v10 + direct field offset for Canvas.multipeerCanvasStateConnection) = 0;
  *(v10 + direct field offset for Canvas.removeOldEraserStrokesTimer) = 0;
  *(v10 + direct field offset for Canvas.maxHeadroomForAllElements) = 0;
  v30 = (v10 + direct field offset for Canvas.liveStreamMessenger);
  *v30 = 0;
  v30[1] = 0;
  *(v10 + direct field offset for Canvas.childViewControllerCancellable) = 0;
  *(v10 + direct field offset for Canvas.finalizeTimer) = 0;
  *(v10 + direct field offset for Canvas.xpcMulticast) = 0;
  v31 = (v10 + direct field offset for Canvas._editingView);
  *v31 = 0;
  v31[1] = 0;
  *(v10 + direct field offset for Canvas._canvasElementController) = 0;
  v32 = direct field offset for Canvas.delayedPreviewProviders;
  v33 = MEMORY[0x1E69E7CC0];
  *(v10 + v32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_ySo21UITargetedDragPreviewCcTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v34 = direct field offset for Canvas.dropCompletions;
  *(v10 + v34) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_yycTt0g5Tf4g_n(v33);
  *(v10 + direct field offset for Canvas.dropSessionType) = 3;
  *(v10 + direct field offset for Canvas.scribbleDelegate) = 0;
  *(v10 + direct field offset for Canvas.scribbleInteraction) = 0;
  *(v10 + direct field offset for Canvas.indirectScribbleInteraction) = 0;
  *(v10 + direct field offset for Canvas.pointerDelegate) = 0;
  *(v10 + direct field offset for Canvas.dropInteractionSessionIsActive) = 0;
  *(v10 + direct field offset for Canvas.dropInteraction) = 0;
  *(v10 + direct field offset for Canvas.dropDelegate) = 0;
  *(v10 + direct field offset for Canvas.editMenuInteraction) = 0;
  *(v10 + direct field offset for Canvas.editMenuInteractionDelegate) = 0;
  v35 = v10 + direct field offset for Canvas.visibleBoundsOverride;
  *(v35 + 32) = 1;
  *v35 = 0u;
  *(v35 + 16) = 0u;
  *(v10 + direct field offset for Canvas.subscriptions) = v33;
  *(v10 + direct field offset for Canvas.isInUndoableGroup) = 0;
  *(v10 + direct field offset for Canvas.isUndoableGroupNewChange) = 0;
  *(v10 + direct field offset for Canvas.eraserCheckingIndex) = 0;
  v36 = direct field offset for Canvas.dropTargets;
  *(v10 + v36) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_So6CGRectV_12CoreGraphics7CGFloatVtTt0g5Tf4g_n(v33);
  v37 = direct field offset for Canvas.stickerDropPreviewInfoMap;
  *(v10 + v37) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_8PaperKit22StickerDropPreviewInfoVTt0g5Tf4g_n(v33);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  Capsule.root.getter();
  v95 = v38;
  v39 = a2;
  Capsule.rootID.getter();
  off_1F4F5EE70(v20, v21);
  v40 = v104;
  (*(v102 + 8))(v20, v103);
  _s8PaperKit0A0VWOhTm_1(v23, type metadata accessor for Image);
  if ((*(v40 + 48))(v26, 1, v27) == 1)
  {
    goto LABEL_17;
  }

  v41 = *(v40 + 32);
  v102 = v27;
  v41(v29, v26, v27);
  v96 = v29;
  SharedTagged_10<>.layout()(v108);
  v26 = v109;
  v42 = v110;
  __swift_project_boxed_opaque_existential_1(v108, v109);
  v43 = *(v42 + 8);
  v44 = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  v103 = v39;
  if (!v43(v39, 0, 0, v21, v44, v26, v42))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit26ContainerCanvasElementViewCyAA5ImageVGMd, &_s8PaperKit26ContainerCanvasElementViewCyAA5ImageVGMR);
  *(v10 + direct field offset for Canvas.paperView) = swift_dynamicCastClassUnconditional();
  __swift_destroy_boxed_opaque_existential_0(v108);
  LOBYTE(v108[0]) = v99;
  v45 = v98;
  v46 = AnyCanvas.init(context:frame:editingMode:transparentBackground:)(v45, v108, v100 & 1, a6, a7, a8, a9);
  v47 = direct field offset for Canvas.paperView;
  v48 = *&v46[direct field offset for Canvas.paperView];
  swift_unknownObjectWeakAssign();
  v49 = MEMORY[0x1E69E7D40];
  v50 = *((*MEMORY[0x1E69E7D40] & *v48) + 0x520);
  v51 = v48;
  v50();

  [v46 addSubview_];
  if (v101)
  {
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18CanvasDropDelegateCyAA5ImageVGMd, &_s8PaperKit18CanvasDropDelegateCyAA5ImageVGMR);
    v53 = objc_allocWithZone(v52);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v105.receiver = v53;
    v105.super_class = v52;
    v54 = objc_msgSendSuper2(&v105, sel_init);
    v55 = *&v46[direct field offset for Canvas.dropDelegate];
    *&v46[direct field offset for Canvas.dropDelegate] = v54;
    v56 = v54;

    v57 = [objc_allocWithZone(MEMORY[0x1E69DC9B8]) initWithDelegate_];
    if ((*((*v49 & *v46) + 0xED8))())
    {
      v58 = v57;
      [v46 addInteraction_];
    }

    v59 = *&v46[direct field offset for Canvas.dropInteraction];
    *&v46[direct field offset for Canvas.dropInteraction] = v57;
  }

  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit22CanvasScribbleDelegateCyAA5ImageVGMd, &_s8PaperKit22CanvasScribbleDelegateCyAA5ImageVGMR);
  v61 = objc_allocWithZone(v60);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v107.receiver = v61;
  v107.super_class = v60;
  v62 = v46;
  v63 = objc_msgSendSuper2(&v107, sel_init);
  v64 = direct field offset for Canvas.scribbleDelegate;
  v65 = *&v62[direct field offset for Canvas.scribbleDelegate];
  *&v62[direct field offset for Canvas.scribbleDelegate] = v63;

  v66 = [objc_allocWithZone(MEMORY[0x1E69DCEC8]) initWithDelegate_];
  v26 = direct field offset for Canvas.scribbleInteraction;
  v67 = *&v62[direct field offset for Canvas.scribbleInteraction];
  *&v62[direct field offset for Canvas.scribbleInteraction] = v66;

  v68 = *&v62[v64];
  if (!v68)
  {
    goto LABEL_14;
  }

  v69 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29UIIndirectScribbleInteractionCy8PaperKit06CanvasC8DelegateCyAD5ImageVGGMd, &_s5UIKit29UIIndirectScribbleInteractionCy8PaperKit06CanvasC8DelegateCyAD5ImageVGGMR));
  v70 = v68;
  v71 = UIIndirectScribbleInteraction.init(delegate:)();
  v72 = direct field offset for Canvas.indirectScribbleInteraction;
  v73 = *&v62[direct field offset for Canvas.indirectScribbleInteraction];
  *&v62[direct field offset for Canvas.indirectScribbleInteraction] = v71;

  v74 = *(&v26->Kind + v62);
  if (!v74)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26 = *&v46[v47];
  [(ValueMetadata *)v26 addInteraction:v74];
  if (!*&v62[v72])
  {
LABEL_16:
    __break(1u);
LABEL_17:
    outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  [(ValueMetadata *)v26 addInteraction:?];

  v75 = [objc_allocWithZone(type metadata accessor for CanvasPointerDelegate()) init];
  v76 = *&v62[direct field offset for Canvas.pointerDelegate];
  *&v62[direct field offset for Canvas.pointerDelegate] = v75;

  v77 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];
  swift_unknownObjectRelease();
  [v62 addInteraction_];
  v109 = &type metadata for PencilAndPaperFeatureFlags;
  v110 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v108[0]) = 0;
  v78 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v108);
  v79 = v62;
  v80 = v103;
  v81 = v96;
  if (v78)
  {
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit22CanvasEditMenuDelegateCyAA5ImageVGMd, &_s8PaperKit22CanvasEditMenuDelegateCyAA5ImageVGMR);
    v83 = objc_allocWithZone(v82);
    swift_unknownObjectWeakInit();
    v83[direct field offset for CanvasEditMenuDelegate.editMenuIsPresented] = 0;
    swift_unknownObjectWeakAssign();
    v106.receiver = v83;
    v106.super_class = v82;
    v84 = objc_msgSendSuper2(&v106, sel_init);

    v85 = *&v62[direct field offset for Canvas.editMenuInteractionDelegate];
    *&v62[direct field offset for Canvas.editMenuInteractionDelegate] = v84;
    v86 = v84;

    v87 = [objc_allocWithZone(MEMORY[0x1E69DC9E0]) &selRef:v86 :?performAnalysis];
    [v62 addInteraction_];
    v88 = *&v62[direct field offset for Canvas.editMenuInteraction];
    *&v62[direct field offset for Canvas.editMenuInteraction] = v87;
    v79 = v87;

    specialized Canvas.setupBandSelection()();
  }

  v89 = v62;
  v90 = v97;
  Date.init()();

  (*(*(v95 - 8) + 8))(v80);
  (*(v104 + 8))(v81, v102);
  v91 = type metadata accessor for Date();
  (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
  v92 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_analytics_timeOfOpeningContainerView;
  swift_beginAccess();
  outlined assign with take of Date?(v90, &v89[v92]);
  swift_endAccess();

  return v89;
}

id specialized Canvas.canvasSelectionDidChange()()
{
  v1 = v0;
  swift_getKeyPath();
  lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  specialized Canvas.updateToolPickerContextualEditingView()();
  v5 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x468))();
  if (v5)
  {
    v6 = v5;
    if ([v5 respondsToSelector_])
    {
      [v6 _externalElementsSelectionDidChange];
    }
  }

  return [v1 setNeedsLayout];
}

void specialized Canvas.tapOnCanvas(location:hitStrokes:fromPencilKit:allowShowingEditMenu:)(void *a1, char a2, char a3, double a4, double a5)
{
  if ((a2 & 1) == 0)
  {
    goto LABEL_19;
  }

  if (a1[2])
  {
    v8 = *(v5 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
    if (!v8)
    {
      return;
    }

    v9 = a1;
    v43 = v8;
    HandwritingReflowView.startReflowForSelection(_:completion:)(v9, 0, 0);
    goto LABEL_14;
  }

  v10 = a3;
  a1 = [v5 hitTest:0 withEvent:{a4, a5}];
  a3 = v10;
  if (!a1)
  {
LABEL_19:
    if ((a3 & 1) == 0)
    {
      goto LABEL_22;
    }

    v18 = *(v5 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (!v18)
    {
      __break(1u);
      return;
    }

    if ((v19 = v18 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection, *(*v19 + 16)) || *(*(v19 + 8) + 16) || (*(v19 + 24) & 1) != 0 || (v20 = v5, (v21 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x468))(a1)) != 0) && (v22 = v21, v23 = [v21 _hasSelection], v22, v23) || (*&v45.d = &type metadata for PencilAndPaperFeatureFlags, *&v45.tx = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags(), LOBYTE(v45.a) = 0, v24 = isFeatureEnabled(_:)(), __swift_destroy_boxed_opaque_existential_0(&v45), (v24 & 1) == 0))
    {
LABEL_22:
      AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
      return;
    }

    v25 = *(v5 + direct field offset for Canvas.editMenuInteractionDelegate);
    if (v25 && *(v25 + direct field offset for CanvasEditMenuDelegate.editMenuIsPresented) == 1)
    {
      [*(v5 + direct field offset for Canvas.editMenuInteraction) dismissMenu];
      return;
    }

    v26 = *(v5 + direct field offset for Canvas._editingView);
    if (v26)
    {
      v27 = *(v5 + direct field offset for Canvas._editingView + 8);
      v28 = *(v5 + direct field offset for Canvas._editingView);
    }

    else
    {
      v28 = *(v5 + direct field offset for Canvas.paperView);
      v27 = &protocol witness table for ContainerCanvasElementView<A>;
    }

    ObjectType = swift_getObjectType();
    v30 = v27[2];
    v31 = v26;
    v32 = v30(ObjectType, v27);

    if (v32)
    {
      [v32 convertPoint:v20 fromCoordinateSpace:{a4, a5}];
      v34 = v33;
      v36 = v35;
      [v32 drawingTransform];
      CGAffineTransformInvert(&v44, &v45);
      v45 = v44;
      v47.x = v34;
      v47.y = v36;
      v37 = CGPointApplyAffineTransform(v47, &v45);
      v38 = *&v32[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate];
      if (v38 && (v39 = *(v38 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController)) != 0)
      {
        v40 = [v39 handleSingleTapAtDrawingLocation_];

        if (v40)
        {
          return;
        }
      }

      else
      {
      }
    }

    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIEditMenuConfiguration, 0x1E69DC9D8);
    memset(&v45, 0, 40);
    v41 = UIEditMenuConfiguration.init(identifier:sourcePoint:)();
    v42 = *(v20 + direct field offset for Canvas.editMenuInteraction);
    [v42 presentEditMenuWithConfiguration_];

    return;
  }

  v11 = a1;
  type metadata accessor for AnyCanvasElementView();
  v12 = v11;
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    v15 = v12;
    while (1)
    {
      v16 = [v15 superview];

      if (!v16)
      {
        goto LABEL_18;
      }

      v15 = v16;
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v14 = v17;
        goto LABEL_12;
      }
    }
  }

  v14 = v13;
  v15 = v12;
LABEL_12:

  if (v14 == *(v5 + direct field offset for Canvas.paperView))
  {
    v12 = v15;
LABEL_18:

    a3 = v10;
    goto LABEL_19;
  }

  v43 = v15;
  [v14 convertPoint:v5 fromCoordinateSpace:{a4, a5}];
  (*((*MEMORY[0x1E69E7D40] & *v14) + 0x198))(0, 1, v10 & 1);

LABEL_14:
}

void specialized Canvas.tapCanvasElement(_:modifierFlags:)(void *a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v134 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v138 = v134 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v134 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v142 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v140 = v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v139 = v134 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v134 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v134 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = v134 - v29;
  if (((*((*MEMORY[0x1E69E7D40] & *a1) + 0x1F8))(v28) & 1) == 0)
  {
    return;
  }

  if ((a3 & 1) != 0 || (a2 & 0x120000) == 0)
  {
    v33 = specialized CanvasMembers.init(_:)(a1);
    v35 = v143;
    AnyCanvas.selection.setter(v33, v36, v37, v34 & 1);
    goto LABEL_88;
  }

  v135 = v11;
  v141 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
  v31 = *&v143[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  if (!v31)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  a2 = *(v31 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);

  AnyCanvasElementView.weakCanvasElement.getter(v16);
  v32 = v142;
  v136 = *(v142 + 48);
  v137 = v142 + 48;
  if (v136(v16, 1, v17) == 1)
  {

    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
    goto LABEL_12;
  }

  v134[0] = *(v32 + 32);
  v134[1] = v32 + 32;
  (v134[0])(v30, v16, v17);
  v38 = specialized Set.contains(_:)(v30, a2);

  a2 = *(v32 + 8);
  (a2)(v30, v17);
  if ((v38 & 1) == 0)
  {
LABEL_12:
    v47 = *&v143[v141];
    if (!v47)
    {
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v48 = *&v47[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection];
    a2 = *&v47[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8];
    v49 = *&v47[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16];
    v50 = v47[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24];
    v144 = v48;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v51 = v47;
    AnyCanvasElementView.weakCanvasElement.getter(v8);
    if (v136(v8, 1, v17) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
      v52 = v48;
    }

    else
    {
      v138 = v48;
      v53 = v50;
      v54 = a2;
      v55 = v49;
      v56 = v142;
      (*(v142 + 32))(v23, v8, v17);
      v57 = v140;
      (*(v56 + 16))(v140, v23, v17);
      v58 = v139;
      specialized Set._Variant.insert(_:)(v139, v57);
      v59 = *(v56 + 8);
      v59(v58, v17);
      v59(v23, v17);
      v49 = v55;
      a2 = v54;
      v50 = v53;
      v48 = v138;
      v52 = v144;
    }

    CanvasElementResizeView.selection.setter(v52, a2, v49, v50);

    v35 = v143;
    v60 = *&v143[v141];
    if (!v60)
    {
      goto LABEL_107;
    }

    v61 = v60 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
    v62 = *v61;
    v17 = *(v61 + 8);
    v63 = *(v61 + 16);
    v64 = *(v61 + 24);

    _sSh2eeoiySbShyxG_ABtFZ9Coherence13WeakTagged_10Vy8PaperKit0D13CanvasElementVG_Tt1g5(v48, v62);
    if (v65)
    {
      _sSh2eeoiySbShyxG_ABtFZ9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_Tt1g5(a2, v17);
      v67 = v66;

      if (v67)
      {
        if (v50)
        {
          if (v64)
          {
LABEL_77:

            goto LABEL_88;
          }
        }

        else
        {
          if (v49 == v63)
          {
            v108 = v64;
          }

          else
          {
            v108 = 1;
          }

          if ((v108 & 1) == 0)
          {
            goto LABEL_77;
          }
        }
      }
    }

    else
    {
    }

    if (one-time initialization token for miniMenuLogger != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    __swift_project_value_buffer(v68, miniMenuLogger);
    v17 = v35;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 134217984;
      v72 = *&v35[v141];
      if (!v72)
      {
LABEL_109:

        __break(1u);
        goto LABEL_110;
      }

      *(v71 + 4) = *(*(v72 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection) + 16);
      v73 = v71;

      _os_log_impl(&dword_1D38C4000, v69, v70, "Changing selection to have %ld elements", v73, 0xCu);
      MEMORY[0x1DA6D0660](v73, -1, -1);
    }

    else
    {

      v69 = v17;
    }

    MEMORY[0x1EEE9AC00](v74);
    v134[-2] = v17;
    AnyCanvas.updateCanvasState(_:)();
    if ([v17 isFirstResponder])
    {

      goto LABEL_66;
    }

    v75 = *&v35[v141];
    if (!v75)
    {
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    v76 = v75;

    v77 = CanvasElementResizeView.resizingCanvasElements.getter();

    if (v77 >> 62)
    {
      v132 = __CocoaSet.count.getter();

      if (!v132)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v78)
      {
        goto LABEL_66;
      }
    }

    v79 = [v17 window];
    if (v79)
    {
      v80 = v79;
      v81 = [objc_opt_self() activeToolPickerForWindow_];
      if (v81)
      {
        v82 = v81;
        v83 = [v81 _visibilityUpdatesEnabled];
        a2 = &off_1E845F000;
        [v82 _setVisibilityUpdatesEnabled_];
        [v17 becomeFirstResponder];
        [v82 _setVisibilityUpdatesEnabled_];

        goto LABEL_66;
      }
    }

    [v17 becomeFirstResponder];
LABEL_66:
    v109 = *(v17 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
    if (v109)
    {
      v110 = v109;
      HandwritingReflowView.updateForNewSelection()();
    }

    v111 = specialized Canvas.canvasSelectionDidChange()();
    v112 = *&v35[v141];
    if (!v112)
    {
      goto LABEL_108;
    }

    v113 = v112 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
    if (!*(*v113 + 16) && !*(*(v113 + 8) + 16) && (*(v113 + 24) & 1) == 0)
    {
      v114 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0x468))(v111);
LABEL_87:
      v121 = v114;
      [v114 _clearSelectionIfNecessary];

      goto LABEL_88;
    }

    goto LABEL_88;
  }

  v39 = *&v143[v141];
  if (!v39)
  {
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v41 = *&v39[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection];
  v40 = *&v39[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8];
  v42 = *&v39[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16];
  v43 = v39[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24];
  v144 = v41;
  swift_bridgeObjectRetain_n();
  v142 = v40;
  swift_bridgeObjectRetain_n();
  v44 = v39;
  v45 = v138;
  AnyCanvasElementView.weakCanvasElement.getter(v138);
  if (v136(v45, 1, v17) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
    v46 = v41;
  }

  else
  {
    (v134[0])(v26, v45, v17);
    v84 = v135;
    specialized Set._Variant.remove(_:)(v26, v135);
    outlined destroy of StocksKitCurrencyCache.Provider?(v84, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
    (a2)(v26, v17);
    v46 = v144;
  }

  CanvasElementResizeView.selection.setter(v46, v142, v42, v43);

  v35 = v143;
  v85 = *&v143[v141];
  if (!v85)
  {
    goto LABEL_112;
  }

  v86 = v85 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  v87 = *v86;
  v88 = *(v86 + 8);
  v89 = *(v86 + 16);
  v17 = *(v86 + 24);

  _sSh2eeoiySbShyxG_ABtFZ9Coherence13WeakTagged_10Vy8PaperKit0D13CanvasElementVG_Tt1g5(v41, v87);
  if (v90)
  {
    _sSh2eeoiySbShyxG_ABtFZ9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_Tt1g5(v142, v88);
    a2 = v91;

    if (a2)
    {
      if (v43)
      {
        if (v17)
        {
          goto LABEL_77;
        }
      }

      else
      {
        if (v42 == v89)
        {
          v115 = v17;
        }

        else
        {
          v115 = 1;
        }

        if ((v115 & 1) == 0)
        {
          goto LABEL_77;
        }
      }
    }
  }

  else
  {
  }

  if (one-time initialization token for miniMenuLogger != -1)
  {
    swift_once();
  }

  v92 = type metadata accessor for Logger();
  __swift_project_value_buffer(v92, miniMenuLogger);
  a2 = v35;
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 134217984;
    v96 = *&v35[v141];
    if (!v96)
    {
LABEL_114:

      __break(1u);
      goto LABEL_115;
    }

    *(v95 + 4) = *(*(v96 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection) + 16);
    v97 = v95;

    _os_log_impl(&dword_1D38C4000, v93, v94, "Changing selection to have %ld elements", v97, 0xCu);
    MEMORY[0x1DA6D0660](v97, -1, -1);
  }

  else
  {

    v93 = a2;
  }

  MEMORY[0x1EEE9AC00](v98);
  v134[-2] = a2;
  AnyCanvas.updateCanvasState(_:)();
  if ([a2 isFirstResponder])
  {

    goto LABEL_80;
  }

  v99 = *&v35[v141];
  if (!v99)
  {
LABEL_115:
    __break(1u);
    return;
  }

  v100 = v99;

  v101 = CanvasElementResizeView.resizingCanvasElements.getter();

  if (v101 >> 62)
  {
    v133 = __CocoaSet.count.getter();

    if (!v133)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v102 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v102)
    {
      goto LABEL_80;
    }
  }

  v103 = [a2 window];
  if (v103)
  {
    v104 = v103;
    v105 = [objc_opt_self() activeToolPickerForWindow_];
    if (v105)
    {
      v106 = v105;
      v107 = [v105 _visibilityUpdatesEnabled];
      v17 = &off_1E845F000;
      [v106 _setVisibilityUpdatesEnabled_];
      [a2 becomeFirstResponder];
      [v106 _setVisibilityUpdatesEnabled_];

      goto LABEL_80;
    }
  }

  [a2 becomeFirstResponder];
LABEL_80:
  v116 = *(a2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
  if (v116)
  {
    v117 = v116;
    HandwritingReflowView.updateForNewSelection()();
  }

  v118 = specialized Canvas.canvasSelectionDidChange()();
  v119 = *&v35[v141];
  if (!v119)
  {
    goto LABEL_113;
  }

  v120 = v119 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  if (!*(*v120 + 16) && !*(*(v120 + 8) + 16) && (*(v120 + 24) & 1) == 0)
  {
    v114 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x468))(v118);
    goto LABEL_87;
  }

LABEL_88:
  v122 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
  v123 = *&v35[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  if (!v123)
  {
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v124 = v123;
  v125 = CanvasElementResizeView.resizingCanvasElements.getter();

  if (v125 >> 62)
  {
    v131 = __CocoaSet.count.getter();

    if (!v131)
    {
      return;
    }
  }

  else
  {
    v126 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v126)
    {
      return;
    }
  }

  v127 = *&v143[v122];
  if (!v127)
  {
    goto LABEL_104;
  }

  v128 = v127;
  v129 = CanvasElementResizeView.resizingCanvasElements.getter();

  if (v129 >> 62)
  {
    v130 = __CocoaSet.count.getter();
  }

  else
  {
    v130 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  type metadata accessor for Analytics();
  swift_initStaticObject();
  Analytics.recordDidMakeSelection(type:contentType:)(0, v130 > 1);
}

void specialized Canvas.startCheckingForOldEraserStrokes()()
{
  v3 = *(v0 + direct field offset for Canvas.eraserCheckingIndex);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  *(v0 + direct field offset for Canvas.eraserCheckingIndex) = v5;
  v1 = direct field offset for Canvas.removeOldEraserStrokesTimer;
  if (*(v0 + direct field offset for Canvas.removeOldEraserStrokesTimer))
  {
    return;
  }

  v2 = v0;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D38C4000, v7, v8, "Start checking for old eraser strokes", v9, 2u);
    MEMORY[0x1DA6D0660](v9, -1, -1);
  }

  v10 = objc_opt_self();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15[4] = partial apply for specialized closure #1 in Canvas.startCheckingForOldEraserStrokes();
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction) -> ();
  v15[3] = &block_descriptor_447;
  v12 = _Block_copy(v15);

  v13 = [v10 scheduledTimerWithTimeInterval:1 repeats:v12 block:30.0];
  _Block_release(v12);
  v14 = *(v2 + v1);
  *(v2 + v1) = v13;
}

void specialized Canvas.mergeToCanvasElements()()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  MEMORY[0x1EEE9AC00](v3);
  v6 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
  if (!*&v0[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView])
  {
    __break(1u);
    goto LABEL_46;
  }

  v63 = v5;
  v64 = &v61 - v4;
  v7 = v0;

  v1 = 0;
  v9 = specialized _NativeSet.filter(_:)(v8, v7);
  v65 = v7;

  v10 = *&v2[v6];
  if (!v10)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v62 = v3;
  v12 = *&v10[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection];
  v11 = *&v10[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8];
  v1 = *&v10[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16];
  v13 = v10[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24];

  swift_bridgeObjectRetain_n();
  v14 = v10;
  v15 = v11;
  CanvasElementResizeView.selection.setter(v9, v11, v1, v13);

  v66 = v6;
  v67 = v2;
  v16 = *&v2[v6];
  if (!v16)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v17 = v16 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  v18 = *v17;
  v19 = *(v17 + 8);
  v20 = *(v17 + 16);
  v21 = *(v17 + 24);

  _sSh2eeoiySbShyxG_ABtFZ9Coherence13WeakTagged_10Vy8PaperKit0D13CanvasElementVG_Tt1g5(v12, v18);
  if ((v22 & 1) == 0)
  {

    v25 = v65;
    goto LABEL_10;
  }

  _sSh2eeoiySbShyxG_ABtFZ9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_Tt1g5(v15, v19);
  v24 = v23;

  v25 = v65;
  if ((v24 & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v13 & 1) == 0)
  {
    if (v1 == v20)
    {
      v48 = v21;
    }

    else
    {
      v48 = 1;
    }

    if ((v48 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_10:
    if (one-time initialization token for miniMenuLogger != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, miniMenuLogger);
    v1 = v25;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      v30 = *&v67[v66];
      if (!v30)
      {
LABEL_49:

        __break(1u);
        goto LABEL_50;
      }

      *(v29 + 4) = *(*(v30 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection) + 16);
      v31 = v29;

      _os_log_impl(&dword_1D38C4000, v27, v28, "Changing selection to have %ld elements", v31, 0xCu);
      MEMORY[0x1DA6D0660](v31, -1, -1);
    }

    else
    {

      v27 = v1;
    }

    v32 = v62;

    MEMORY[0x1EEE9AC00](v33);
    *(&v61 - 2) = v1;
    AnyCanvas.updateCanvasState(_:)();
    v34 = [v1 isFirstResponder];
    v35 = v64;
    if (v34)
    {

      v36 = v63;
      v37 = MEMORY[0x1E69E7D40];
      goto LABEL_32;
    }

    v38 = *&v67[v66];
    if (!v38)
    {
LABEL_50:
      __break(1u);
      return;
    }

    v39 = v38;

    v40 = CanvasElementResizeView.resizingCanvasElements.getter();

    if (v40 >> 62)
    {
      v41 = __CocoaSet.count.getter();
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = v63;
    v37 = MEMORY[0x1E69E7D40];

    if (!v41)
    {
      goto LABEL_32;
    }

    v42 = [v1 window];
    if (v42)
    {
      v43 = v42;
      v44 = [objc_opt_self() activeToolPickerForWindow_];
      if (v44)
      {
        v45 = v44;
        v46 = [v44 _visibilityUpdatesEnabled];
        [v45 _setVisibilityUpdatesEnabled_];
        [v1 becomeFirstResponder];
        v47 = v46;
        v37 = MEMORY[0x1E69E7D40];
        [v45 _setVisibilityUpdatesEnabled_];

        goto LABEL_32;
      }
    }

    [v1 becomeFirstResponder];
LABEL_32:
    v49 = *(&v1->isa + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
    if (v49)
    {
      v50 = v49;
      HandwritingReflowView.updateForNewSelection()();
    }

    v51 = specialized Canvas.canvasSelectionDidChange()();
    v52 = *&v67[v66];
    if (v52)
    {
      v53 = v52 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
      if (!*(*v53 + 16) && !*(*(v53 + 8) + 16) && (*(v53 + 24) & 1) == 0)
      {
        v54 = (*((*v37 & v1->isa) + 0x468))(v51);
        [v54 _clearSelectionIfNecessary];
      }

      goto LABEL_39;
    }

    goto LABEL_48;
  }

  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_29:

  v32 = v62;
  v36 = v63;
  v35 = v64;
  v37 = MEMORY[0x1E69E7D40];
LABEL_39:
  v55 = *&v25[direct field offset for Canvas.paperView];
  v56 = *((*v37 & *v55) + 0x3F0);
  swift_beginAccess();
  (*(v36 + 16))(v35, &v55[v56], v32);
  swift_beginAccess();
  type metadata accessor for Paper(0);
  lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
  v57 = v55;
  v58 = Capsule.merge<A>(_:)();
  Strong = swift_endAccess();
  if ((v58 & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    (*((*v37 & *v57) + 0x520))(Strong);
  }

  else
  {
    v60 = Strong;

    v57 = v60;
  }

  (*(v36 + 8))(v35, v32);
  [v25 setNeedsLayout];
}

{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  MEMORY[0x1EEE9AC00](v3);
  v6 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
  if (!*&v0[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView])
  {
    __break(1u);
    goto LABEL_46;
  }

  v63 = v5;
  v64 = &v61 - v4;
  v7 = v0;

  v1 = 0;
  v9 = specialized _NativeSet.filter(_:)(v8, v7);
  v65 = v7;

  v10 = *&v2[v6];
  if (!v10)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v62 = v3;
  v12 = *&v10[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection];
  v11 = *&v10[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8];
  v1 = *&v10[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16];
  v13 = v10[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24];

  swift_bridgeObjectRetain_n();
  v14 = v10;
  v15 = v11;
  CanvasElementResizeView.selection.setter(v9, v11, v1, v13);

  v66 = v6;
  v67 = v2;
  v16 = *&v2[v6];
  if (!v16)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v17 = v16 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  v18 = *v17;
  v19 = *(v17 + 8);
  v20 = *(v17 + 16);
  v21 = *(v17 + 24);

  _sSh2eeoiySbShyxG_ABtFZ9Coherence13WeakTagged_10Vy8PaperKit0D13CanvasElementVG_Tt1g5(v12, v18);
  if ((v22 & 1) == 0)
  {

    v25 = v65;
    goto LABEL_10;
  }

  _sSh2eeoiySbShyxG_ABtFZ9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_Tt1g5(v15, v19);
  v24 = v23;

  v25 = v65;
  if ((v24 & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v13 & 1) == 0)
  {
    if (v1 == v20)
    {
      v48 = v21;
    }

    else
    {
      v48 = 1;
    }

    if ((v48 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_10:
    if (one-time initialization token for miniMenuLogger != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, miniMenuLogger);
    v1 = v25;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      v30 = *&v67[v66];
      if (!v30)
      {
LABEL_49:

        __break(1u);
        goto LABEL_50;
      }

      *(v29 + 4) = *(*(v30 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection) + 16);
      v31 = v29;

      _os_log_impl(&dword_1D38C4000, v27, v28, "Changing selection to have %ld elements", v31, 0xCu);
      MEMORY[0x1DA6D0660](v31, -1, -1);
    }

    else
    {

      v27 = v1;
    }

    v32 = v62;

    MEMORY[0x1EEE9AC00](v33);
    *(&v61 - 2) = v1;
    AnyCanvas.updateCanvasState(_:)();
    v34 = [v1 isFirstResponder];
    v35 = v64;
    if (v34)
    {

      v36 = v63;
      v37 = MEMORY[0x1E69E7D40];
      goto LABEL_32;
    }

    v38 = *&v67[v66];
    if (!v38)
    {
LABEL_50:
      __break(1u);
      return;
    }

    v39 = v38;

    v40 = CanvasElementResizeView.resizingCanvasElements.getter();

    if (v40 >> 62)
    {
      v41 = __CocoaSet.count.getter();
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = v63;
    v37 = MEMORY[0x1E69E7D40];

    if (!v41)
    {
      goto LABEL_32;
    }

    v42 = [v1 window];
    if (v42)
    {
      v43 = v42;
      v44 = [objc_opt_self() activeToolPickerForWindow_];
      if (v44)
      {
        v45 = v44;
        v46 = [v44 _visibilityUpdatesEnabled];
        [v45 _setVisibilityUpdatesEnabled_];
        [v1 becomeFirstResponder];
        v47 = v46;
        v37 = MEMORY[0x1E69E7D40];
        [v45 _setVisibilityUpdatesEnabled_];

        goto LABEL_32;
      }
    }

    [v1 becomeFirstResponder];
LABEL_32:
    v49 = *(&v1->isa + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
    if (v49)
    {
      v50 = v49;
      HandwritingReflowView.updateForNewSelection()();
    }

    v51 = specialized Canvas.canvasSelectionDidChange()();
    v52 = *&v67[v66];
    if (v52)
    {
      v53 = v52 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
      if (!*(*v53 + 16) && !*(*(v53 + 8) + 16) && (*(v53 + 24) & 1) == 0)
      {
        v54 = (*((*v37 & v1->isa) + 0x468))(v51);
        [v54 _clearSelectionIfNecessary];
      }

      goto LABEL_39;
    }

    goto LABEL_48;
  }

  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_29:

  v32 = v62;
  v36 = v63;
  v35 = v64;
  v37 = MEMORY[0x1E69E7D40];
LABEL_39:
  v55 = *&v25[direct field offset for Canvas.paperView];
  v56 = *((*v37 & *v55) + 0x3F0);
  swift_beginAccess();
  (*(v36 + 16))(v35, &v55[v56], v32);
  swift_beginAccess();
  type metadata accessor for Image(0);
  lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  v57 = v55;
  v58 = Capsule.merge<A>(_:)();
  Strong = swift_endAccess();
  if ((v58 & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    (*((*v37 & *v57) + 0x520))(Strong);
  }

  else
  {
    v60 = Strong;

    v57 = v60;
  }

  (*(v36 + 8))(v35, v32);
  [v25 setNeedsLayout];
}

void specialized Canvas.updateToolPickerContextualEditingView()()
{
  v1 = *(v0 + direct field offset for Canvas._canvasElementController);
  if (v1)
  {
    v13 = *(v0 + direct field offset for Canvas._canvasElementController);
LABEL_3:
    v2 = v1;
    CanvasElementController.updateToolPickerContextualEditingView()();
    goto LABEL_4;
  }

  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x468);
  v5 = v4();
  if (v5)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      v13 = (*(v8 + 48))(ObjectType, v8);

      v1 = 0;
      goto LABEL_3;
    }
  }

  v9 = v4();
  if (!v9)
  {
    return;
  }

  v13 = v9;
  v10 = swift_getObjectType();
  v11 = swift_conformsToProtocol2();
  if (v11)
  {
    v12 = (*(v11 + 48))(v10, v11);
    CanvasElementController.updateToolPickerContextualEditingView()();

    v3 = v12;
    goto LABEL_5;
  }

LABEL_4:
  v3 = v13;
LABEL_5:
}

uint64_t specialized Canvas.canvasElementOrFormFieldExistsAtPoint(_:)(double a1, double a2)
{
  v3 = v2;
  v6 = direct field offset for Canvas.paperView;
  v7 = *(v2 + direct field offset for Canvas.paperView);
  v8 = specialized ContainerCanvasElementView.subelementViews.getter();

  if (v8 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v10 = MEMORY[0x1E69E7D40];
    if (!i)
    {
      break;
    }

    v11 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1DA6CE0C0](v11, v8);
      }

      else
      {
        if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v12 = *(v8 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (((*((*v10 & *v12) + 0x1F0))() & 1) == 0)
      {
        [v13 convertPoint:*(v3 + v6) fromCoordinateSpace:{a1, a2}];
        v15 = [v13 hitTest:0 withEvent:?];
        if (v15)
        {
          v16 = v15;

          result = v16;
          goto LABEL_16;
        }
      }

      ++v11;
      if (v14 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_14:

  result = *(*(v3 + v6) + *((*v10 & **(v3 + v6)) + 0x568));
  if (result)
  {
    result = [result hitTest:0 withEvent:{a1, a2}];
    if (result)
    {
LABEL_16:

      return 1;
    }
  }

  return result;
}

uint64_t specialized Canvas.tool.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for PKInkingTool.InkType();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PKInk();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x468))(v9);
  if (v12)
  {
    v13 = v12;
    v14 = [v12 ink];

    static PKInk._unconditionallyBridgeFromObjectiveC(_:)();
    PKInk.tool.getter(&v19);
    (*(v8 + 8))(v11, v7);
    return outlined init with take of PaperKitHashable(&v19, a1);
  }

  else
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    (*(v4 + 104))(v6, *MEMORY[0x1E6978328], v3);
    v16 = [objc_opt_self() blackColor];
    PKInk.init(_:color:)();
    v17 = type metadata accessor for PKInkingTool();
    v18 = MEMORY[0x1E6978370];
    a1[3] = v17;
    a1[4] = v18;
    __swift_allocate_boxed_opaque_existential_1(a1);
    result = PKInkingTool.init(ink:width:)();
    if (*(&v20 + 1))
    {
      return outlined destroy of StocksKitCurrencyCache.Provider?(&v19, &_s9PencilKit6PKTool_pSgMd, &_s9PencilKit6PKTool_pSgMR);
    }
  }

  return result;
}

void specialized Canvas.stopCheckingForOldEraserStrokes(index:)(uint64_t a1)
{
  if (*(v1 + direct field offset for Canvas.eraserCheckingIndex) == a1)
  {
    v2 = v1;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, logger);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D38C4000, v4, v5, "Stopped checking for old eraser strokes", v6, 2u);
      MEMORY[0x1DA6D0660](v6, -1, -1);
    }

    v7 = direct field offset for Canvas.removeOldEraserStrokesTimer;
    [*(v2 + direct field offset for Canvas.removeOldEraserStrokesTimer) invalidate];
    v8 = *(v2 + v7);
    *(v2 + v7) = 0;
  }
}

id ResizeGestureRecognizer.init(target:action:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of Date?(a1, v16, &_sypSgMd, &_sypSgMR);
  v5 = v17;
  if (v17)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for ResizeGestureRecognizer();
  v15.receiver = v2;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, sel_initWithTarget_action_, v11, a2);
  swift_unknownObjectRelease();
  outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_sypSgMd, &_sypSgMR);
  return v13;
}

id ResizeGestureRecognizer.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ResizeGestureRecognizer();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t PaperTextAttachmentView.dataModelIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  v24 = type metadata accessor for CRKeyPath();
  v12 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v22 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v1;
  v14 = *(v1 + direct field offset for Canvas.paperView);
  v15 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x3F0);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v14[v15], v5);
  Capsule.root.getter();
  (*(v6 + 8))(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  CRRegister.wrappedValue.getter();
  _s8PaperKit0A0VWOhTm_1(v4, type metadata accessor for Paper);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
    v18 = direct field offset for PaperTextAttachmentView.paperDrawingKeyPath;
    v19 = v23;
    swift_beginAccess();
    return (*(v12 + 16))(v25, v19 + v18, v24);
  }

  else
  {
    v21 = v22;
    Ref.id.getter();
    (*(v17 + 8))(v11, v16);
    return (*(v12 + 32))(v25, v21, v24);
  }
}

uint64_t PaperTextAttachmentView.__ivar_destroyer()
{
  outlined destroy of weak AnyContainerCanvasElementView?(v0 + direct field offset for PaperTextAttachmentView.paperViewDelegate);

  v1 = direct field offset for PaperTextAttachmentView.paperDrawingKeyPath;
  v2 = type metadata accessor for CRKeyPath();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  MEMORY[0x1DA6D07B0](v0 + direct field offset for PaperTextAttachmentView.observedTextView);

  outlined consume of MagicGenerativePlaygroundContext?(*(v0 + direct field offset for PaperTextAttachmentView.magicGenerativePlaygroundContextToInitialize), *(v0 + direct field offset for PaperTextAttachmentView.magicGenerativePlaygroundContextToInitialize + 8), *(v0 + direct field offset for PaperTextAttachmentView.magicGenerativePlaygroundContextToInitialize + 16));
  MEMORY[0x1DA6D07B0](v0 + direct field offset for PaperTextAttachmentView._viewControllerForPresentingUI);

  return swift_unknownObjectRelease();
}

id PaperTextAttachmentView.__deallocating_deinit()
{
  PaperTextAttachmentView.observeTextView(_:)(0);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaperTextAttachmentView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id @objc PaperTextAttachmentView.__deallocating_deinit(void *a1)
{
  v1 = a1;
  PaperTextAttachmentView.observeTextView(_:)(0);
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PaperTextAttachmentView(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t @objc PaperTextAttachmentView.__ivar_destroyer(uint64_t a1)
{
  outlined destroy of weak AnyContainerCanvasElementView?(a1 + direct field offset for PaperTextAttachmentView.paperViewDelegate);

  v2 = direct field offset for PaperTextAttachmentView.paperDrawingKeyPath;
  v3 = type metadata accessor for CRKeyPath();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  MEMORY[0x1DA6D07B0](a1 + direct field offset for PaperTextAttachmentView.observedTextView);

  outlined consume of MagicGenerativePlaygroundContext?(*(a1 + direct field offset for PaperTextAttachmentView.magicGenerativePlaygroundContextToInitialize), *(a1 + direct field offset for PaperTextAttachmentView.magicGenerativePlaygroundContextToInitialize + 8), *(a1 + direct field offset for PaperTextAttachmentView.magicGenerativePlaygroundContextToInitialize + 16));
  MEMORY[0x1DA6D07B0](a1 + direct field offset for PaperTextAttachmentView._viewControllerForPresentingUI);

  return swift_unknownObjectRelease();
}

void PaperTextAttachmentView.handleFileMerge(newModel:firstMerge:)(char *a1, int a2)
{
  v220 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v200 = &v193[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v207 = &v193[-v6];
  v211 = type metadata accessor for CRKeyPath();
  v214 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v201 = &v193[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v208 = &v193[-v9];
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSg_ADtMd, &_s9Coherence9CRKeyPathVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v212);
  v218 = &v193[-v10];
  v216 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v216);
  v206 = &v193[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v193[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v193[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v204 = &v193[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v202 = &v193[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v219 = &v193[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v213 = &v193[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v205 = &v193[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v209 = &v193[-v30];
  MEMORY[0x1EEE9AC00](v31);
  v215 = &v193[-v32];
  v33 = type metadata accessor for Date();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v193[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = &v193[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v193[-v41];
  v210 = a2;
  if (a2)
  {
    static Date.now.getter();
    specialized Capsule<>.paperWithRemovedEraserStrokes(createdBefore:)(v36, v42);
    (*(v34 + 8))(v36, v33);
    v199 = v42;
    outlined init with copy of Date?(v42, v39, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
    v43 = *(v27 + 48);
    v44 = v43(v39, 1, v26);
    v203 = v27;
    v198 = v27 + 48;
    v197 = v43;
    if (v44 == 1)
    {
      (*(v27 + 16))(v215, v220, v26);
      if (v43(v39, 1, v26) != 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
      }
    }

    else
    {
      (*(v27 + 32))(v215, v39, v26);
    }

    Capsule.root.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
    CRRegister.wrappedValue.getter();
    _s8PaperKit0A0VWOhTm_1(v14, type metadata accessor for Paper);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
    v51 = *(v50 - 8);
    v52 = (*(v51 + 48))(v17, 1, v50);
    v53 = v214;
    if (v52 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
      v54 = v53[7];
      v55 = v213;
      v56 = v211;
      v57 = v54(v213, 1, 1, v211);
      MEMORY[0x1EEE9AC00](v57);
      v58 = v217;
      *&v193[-16] = v217;
      Capsule.callAsFunction<A>(_:)();
      v59 = v56;
    }

    else
    {
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKDrawingStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR, MEMORY[0x1E69953B8]);
      v55 = v213;
      Reference.identity.getter();
      (*(v51 + 8))(v17, v50);
      v54 = v53[7];
      v59 = v211;
      v54(v55, 0, 1, v211);
      v58 = v217;
    }

    v60 = direct field offset for PaperTextAttachmentView.paperDrawingKeyPath;
    swift_beginAccess();
    v61 = v53[2];
    v220 = v60;
    v62 = v219;
    v61(v219, &v58[v60], v59);
    v54(v62, 0, 1, v59);
    v63 = *(v212 + 48);
    v64 = v218;
    outlined init with copy of Date?(v55, v218, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
    outlined init with copy of Date?(v62, &v64[v63], &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
    v65 = v53[6];
    v66 = v65(v64, 1, v59);
    v67 = &unk_1EDCC4000;
    v212 = v26;
    if (v66 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v62, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
      if (v65(&v64[v63], 1, v59) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v64, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
LABEL_17:
        v77 = v67[238];
        if (v217[v77] != 1)
        {
          LOBYTE(v221[0]) = 0;
          v143 = v217;
          PaperTextAttachmentView.forwardChanges(from:)(v221);
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v144 = type metadata accessor for Logger();
          __swift_project_value_buffer(v144, logger);
          v145 = v143;
          v146 = Logger.logObject.getter();
          v147 = static os_log_type_t.debug.getter();
          v148 = os_log_type_enabled(v146, v147);
          LOBYTE(v49) = v210;
          v128 = v213;
          v117 = v199;
          if (v148)
          {
            v149 = swift_slowAlloc();
            *v149 = 67109120;
            *(v149 + 4) = v143[v77];

            _os_log_impl(&dword_1D38C4000, v146, v147, "Merging in newModel on first merge. Safe to copy: %{BOOL}d", v149, 8u);
            MEMORY[0x1DA6D0660](v149, -1, -1);
          }

          else
          {
          }

          v48 = v143;
          goto LABEL_62;
        }

LABEL_18:
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v78 = type metadata accessor for Logger();
        __swift_project_value_buffer(v78, logger);
        v79 = v217;
        v80 = v217;
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 67109120;
          *(v83 + 4) = *(v80 + v67[238]);

          _os_log_impl(&dword_1D38C4000, v81, v82, "Switching out our paper with the one from the file bundle. Safe to copy %{BOOL}d", v83, 8u);
          MEMORY[0x1DA6D0660](v83, -1, -1);
        }

        else
        {

          v81 = v80;
        }

        v84 = v214;

        v85 = v204;
        outlined init with copy of Date?(v213, v204, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
        if (v65(v85, 1, v59) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v85, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
        }

        else
        {
          v86 = v59;
          v87 = *(v84 + 32);
          v88 = v201;
          v87(v201, v85, v59);
          v89 = v208;
          v87(v208, v88, v59);
          v90 = v220;
          swift_beginAccess();
          (*(v84 + 40))(&v90[v79], v89, v86);
          swift_endAccess();
        }

        v91 = v203;
        v92 = *(v203 + 16);
        v93 = v209;
        v94 = v212;
        v204 = (v203 + 16);
        v202 = v92;
        (v92)(v209, v215, v212);
        v95 = direct field offset for Canvas.paperView;
        v96 = *(v80 + direct field offset for Canvas.paperView);
        v97 = *((*MEMORY[0x1E69E7D40] & *v96) + 0x3F0);
        swift_beginAccess();
        v98 = *(v91 + 24);
        v99 = v96;
        v98(v96 + v97, v93, v94);
        v100 = v95;
        swift_endAccess();

        v101 = *(v91 + 8);
        v196 = v91 + 8;
        (v101)(v93, v94);
        v102 = [v80 subviews];
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
        v103 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v104 = *&v100[v80];
        v105 = specialized Collection<>.firstIndex(of:)(v104, v103);
        v107 = v106;

        v108 = MEMORY[0x1E69E7D40];
        v109 = *&v100[v80];
        v110 = *MEMORY[0x1E69E7D40] & *v109;
        v111 = *(v109 + *(v110 + 0x558));
        v201 = v101;
        if (v111)
        {
          v220 = [v111 hashtagAndMentionsDelegate];
          v109 = *&v100[v80];
          v110 = *v108 & *v109;
        }

        else
        {
          v220 = 0;
        }

        v112 = v216;
        v113 = v207;
        v114 = *(v109 + *(v110 + 1368));
        v48 = v217;
        if (v114)
        {
          LODWORD(v219) = [v114 wantsHashtagDetection];
          v109 = *&v100[v80];
          v110 = *v108 & *v109;
        }

        else
        {
          LODWORD(v219) = 0;
        }

        v115 = *(v109 + *(v110 + 1368));
        if (v115)
        {
          LODWORD(v218) = [v115 wantsMentionDetection];
          v109 = *&v100[v80];
          v110 = *v108 & *v109;
        }

        else
        {
          LODWORD(v218) = 0;
        }

        v116 = *(v109 + *(v110 + 1368));
        v195 = v105;
        v194 = v107;
        if (v116)
        {
          v117 = [v116 isSharedViaICloud];
          v109 = *&v100[v80];
        }

        else
        {
          v117 = 0;
        }

        [v109 removeFromSuperview];
        v207 = v100;
        v118 = *&v100[v80];
        v119 = *((*v108 & *v118) + 0x3F0);
        swift_beginAccess();
        v120 = v118 + v119;
        v121 = v205;
        v122 = v212;
        (v202)(v205, v120, v212);
        v123 = v206;
        Capsule.root.getter();
        v124 = v208;
        Capsule.rootID.getter();
        off_1F4F629D0(v124, v112);
        (*(v214 + 8))(v124, v211);
        _s8PaperKit0A0VWOhTm_1(v123, type metadata accessor for Paper);
        (v201)(v121, v122);
        v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
        v126 = *(v125 - 8);
        if ((*(v126 + 48))(v113, 1, v125) == 1)
        {
          __break(1u);
        }

        else
        {
          SharedTagged_10<>.layout()(v221);
          (*(v126 + 8))(v113, v125);
          v127 = v222;
          v128 = v223;
          __swift_project_boxed_opaque_existential_1(v221, v222);
          v129 = *(v128 + 1);
          v130 = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
          v131 = v129(v215, v80, 0, v216, v130, v127, v128);
          if (v131)
          {
            v132 = v131;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit26ContainerCanvasElementViewCyAA0A0VGMd, &_s8PaperKit26ContainerCanvasElementViewCyAA0A0VGMR);
            v133 = swift_dynamicCastClassUnconditional();
            v134 = v207;
            v135 = *&v207[v80];
            *&v207[v80] = v133;
            v49 = v133;

            v67 = &unk_1EDCC4000;
            if (*(v80 + direct field offset for Canvas.scribbleInteraction))
            {
              [v49 addInteraction_];
              if (*(v80 + direct field offset for Canvas.indirectScribbleInteraction))
              {
                [v49 addInteraction_];

                __swift_destroy_boxed_opaque_existential_0(v221);
                if (v194)
                {
                  v136 = 0;
                }

                else
                {
                  v136 = v195;
                }

                [v80 insertSubview:*&v134[v80] atIndex:v136];
                v137 = *&v134[v80];
                v138 = specialized ContainerCanvasElementView.pencilKitAttachmentViews()();

                if (v138 >> 62)
                {
                  v139 = __CocoaSet.count.getter();
                  if (v139)
                  {
                    goto LABEL_47;
                  }
                }

                else
                {
                  v139 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v139)
                  {
LABEL_47:
                    if (v139 < 1)
                    {
                      __break(1u);
                      goto LABEL_89;
                    }

                    v140 = 0;
                    do
                    {
                      if ((v138 & 0xC000000000000001) != 0)
                      {
                        v141 = MEMORY[0x1DA6CE0C0](v140, v138);
                      }

                      else
                      {
                        v141 = *(v138 + 8 * v140 + 32);
                      }

                      v142 = v141;
                      ++v140;
                      [v141 setHashtagAndMentionsDelegate_];
                      [v142 setWantsHashtagDetection_];
                      [v142 setWantsMentionDetection_];
                      [v142 setIsSharedViaICloud_];
                    }

                    while (v139 != v140);
                    swift_unknownObjectRelease();

                    v48 = v217;
                    LOBYTE(v49) = v210;
                    v128 = v213;
                    v117 = v199;
                    v67 = &unk_1EDCC4000;
LABEL_62:
                    LOBYTE(v121) = 1;
                    if (v197(v117, 1, v212) == 1)
                    {
LABEL_67:
                      *(v48 + direct field offset for PaperTextAttachmentView.previousLinks) = PaperTextAttachmentView.currentLinksIdentifiers()();

                      *(v48 + v67[238]) = 0;
                      v154 = v48 + direct field offset for PaperTextAttachmentView.paperBoundsHint;
                      *v154 = 0u;
                      *(v154 + 1) = 0u;
                      v154[32] = v121;
                      if (!AnyCanvas.isLiveEditing()() && !*(v48 + direct field offset for PaperTextAttachmentView.resizeInfo))
                      {
                        v155 = type metadata accessor for TaskPriority();
                        v156 = v200;
                        (*(*(v155 - 8) + 56))(v200, 1, 1, v155);
                        type metadata accessor for MainActor();
                        v157 = v48;
                        v158 = static MainActor.shared.getter();
                        v159 = swift_allocObject();
                        v160 = MEMORY[0x1E69E85E0];
                        *(v159 + 16) = v158;
                        *(v159 + 24) = v160;
                        *(v159 + 32) = v157;
                        *(v159 + 40) = 1280;
                        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v156, &closure #1 in PaperTextAttachmentView.updateContentHeight(from:alwaysIncludeDrawing:)partial apply, v159);
                      }

                      v161 = *(v48 + direct field offset for Canvas.paperView);
                      v162 = *((*MEMORY[0x1E69E7D40] & *v161) + 0x3F0);
                      swift_beginAccess();
                      v163 = v203;
                      v164 = v161 + v162;
                      v165 = v209;
                      v166 = v212;
                      (*(v203 + 16))(v209, v164, v212);
                      specialized Capsule<>.logSubelementHeadroomsOnInternalBuilds()();
                      v167 = *(v163 + 8);
                      v167(v165, v166);
                      outlined destroy of StocksKitCurrencyCache.Provider?(v128, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
                      v167(v215, v166);
                      outlined destroy of StocksKitCurrencyCache.Provider?(v117, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
                      goto LABEL_71;
                    }

                    if (one-time initialization token for logger == -1)
                    {
LABEL_64:
                      v150 = type metadata accessor for Logger();
                      __swift_project_value_buffer(v150, logger);
                      v151 = Logger.logObject.getter();
                      v152 = static os_log_type_t.default.getter();
                      if (os_log_type_enabled(v151, v152))
                      {
                        v153 = swift_slowAlloc();
                        *v153 = 0;
                        _os_log_impl(&dword_1D38C4000, v151, v152, "Found eraser stroke(s) in model during first merge", v153, 2u);
                        MEMORY[0x1DA6D0660](v153, -1, -1);
                      }

                      LOBYTE(v221[0]) = 3;
                      PaperTextAttachmentView.forwardChanges(from:)(v221);
                      goto LABEL_67;
                    }

LABEL_89:
                    swift_once();
                    goto LABEL_64;
                  }
                }

                swift_unknownObjectRelease();

                LOBYTE(v49) = v210;
                v128 = v213;
                v117 = v199;
                goto LABEL_62;
              }

LABEL_93:
              __break(1u);
              return;
            }

LABEL_92:
            __break(1u);
            goto LABEL_93;
          }
        }

        __break(1u);
        goto LABEL_92;
      }
    }

    else
    {
      v68 = v202;
      outlined init with copy of Date?(v64, v202, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
      if (v65(&v64[v63], 1, v59) != 1)
      {
        v69 = v214;
        v70 = &v64[v63];
        v71 = v208;
        (*(v214 + 32))(v208, v70, v59);
        lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954D0]);
        v72 = v68;
        v73 = dispatch thunk of static Equatable.== infix(_:_:)();
        v74 = v64;
        v75 = *(v69 + 8);
        v75(v71, v211);
        outlined destroy of StocksKitCurrencyCache.Provider?(v219, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
        v76 = v72;
        v67 = &unk_1EDCC4000;
        v75(v76, v211);
        v59 = v211;
        outlined destroy of StocksKitCurrencyCache.Provider?(v74, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
        if ((v73 & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v219, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
      (*(v214 + 8))(v68, v59);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v64, &_s9Coherence9CRKeyPathVSg_ADtMd, &_s9Coherence9CRKeyPathVSg_ADtMR);
    goto LABEL_18;
  }

  v45 = v217;
  v46 = *&v217[direct field offset for Canvas.paperView];
  swift_beginAccess();
  lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
  v47 = v46;
  Capsule.merge<A>(_:)();
  swift_endAccess();

  LOBYTE(v221[0]) = 0;
  PaperTextAttachmentView.forwardChanges(from:)(v221);
  v48 = v45;
  LOBYTE(v49) = v210;
LABEL_71:
  v224.origin.x = PaperTextAttachmentView.safePaperModelBounds.getter();
  x = v224.origin.x;
  y = v224.origin.y;
  width = v224.size.width;
  height = v224.size.height;
  if (CGRectGetHeight(v224) >= 129.0)
  {
    [v48 frame];
    v183 = v182;
    v185 = v184;
    v186 = [v48 frame];
    v188 = v187;
    v189 = (*((*MEMORY[0x1E69E7D40] & *v48) + 0x1598))(v186);
    if (!v189)
    {
      v189 = [v48 superview];
    }

    v190 = v189;
    v191 = PaperTextAttachmentView.desiredTextAttachmentSize(containerView:)(v189);

    v192 = v191.height != v185 || v191.width != v183;
    v226.origin.x = 0.0;
    v226.origin.y = v188;
    v226.size.width = v191.width;
    v226.size.height = v191.height;
    PaperTextAttachmentView.updateAttachmentBounds(frame:ensureLayout:needsInvalidateLayout:shouldRedraw:)(v226, v49 & 1, v192, 1);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v172 = type metadata accessor for Logger();
    __swift_project_value_buffer(v172, logger);
    v173 = Logger.logObject.getter();
    v174 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      *v175 = 134217984;
      v225.origin.x = x;
      v225.origin.y = y;
      v225.size.width = width;
      v225.size.height = height;
      *(v175 + 4) = CGRectGetHeight(v225);
      _os_log_impl(&dword_1D38C4000, v173, v174, "Fixing up text attachment bounds from: %f", v175, 0xCu);
      MEMORY[0x1DA6D0660](v175, -1, -1);
    }

    if (!AnyCanvas.isLiveEditing()() && !*(v48 + direct field offset for PaperTextAttachmentView.resizeInfo))
    {
      v176 = type metadata accessor for TaskPriority();
      v177 = v200;
      (*(*(v176 - 8) + 56))(v200, 1, 1, v176);
      type metadata accessor for MainActor();
      v178 = v48;
      v179 = static MainActor.shared.getter();
      v180 = swift_allocObject();
      v181 = MEMORY[0x1E69E85E0];
      *(v180 + 16) = v179;
      *(v180 + 24) = v181;
      *(v180 + 32) = v178;
      *(v180 + 40) = 768;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v177, &closure #1 in PaperTextAttachmentView.updateContentHeight(from:alwaysIncludeDrawing:)partial apply, v180);
    }
  }

  if ((v49 & 1) == 0)
  {
    specialized Canvas.startCheckingForOldEraserStrokes()();
  }
}

uint64_t specialized Capsule<>.paperWithRemovedEraserStrokes(createdBefore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v30 - v4;
  v5 = type metadata accessor for Date();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v36 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v38 = type metadata accessor for Paper(0);
  v39 = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
  v40 = &protocol witness table for Paper;
  swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  Capsule.subscript.getter();

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
    v17 = v37;
LABEL_8:
    v26 = *(v16 - 8);
    v28 = 1;
    return (*(v26 + 56))(v17, v28, 1, v16);
  }

  v30 = v13;
  (*(v13 + 32))(v15, v11, v12);
  v18 = v2;
  Ref.subscript.getter();
  v19 = v35;
  specialized PKDrawingStruct.creationDateForFirstEraserStroke<A>(in:)(v2, v35);
  v21 = v33;
  v20 = v34;
  if ((*(v33 + 48))(v19, 1, v34) == 1)
  {
    _s8PaperKit0A0VWOhTm_1(v36, type metadata accessor for PKDrawingStruct);
    outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v17 = v37;
LABEL_7:
    (*(v30 + 8))(v15, v12);
    goto LABEL_8;
  }

  v22 = v18;
  v23 = v31;
  (*(v21 + 32))(v31, v19, v20);
  v24 = v32;
  v25 = static Date.< infix(_:_:)();
  (*(v21 + 8))(v23, v20);
  _s8PaperKit0A0VWOhTm_1(v36, type metadata accessor for PKDrawingStruct);
  v17 = v37;
  if ((v25 & 1) == 0)
  {
    goto LABEL_7;
  }

  v26 = *(v16 - 8);
  v27 = (*(v26 + 16))(v37, v22, v16);
  MEMORY[0x1EEE9AC00](v27);
  *(&v30 - 2) = v24;
  Capsule.callAsFunction<A>(_:)();
  (*(v30 + 8))(v15, v12);
  v28 = 0;
  return (*(v26 + 56))(v17, v28, 1, v16);
}

uint64_t closure #1 in PaperTextAttachmentView.handleFileMerge(newModel:firstMerge:)(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v23 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v24 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = *(MEMORY[0x1E695F050] + 16);
  v25[0] = *MEMORY[0x1E695F050];
  v25[1] = v13;
  type metadata accessor for CGRect(0);
  lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);

  CRRegister.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953B0]);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953C8]);
  CROrderedSet.init()();
  UnknownProperties.init()();
  v14 = direct field offset for PaperTextAttachmentView.paperDrawingKeyPath;
  v15 = v23;
  swift_beginAccess();
  v16 = type metadata accessor for CRKeyPath();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v4, v15 + v14, v16);
  (*(v17 + 56))(v4, 0, 1, v16);
  v18 = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct, &protocol conformance descriptor for PKDrawingStruct);
  MEMORY[0x1DA6CC020](v22, v7, v4, v5, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  v20 = Capsule.Ref.root.modify();
  outlined init with copy of Date?(v12, v24, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  return v20(v25, 0);
}

uint64_t specialized Capsule<>.logSubelementHeadroomsOnInternalBuilds()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v45.n128_u64[0] = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v42[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v42[-v4];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMR);
  v6 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v42[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42[-v14];
  result = os_variant_has_internal_ui();
  if (result)
  {
    v46 = v11;
    v48 = v9;
    v53 = v0;
    if (one-time initialization token for logger != -1)
    {
LABEL_19:
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    v18 = __swift_project_value_buffer(v17, logger);
    v49 = *(v13 + 16);
    v50 = v13 + 16;
    v49(v15, v55, v12);
    v51 = v18;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v52 = v12;
    v44 = v6;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v47 = v8;
      v23 = v22;
      *v22 = 134217984;
      MEMORY[0x1EEE9AC00](v22);
      v43 = v20;
      *&v42[-32] = type metadata accessor for Image(0);
      *&v42[-24] = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
      *&v42[-16] = &protocol witness table for Image;
      swift_getKeyPath();
      v24 = v52;
      v25 = v46;
      Capsule.subscript.getter();

      v26 = CROrderedSet.count.getter();
      v27 = v48;
      (*(v48 + 8))(v25, v47);
      (*(v13 + 8))(v15, v24);
      *(v23 + 1) = v26;
      _os_log_impl(&dword_1D38C4000, v19, v43, "Loaded paper with %ld subelements.", v23, 0xCu);
      v28 = v23;
      v8 = v47;
      MEMORY[0x1DA6D0660](v28, -1, -1);
    }

    else
    {
      (*(v13 + 8))(v15, v12);
      v27 = v48;
      v25 = v46;
    }

    MEMORY[0x1EEE9AC00](v29);
    v48 = type metadata accessor for Image(0);
    *&v42[-32] = v48;
    v47 = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    *&v42[-24] = v47;
    *&v42[-16] = &protocol witness table for Image;
    swift_getKeyPath();
    Capsule.subscript.getter();

    CROrderedSet.makeIterator()();
    v30 = (*(v27 + 8))(v25, v8);
    v13 = 0;
    v8 = (v45.n128_u64[0] + 48);
    v46 = (v45.n128_u64[0] + 32);
    v12 = (v45.n128_u64[0] + 8);
    v30.n128_u64[0] = 134218240;
    v45 = v30;
    v31 = v53;
    while (1)
    {
      CROrderedSet.Iterator.next()();
      if ((*v8)(v5, 1, v31) == 1)
      {
        return (*(v44 + 1))(v56, v54);
      }

      v6 = v5;
      (*v46)(v2, v5, v31);
      v34 = v55;
      v5 = v2;
      SharedTagged_10.subscript.getter();
      v35 = v59;
      v36 = v60;
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v15 = v52;
      v57[3] = v52;
      v57[4] = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Capsule<Image> and conformance Capsule<A>, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR, MEMORY[0x1E6995458]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
      v49(boxed_opaque_existential_1, v34, v15);
      v38 = (*(*(v36 + 8) + 48))(v57, v35);
      __swift_destroy_boxed_opaque_existential_0(v57);
      __swift_destroy_boxed_opaque_existential_0(v58);
      v39 = Logger.logObject.getter();
      v2 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v2))
      {
        v40 = swift_slowAlloc();
        *v40 = v45.n128_u32[0];
        v32 = __OFADD__(v13++, 1);
        if (v32)
        {
          goto LABEL_18;
        }

        v41 = v40;
        *(v40 + 4) = v13;
        *(v40 + 12) = 2048;
        *(v40 + 14) = v38;
        _os_log_impl(&dword_1D38C4000, v39, v2, "Subelement %ld has headroom: %f", v40, 0x16u);
        MEMORY[0x1DA6D0660](v41, -1, -1);

        v33 = 0;
      }

      else
      {

        v32 = __OFADD__(v13++, 1);
        v33 = v32;
      }

      v2 = v5;
      v31 = v53;
      (*v12)(v5, v53);
      v5 = v6;
      if (v33)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }
  }

  return result;
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v45.n128_u64[0] = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v42[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v42[-v4];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMR);
  v6 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v42[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42[-v14];
  result = os_variant_has_internal_ui();
  if (result)
  {
    v46 = v11;
    v48 = v9;
    v53 = v0;
    if (one-time initialization token for logger != -1)
    {
LABEL_19:
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    v18 = __swift_project_value_buffer(v17, logger);
    v49 = *(v13 + 16);
    v50 = v13 + 16;
    v49(v15, v55, v12);
    v51 = v18;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v52 = v12;
    v44 = v6;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v47 = v8;
      v23 = v22;
      *v22 = 134217984;
      MEMORY[0x1EEE9AC00](v22);
      v43 = v20;
      *&v42[-32] = type metadata accessor for Paper(0);
      *&v42[-24] = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
      *&v42[-16] = &protocol witness table for Paper;
      swift_getKeyPath();
      v24 = v52;
      v25 = v46;
      Capsule.subscript.getter();

      v26 = CROrderedSet.count.getter();
      v27 = v48;
      (*(v48 + 8))(v25, v47);
      (*(v13 + 8))(v15, v24);
      *(v23 + 1) = v26;
      _os_log_impl(&dword_1D38C4000, v19, v43, "Loaded paper with %ld subelements.", v23, 0xCu);
      v28 = v23;
      v8 = v47;
      MEMORY[0x1DA6D0660](v28, -1, -1);
    }

    else
    {
      (*(v13 + 8))(v15, v12);
      v27 = v48;
      v25 = v46;
    }

    MEMORY[0x1EEE9AC00](v29);
    v48 = type metadata accessor for Paper(0);
    *&v42[-32] = v48;
    v47 = lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
    *&v42[-24] = v47;
    *&v42[-16] = &protocol witness table for Paper;
    swift_getKeyPath();
    Capsule.subscript.getter();

    CROrderedSet.makeIterator()();
    v30 = (*(v27 + 8))(v25, v8);
    v13 = 0;
    v8 = (v45.n128_u64[0] + 48);
    v46 = (v45.n128_u64[0] + 32);
    v12 = (v45.n128_u64[0] + 8);
    v30.n128_u64[0] = 134218240;
    v45 = v30;
    v31 = v53;
    while (1)
    {
      CROrderedSet.Iterator.next()();
      if ((*v8)(v5, 1, v31) == 1)
      {
        return (*(v44 + 1))(v56, v54);
      }

      v6 = v5;
      (*v46)(v2, v5, v31);
      v34 = v55;
      v5 = v2;
      SharedTagged_10.subscript.getter();
      v35 = v59;
      v36 = v60;
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v15 = v52;
      v57[3] = v52;
      v57[4] = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Capsule<Paper> and conformance Capsule<A>, &_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR, MEMORY[0x1E6995458]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
      v49(boxed_opaque_existential_1, v34, v15);
      v38 = (*(*(v36 + 8) + 48))(v57, v35);
      __swift_destroy_boxed_opaque_existential_0(v57);
      __swift_destroy_boxed_opaque_existential_0(v58);
      v39 = Logger.logObject.getter();
      v2 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v2))
      {
        v40 = swift_slowAlloc();
        *v40 = v45.n128_u32[0];
        v32 = __OFADD__(v13++, 1);
        if (v32)
        {
          goto LABEL_18;
        }

        v41 = v40;
        *(v40 + 4) = v13;
        *(v40 + 12) = 2048;
        *(v40 + 14) = v38;
        _os_log_impl(&dword_1D38C4000, v39, v2, "Subelement %ld has headroom: %f", v40, 0x16u);
        MEMORY[0x1DA6D0660](v41, -1, -1);

        v33 = 0;
      }

      else
      {

        v32 = __OFADD__(v13++, 1);
        v33 = v32;
      }

      v2 = v5;
      v31 = v53;
      (*v12)(v5, v53);
      v5 = v6;
      if (v33)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }
  }

  return result;
}

void PaperTextAttachmentView.createPaperView(paperBundleURL:)(uint64_t a1)
{
  v2 = v1;
  v106 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v102 = &v96 - v4;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0I0VGs5Error_pGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0I0VGs5Error_pGSo9NSRunLoopCGMR);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v96 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v100 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v107 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v96 - v11;
  v109 = type metadata accessor for URL();
  v111 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v112 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v96 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v96 - v18;
  v20 = *&v1[direct field offset for Canvas.paperView];
  v21 = MEMORY[0x1E69E7D40];
  v22 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x3F0);
  swift_beginAccess();
  v108 = v17;
  (*(v17 + 16))(v19, &v20[v22], v16);
  swift_beginAccess();
  type metadata accessor for Paper(0);
  lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
  v23 = v20;
  LOBYTE(v22) = Capsule.merge<A>(_:)();
  Strong = swift_endAccess();
  if ((v22 & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    (*((*v21 & *v23) + 0x520))(Strong);
  }

  else
  {
    v25 = Strong;

    v23 = v25;
  }

  (*(v108 + 8))(v19, v16);
  v26 = *&v2[OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView];
  v27 = v2;
  [v27 addSubview_];
  [v27 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = objc_allocWithZone(type metadata accessor for CanvasElementResizeView());
  CanvasElementResizeView.init(frame:canvas:)(v27, v29, v31, v33, v35);
  v37 = *&v27[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  *&v27[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView] = v38;
  v39 = v38;

  [v27 addSubview_];
  v117 = &type metadata for PencilAndPaperFeatureFlags;
  v118 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v115) = 1;
  LOBYTE(v39) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v115);
  v40 = v109;
  v41 = v107;
  if (v39)
  {
    [v27 bounds];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v50 = objc_allocWithZone(type metadata accessor for HandwritingReflowView());
    v51 = v27;
    v52 = HandwritingReflowView.init(frame:canvas:)(v51, v43, v45, v47, v49);
    [v51 addSubview_];
    v53 = *&v51[OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView];
    *&v51[OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView] = v52;
  }

  v54 = [objc_allocWithZone(MEMORY[0x1E6978508]) initAtTop:0 delegate:v27];
  v55 = *&v27[direct field offset for PaperTextAttachmentView.bottomResizeView];
  *&v27[direct field offset for PaperTextAttachmentView.bottomResizeView] = v54;
  v56 = v54;

  if (!v56)
  {
    __break(1u);
    goto LABEL_19;
  }

  [v27 addSubview_];

  v57 = [objc_allocWithZone(MEMORY[0x1E6978508]) initAtTop:1 delegate:v27];
  v58 = *&v27[direct field offset for PaperTextAttachmentView.topResizeView];
  *&v27[direct field offset for PaperTextAttachmentView.topResizeView] = v57;
  v59 = v57;

  v60 = v112;
  if (!v59)
  {
LABEL_19:
    __break(1u);
    return;
  }

  [v27 addSubview_];

  PaperTextAttachmentView.setAdjustResizeIndicatorVisible(_:animated:highlightBackground:)([v27 isFirstResponder], 0, 0);
  outlined init with copy of Date?(v106, v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v61 = v111;
  v62 = (*(v111 + 48))(v12, 1, v40);
  v63 = v110;
  if (v62 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v64 = *(v61 + 32);
    v106 = v61 + 32;
    v99 = v64;
    v64(v110, v12, v40);
    v96 = *&v27[OBJC_IVAR____TtC8PaperKit9AnyCanvas_context];
    (*(v108 + 56))(v41, 1, 1, v16);
    outlined init with copy of Date?(v41, v100, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
    v65 = *(v61 + 16);
    v98 = v61 + 16;
    v97 = v65;
    v65(v60, v63, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMd, &_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMR);
    v66 = type metadata accessor for CRCodableVersion();
    v67 = *(v66 - 8);
    v68 = *(v67 + 72);
    v69 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_1D405C990;
    v71 = v70 + v69;
    v72 = *(v67 + 104);
    v72(v71, *MEMORY[0x1E6995280], v66);
    v72(v71 + v68, *MEMORY[0x1E6995288], v66);
    if (one-time initialization token for allReadableFileFormatVersions != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CRDataStoreBundleCy8PaperKit0E0VGMd, &_s9Coherence17CRDataStoreBundleCy8PaperKit0E0VGMR);
    swift_allocObject();

    v73 = v96;
    v74 = CRDataStoreBundle.init(_:sync:at:allowedEncodings:allowedAppFormats:writableAppFormats:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
    v75 = swift_allocObject();
    *(v75 + 16) = 1;
    v108 = v74;
    v115 = CRDataStoreBundle.publisher.getter();
    v76 = [objc_opt_self() mainRunLoop];
    v114 = v76;
    v77 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v78 = v102;
    (*(*(v77 - 8) + 56))(v102, 1, 1, v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F0VGs5Error_pGMd, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F0VGs5Error_pGMR);
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSRunLoop, 0x1E695DFD0);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type AnyPublisher<Capsule<Paper>, Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F0VGs5Error_pGMd, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F0VGs5Error_pGMR, MEMORY[0x1E695BED8]);
    lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
    v79 = v103;
    Publisher.receive<A>(on:options:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v78, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);

    v80 = v112;
    v81 = v109;
    v97(v112, v110, v109);
    v82 = (*(v111 + 80) + 16) & ~*(v111 + 80);
    v83 = swift_allocObject();
    v99(v83 + v82, v80, v81);
    v84 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v85 = swift_allocObject();
    *(v85 + 16) = v84;
    *(v85 + 24) = v75;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<Capsule<Paper>, Error>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0I0VGs5Error_pGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0I0VGs5Error_pGSo9NSRunLoopCGMR, MEMORY[0x1E695BE98]);

    v86 = v105;
    v87 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v104 + 8))(v79, v86);
    *&v27[direct field offset for PaperTextAttachmentView.syncCancellable] = v87;

    v88 = *&v27[direct field offset for PaperTextAttachmentView.textAttachment];
    v89 = v81;
    if (v88)
    {
      v113 = &unk_1F4FF85B8;
      v90 = swift_dynamicCastObjCProtocolConditional();
      if (v90)
      {
        v91 = v88;
      }
    }

    else
    {
      v90 = 0;
    }

    swift_unknownObjectWeakInit();
    v116 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCy8PaperKit6CanvasC0d4ViewfB0VyAD0D0V_GGMd, &_s7Combine12PublisherBoxCy8PaperKit6CanvasC0d4ViewfB0VyAD0D0V_GGMR);
    v92 = swift_allocObject();
    outlined init with take of Range<AttributedString.Index>(&v115, v92 + 16, &_s8PaperKit6CanvasC0a4ViewC9PublisherVyAA0A0V_GMd, &_s8PaperKit6CanvasC0a4ViewC9PublisherVyAA0A0V_GMR);
    v115 = v92;
    v93 = swift_allocObject();
    v94 = v108;
    *(v93 + 16) = v108;
    *(v93 + 24) = v90;
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMd, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type AnyPublisher<Capsule<Paper>, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMd, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMR, MEMORY[0x1E695BED8]);
    v95 = Publisher<>.sink(receiveValue:)();

    swift_unknownObjectRelease();

    (*(v111 + 8))(v110, v89);
    *&v27[direct field offset for PaperTextAttachmentView.saveCancellable] = v95;

    *&v27[direct field offset for PaperTextAttachmentView.syncManager] = v94;
  }
}

void closure #1 in PaperTextAttachmentView.createPaperView(paperBundleURL:)(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  (*(v5 + 16))(v7, a2, v4);
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315394;
    lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v5 + 8))(v7, v4);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v24);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    v23 = v8;
    v19 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_s5Error_pGMd, &_s7Combine11SubscribersO10CompletionOy_s5Error_pGMR);
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v24);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1D38C4000, v11, v12, "Failed to load attachment file: %s. Error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v14, -1, -1);
    MEMORY[0x1DA6D0660](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

void *closure #2 in PaperTextAttachmentView.createPaperView(paperBundleURL:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    PaperTextAttachmentView.handleFileMerge(newModel:firstMerge:)(a1, *(a3 + 16));

    result = swift_beginAccess();
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t closure #3 in PaperTextAttachmentView.createPaperView(paperBundleURL:)(uint64_t a1)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();

  CRDataStoreBundle.sync(_:finished:)();
}

void *closure #1 in closure #3 in PaperTextAttachmentView.createPaperView(paperBundleURL:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if ([result respondsToSelector_])
    {
      [v2 _paperDidChangeLocally];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall PaperTextAttachmentView.cleanupViewProviders()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1598))(v7);
  if (v10)
  {
    v11 = v10;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v19 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    aBlock[4] = partial apply for closure #1 in PaperTextAttachmentView.cleanupViewProviders();
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_410;
    v13 = _Block_copy(aBlock);
    v18 = v5;
    v14 = v13;
    v17 = v11;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v15 = v19;
    MEMORY[0x1DA6CD890](0, v9, v4, v14);
    _Block_release(v14);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v18);
  }
}

void @objc PaperTextAttachmentView.willMove(toSuperview:)(void *a1, uint64_t a2, void *a3)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for PaperTextAttachmentView(0);
  v4 = v10.receiver;
  v5 = a3;
  objc_msgSendSuper2(&v10, sel_willMoveToSuperview_, v5);
  v6 = *&v4[direct field offset for PaperTextAttachmentView.textAttachment];
  if (v6)
  {
    v7 = swift_dynamicCastObjCProtocolConditional();
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      [v8 attachmentView:v4 willMoveToSuperview:v5];
    }
  }
}

Swift::Void __swiftcall PaperTextAttachmentView.didMoveToSuperview()()
{
  v1 = v0;
  v2 = type metadata accessor for PKInk();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 superview];
  if (v7)
  {

    v8 = PaperTextAttachmentView.closestViewController.getter();
    swift_unknownObjectWeakAssign();

    PaperTextAttachmentView.updateFrameForTextContainer(ensureLayout:shouldRedraw:avoidInvalidateLayout:)(0, 1, 1);
  }

  v9 = type metadata accessor for PaperTextAttachmentView(0);
  v46.receiver = v1;
  v46.super_class = v9;
  objc_msgSendSuper2(&v46, sel_didMoveToSuperview);
  v10 = [v1 superview];
  if (v10 && (v10, v11 = direct field offset for PaperTextAttachmentView.linedPaperView, !*&v1[direct field offset for PaperTextAttachmentView.linedPaperView]))
  {
    [v1 bounds];
    v20 = [objc_allocWithZone(type metadata accessor for LinedPaperView()) initWithFrame_];
    v21 = *&v1[v11];
    *&v1[v11] = v20;
    v22 = v20;

    if (v22)
    {
      [v22 setTranslatesAutoresizingMaskIntoConstraints_];
    }

    v23 = *&v1[v11];
    if (!v23)
    {
      __break(1u);
      goto LABEL_27;
    }

    [v1 insertSubview:v23 atIndex:0];
  }

  else
  {
    v12 = [v1 superview];
    if (v12)
    {
    }

    else
    {
      v13 = direct field offset for PaperTextAttachmentView.linedPaperView;
      v14 = *&v1[direct field offset for PaperTextAttachmentView.linedPaperView];
      if (v14)
      {
        [v14 removeFromSuperview];
        v15 = *&v1[v13];
      }

      else
      {
        v15 = 0;
      }

      *&v1[v13] = 0;
    }
  }

  v24 = direct field offset for PaperTextAttachmentView.shouldBecomeFirstResponder;
  if (v1[direct field offset for PaperTextAttachmentView.shouldBecomeFirstResponder] != 1)
  {
    goto LABEL_25;
  }

  v25 = [v1 superview];
  if (!v25)
  {
    goto LABEL_25;
  }

  v1[v24] = 0;
  v26 = [v1 window];
  v44 = v2;
  if (!v26)
  {
    v30 = v3;
    v31 = 0;
    v29 = 0;
LABEL_23:
    v32 = objc_opt_self();
    v33 = [v1 window];
    v34 = swift_allocObject();
    *(v34 + 16) = v1;
    *(v34 + 24) = v29;
    *(v34 + 32) = v31;
    aBlock[4] = partial apply for closure #1 in PaperTextAttachmentView.didMoveToSuperview();
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_468;
    v35 = _Block_copy(aBlock);
    v36 = v29;
    v37 = v1;

    [v32 _performWithVisibilityUpdatesEnabled_window_block_];
    _Block_release(v35);

    v38 = v44;
    if (v29)
    {
      v39 = [v36 selectedToolItem];
      PKToolPickerItem.ink.getter(v6);

      isa = PKInk._bridgeToObjectiveC()().super.isa;
      (*(v30 + 8))(v6, v38);
      v41 = isa;
      v42 = [(objc_class *)v41 _isGenerationTool];

      v37[direct field offset for PaperTextAttachmentView.isCurrentToolGenerationTool] = v42;
      [v36 addObserver_];
    }

LABEL_25:
    $defer #1 () in PaperTextAttachmentView.didMoveToSuperview()(v1);
    return;
  }

  v27 = [v1 window];
  if (v27)
  {
    v28 = v27;
    v29 = [objc_opt_self() activeToolPickerForWindow_];

    v30 = v3;
    if (v29)
    {
      v31 = [v29 isVisible];
    }

    else
    {
      v31 = 0;
    }

    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
}

void $defer #1 () in PaperTextAttachmentView.didMoveToSuperview()(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *&v3 = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v5 = &v32 - v4;
  v6 = *(a1 + direct field offset for PaperTextAttachmentView.textAttachment);
  if (v6)
  {
    v34 = &unk_1F4FF8678;
    v7 = swift_dynamicCastObjCProtocolConditional();
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      v10 = [a1 superview];
      [v8 attachmentView:a1 didMoveToSuperview:v10];
    }
  }

  v11 = [a1 superview];
  v12 = MEMORY[0x1E69E7D40];
  if (v11)
  {

    v13 = (*((*v12 & *a1) + 0x468))();
    if (v13)
    {
      v14 = v13;
      type metadata accessor for TiledTextView();
      v15 = swift_dynamicCastClass();
      if (!v15 || (v16 = v15, v17 = TiledTextView.canvasGenerationToolOverlayController.getter(), CanvasGenerationToolOverlayController.updateUI()(), v17, v18 = a1 + direct field offset for PaperTextAttachmentView.magicGenerativePlaygroundContextToInitialize, v19 = *(a1 + direct field offset for PaperTextAttachmentView.magicGenerativePlaygroundContextToInitialize + 16), v19 == 255) || (v20 = a1 + direct field offset for PaperTextAttachmentView.magicGenerativePlaygroundBoundsToInitialize, (*(a1 + direct field offset for PaperTextAttachmentView.magicGenerativePlaygroundBoundsToInitialize + 32) & 1) != 0))
      {
      }

      else
      {
        v22 = *v18;
        v23 = *(v18 + 1);
        v24 = *v20;
        v32 = *(v20 + 1);
        v33 = v24;
        *v18 = 0;
        *(v18 + 1) = 0;
        v18[16] = -1;
        outlined copy of MagicGenerativePlaygroundContext(v22, v23, v19);
        outlined consume of MagicGenerativePlaygroundContext?(v22, v23, v19);
        *v20 = 0u;
        *(v20 + 1) = 0u;
        v20[32] = 1;
        v25 = type metadata accessor for TaskPriority();
        (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
        type metadata accessor for MainActor();
        outlined copy of MagicGenerativePlaygroundContext?(v22, v23, v19);
        v26 = a1;
        v27 = v14;
        v28 = static MainActor.shared.getter();
        v29 = swift_allocObject();
        v30 = MEMORY[0x1E69E85E0];
        *(v29 + 16) = v28;
        *(v29 + 24) = v30;
        *(v29 + 32) = v26;
        v31 = v33;
        *(v29 + 56) = v32;
        *(v29 + 40) = v31;
        *(v29 + 72) = v16;
        *(v29 + 80) = v22;
        *(v29 + 88) = v23;
        *(v29 + 96) = v19;
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in $defer #1 () in PaperTextAttachmentView.didMoveToSuperview(), v29);
        outlined consume of MagicGenerativePlaygroundContext?(v22, v23, v19);
      }
    }
  }

  PaperTextAttachmentView.cleanupViewProviders()();
  v21 = (*((*v12 & *a1) + 0x1598))();
  PaperTextAttachmentView.observeTextView(_:)(v21);
}

void @objc PaperTextAttachmentView.didMoveToSuperview()(void *a1)
{
  v1 = a1;
  PaperTextAttachmentView.didMoveToSuperview()();
}

Swift::Void __swiftcall PaperTextAttachmentView.tapOnCanvas(location:hitStrokes:fromPencilKit:allowShowingEditMenu:)(CGPoint location, Swift::OpaquePointer hitStrokes, Swift::Bool fromPencilKit, Swift::Bool allowShowingEditMenu)
{
  specialized Canvas.tapOnCanvas(location:hitStrokes:fromPencilKit:allowShowingEditMenu:)(hitStrokes._rawValue, fromPencilKit, allowShowingEditMenu, location.x, location.y);
  if (([v4 isFirstResponder] & 1) == 0)
  {

    [v4 becomeFirstResponder];
  }
}

id PaperTextAttachmentView.tapCanvasElement(_:modifierFlags:)(void *a1, uint64_t a2, char a3)
{
  specialized Canvas.tapCanvasElement(_:modifierFlags:)(a1, a2, a3 & 1);
  result = [v3 isFirstResponder];
  if ((result & 1) == 0)
  {

    return [v3 becomeFirstResponder];
  }

  return result;
}

Swift::Bool __swiftcall PaperTextAttachmentView.hit(byTouchLocation:canvasBounds:)(CGPoint byTouchLocation, __C::CGRect canvasBounds)
{
  y = byTouchLocation.y;
  x = byTouchLocation.x;
  v34 = CGRectInset(canvasBounds, -64.0, 0.0);
  v5 = v34.origin.x;
  v6 = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v9 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1598))();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 textStorage];

    if (v11)
    {
      v12 = *(v2 + direct field offset for PaperTextAttachmentView.textAttachment);
      if (v12)
      {
        v30 = 0;
        v31 = 1;
        v13 = *MEMORY[0x1E69DB5F8];
        v14 = v12;
        v15 = [v11 length];
        v16 = swift_allocObject();
        *(v16 + 16) = v14;
        *(v16 + 24) = &v30;
        v17 = swift_allocObject();
        *(v17 + 16) = partial apply for closure #1 in PaperTextAttachmentView.characterIndex.getter;
        *(v17 + 24) = v16;
        v29[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
        v29[5] = v17;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 1107296256;
        v29[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
        v29[3] = &block_descriptor_372;
        v18 = _Block_copy(v29);
        v19 = v14;

        [v11 enumerateAttribute:v13 inRange:0 options:v15 usingBlock:{0, v18}];

        _Block_release(v18);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
LABEL_16:
          __break(1u);
          return result;
        }

        v22 = v30;
        v23 = v31;

        if ((v23 & 1) == 0 && !v22)
        {
          v6 = v6 + -16.0;
          height = height + 16.0;
        }
      }

      else
      {
      }
    }
  }

  v35.origin.x = v5;
  v35.origin.y = v6;
  v35.size.width = width;
  v35.size.height = height;
  v33.x = x;
  v33.y = y;
  result = CGRectContainsPoint(v35, v33);
  if (result)
  {
    return 1;
  }

  v24 = *(v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v24)
  {
    goto LABEL_16;
  }

  v25 = v24;
  v32.value.super.isa = 0;
  ResizeView.hitTestChrome(_:with:)(v26, __PAIR128__(*&y, *&x), v32);
  v28 = v27;

  if (v28)
  {

    return 1;
  }

  return 0;
}

__C::CGRect __swiftcall PaperTextAttachmentView.sensibleBounds(for:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  if (CGRectIsNull(a1) || !CGRect.isFinite.getter(x, y, width, height))
  {
    y = 0.0;
    if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_])
    {
      x = *MEMORY[0x1E69785E0];
    }

    else
    {
      x = 0.0;
    }

    width = 0.0;
    height = 0.0;
  }

  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v6 = CGRectGetHeight(v12);
  if (v6 > 64.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 64.0;
  }

  if (y < 0.0)
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = v7;
    if (CGRectGetMaxY(v13) < 64.0)
    {
      v7 = 64.0 - y;
    }
  }

  v8 = v7 + 64.0;
  v9 = x;
  v10 = y;
  v11 = width;
  result.size.height = v8;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

uint64_t PaperTextAttachmentView.contentBounds(includeDrawing:)(char a1)
{
  *(v2 + 72) = v1;
  *(v2 + 160) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  *(v2 + 80) = v3;
  v4 = *(v3 - 8);
  *(v2 + 88) = v4;
  *(v2 + 96) = *(v4 + 64);
  *(v2 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v2 + 112) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 120) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 128) = v6;
  *(v2 + 136) = v5;

  return MEMORY[0x1EEE6DFA0](PaperTextAttachmentView.contentBounds(includeDrawing:), v6, v5);
}

uint64_t PaperTextAttachmentView.contentBounds(includeDrawing:)()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 72);
  if (v1 == 1 && (v3 = (v2 + direct field offset for PaperTextAttachmentView.paperBoundsHint), (*(v2 + direct field offset for PaperTextAttachmentView.paperBoundsHint + 32) & 1) == 0))
  {
    v18 = v3[2];
    v17 = v3[3];
    v20 = *v3;
    v19 = v3[1];

    v32.origin.x = v20;
    v32.origin.y = v19;
    v32.size.width = v18;
    v32.size.height = v17;
    v33 = PaperTextAttachmentView.sensibleBounds(for:)(v32);
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;

    v25 = *(v0 + 8);
    v26.n128_f64[0] = x;
    v27.n128_f64[0] = y;
    v28.n128_f64[0] = width;
    v29.n128_f64[0] = height;

    return v25(v26, v27, v28, v29);
  }

  else
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v6 = *(v0 + 88);
    v7 = *(v0 + 96);
    v8 = *(v0 + 80);
    static TaskPriority.userInitiated.getter();
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    v10 = *(v2 + direct field offset for Canvas.paperView);
    v11 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x3F0);
    swift_beginAccess();
    (*(v6 + 16))(v4, &v10[v11], v8);
    v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    (*(v6 + 32))(v13 + v12, v4, v8);
    *(v13 + v12 + v7) = v1;
    v14 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZSo6CGRectV_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in PaperTextAttachmentView.contentBounds(includeDrawing:), v13);
    *(v0 + 144) = v14;
    outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_sScPSgMd, &_sScPSgMR);
    v15 = swift_task_alloc();
    *(v0 + 152) = v15;
    type metadata accessor for CGRect(0);
    *v15 = v0;
    v15[1] = PaperTextAttachmentView.contentBounds(includeDrawing:);

    return MEMORY[0x1EEE6DA40](v0 + 16, v14, v16);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](PaperTextAttachmentView.contentBounds(includeDrawing:), v3, v2);
}

{

  v12 = PaperTextAttachmentView.sensibleBounds(for:)(*(v0 + 16));
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;

  v5 = *(v0 + 8);
  v6.n128_f64[0] = x;
  v7.n128_f64[0] = y;
  v8.n128_f64[0] = width;
  v9.n128_f64[0] = height;

  return v5(v6, v7, v8, v9);
}

uint64_t closure #1 in PaperTextAttachmentView.contentBounds(includeDrawing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in PaperTextAttachmentView.contentBounds(includeDrawing:), 0, 0);
}

uint64_t closure #1 in PaperTextAttachmentView.contentBounds(includeDrawing:)()
{
  v1 = *(v0 + 16);
  *v1 = Capsule<>.contentBounds(includeDrawing:)(*(v0 + 32));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  v5 = *(v0 + 8);

  return v5();
}

void *PaperTextAttachmentView.currentLinksIdentifiers()()
{
  v23 = type metadata accessor for UUID();
  v1 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v8 = *(v0 + direct field offset for Canvas.paperView);
  v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x3F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v8[v9], v4);
  v10 = Capsule<>.links.getter();
  (*(v5 + 8))(v7, v4);
  if (v10 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v12 = 0;
    v21 = v10 & 0xFFFFFFFFFFFFFF8;
    v22 = v10 & 0xC000000000000001;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v22)
      {
        v14 = MEMORY[0x1DA6CE0C0](v12, v10);
      }

      else
      {
        if (v12 >= *(v21 + 16))
        {
          goto LABEL_16;
        }

        v14 = *&v10[8 * v12 + 32];
      }

      v15 = v14;
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v17 = [v14 itemIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
      }

      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v13);
      }

      v13[2] = v19 + 1;
      (*(v1 + 32))(v13 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v19, v3, v23);
      ++v12;
      if (v16 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_19:

  v24 = v13;

  specialized MutableCollection<>.sort(by:)(&v24);

  return v24;
}

Swift::Void __swiftcall PaperTextAttachmentView.notifyLinksChangedIfNecessary()()
{
  v1 = PaperTextAttachmentView.currentLinksIdentifiers()();
  v2 = direct field offset for PaperTextAttachmentView.previousLinks;
  v3 = *(v0 + direct field offset for PaperTextAttachmentView.previousLinks);

  v4 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4UUIDV_Tt1g5(v1, v3);

  if (v4)
  {
  }

  else
  {
    *(v0 + v2) = v1;

    if (*(v0 + direct field offset for PaperTextAttachmentView.textAttachment))
    {
      v5 = swift_dynamicCastObjCProtocolConditional();
      if (v5)
      {
        v6 = v5;
        if ([v5 respondsToSelector_])
        {
          [v6 _linkCanvasElementsDidChange];
        }
      }
    }
  }
}

Swift::Void __swiftcall PaperTextAttachmentView.beginLiveResize()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v32 - v5;
  v7 = *&v0[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  if (v7)
  {
    [v7 setHidden_];
    v8 = direct field offset for PaperTextAttachmentView.resizeInfo;
    if (!*&v0[direct field offset for PaperTextAttachmentView.resizeInfo])
    {
      type metadata accessor for ResizeInfo();
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      v10 = *MEMORY[0x1E695F050];
      v11 = *(MEMORY[0x1E695F050] + 8);
      v12 = *(MEMORY[0x1E695F050] + 16);
      v13 = *(MEMORY[0x1E695F050] + 24);
      *(v9 + 32) = *MEMORY[0x1E695F050];
      *(v9 + 40) = v11;
      *(v9 + 48) = v12;
      *(v9 + 56) = v13;
      *(v9 + 64) = v10;
      *(v9 + 72) = v11;
      *(v9 + 80) = v12;
      *(v9 + 88) = v13;
      *(v9 + 96) = v10;
      *(v9 + 104) = v11;
      *(v9 + 112) = v12;
      *(v9 + 120) = v13;
      *&v0[v8] = v9;

      *(v9 + 32) = PaperTextAttachmentView.safePaperModelBounds.getter();
      *(v9 + 40) = v14;
      *(v9 + 48) = v15;
      *(v9 + 56) = v16;

      v17 = *&v0[v8];
      if (v17)
      {
        v18 = *&v0[direct field offset for Canvas.paperView];
        v19 = *((*MEMORY[0x1E69E7D40] & *v18) + 0x3F0);
        swift_beginAccess();
        (*(v3 + 16))(v6, &v18[v19], v2);

        v20 = Capsule<>.contentBounds(includeDrawing:)(1);
        v22 = v21;
        v24 = v23;
        v26 = v25;
        (*(v3 + 8))(v6, v2);
        v17[8] = v20;
        *(v17 + 9) = v22;
        *(v17 + 10) = v24;
        *(v17 + 11) = v26;

        v27 = *&v1[v8];
        if (v27)
        {

          [v1 frame];
          v27[12] = v28;
          v27[13] = v29;
          v27[14] = v30;
          v27[15] = v31;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}