void (*MarkupContainerViewController.findInteractionEnabled.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MarkupContainerViewController.findInteractionEnabled.modify;
}

uint64_t MarkupContainerViewController.isImageAnalysisEnabled.getter()
{
  v1 = OBJC_IVAR___PPKMarkupContainerViewController_isImageAnalysisEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void @objc MarkupContainerViewController.findInteractionEnabled.setter(_BYTE *a1, uint64_t a2, char a3, uint64_t *a4, void (*a5)(void))
{
  v8 = *a4;
  swift_beginAccess();
  a1[v8] = a3;
  v9 = a1;
  a5();
}

uint64_t MarkupContainerViewController.findInteractionEnabled.setter(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  v7 = swift_beginAccess();
  *(v3 + v6) = a1;
  return a3(v7);
}

double MarkupContainerViewController.isImageAnalysisEnabled.didset()
{
  v1 = v0;
  v2 = OBJC_IVAR___PPKMarkupContainerViewController_isImageAnalysisEnabled;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  if (*(v1 + OBJC_IVAR___PPKMarkupContainerViewController_isContentLoaded) == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
      v8 = Strong;
      v9 = v7;

      if (v7)
      {
        specialized CanvasElementViewController.isImageAnalysisEnabled.setter(v3);

        return result;
      }
    }
  }

  else
  {
    v11 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_loadContentOperationQueue);
    if (v11)
    {
      v12 = swift_allocObject();
      *(v12 + 16) = partial apply for closure #1 in MarkupContainerViewController.isImageAnalysisEnabled.didset;
      *(v12 + 24) = v5;
      aBlock[4] = closure #1 in MarkupContainerViewController.performBlockWhenContentIsLoaded(_:)partial apply;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_427;
      v13 = _Block_copy(aBlock);

      v14 = v11;

      [v14 addOperationWithBlock_];

      _Block_release(v13);

      return result;
    }
  }

  return result;
}

void closure #1 in MarkupContainerViewController.isImageAnalysisEnabled.didset(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      specialized CanvasElementViewController.isImageAnalysisEnabled.setter(a2 & 1);
    }
  }
}

void (*MarkupContainerViewController.isImageAnalysisEnabled.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MarkupContainerViewController.isImageAnalysisEnabled.modify;
}

void MarkupContainerViewController.findInteractionEnabled.modify(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v5 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    a3(v5);
  }
}

uint64_t MarkupContainerViewController.documentIsLocked.getter()
{
  v1 = OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController;
  v2 = *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passwordViewController);
  if (v3)
  {
    result = [v3 view];
    if (!result)
    {
      __break(1u);
      goto LABEL_14;
    }

    v5 = result;
    v6 = [result window];

    if (v6)
    {

      return 1;
    }

    v2 = *(v0 + v1);
    if (!v2)
    {
      return 0;
    }
  }

  v7 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (!v8)
  {
    return 0;
  }

  v9 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  result = *(v8 + v9);
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  result = [result document];
  if (result)
  {
    v10 = result;
    v11 = [result isLocked];

    return v11;
  }

  return result;
}

id MarkupContainerViewController.canEncryptDocument.getter()
{
  v1 = *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  if (!v1)
  {
    return 0;
  }

  v2 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!v3)
  {
    return 0;
  }

  v4 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  result = *(v3 + v4);
  if (result)
  {
    result = [result document];
    if (result)
    {
      v6 = result;
      v7 = [result isEncrypted];

      return (v7 ^ 1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL MarkupContainerViewController.shouldSaveHDRImage.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = OBJC_IVAR___PPKMarkupContainerViewController_imageViewController;
  v8 = *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
  result = 0;
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v4);
    v23 = type metadata accessor for Image(0);
    *(&v22 - 4) = v23;
    v22 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    *(&v22 - 3) = v22;
    *(&v22 - 2) = &protocol witness table for Image;
    swift_getKeyPath();
    v24 = v8;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    v9 = v8;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = *&v9[direct field offset for CanvasElementViewController._canvasView];
    v11 = v10;

    if (v10)
    {
      v13 = *&v11[direct field offset for Canvas.paperView];
      v14 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x3F0);
      swift_beginAccess();
      (*(v3 + 16))(v6, &v13[v14], v2);

      specialized Capsule<>.maxHDRHeadroom()();
      v16 = v15;
      v12 = (*(v3 + 8))(v6, v2);
      if (v16 > 1.0)
      {
        return 1;
      }
    }

    v17 = *(v1 + v7);
    if (v17)
    {
      MEMORY[0x1EEE9AC00](v12);
      v18 = v22;
      *(&v22 - 4) = v23;
      *(&v22 - 3) = v18;
      *(&v22 - 2) = &protocol witness table for Image;
      swift_getKeyPath();
      v25 = v17;
      v19 = v17;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v20 = *&v19[direct field offset for CanvasElementViewController.__imageHeadroom];

      if (v20 > 1.0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t MarkupContainerViewController.canChangeImageFileFormat.getter()
{
  if (one-time initialization token for isMarkupPhotoEditingExtension != -1)
  {
    swift_once();
  }

  if (static NSBundle.isMarkupPhotoEditingExtension)
  {
    return 1;
  }

  if (one-time initialization token for isQuickLookUIExtension != -1)
  {
    swift_once();
  }

  if (static NSBundle.isQuickLookUIExtension)
  {
    return 1;
  }

  if (one-time initialization token for isQuickLookVisionOSExtension != -1)
  {
    swift_once();
  }

  return static NSBundle.isQuickLookVisionOSExtension;
}

BOOL MarkupContainerViewController.hasHDRMarkup.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v15 - v4;
  v6 = *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
  if (!v6)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](v3);
  v15[-4] = type metadata accessor for Image(0);
  v15[-3] = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  v15[-2] = &protocol witness table for Image;
  swift_getKeyPath();
  v15[1] = v6;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  v7 = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *&v7[direct field offset for CanvasElementViewController._canvasView];
  v9 = v8;

  if (!v8)
  {
    return 0;
  }

  v10 = *&v9[direct field offset for Canvas.paperView];
  v11 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x3F0);
  swift_beginAccess();
  (*(v2 + 16))(v5, &v10[v11], v1);

  specialized Capsule<>.maxHDRHeadroom()();
  v13 = v12;
  (*(v2 + 8))(v5, v1);
  return v13 > 1.0;
}

double MarkupContainerViewController.editingMode.didset()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_editingMode);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  if (*(v1 + OBJC_IVAR___PPKMarkupContainerViewController_isContentLoaded) == 1)
  {

    closure #1 in MarkupContainerViewController.editingMode.didset(v5, v2);
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_loadContentOperationQueue);
    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = partial apply for closure #1 in MarkupContainerViewController.editingMode.didset;
      *(v7 + 24) = v4;
      v11[4] = closure #1 in MarkupContainerViewController.performBlockWhenContentIsLoaded(_:)partial apply;
      v11[5] = v7;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 1107296256;
      v11[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v11[3] = &block_descriptor_257;
      v8 = _Block_copy(v11);

      v9 = v6;

      [v9 addOperationWithBlock_];

      _Block_release(v8);

      return result;
    }
  }

  return result;
}

void closure #1 in MarkupContainerViewController.editingMode.didset(uint64_t a1, int a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
    if (v5)
    {
      if (v5[direct field offset for CanvasElementViewController._editingMode] == a2)
      {
        v6 = v5;
        specialized CanvasElementViewController._editingMode.didset(a2);
      }

      else
      {
        MEMORY[0x1EEE9AC00](Strong);
        type metadata accessor for Image(0);
        _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        v17 = v5;
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
        v8 = v5;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }

    v9 = *&v4[OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController];
    if (v9)
    {
      v10 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_editingMode;
      swift_beginAccess();
      v9[v10] = a2;
      v11 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
      swift_beginAccess();
      v12 = *&v9[v11];
      if (v12)
      {
        v16 = v9[v10];
        v13 = v9;
        v14 = v12;
        PaperDocumentView.editingMode.setter(&v16);
      }

      else
      {
        v15 = v9;
      }

      PaperDocumentViewController.updatePlusButton()();
    }

    MarkupContainerViewController.updateBackgroundColor()();
  }
}

uint64_t MarkupContainerViewController.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MarkupContainerViewController.delegate.didset();
  return swift_unknownObjectRelease();
}

double key path setter for MarkupContainerViewController.delegate : MarkupContainerViewController(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return MarkupContainerViewController.delegate.didset();
}

void (*MarkupContainerViewController.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PPKMarkupContainerViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return MarkupContainerViewController.delegate.modify;
}

void MarkupContainerViewController.delegate.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    MarkupContainerViewController.delegate.didset();
  }

  free(v3);
}

uint64_t MarkupContainerViewController.encryptPrivateMetadata.getter()
{
  v1 = OBJC_IVAR___PPKMarkupContainerViewController_encryptPrivateMetadata;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MarkupContainerViewController.encryptPrivateMetadata.setter(char a1)
{
  v3 = OBJC_IVAR___PPKMarkupContainerViewController_encryptPrivateMetadata;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MarkupContainerViewController.imageDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
  if (!v9)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](v6);
  v16[-4] = type metadata accessor for Image(0);
  v16[-3] = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  v16[-2] = &protocol witness table for Image;
  swift_getKeyPath();
  v16[3] = v9;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  v10 = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *&v10[direct field offset for CanvasElementViewController._canvasView];
  if (v11)
  {
    v12 = *(v11 + direct field offset for Canvas.paperView);
    v13 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x3F0);
    swift_beginAccess();
    (*(v2 + 16))(v8, &v12[v13], v1);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  (*(v2 + 56))(v8, v14, 1, v1);
  if ((*(v2 + 48))(v8, 1, v1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
    return 0;
  }

  (*(v2 + 16))(v4, v8, v1);
  outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v2 + 8))(v4, v1);
  return v16[1];
}

double MarkupContainerViewController.imageDescription.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  if (*(v3 + OBJC_IVAR___PPKMarkupContainerViewController_isContentLoaded) == 1)
  {

    closure #1 in MarkupContainerViewController.imageDescription.setter(v8, a1, a2);
  }

  else
  {
    v9 = *(v3 + OBJC_IVAR___PPKMarkupContainerViewController_loadContentOperationQueue);
    if (v9)
    {
      v10 = swift_allocObject();
      *(v10 + 16) = partial apply for closure #1 in MarkupContainerViewController.imageDescription.setter;
      *(v10 + 24) = v7;
      v14[4] = partial apply for closure #1 in MarkupContainerViewController.performBlockWhenContentIsLoaded(_:);
      v14[5] = v10;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 1107296256;
      v14[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v14[3] = &block_descriptor_23;
      v11 = _Block_copy(v14);

      v12 = v9;

      [v12 addOperationWithBlock_];

      _Block_release(v11);

      return result;
    }
  }

  return result;
}

void closure #1 in MarkupContainerViewController.imageDescription.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *&Strong[OBJC_IVAR___PPKMarkupContainerViewController_imageViewController];
    if (v14)
    {
      v22 = a2;
      v23 = a3;
      MEMORY[0x1EEE9AC00](Strong);
      *(&v21 - 4) = type metadata accessor for Image(0);
      *(&v21 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
      *(&v21 - 2) = &protocol witness table for Image;
      swift_getKeyPath();
      v24 = v14;
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
      v15 = v14;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v16 = *&v15[direct field offset for CanvasElementViewController._canvasView];
      if (v16)
      {
        v17 = *(v16 + direct field offset for Canvas.paperView);
        v18 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x3F0);
        swift_beginAccess();
        (*(v6 + 16))(v8, &v17[v18], v5);

        v19 = (*(v6 + 32))(v11, v8, v5);
        MEMORY[0x1EEE9AC00](v19);
        v20 = v23;
        *(&v21 - 2) = v22;
        *(&v21 - 1) = v20;
        Capsule.mutate<A>(_:)();
        specialized CanvasElementViewController.merge<A>(_:)(v11);

        (*(v6 + 8))(v11, v5);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t closure #1 in closure #1 in MarkupContainerViewController.imageDescription.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();

  return Capsule.Ref.subscript.setter();
}

double (*MarkupContainerViewController.imageDescription.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = MarkupContainerViewController.imageDescription.getter();
  a1[1] = v3;
  return MarkupContainerViewController.imageDescription.modify;
}

double MarkupContainerViewController.imageDescription.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return MarkupContainerViewController.imageDescription.setter(*a1, v2);
  }

  MarkupContainerViewController.imageDescription.setter(v3, v2);

  return result;
}

uint64_t MarkupContainerViewController.showThumbnailViewForMultipage.getter()
{
  v1 = OBJC_IVAR___PPKMarkupContainerViewController_showThumbnailViewForMultipage;
  swift_beginAccess();
  return *(v0 + v1);
}

void MarkupContainerViewController.showThumbnailViewForMultipage.setter(char a1)
{
  v3 = OBJC_IVAR___PPKMarkupContainerViewController_showThumbnailViewForMultipage;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed;
    swift_beginAccess();
    v6 = v4[v5];
    v4[v5] = (a1 & 1) == 0;
    v7 = v4;
    PaperDocumentViewController.isThumbnailViewCollapsed.didset(v6);
  }
}

uint64_t (*MarkupContainerViewController.showThumbnailViewForMultipage.modify(uint64_t *a1))()
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
  v4 = OBJC_IVAR___PPKMarkupContainerViewController_showThumbnailViewForMultipage;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return MarkupContainerViewController.showThumbnailViewForMultipage.modify;
}

void MarkupContainerViewController.showThumbnailViewForMultipage.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
    if (v5)
    {
      v6 = *(v4 + v3[4]);
      v7 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed;
      swift_beginAccess();
      v8 = v5[v7];
      v5[v7] = (v6 & 1) == 0;
      v9 = v5;
      PaperDocumentViewController.isThumbnailViewCollapsed.didset(v8);
    }
  }

  free(v3);
}

Swift::Void __swiftcall MarkupContainerViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for MarkupContainerViewController(0);
  v19.receiver = v1;
  v19.super_class = v6;
  v7 = a1;
  objc_msgSendSuper2(&v19, sel_viewIsAppearing_, v7);
  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];
    v11 = v10;
    v13 = v12;

    MarkupContainerViewController.updatePreviewImageZoomScale(for:animated:)(__PAIR128__(v13, v11), v7);
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    type metadata accessor for MainActor();
    v15 = v1;
    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E85E0];
    *(v17 + 16) = v16;
    *(v17 + 24) = v18;
    *(v17 + 32) = v15;
    *(v17 + 40) = v11;
    *(v17 + 48) = v13;
    *(v17 + 56) = v7;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in MarkupContainerViewController.updateZoomScales(animated:), v17);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall MarkupContainerViewController.viewDidLayoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for MarkupContainerViewController(0);
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;

    v7 = &v0[OBJC_IVAR___PPKMarkupContainerViewController_previousViewSize];
    if (*&v0[OBJC_IVAR___PPKMarkupContainerViewController_previousViewSize] != v4 || *&v0[OBJC_IVAR___PPKMarkupContainerViewController_previousViewSize + 8] != v6)
    {
      v9 = objc_opt_self();
      v10 = swift_allocObject();
      *(v10 + 16) = v0;
      v13[4] = partial apply for closure #1 in MarkupContainerViewController.viewDidLayoutSubviews();
      v13[5] = v10;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 1107296256;
      v13[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v13[3] = &block_descriptor_27;
      v11 = _Block_copy(v13);
      v12 = v0;

      [v9 animateWithDuration:4 delay:v11 options:0 animations:0.25 completion:0.0];
      _Block_release(v11);
      *v7 = v4;
      v7[1] = v6;
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in MarkupContainerViewController.viewDidLayoutSubviews()(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *&v3 = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v5 = &v17 - v4;
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;

    MarkupContainerViewController.updatePreviewImageZoomScale(for:animated:)(__PAIR128__(v11, v9), 0);
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    type metadata accessor for MainActor();
    v13 = a1;
    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    *(v15 + 16) = v14;
    *(v15 + 24) = v16;
    *(v15 + 32) = v13;
    *(v15 + 40) = v9;
    *(v15 + 48) = v11;
    *(v15 + 56) = 0;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v5, &closure #1 in MarkupContainerViewController.updateZoomScales(animated:)partial apply, v15);
  }

  else
  {
    __break(1u);
  }
}

void MarkupContainerViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v17.receiver = v3;
  v17.super_class = type metadata accessor for MarkupContainerViewController(0);
  objc_msgSendSuper2(&v17, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  *(v3 + OBJC_IVAR___PPKMarkupContainerViewController_viewIsTransitioningBetweenSizes) = 1;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = partial apply for closure #1 in MarkupContainerViewController.viewWillTransition(to:with:);
  v16 = v7;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v14 = &block_descriptor_31_0;
  v8 = _Block_copy(&v11);

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = partial apply for closure #2 in MarkupContainerViewController.viewWillTransition(to:with:);
  v16 = v9;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v14 = &block_descriptor_35_0;
  v10 = _Block_copy(&v11);

  [a1 animateAlongsideTransition:v8 completion:v10];
  _Block_release(v10);
  _Block_release(v8);
}

void closure #1 in MarkupContainerViewController.viewWillTransition(to:with:)(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *&v4 = MEMORY[0x1EEE9AC00](v3 - 8).n128_u64[0];
  v6 = &v21 - v5;
  if (([a1 isCancelled] & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = [a1 isAnimated];
      v10 = [v8 view];
      if (v10)
      {
        v11 = v10;
        [v10 bounds];
        v13 = v12;
        v15 = v14;

        MarkupContainerViewController.updatePreviewImageZoomScale(for:animated:)(__PAIR128__(v15, v13), v9);
        v16 = type metadata accessor for TaskPriority();
        (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
        type metadata accessor for MainActor();
        v17 = v8;
        v18 = static MainActor.shared.getter();
        v19 = swift_allocObject();
        v20 = MEMORY[0x1E69E85E0];
        *(v19 + 16) = v18;
        *(v19 + 24) = v20;
        *(v19 + 32) = v17;
        *(v19 + 40) = v13;
        *(v19 + 48) = v15;
        *(v19 + 56) = v9;
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v6, &closure #1 in MarkupContainerViewController.updateZoomScales(animated:)partial apply, v19);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void closure #2 in MarkupContainerViewController.viewWillTransition(to:with:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + OBJC_IVAR___PPKMarkupContainerViewController_viewIsTransitioningBetweenSizes) = 0;
    v4 = *(Strong + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
    if (v4)
    {
      v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
      swift_beginAccess();
      v6 = *(v4 + v5);
      if (v6)
      {
        v7 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
        swift_beginAccess();
        v8 = *(v6 + v7);
        if (v8)
        {
          v9 = v8;
          [v9 setAutoScales_];
        }
      }
    }
  }
}

uint64_t MarkupContainerViewController.load(fromData:with:placeholderImage:completionHandler:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v12 = type metadata accessor for DataOrURL(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = a1;
  v14[1] = a2;
  swift_storeEnumTagMultiPayload();
  if (!a3)
  {
    outlined copy of Data._Representation(a1, a2);
    goto LABEL_5;
  }

  v18 = xmmword_1D405C100;
  outlined copy of Data._Representation(a1, a2);
  static Data._conditionallyBridgeFromObjectiveC(_:result:)();
  v15 = *(&v18 + 1);
  if (*(&v18 + 1) >> 60 == 15)
  {
LABEL_5:
    v16 = 0;
    v15 = 0xF000000000000000;
    goto LABEL_6;
  }

  v16 = v18;
LABEL_6:
  MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:)(v14, v16, v15, a4, a5, a6);
  outlined consume of Data?(v16, v15);
  return _s8PaperKit9DataOrURLOWOhTm_0(v14, type metadata accessor for DataOrURL);
}

void MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v72 = a3;
  v73 = a6;
  v77 = a2;
  v78 = a5;
  v80 = a4;
  v9 = type metadata accessor for DataOrURL(0);
  v71 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v69 = v10;
  v76 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v75 = &v68 - v12;
  v81 = type metadata accessor for UTType();
  v79 = *(v81 - 1);
  MEMORY[0x1EEE9AC00](v81);
  v74 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v68 - v21;
  v23 = [objc_allocWithZone(MEMORY[0x1E696AFC8]) init];
  v24 = *(v6 + OBJC_IVAR___PPKMarkupContainerViewController_contentUndoManager);
  *(v6 + OBJC_IVAR___PPKMarkupContainerViewController_contentUndoManager) = v23;

  v25 = OBJC_IVAR___PPKMarkupContainerViewController_loadContentOperationQueue;
  [*(v6 + OBJC_IVAR___PPKMarkupContainerViewController_loadContentOperationQueue) cancelAllOperations];
  v26 = *(v6 + v25);
  *(v6 + v25) = 0;

  v27 = OBJC_IVAR___PPKMarkupContainerViewController_loadContentTask;
  if (*(v6 + OBJC_IVAR___PPKMarkupContainerViewController_loadContentTask))
  {

    MEMORY[0x1DA6CD3C0](v28, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  *(v6 + v27) = 0;

  *(v6 + OBJC_IVAR___PPKMarkupContainerViewController_isContentLoaded) = 0;
  v29 = *(v6 + v25);
  if (v29)
  {
    [v29 setSuspended_];
  }

  v70 = v27;
  MarkupContainerViewController.removeContentViewController()();
  v30 = v79;
  if (v80)
  {
    v31 = v80;
    v32 = specialized static ImageLayout.imageSize(from:)(a1);
    v33 = v6 + OBJC_IVAR___PPKMarkupContainerViewController_placeholderActualImageSize;
    *v33 = v32;
    *(v33 + 8) = v34;
    *(v33 + 16) = 0;
    MarkupContainerViewController.addPlaceholderImage(_:)(v31);
  }

  else
  {
    v35 = v6 + OBJC_IVAR___PPKMarkupContainerViewController_placeholderActualImageSize;
    *v35 = 0;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
  }

  MarkupContainerViewController.sourceContentType(from:)(a1, v22);
  outlined init with copy of Date?(v22, v19, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v36 = *(v30 + 48);
  v37 = v81;
  if (v36(v19, 1, v81) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    v38 = 0;
  }

  else
  {
    v39 = v16;
    v40 = v74;
    static UTType.image.getter();
    v41 = UTType.conforms(to:)();
    v68 = a1;
    v42 = *(v30 + 8);
    v43 = v40;
    v16 = v39;
    v38 = v41;
    v42(v43, v81);
    v42(v19, v81);
    v37 = v81;
    a1 = v68;
  }

  outlined init with copy of Date?(v22, v16, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  if (v36(v16, 1, v37) != 1)
  {
    v46 = v74;
    static UTType.pdf.getter();
    v47 = v37;
    v48 = UTType.conforms(to:)();
    v49 = *(v79 + 8);
    v49(v46, v47);
    v49(v16, v47);
    if (((v38 | v48) & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_17:
    v50 = CACurrentMediaTime();
    v51 = type metadata accessor for TaskPriority();
    (*(*(v51 - 8) + 56))(v75, 1, 1, v51);
    v52 = swift_allocObject();
    v81 = v22;
    LODWORD(v79) = v38;
    v53 = v52;
    swift_unknownObjectWeakInit();
    _s8PaperKit9PDFPageIDVWOcTm_0(a1, v76, type metadata accessor for DataOrURL);
    type metadata accessor for MainActor();
    v54 = v80;
    v55 = v80;
    v56 = v78;
    v57 = v73;
    outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(v78, v73);

    v58 = v72;
    outlined copy of Data?(v77, v72);
    v59 = static MainActor.shared.getter();
    v60 = (*(v71 + 80) + 65) & ~*(v71 + 80);
    v61 = (v69 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    v63 = v54;
    v64 = v62;
    v65 = MEMORY[0x1E69E85E0];
    *(v62 + 16) = v59;
    *(v62 + 24) = v65;
    *(v62 + 32) = v56;
    *(v62 + 40) = v57;
    *(v62 + 48) = v53;
    *(v62 + 56) = v63;
    *(v62 + 64) = v79 & 1;
    _s8PaperKit9PDFPageIDVWObTm_1(v76, v62 + v60, type metadata accessor for DataOrURL);
    v66 = (v64 + v61);
    *v66 = v77;
    v66[1] = v58;
    *(v64 + ((v61 + 23) & 0xFFFFFFFFFFFFFFF8)) = v50;

    v67 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v75, &async function pointer to partial apply for closure #1 in MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:), v64);
    outlined destroy of StocksKitCurrencyCache.Provider?(v81, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    *(v7 + v70) = v67;

    return;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  if (v38)
  {
    goto LABEL_17;
  }

LABEL_13:
  if (v78)
  {
    lazy protocol witness table accessor for type PPKMarkupContainerViewControllerError and conformance PPKMarkupContainerViewControllerError();
    v44 = swift_allocError();
    *v45 = 0;
    v78();
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (a1)
  {
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(a2 + 16))(a2);
}

uint64_t MarkupContainerViewController.load(fromURL:with:placeholderImage:completionHandler:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v10 = type metadata accessor for DataOrURL(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 16))(v12, a1, v13);
  swift_storeEnumTagMultiPayload();
  if (a2 && (v17 = xmmword_1D405C100, static Data._conditionallyBridgeFromObjectiveC(_:result:)(), v14 = *(&v17 + 1), *(&v17 + 1) >> 60 != 15))
  {
    v15 = v17;
  }

  else
  {
    v15 = 0;
    v14 = 0xF000000000000000;
  }

  MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:)(v12, v15, v14, a3, a4, a5);
  outlined consume of Data?(v15, v14);
  return _s8PaperKit9DataOrURLOWOhTm_0(v12, type metadata accessor for DataOrURL);
}

uint64_t MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:)(unint64_t a1, unint64_t a2, void *a3, int a4, void *a5)
{
  v148 = a4;
  v140 = a3;
  v145 = a2;
  v144 = a1;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  v136 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v154 = (&v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v155 = &v128 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
  v134 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v153 = (&v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v139 = &v128 - v14;
  v135 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v128 - v17;
  v159 = type metadata accessor for UTType();
  v147 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v143 = v19;
  v158 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for URL();
  v146 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v142 = v20;
  v156 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v160 = &v128 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v131 = &v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v150 = &v128 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  v132 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v152 = &v128 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v128 - v31;
  v133 = v33;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v128 - v36;
  v161 = v5;
  v39 = *(v5 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
  v151 = a5;
  v141 = v23;
  if (v39)
  {
    MEMORY[0x1EEE9AC00](v35);
    *(&v128 - 4) = type metadata accessor for Image(0);
    *(&v128 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    *(&v128 - 2) = &protocol witness table for Image;
    swift_getKeyPath();
    *&v164 = v39;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    v40 = v39;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v41 = *&v40[direct field offset for CanvasElementViewController._canvasView];
    if (v41)
    {
      v42 = *(v41 + direct field offset for Canvas.paperView);
      v43 = *((*MEMORY[0x1E69E7D40] & *v42) + 0x3F0);
      swift_beginAccess();
      v44 = v42 + v43;
      v45 = v24;
      v23 = v141;
      (*(v24 + 16))(v38, v44, v141);

      (*(v24 + 56))(v38, 0, 1, v23);
    }

    else
    {

      v45 = v24;
      v23 = v141;
      (*(v24 + 56))(v38, 1, 1, v141);
    }

    a5 = v151;
  }

  else
  {
    (*(v24 + 56))(&v128 - v36, 1, 1, v23, v37);
    v45 = v24;
  }

  v46 = v150;
  v149 = v38;
  if (a5)
  {
    *&v162 = 0xD000000000000019;
    *(&v162 + 1) = 0x80000001D4087620;
    v47 = [a5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v47)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v162 = 0u;
      v163 = 0u;
    }

    v164 = v162;
    v165 = v163;
    if (*(&v163 + 1))
    {
      v48 = &_sypSgMd;
      v49 = &_sypSgMR;
      v50 = &v164;
      goto LABEL_16;
    }
  }

  else
  {
    v164 = 0u;
    v165 = 0u;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(&v164, &_sypSgMd, &_sypSgMR);
  outlined init with copy of Date?(v38, v32, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  if ((*(v45 + 48))(v32, 1, v23) != 1)
  {
    v58 = *(v45 + 32);
    v152 = v45 + 32;
    v154 = v58;
    v58(v46, v32, v23);
    v59 = OBJC_IVAR___PPKMarkupContainerViewController_encryptPrivateMetadata;
    v60 = v161;
    swift_beginAccess();
    LODWORD(ObjectType) = *(v60 + v59);
    v151 = *(v60 + OBJC_IVAR___PPKMarkupContainerViewController_context);
    v139 = *(v60 + OBJC_IVAR___PPKMarkupContainerViewController_fileCoordinator);
    v153 = dispatch_semaphore_create(0);
    v61 = swift_allocObject();
    v137 = v61;
    *(v61 + 16) = 0;
    v161 = (v61 + 16);
    v62 = v160;
    static TaskPriority.userInitiated.getter();
    v63 = type metadata accessor for TaskPriority();
    (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
    (*(v45 + 16))(v131, v46, v23);
    v64 = v146;
    (*(v146 + 16))(v156, v144, v157);
    v65 = v147;
    (*(v147 + 16))(v158, v145, v159);
    v66 = (*(v45 + 80) + 56) & ~*(v45 + 80);
    v67 = (v25 + *(v64 + 80) + v66) & ~*(v64 + 80);
    v68 = (v142 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF8;
    v70 = *(v65 + 80);
    v155 = v45;
    v71 = (v70 + v69 + 8) & ~v70;
    v145 = v71 + v143;
    v144 = (v71 + v143) & 0xFFFFFFFFFFFFFFF8;
    v72 = (v144 + 23) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    *(v73 + 16) = 0;
    *(v73 + 24) = 0;
    *(v73 + 32) = ObjectType;
    *(v73 + 40) = 0;
    *(v73 + 48) = 0;
    v154(v73 + v66, v131, v23);
    (*(v64 + 32))(v73 + v67, v156, v157);
    v74 = v137;
    v75 = v151;
    *(v73 + v68) = v151;
    v76 = v139;
    *(v73 + v69) = v139;
    (*(v65 + 32))(v73 + v71, v158, v159);
    *(v73 + v145) = v148 & 1;
    *(v73 + v144 + 8) = v74;
    v77 = v153;
    *(v73 + v72) = v153;
    v78 = v75;
    v79 = v76;

    v80 = v77;
    outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(0, 0);
    v81 = v160;
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v160, &async function pointer to partial apply for closure #1 in ImageFileSync.write(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:), v73);

    outlined destroy of StocksKitCurrencyCache.Provider?(v81, &_sScPSgMd, &_sScPSgMR);
    OS_dispatch_semaphore.wait()();
    v82 = v161;
    swift_beginAccess();
    v83 = *v82;
    if (v83)
    {
      v84 = v155;
      v85 = v141;
      swift_willThrow();
      v86 = v83;

      v87 = v140;
      v88 = v149;
      if (v140)
      {
        *v87 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:512 userInfo:0];
      }

      outlined consume of (@escaping @callee_guaranteed () -> ())?(0, 0);
      (*(v84 + 8))(v150, v85);
      outlined destroy of StocksKitCurrencyCache.Provider?(v88, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
      v89 = 0;
    }

    else
    {

      outlined consume of (@escaping @callee_guaranteed () -> ())?(0, 0);
      (*(v155 + 8))(v150, v141);
      outlined destroy of StocksKitCurrencyCache.Provider?(v149, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);

      v89 = 1;
    }

    return v89 & 1;
  }

  v48 = &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd;
  v49 = &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR;
  v50 = v32;
LABEL_16:
  outlined destroy of StocksKitCurrencyCache.Provider?(v50, v48, v49);
  v51 = dispatch_semaphore_create(0);
  v52 = *(v161 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  v53 = v139;
  v150 = v51;
  if (!v52)
  {
    v90 = 1;
LABEL_27:
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
    (*(*(v95 - 8) + 56))(v18, v90, 1, v95);
    v96 = OBJC_IVAR___PPKMarkupContainerViewController_originalAsset;
    v97 = v161;
    swift_beginAccess();
    v98 = v155;
    outlined init with copy of Date?(v97 + v96, v155, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
    v99 = OBJC_IVAR___PPKMarkupContainerViewController_encryptPrivateMetadata;
    swift_beginAccess();
    LODWORD(v139) = *(v97 + v99);
    type metadata accessor for ResultWrapped #1 in MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:)();
    v100 = swift_allocObject();
    *(v100 + 16) = 2;
    v101 = v100;
    v130 = v100;
    v102 = swift_allocObject();
    v131 = v102;
    *(v102 + 16) = 0;
    v129 = (v102 + 16);
    v103 = type metadata accessor for TaskPriority();
    (*(*(v103 - 8) + 56))(v160, 1, 1, v103);
    outlined init with copy of Date?(v98, v154, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
    v141 = v18;
    outlined init with copy of Date?(v18, v153, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
    outlined init with copy of Date?(v38, v152, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
    v104 = v146;
    (*(v146 + 16))(v156, v144, v157);
    v105 = v147;
    (*(v147 + 16))(v158, v145, v159);
    v106 = (*(v136 + 80) + 48) & ~*(v136 + 80);
    v107 = (v137 + *(v134 + 80) + v106) & ~*(v134 + 80);
    v108 = (v135 + *(v132 + 80) + v107) & ~*(v132 + 80);
    v109 = (v133 + *(v104 + 80) + v108) & ~*(v104 + 80);
    v110 = (v142 + *(v105 + 80) + v109) & ~*(v105 + 80);
    v143 += v110;
    v145 = (v143 + 9) & 0xFFFFFFFFFFFFFFF8;
    v144 = (v145 + 15) & 0xFFFFFFFFFFFFFFF8;
    v142 = (v144 + 15) & 0xFFFFFFFFFFFFFFF8;
    v111 = (v142 + 15) & 0xFFFFFFFFFFFFFFF8;
    v112 = swift_allocObject();
    *(v112 + 2) = 0;
    *(v112 + 3) = 0;
    *(v112 + 4) = v101;
    v113 = v161;
    *(v112 + 5) = v161;
    outlined init with take of Range<AttributedString.Index>(v154, &v112[v106], &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
    v114 = &v112[v107];
    v115 = v131;
    outlined init with take of Range<AttributedString.Index>(v153, v114, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
    outlined init with take of Range<AttributedString.Index>(v152, &v112[v108], &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
    (*(v104 + 32))(&v112[v109], v156, v157);
    (*(v105 + 32))(&v112[v110], v158, v159);
    v116 = &v112[v143];
    *v116 = v148 & 1;
    v116[1] = v139;
    v117 = v151;
    *&v112[v145] = v151;
    *&v112[v144] = v115;
    v118 = v150;
    *&v112[v142] = v150;
    v119 = v130;
    *&v112[v111] = ObjectType;
    v120 = v117;

    v121 = v113;

    v122 = v118;
    v123 = v160;
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v160, &async function pointer to partial apply for closure #1 in MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:), v112);

    outlined destroy of StocksKitCurrencyCache.Provider?(v123, &_sScPSgMd, &_sScPSgMR);
    OS_dispatch_semaphore.wait()();
    v124 = v140;
    if (v140)
    {
      v125 = v129;
      swift_beginAccess();
      if (*v125)
      {
        v126 = *v125;
        *v124 = v126;
        v127 = v126;
      }
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v155, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v141, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v149, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
    v89 = *(v119 + 16);

    return v89 & 1;
  }

  v54 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v55 = *(v52 + v54);
  if (v55)
  {
    v56 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
    swift_beginAccess();
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
    (*(*(v57 - 8) + 16))(v18, v55 + v56, v57);
LABEL_26:
    v90 = 0;
    goto LABEL_27;
  }

  v91 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentTemp;
  swift_beginAccess();
  outlined init with copy of Date?(v52 + v91, v53, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v93 = *(v92 - 8);
  result = (*(v93 + 48))(v53, 1, v92);
  if (result != 1)
  {
    (*(v93 + 32))(v18, v53, v92);
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 360) = v24;
  *(v8 + 344) = v23;
  *(v8 + 720) = v22;
  *(v8 + 143) = v21;
  *(v8 + 328) = v20;
  *(v8 + 312) = a7;
  *(v8 + 320) = a8;
  *(v8 + 296) = a5;
  *(v8 + 304) = a6;
  *(v8 + 288) = a4;
  type metadata accessor for PaperDocument(0);
  *(v8 + 368) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  *(v8 + 376) = v9;
  *(v8 + 384) = *(v9 - 8);
  *(v8 + 392) = swift_task_alloc();
  v10 = type metadata accessor for UTType();
  *(v8 + 400) = v10;
  v11 = *(v10 - 8);
  *(v8 + 408) = v11;
  *(v8 + 416) = *(v11 + 64);
  *(v8 + 424) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v8 + 432) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  *(v8 + 440) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  *(v8 + 448) = v12;
  v13 = *(v12 - 8);
  *(v8 + 456) = v13;
  *(v8 + 464) = *(v13 + 64);
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  *(v8 + 488) = v14;
  *(v8 + 496) = *(v14 - 8);
  *(v8 + 504) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
  *(v8 + 528) = swift_task_alloc();
  *(v8 + 536) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  *(v8 + 544) = swift_task_alloc();
  *(v8 + 552) = swift_task_alloc();
  v15 = type metadata accessor for CRAsset();
  *(v8 + 560) = v15;
  *(v8 + 568) = *(v15 - 8);
  *(v8 + 576) = swift_task_alloc();
  v16 = type metadata accessor for URL();
  *(v8 + 584) = v16;
  v17 = *(v16 - 8);
  *(v8 + 592) = v17;
  *(v8 + 600) = *(v17 + 64);
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();
  *(v8 + 624) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:), 0, 0);
}

uint64_t closure #1 in MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:)()
{
  v0[79] = *(v0[37] + OBJC_IVAR___PPKMarkupContainerViewController_context);
  v0[80] = OBJC_IVAR___PPKMarkupContainerViewController_fileCoordinator;
  type metadata accessor for MainActor();
  v0[81] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:), v2, v1);
}

{
  v1 = v0[80];
  v2 = v0[37];

  v0[82] = *(v2 + v1);

  return MEMORY[0x1EEE6DFA0](closure #1 in MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:), 0, 0);
}

{
  (*(*(v0 + 568) + 8))(*(v0 + 576), *(v0 + 560));
  v1 = *(v0 + 680);
  v2 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  *(v0 + 280) = 0;
  v6 = [v2 URLForDirectory:99 inDomain:1 appropriateForURL:v4 create:1 error:v0 + 280];

  v7 = *(v0 + 280);
  v8 = *(v0 + 616);
  if (v6)
  {
    v97 = v1;
    v9 = *(v0 + 608);
    v10 = *(v0 + 592);
    v11 = *(v0 + 584);
    v12 = *(v0 + 520);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v7;

    v14 = *(v10 + 32);
    v14(v12, v9, v11);
    (*(v10 + 56))(v12, 0, 1, v11);
    v14(v8, v12, v11);
  }

  else
  {
    v15 = *(v0 + 592);
    v16 = *(v0 + 584);
    v17 = *(v0 + 520);
    v18 = v7;
    v19 = _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v15 + 56))(v17, 1, 1, v16);
    URL.deletingLastPathComponent()();
    if ((*(v15 + 48))(v17, 1, v16) != 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 520), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    v97 = 0;
  }

  v20 = *(v0 + 616);
  v21 = *(v0 + 592);
  v22 = *(v0 + 584);
  v24 = *(v0 + 496);
  v23 = *(v0 + 504);
  v25 = *(v0 + 488);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v24 + 8))(v23, v25);
  URL.appendingPathComponent(_:)();

  (*(v21 + 8))(v20, v22);
  *(v0 + 721) = 1;
  *(v0 + 688) = v97;
  v26 = *(v0 + 448);
  v27 = *(v0 + 456);
  v28 = *(v0 + 440);
  outlined init with copy of Date?(*(v0 + 320), v28, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  v29 = (*(v27 + 48))(v28, 1, v26);
  v30 = v29;
  if (v29 != 1)
  {
    v79 = v29;
    v92 = *(v0 + 632);
    v93 = *(v0 + 656);
    v84 = *(v0 + 624);
    v31 = *(v0 + 600);
    v95 = *(v0 + 592);
    v96 = *(v0 + 608);
    v32 = *(v0 + 584);
    v33 = *(v0 + 472);
    v34 = *(v0 + 480);
    v81 = v32;
    v82 = v33;
    v35 = *(v0 + 456);
    v36 = *(v0 + 448);
    v38 = *(v0 + 424);
    v37 = *(v0 + 432);
    v89 = v37;
    v85 = *(v0 + 464);
    v86 = *(v0 + 416);
    v94 = *(v0 + 408);
    v39 = *(v0 + 400);
    v88 = *(v0 + 720);
    v91 = *(v0 + 143);
    v83 = *(v0 + 336);
    v87 = *(v35 + 32);
    v80 = v36;
    v87(v34, *(v0 + 440), v36);
    v90 = dispatch_semaphore_create(0);
    v98 = swift_allocObject();
    *(v98 + 16) = 0;
    static TaskPriority.userInitiated.getter();
    v40 = type metadata accessor for TaskPriority();
    (*(*(v40 - 8) + 56))(v37, 0, 1, v40);
    (*(v35 + 16))(v33, v34, v36);
    (*(v95 + 16))(v96, v84, v32);
    (*(v94 + 16))(v38, v83, v39);
    v41 = (*(v35 + 80) + 56) & ~*(v35 + 80);
    v42 = (v85 + *(v95 + 80) + v41) & ~*(v95 + 80);
    v43 = (v31 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
    v45 = (*(v94 + 80) + v44 + 8) & ~*(v94 + 80);
    v46 = (v45 + v86) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    *(v47 + 32) = v88;
    *(v47 + 40) = 0;
    *(v47 + 48) = 0;
    v87(v47 + v41, v82, v80);
    (*(v95 + 32))(v47 + v42, v96, v81);
    *(v47 + v43) = v92;
    *(v47 + v44) = v93;
    (*(v94 + 32))(v47 + v45, v38, v39);
    *(v47 + v45 + v86) = v91;
    *(v47 + v46 + 8) = v98;
    *(v47 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8)) = v90;
    v48 = v92;
    v49 = v93;

    v50 = v90;
    outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(0, 0);
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v89, &closure #1 in ImageFileSync.write(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)partial apply, v47);

    outlined destroy of StocksKitCurrencyCache.Provider?(v89, &_sScPSgMd, &_sScPSgMR);
    OS_dispatch_semaphore.wait()();
    swift_beginAccess();
    v51 = *(v98 + 16);
    if (v51)
    {
      v52 = *(v0 + 624);
      v53 = *(v0 + 592);
      v54 = *(v0 + 584);
      v55 = *(v0 + 480);
      v56 = *(v0 + 448);
      v57 = *(v0 + 456);
      swift_willThrow();
      v58 = v51;

      outlined consume of (@escaping @callee_guaranteed () -> ())?(0, 0);
      (*(v57 + 8))(v55, v56);
      (*(v53 + 8))(v52, v54);

LABEL_9:
      v59 = *(v0 + 352);
      v60 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:512 userInfo:0];

      swift_beginAccess();
      v61 = *(v59 + 16);
      *(v59 + 16) = v60;

LABEL_20:
      OS_dispatch_semaphore.signal()();

      v77 = *(v0 + 8);

      return v77();
    }

    (*(*(v0 + 456) + 8))(*(v0 + 480), *(v0 + 448));

    outlined consume of (@escaping @callee_guaranteed () -> ())?(0, 0);
    v30 = v79;
    if (*(v0 + 721) == 1)
    {
      v70 = *(v0 + 688);
      v71 = *(v0 + 592);
      v72 = [objc_opt_self() defaultManager];
      NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
      v73 = (v71 + 8);
      if (v70)
      {
        v51 = v70;
        v74 = *(v0 + 624);
        v75 = *(v0 + 584);

        (*v73)(v74, v75);
        goto LABEL_9;
      }

      v78 = *(v0 + 512);

      outlined destroy of StocksKitCurrencyCache.Provider?(v78, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_19:
      v76 = *(v0 + 288);
      (*v73)(*(v0 + 624), *(v0 + 584));
      *(v76 + 16) = v30 != 1;
      goto LABEL_20;
    }

LABEL_18:
    v73 = (*(v0 + 592) + 8);
    goto LABEL_19;
  }

  v62 = *(v0 + 528);
  v63 = *(v0 + 376);
  v64 = *(v0 + 384);
  v65 = *(v0 + 312);
  outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 440), &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  outlined init with copy of Date?(v65, v62, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
  if ((*(v64 + 48))(v62, 1, v63) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 528), &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
    goto LABEL_18;
  }

  (*(*(v0 + 384) + 32))(*(v0 + 392), *(v0 + 528), *(v0 + 376));
  Capsule.root.getter();
  type metadata accessor for CRContext();
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0;
  *(v0 + 144) = 0u;
  v66 = MEMORY[0x1DA6CC630](0, v0 + 144);
  *(v0 + 696) = v66;
  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 144, &_s9Coherence18EncryptionDelegate_pSgMd, &_s9Coherence18EncryptionDelegate_pSgMR);
  *(v0 + 16) = xmmword_1D405D330;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 125) = 0u;
  v67 = swift_task_alloc();
  *(v0 + 704) = v67;
  *v67 = v0;
  v67[1] = closure #1 in MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:);
  v68 = *(v0 + 392);

  return specialized PaperDocument.newPDFDocument<A>(use:in:options:)(v66 | 0x4000000000000000, v68, v0 + 16);
}

{
  if (*(v0 + 344))
  {
    type metadata accessor for PDFDocumentWriteOption(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type PDFDocumentWriteOption and conformance PDFDocumentWriteOption, type metadata accessor for PDFDocumentWriteOption, &protocol conformance descriptor for PDFDocumentWriteOption);
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo22PDFDocumentWriteOptiona_yXlTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v2 = MEMORY[0x1DA6CCED0](0xD000000000000024, 0x80000001D4087640);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(isa, v2, isUniquelyReferenced_nonNull_native);

  v5 = v1;
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  if (v5)
  {
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);
    type metadata accessor for PDFDocumentWriteOption(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type PDFDocumentWriteOption and conformance PDFDocumentWriteOption, type metadata accessor for PDFDocumentWriteOption, &protocol conformance descriptor for PDFDocumentWriteOption);
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = *(v0 + 712);
  v12 = *(v0 + 384);
  v11 = *(v0 + 392);
  v13 = *(v0 + 376);
  v14 = [v10 writeToURL:v8 withOptions:v9.super.isa];

  (*(v12 + 8))(v11, v13);

  if (v14 && (*(v0 + 721) & 1) != 0)
  {
    v15 = *(v0 + 688);
    v16 = *(v0 + 592);
    v17 = [objc_opt_self() defaultManager];
    NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
    v18 = (v16 + 8);
    if (v15)
    {
      v19 = *(v0 + 624);
      v20 = *(v0 + 584);

      (*v18)(v19, v20);
      v21 = *(v0 + 352);
      v22 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:512 userInfo:0];

      swift_beginAccess();
      v23 = *(v21 + 16);
      *(v21 + 16) = v22;

      goto LABEL_14;
    }

    v24 = *(v0 + 512);

    outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    LOBYTE(v14) = 1;
  }

  else
  {
    v18 = (*(v0 + 592) + 8);
  }

  v25 = *(v0 + 288);
  (*v18)(*(v0 + 624), *(v0 + 584));
  *(v25 + 16) = v14;
LABEL_14:
  OS_dispatch_semaphore.signal()();

  v26 = *(v0 + 8);

  return v26();
}

uint64_t closure #1 in MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:)(__n128 a1)
{
  v2 = *(v1 + 344);
  if (!v2)
  {
    *(v1 + 200) = 0u;
    *(v1 + 184) = 0u;
LABEL_10:
    v15 = *(v1 + 624);
    v16 = *(v1 + 592);
    v17 = *(v1 + 584);
    v18 = *(v1 + 328);
    outlined destroy of StocksKitCurrencyCache.Provider?(v1 + 184, &_sypSgMd, &_sypSgMR);
    (*(v16 + 16))(v15, v18, v17);
    v19 = 0;
    goto LABEL_24;
  }

  *(v1 + 264) = 0xD000000000000019;
  *(v1 + 272) = 0x80000001D4087620;
  v3 = [v2 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v129 = 0u;
    v130 = 0u;
  }

  *(v1 + 184) = v129;
  *(v1 + 200) = v130;
  if (!*(v1 + 208))
  {
    goto LABEL_10;
  }

  v4 = *(v1 + 568);
  v5 = *(v1 + 560);
  v6 = *(v1 + 544);
  v7 = *(v1 + 304);
  outlined destroy of StocksKitCurrencyCache.Provider?(v1 + 184, &_sypSgMd, &_sypSgMR);
  outlined init with copy of Date?(v7, v6, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  v8 = *(v4 + 48);
  if (v8(v6, 1, v5) == 1)
  {
    v9 = *(v1 + 536);
    v10 = *(v1 + 376);
    v11 = *(v1 + 384);
    outlined init with copy of Date?(*(v1 + 312), v9, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      v12 = *(v1 + 568);
      v13 = *(v1 + 560);
      v14 = *(v1 + 552);
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v1 + 536), &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
      (*(v12 + 56))(v14, 1, 1, v13);
    }

    else
    {
      v23 = *(v1 + 536);
      v24 = *(v1 + 376);
      v25 = *(v1 + 384);
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v25 + 8))(v23, v24);
    }

    v26 = *(v1 + 544);
    if (v8(v26, 1, *(v1 + 560)) != 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
    }
  }

  else
  {
    v20 = *(v1 + 568);
    v21 = *(v1 + 560);
    v22 = *(v1 + 552);
    (*(v20 + 32))(v22, *(v1 + 544), v21);
    (*(v20 + 56))(v22, 0, 1, v21);
  }

  v27 = *(v1 + 560);
  v28 = *(v1 + 552);
  if (v8(v28, 1, v27) != 1)
  {
    v42 = *(v1 + 328);
    (*(*(v1 + 568) + 32))(*(v1 + 576), v28, v27);
    v43 = swift_task_alloc();
    *(v1 + 664) = v43;
    *(v43 + 16) = v42;
    v44 = swift_task_alloc();
    *(v1 + 672) = v44;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
    *v44 = v1;
    v44[1] = closure #1 in MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:);

    return MEMORY[0x1EEDF52A8](v1 + 141, 0, &closure #1 in static MarkupContainerViewController.write(context:fileCoordinator:originalAsset:pdfDocument:imagePaper:to:imageType:embeddingSourceImageAndEditModel:encryptPrivateMetadata:options:)partial apply, v43, v45);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  v29 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v30);
  v32 = v31;
  *(v1 + 280) = 0;
  v33 = [v29 URLForDirectory:99 inDomain:1 appropriateForURL:v31 create:1 error:v1 + 280];

  v34 = *(v1 + 280);
  v35 = *(v1 + 616);
  if (v33)
  {
    v36 = *(v1 + 608);
    v37 = *(v1 + 592);
    v38 = *(v1 + 584);
    v39 = *(v1 + 520);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v34;

    v41 = *(v37 + 32);
    v41(v39, v36, v38);
    (*(v37 + 56))(v39, 0, 1, v38);
    v41(v35, v39, v38);
  }

  else
  {
    v46 = *(v1 + 592);
    v47 = *(v1 + 584);
    v48 = *(v1 + 520);
    v49 = v34;
    v50 = _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v46 + 56))(v48, 1, 1, v47);
    URL.deletingLastPathComponent()();
    if ((*(v46 + 48))(v48, 1, v47) != 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v1 + 520), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  v51 = *(v1 + 616);
  v52 = *(v1 + 592);
  v53 = *(v1 + 584);
  v55 = *(v1 + 496);
  v54 = *(v1 + 504);
  v56 = *(v1 + 488);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v55 + 8))(v54, v56);
  URL.appendingPathComponent(_:)();

  (*(v52 + 8))(v51, v53);
  v19 = 1;
LABEL_24:
  *(v1 + 721) = v19;
  *(v1 + 688) = 0;
  v57 = *(v1 + 448);
  v58 = *(v1 + 456);
  v59 = *(v1 + 440);
  outlined init with copy of Date?(*(v1 + 320), v59, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  v60 = (*(v58 + 48))(v59, 1, v57);
  v61 = v60;
  if (v60 != 1)
  {
    v110 = v60;
    v123 = *(v1 + 632);
    v124 = *(v1 + 656);
    v115 = *(v1 + 624);
    v127 = *(v1 + 608);
    v62 = *(v1 + 600);
    v63 = *(v1 + 584);
    v64 = *(v1 + 472);
    v65 = *(v1 + 480);
    v112 = v63;
    v113 = v64;
    v66 = *(v1 + 456);
    v67 = *(v1 + 448);
    v69 = *(v1 + 424);
    v68 = *(v1 + 432);
    v120 = v68;
    v116 = *(v1 + 464);
    v117 = *(v1 + 416);
    v125 = *(v1 + 408);
    v126 = *(v1 + 592);
    v70 = *(v1 + 400);
    v119 = *(v1 + 720);
    v122 = *(v1 + 143);
    v114 = *(v1 + 336);
    v118 = *(v66 + 32);
    v111 = v67;
    v118(v65, *(v1 + 440), v67);
    v121 = dispatch_semaphore_create(0);
    v128 = swift_allocObject();
    *(v128 + 16) = 0;
    static TaskPriority.userInitiated.getter();
    v71 = type metadata accessor for TaskPriority();
    (*(*(v71 - 8) + 56))(v68, 0, 1, v71);
    (*(v66 + 16))(v64, v65, v67);
    (*(v126 + 16))(v127, v115, v63);
    (*(v125 + 16))(v69, v114, v70);
    v72 = (*(v66 + 80) + 56) & ~*(v66 + 80);
    v73 = (v116 + *(v126 + 80) + v72) & ~*(v126 + 80);
    v74 = (v62 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
    v76 = (*(v125 + 80) + v75 + 8) & ~*(v125 + 80);
    v77 = (v76 + v117) & 0xFFFFFFFFFFFFFFF8;
    v78 = swift_allocObject();
    *(v78 + 16) = 0;
    *(v78 + 24) = 0;
    *(v78 + 32) = v119;
    *(v78 + 40) = 0;
    *(v78 + 48) = 0;
    v118(v78 + v72, v113, v111);
    (*(v126 + 32))(v78 + v73, v127, v112);
    *(v78 + v74) = v123;
    *(v78 + v75) = v124;
    (*(v125 + 32))(v78 + v76, v69, v70);
    *(v78 + v76 + v117) = v122;
    *(v78 + v77 + 8) = v128;
    *(v78 + ((v77 + 23) & 0xFFFFFFFFFFFFFFF8)) = v121;
    v79 = v123;
    v80 = v124;

    v81 = v121;
    outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(0, 0);
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v120, &closure #1 in ImageFileSync.write(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)partial apply, v78);

    outlined destroy of StocksKitCurrencyCache.Provider?(v120, &_sScPSgMd, &_sScPSgMR);
    OS_dispatch_semaphore.wait()();
    swift_beginAccess();
    v82 = *(v128 + 16);
    if (v82)
    {
      v83 = *(v1 + 624);
      v84 = *(v1 + 592);
      v85 = *(v1 + 584);
      v86 = *(v1 + 480);
      v87 = *(v1 + 448);
      v88 = *(v1 + 456);
      swift_willThrow();
      v89 = v82;

      outlined consume of (@escaping @callee_guaranteed () -> ())?(0, 0);
      (*(v88 + 8))(v86, v87);
      (*(v84 + 8))(v83, v85);

LABEL_27:
      v90 = *(v1 + 352);
      v91 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:512 userInfo:0];

      swift_beginAccess();
      v92 = *(v90 + 16);
      *(v90 + 16) = v91;

LABEL_38:
      OS_dispatch_semaphore.signal()();

      v107 = *(v1 + 8);

      return v107();
    }

    (*(*(v1 + 456) + 8))(*(v1 + 480), *(v1 + 448));

    outlined consume of (@escaping @callee_guaranteed () -> ())?(0, 0);
    v61 = v110;
    if (*(v1 + 721) == 1)
    {
      v100 = *(v1 + 688);
      v101 = *(v1 + 592);
      v102 = [objc_opt_self() defaultManager];
      NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
      v103 = (v101 + 8);
      if (v100)
      {
        v82 = v100;
        v104 = *(v1 + 624);
        v105 = *(v1 + 584);

        (*v103)(v104, v105);
        goto LABEL_27;
      }

      v108 = *(v1 + 512);

      outlined destroy of StocksKitCurrencyCache.Provider?(v108, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_37:
      v106 = *(v1 + 288);
      (*v103)(*(v1 + 624), *(v1 + 584));
      *(v106 + 16) = v61 != 1;
      goto LABEL_38;
    }

LABEL_36:
    v103 = (*(v1 + 592) + 8);
    goto LABEL_37;
  }

  v93 = *(v1 + 528);
  v94 = *(v1 + 376);
  v95 = *(v1 + 384);
  v96 = *(v1 + 312);
  outlined destroy of StocksKitCurrencyCache.Provider?(*(v1 + 440), &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  outlined init with copy of Date?(v96, v93, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
  if ((*(v95 + 48))(v93, 1, v94) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(*(v1 + 528), &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
    goto LABEL_36;
  }

  (*(*(v1 + 384) + 32))(*(v1 + 392), *(v1 + 528), *(v1 + 376));
  Capsule.root.getter();
  type metadata accessor for CRContext();
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0;
  *(v1 + 144) = 0u;
  v97 = MEMORY[0x1DA6CC630](0, v1 + 144);
  *(v1 + 696) = v97;
  outlined destroy of StocksKitCurrencyCache.Provider?(v1 + 144, &_s9Coherence18EncryptionDelegate_pSgMd, &_s9Coherence18EncryptionDelegate_pSgMR);
  *(v1 + 16) = xmmword_1D405D330;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 125) = 0u;
  v98 = swift_task_alloc();
  *(v1 + 704) = v98;
  *v98 = v1;
  v98[1] = closure #1 in MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:);
  v99 = *(v1 + 392);

  return specialized PaperDocument.newPDFDocument<A>(use:in:options:)(v97 | 0x4000000000000000, v99, v1 + 16);
}

void closure #1 in MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:)()
{
  *(*v1 + 680) = v0;

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](closure #1 in MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:), 0, 0);
  }
}

uint64_t closure #1 in MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 696);
  v4 = *(*v1 + 368);
  *(v2 + 712) = a1;

  outlined destroy of StocksKitCurrencyCache.Provider?(v2 + 16, &_s8PaperKit0A17RenderableOptionsVSgMd, &_s8PaperKit0A17RenderableOptionsVSgMR);
  _s8PaperKit9DataOrURLOWOhTm_0(v4, type metadata accessor for PaperDocument);

  return MEMORY[0x1EEE6DFA0](closure #1 in MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:), 0, 0);
}

double key path getter for PaperDocument.pdf : PaperDocument()
{
  type metadata accessor for PaperDocument(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  CRRegister.wrappedValue.getter();
  return result;
}

uint64_t key path setter for PaperDocument.pdf : PaperDocument(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  outlined init with copy of Date?(v7, v4, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  type metadata accessor for PaperDocument(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
}

uint64_t closure #1 in static MarkupContainerViewController.write(context:fileCoordinator:originalAsset:pdfDocument:imagePaper:to:imageType:embeddingSourceImageAndEditModel:encryptPrivateMetadata:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in static MarkupContainerViewController.write(context:fileCoordinator:originalAsset:pdfDocument:imagePaper:to:imageType:embeddingSourceImageAndEditModel:encryptPrivateMetadata:options:), 0, 0);
}

uint64_t closure #1 in static MarkupContainerViewController.write(context:fileCoordinator:originalAsset:pdfDocument:imagePaper:to:imageType:embeddingSourceImageAndEditModel:encryptPrivateMetadata:options:)()
{
  v1 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  *(v0 + 16) = 0;
  v8 = [v1 copyItemAtURL:v4 toURL:v6 error:v0 + 16];

  v9 = *(v0 + 16);
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v11 = v9;
    v12 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  **(v0 + 24) = v8 ^ 1;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for NSAttributedStringKey(0);
    v15 = v14;
    swift_dynamicCast();
    outlined init with take of Any((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    outlined init with take of Any(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    outlined init with take of Any(v30, v31);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = outlined init with take of Any(v31, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for CFStringRef(0);
    v15 = v14;
    swift_dynamicCast();
    outlined init with take of Any((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    outlined init with take of Any(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    outlined init with take of Any(v30, v31);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = outlined init with take of Any(v31, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd, &_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMR);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v24 = *(*(a1 + 56) + v10);
    v12 = v24;
    v13 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIFontCSgMd, &_sSo6UIFontCSgMR);
    swift_dynamicCast();
    outlined init with take of Any((v25 + 8), v23);
    outlined init with take of Any(v23, v25);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v14 = Hasher._finalize()();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v6 + 8 * (v16 >> 6))) == 0)
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
        v21 = *(v6 + 8 * v17);
        if (v21 != -1)
        {
          v8 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v16) & ~*(v6 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v8) = v13;
    outlined init with take of Any(v25, (*(v1 + 56) + 32 * v8));
    ++*(v1 + 16);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo22PDFDocumentWriteOptionaypGMd, &_ss18_DictionaryStorageCySo22PDFDocumentWriteOptionaypGMR);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v23 = *(*(a1 + 56) + v10);
    v12 = v11;
    swift_unknownObjectRetain();
    swift_dynamicCast();
    outlined init with take of Any((v24 + 8), v22);
    outlined init with take of Any(v22, v24);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v13 = Hasher._finalize()();

    v14 = -1 << *(v1 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v6 + 8 * (v15 >> 6))) == 0)
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
        v20 = *(v6 + 8 * v16);
        if (v20 != -1)
        {
          v8 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v15) & ~*(v6 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v8) = v12;
    outlined init with take of Any(v24, (*(v1 + 56) + 32 * v8));
    ++*(v1 + 16);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo29UIFontDescriptorAttributeNameaypGMd, &_ss18_DictionaryStorageCySo29UIFontDescriptorAttributeNameaypGMR);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v23 = *(*(a1 + 56) + v10);
    v12 = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo24UIFontDescriptorTraitKeyaSo0A6WeightaGMd, &_sSDySo24UIFontDescriptorTraitKeyaSo0A6WeightaGMR);
    swift_dynamicCast();
    outlined init with take of Any((v24 + 8), v22);
    outlined init with take of Any(v22, v24);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v13 = Hasher._finalize()();

    v14 = -1 << *(v1 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v6 + 8 * (v15 >> 6))) == 0)
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
        v20 = *(v6 + 8 * v16);
        if (v20 != -1)
        {
          v8 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v15) & ~*(v6 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v8) = v12;
    outlined init with take of Any(v24, (*(v1 + 56) + 32 * v8));
    ++*(v1 + 16);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 432) = a4;
  *(v5 + 440) = v4;
  *(v5 + 143) = a3;
  *(v5 + 416) = a1;
  *(v5 + 424) = a2;
  type metadata accessor for PaperDocument(0);
  *(v5 + 448) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  *(v5 + 456) = v6;
  *(v5 + 464) = *(v6 - 8);
  *(v5 + 472) = swift_task_alloc();
  v7 = type metadata accessor for UTType();
  *(v5 + 480) = v7;
  v8 = *(v7 - 8);
  *(v5 + 488) = v8;
  *(v5 + 496) = *(v8 + 64);
  *(v5 + 504) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v5 + 512) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  *(v5 + 520) = v9;
  v10 = *(v9 - 8);
  *(v5 + 528) = v10;
  *(v5 + 536) = *(v10 + 64);
  *(v5 + 544) = swift_task_alloc();
  *(v5 + 552) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v5 + 560) = v11;
  *(v5 + 568) = *(v11 - 8);
  *(v5 + 576) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v5 + 584) = swift_task_alloc();
  *(v5 + 592) = swift_task_alloc();
  v12 = type metadata accessor for CRAsset();
  *(v5 + 600) = v12;
  *(v5 + 608) = *(v12 - 8);
  *(v5 + 616) = swift_task_alloc();
  v13 = type metadata accessor for URL();
  *(v5 + 624) = v13;
  v14 = *(v13 - 8);
  *(v5 + 632) = v14;
  *(v5 + 640) = *(v14 + 64);
  *(v5 + 648) = swift_task_alloc();
  *(v5 + 656) = swift_task_alloc();
  *(v5 + 664) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  *(v5 + 672) = swift_task_alloc();
  *(v5 + 680) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
  *(v5 + 688) = swift_task_alloc();
  *(v5 + 696) = swift_task_alloc();
  *(v5 + 704) = swift_task_alloc();
  *(v5 + 712) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  *(v5 + 720) = swift_task_alloc();
  *(v5 + 728) = swift_task_alloc();
  *(v5 + 736) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 744) = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 752) = v15;
  *(v5 + 760) = v16;

  return MEMORY[0x1EEE6DFA0](MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:), v15, v16);
}

uint64_t MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:)()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 440);
  *(v0 + 768) = *(v2 + OBJC_IVAR___PPKMarkupContainerViewController_context);
  *(v0 + 776) = *(v2 + OBJC_IVAR___PPKMarkupContainerViewController_fileCoordinator);
  v3 = OBJC_IVAR___PPKMarkupContainerViewController_originalAsset;
  swift_beginAccess();
  outlined init with copy of Date?(v2 + v3, v1, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  v4 = *(v2 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v6 = *(v4 + v5);
    v7 = *(v0 + 456);
    v8 = *(v0 + 464);
    if (v6)
    {
      v9 = *(v0 + 712);
      v10 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
      swift_beginAccess();
      (*(v8 + 16))(v9, v6 + v10, v7);
    }

    else
    {
      v12 = *(v0 + 704);
      v13 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentTemp;
      swift_beginAccess();
      outlined init with copy of Date?(v4 + v13, v12, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
      v14 = (*(v8 + 48))(v12, 1, v7);
      if (v14 == 1)
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v14, v15, v16);
      }

      (*(*(v0 + 464) + 32))(*(v0 + 712), *(v0 + 704), *(v0 + 456));
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v17 = *(v0 + 440);
  v18 = 1;
  (*(*(v0 + 464) + 56))(*(v0 + 712), v11, 1, *(v0 + 456));
  v19 = *(v17 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
  if (v19)
  {
    v20 = swift_task_alloc();
    *v20 = type metadata accessor for Image(0);
    v20[1] = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    v20[2] = &protocol witness table for Image;
    swift_getKeyPath();

    *(v0 + 400) = v19;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    v21 = v19;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = *&v21[direct field offset for CanvasElementViewController._canvasView];
    if (v22)
    {
      v23 = *(v0 + 680);
      v24 = *(v0 + 528);
      v25 = *(v0 + 520);
      v26 = *(v22 + direct field offset for Canvas.paperView);
      v27 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x3F0);
      swift_beginAccess();
      (*(v24 + 16))(v23, &v26[v27], v25);
      v18 = 0;
    }

    else
    {
      v18 = 1;
    }
  }

  v28 = *(v0 + 440);
  (*(*(v0 + 528) + 56))(*(v0 + 680), v18, 1, *(v0 + 520));
  v29 = OBJC_IVAR___PPKMarkupContainerViewController_encryptPrivateMetadata;
  swift_beginAccess();
  *(v0 + 848) = *(v28 + v29);
  v14 = MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:);
  v15 = 0;
  v16 = 0;

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

{
  (*(*(v0 + 608) + 8))(*(v0 + 616), *(v0 + 600));
  v1 = *(v0 + 800);
  v2 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  *(v0 + 408) = 0;
  v6 = [v2 URLForDirectory:99 inDomain:1 appropriateForURL:v4 create:1 error:v0 + 408];

  v7 = *(v0 + 408);
  v8 = *(v0 + 656);
  if (v6)
  {
    v105 = v1;
    v9 = *(v0 + 648);
    v10 = *(v0 + 632);
    v11 = *(v0 + 624);
    v12 = *(v0 + 592);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v7;

    v14 = *(v10 + 32);
    v14(v12, v9, v11);
    (*(v10 + 56))(v12, 0, 1, v11);
    v14(v8, v12, v11);
  }

  else
  {
    v15 = *(v0 + 632);
    v16 = *(v0 + 624);
    v17 = *(v0 + 592);
    v18 = v7;
    v19 = _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v15 + 56))(v17, 1, 1, v16);
    URL.deletingLastPathComponent()();
    if ((*(v15 + 48))(v17, 1, v16) != 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 592), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    v105 = 0;
  }

  v20 = *(v0 + 656);
  v21 = *(v0 + 632);
  v22 = *(v0 + 624);
  v23 = *(v0 + 576);
  v24 = *(v0 + 568);
  v25 = *(v0 + 560);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v24 + 8))(v23, v25);
  URL.appendingPathComponent(_:)();

  (*(v21 + 8))(v20, v22);
  *(v0 + 849) = 1;
  *(v0 + 808) = v105;
  v26 = *(v0 + 672);
  v27 = *(v0 + 528);
  v28 = *(v0 + 520);
  outlined init with copy of Date?(*(v0 + 680), v26, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  v29 = (*(v27 + 48))(v26, 1, v28);
  v30 = v29;
  if (v29 != 1)
  {
    v83 = v29;
    v95 = *(v0 + 848);
    v97 = *(v0 + 768);
    v98 = *(v0 + 776);
    v89 = *(v0 + 664);
    v31 = *(v0 + 640);
    v101 = *(v0 + 632);
    v103 = *(v0 + 648);
    v32 = *(v0 + 624);
    v33 = *(v0 + 552);
    v34 = *(v0 + 544);
    v85 = v34;
    v35 = *(v0 + 528);
    v36 = *(v0 + 520);
    v38 = *(v0 + 504);
    v37 = *(v0 + 512);
    v93 = v37;
    v87 = v38;
    v90 = *(v0 + 536);
    v91 = *(v0 + 496);
    v99 = *(v0 + 488);
    v39 = *(v0 + 480);
    v86 = v39;
    v96 = *(v0 + 143);
    v88 = *(v0 + 424);
    v92 = *(v35 + 32);
    v84 = v36;
    v92(v33, *(v0 + 672), v36);
    v94 = dispatch_semaphore_create(0);
    v106 = swift_allocObject();
    *(v106 + 16) = 0;
    static TaskPriority.userInitiated.getter();
    v40 = type metadata accessor for TaskPriority();
    (*(*(v40 - 8) + 56))(v37, 0, 1, v40);
    (*(v35 + 16))(v34, v33, v36);
    (*(v101 + 16))(v103, v89, v32);
    (*(v99 + 16))(v38, v88, v39);
    v41 = (*(v35 + 80) + 56) & ~*(v35 + 80);
    v42 = (v90 + *(v101 + 80) + v41) & ~*(v101 + 80);
    v43 = (v31 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
    v45 = (*(v99 + 80) + v44 + 8) & ~*(v99 + 80);
    v46 = (v45 + v91) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    *(v47 + 32) = v95;
    *(v47 + 40) = 0;
    *(v47 + 48) = 0;
    v92(v47 + v41, v85, v84);
    (*(v101 + 32))(v47 + v42, v103, v32);
    *(v47 + v43) = v97;
    *(v47 + v44) = v98;
    (*(v99 + 32))(v47 + v45, v87, v86);
    *(v47 + v45 + v91) = v96;
    *(v47 + v46 + 8) = v106;
    *(v47 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8)) = v94;
    v48 = v97;
    v49 = v98;

    v50 = v94;
    outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(0, 0);
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v93, &closure #1 in ImageFileSync.write(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)partial apply, v47);

    outlined destroy of StocksKitCurrencyCache.Provider?(v93, &_sScPSgMd, &_sScPSgMR);
    OS_dispatch_semaphore.wait()();
    swift_beginAccess();
    v51 = *(v106 + 16);
    if (v51)
    {
      v102 = *(v0 + 712);
      v104 = *(v0 + 736);
      v100 = *(v0 + 680);
      v52 = *(v0 + 664);
      v53 = *(v0 + 632);
      v54 = *(v0 + 624);
      v55 = *(v0 + 552);
      v56 = *(v0 + 528);
      v57 = *(v0 + 520);
      swift_willThrow();
      v58 = v51;

      outlined consume of (@escaping @callee_guaranteed () -> ())?(0, 0);
      (*(v56 + 8))(v55, v57);
      (*(v53 + 8))(v52, v54);
      outlined destroy of StocksKitCurrencyCache.Provider?(v100, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v102, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v104, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);

LABEL_9:
      *(v0 + 816) = v51;
      v59 = *(v0 + 760);
      v60 = *(v0 + 752);
      v61 = MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:);
LABEL_20:

      return MEMORY[0x1EEE6DFA0](v61, v60, v59);
    }

    (*(*(v0 + 528) + 8))(*(v0 + 552), *(v0 + 520));

    outlined consume of (@escaping @callee_guaranteed () -> ())?(0, 0);
    v30 = v83;
    if (*(v0 + 849))
    {
      v70 = *(v0 + 808);
      v71 = *(v0 + 632);
      v72 = [objc_opt_self() defaultManager];
      NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
      v73 = (v71 + 8);
      if (v70)
      {
        v51 = v70;
        v74 = *(v0 + 736);
        v75 = *(v0 + 712);
        v76 = *(v0 + 680);
        v77 = *(v0 + 664);
        v78 = *(v0 + 624);

        (*v73)(v77, v78);
        outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
        outlined destroy of StocksKitCurrencyCache.Provider?(v75, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
        outlined destroy of StocksKitCurrencyCache.Provider?(v74, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
        goto LABEL_9;
      }

      v82 = *(v0 + 584);

      outlined destroy of StocksKitCurrencyCache.Provider?(v82, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_19:
      *(v0 + 850) = v30 != 1;
      v79 = *(v0 + 736);
      v80 = *(v0 + 712);
      v81 = *(v0 + 680);
      (*v73)(*(v0 + 664), *(v0 + 624));
      outlined destroy of StocksKitCurrencyCache.Provider?(v81, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v80, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v79, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
      v59 = *(v0 + 760);
      v60 = *(v0 + 752);
      v61 = MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:);
      goto LABEL_20;
    }

LABEL_18:
    v73 = (*(v0 + 632) + 8);
    goto LABEL_19;
  }

  v62 = *(v0 + 712);
  v63 = *(v0 + 688);
  v64 = *(v0 + 456);
  v65 = *(v0 + 464);
  outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 672), &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  outlined init with copy of Date?(v62, v63, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
  if ((*(v65 + 48))(v63, 1, v64) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 688), &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
    goto LABEL_18;
  }

  (*(*(v0 + 464) + 32))(*(v0 + 472), *(v0 + 688), *(v0 + 456));
  Capsule.root.getter();
  type metadata accessor for CRContext();
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0;
  *(v0 + 144) = 0u;
  v66 = MEMORY[0x1DA6CC630](0, v0 + 144);
  *(v0 + 824) = v66;
  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 144, &_s9Coherence18EncryptionDelegate_pSgMd, &_s9Coherence18EncryptionDelegate_pSgMR);
  *(v0 + 16) = xmmword_1D405D330;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 125) = 0u;
  v67 = swift_task_alloc();
  *(v0 + 832) = v67;
  *v67 = v0;
  v67[1] = MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:);
  v68 = *(v0 + 472);

  return specialized PaperDocument.newPDFDocument<A>(use:in:options:)(v66 | 0x4000000000000000, v68, v0 + 16);
}

{

  v1 = *(v0 + 8);

  return v1(0);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 850);

  return v1(v2);
}

{
  if (*(v0 + 432))
  {
    type metadata accessor for PDFDocumentWriteOption(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type PDFDocumentWriteOption and conformance PDFDocumentWriteOption, type metadata accessor for PDFDocumentWriteOption, &protocol conformance descriptor for PDFDocumentWriteOption);
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo22PDFDocumentWriteOptiona_yXlTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v2 = MEMORY[0x1DA6CCED0](0xD000000000000024, 0x80000001D4087640);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(isa, v2, isUniquelyReferenced_nonNull_native);

  v5 = v1;
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  if (v5)
  {
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);
    type metadata accessor for PDFDocumentWriteOption(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type PDFDocumentWriteOption and conformance PDFDocumentWriteOption, type metadata accessor for PDFDocumentWriteOption, &protocol conformance descriptor for PDFDocumentWriteOption);
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = *(v0 + 840);
  v12 = *(v0 + 464);
  v11 = *(v0 + 472);
  v13 = *(v0 + 456);
  v14 = [v10 writeToURL:v8 withOptions:v9.super.isa];

  (*(v12 + 8))(v11, v13);

  if (v14 && (*(v0 + 849) & 1) != 0)
  {
    v15 = *(v0 + 808);
    v16 = *(v0 + 632);
    v17 = [objc_opt_self() defaultManager];
    NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
    v18 = (v16 + 8);
    if (v15)
    {
      v19 = *(v0 + 736);
      v20 = *(v0 + 712);
      v21 = *(v0 + 680);
      v22 = *(v0 + 664);
      v23 = *(v0 + 624);

      (*v18)(v22, v23);
      outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
      *(v0 + 816) = v15;
      v24 = *(v0 + 760);
      v25 = *(v0 + 752);
      v26 = MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:);
      goto LABEL_14;
    }

    v27 = *(v0 + 584);

    outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    LOBYTE(v14) = 1;
  }

  else
  {
    v18 = (*(v0 + 632) + 8);
  }

  *(v0 + 850) = v14;
  v28 = *(v0 + 736);
  v29 = *(v0 + 712);
  v30 = *(v0 + 680);
  (*v18)(*(v0 + 664), *(v0 + 624));
  outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  v24 = *(v0 + 760);
  v25 = *(v0 + 752);
  v26 = MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:);
LABEL_14:

  return MEMORY[0x1EEE6DFA0](v26, v25, v24);
}

uint64_t MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:)(__n128 a1)
{
  v2 = *(v1 + 432);
  if (!v2)
  {
    *(v1 + 200) = 0u;
    *(v1 + 184) = 0u;
LABEL_10:
    v17 = *(v1 + 664);
    v18 = *(v1 + 632);
    v19 = *(v1 + 624);
    v20 = *(v1 + 416);
    outlined destroy of StocksKitCurrencyCache.Provider?(v1 + 184, &_sypSgMd, &_sypSgMR);
    (*(v18 + 16))(v17, v20, v19);
    v21 = 0;
    goto LABEL_24;
  }

  *(v1 + 384) = 0xD000000000000019;
  *(v1 + 392) = 0x80000001D4087620;
  v3 = [v2 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v138 = 0u;
    v139 = 0u;
  }

  *(v1 + 184) = v138;
  *(v1 + 200) = v139;
  if (!*(v1 + 208))
  {
    goto LABEL_10;
  }

  v4 = *(v1 + 736);
  v5 = *(v1 + 720);
  v6 = *(v1 + 608);
  v7 = *(v1 + 600);
  outlined destroy of StocksKitCurrencyCache.Provider?(v1 + 184, &_sypSgMd, &_sypSgMR);
  outlined init with copy of Date?(v4, v5, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  v8 = *(v6 + 48);
  if (v8(v5, 1, v7) == 1)
  {
    v9 = *(v1 + 696);
    v10 = *(v1 + 456);
    v11 = *(v1 + 464);
    outlined init with copy of Date?(*(v1 + 712), v9, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
    v12 = (*(v11 + 48))(v9, 1, v10);
    v13 = *(v1 + 728);
    v14 = *(v1 + 696);
    if (v12 == 1)
    {
      v15 = *(v1 + 608);
      v16 = *(v1 + 600);
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v1 + 696), &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
      (*(v15 + 56))(v13, 1, 1, v16);
    }

    else
    {
      v25 = *(v1 + 456);
      v26 = *(v1 + 464);
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v26 + 8))(v14, v25);
    }

    v27 = *(v1 + 720);
    if (v8(v27, 1, *(v1 + 600)) != 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
    }
  }

  else
  {
    v22 = *(v1 + 728);
    v23 = *(v1 + 608);
    v24 = *(v1 + 600);
    (*(v23 + 32))(v22, *(v1 + 720), v24);
    (*(v23 + 56))(v22, 0, 1, v24);
  }

  v28 = *(v1 + 728);
  v29 = *(v1 + 600);
  if (v8(v28, 1, v29) != 1)
  {
    v43 = *(v1 + 416);
    (*(*(v1 + 608) + 32))(*(v1 + 616), v28, v29);
    v44 = swift_task_alloc();
    *(v1 + 784) = v44;
    *(v44 + 16) = v43;
    v45 = swift_task_alloc();
    *(v1 + 792) = v45;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
    *v45 = v1;
    v45[1] = MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:);

    return MEMORY[0x1EEDF52A8](v1 + 141, 0, &async function pointer to partial apply for closure #1 in static MarkupContainerViewController.write(context:fileCoordinator:originalAsset:pdfDocument:imagePaper:to:imageType:embeddingSourceImageAndEditModel:encryptPrivateMetadata:options:), v44, v46);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  v30 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v31);
  v33 = v32;
  *(v1 + 408) = 0;
  v34 = [v30 URLForDirectory:99 inDomain:1 appropriateForURL:v32 create:1 error:v1 + 408];

  v35 = *(v1 + 408);
  v36 = *(v1 + 656);
  if (v34)
  {
    v37 = *(v1 + 648);
    v38 = *(v1 + 632);
    v39 = *(v1 + 624);
    v40 = *(v1 + 592);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v35;

    v42 = *(v38 + 32);
    v42(v40, v37, v39);
    (*(v38 + 56))(v40, 0, 1, v39);
    v42(v36, v40, v39);
  }

  else
  {
    v47 = *(v1 + 632);
    v48 = *(v1 + 624);
    v49 = *(v1 + 592);
    v50 = v35;
    v51 = _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v47 + 56))(v49, 1, 1, v48);
    URL.deletingLastPathComponent()();
    if ((*(v47 + 48))(v49, 1, v48) != 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v1 + 592), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  v52 = *(v1 + 656);
  v53 = *(v1 + 632);
  v54 = *(v1 + 624);
  v55 = *(v1 + 576);
  v56 = *(v1 + 568);
  v57 = *(v1 + 560);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v56 + 8))(v55, v57);
  URL.appendingPathComponent(_:)();

  (*(v53 + 8))(v52, v54);
  v21 = 1;
LABEL_24:
  *(v1 + 849) = v21;
  *(v1 + 808) = 0;
  v58 = *(v1 + 672);
  v59 = *(v1 + 528);
  v60 = *(v1 + 520);
  outlined init with copy of Date?(*(v1 + 680), v58, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  v61 = (*(v59 + 48))(v58, 1, v60);
  v62 = v61;
  if (v61 != 1)
  {
    v115 = v61;
    v127 = *(v1 + 848);
    v129 = *(v1 + 768);
    v130 = *(v1 + 776);
    v121 = *(v1 + 664);
    v135 = *(v1 + 648);
    v63 = *(v1 + 640);
    v64 = *(v1 + 624);
    v65 = *(v1 + 552);
    v66 = *(v1 + 544);
    v117 = v66;
    v67 = *(v1 + 528);
    v68 = *(v1 + 520);
    v70 = *(v1 + 504);
    v69 = *(v1 + 512);
    v122 = *(v1 + 536);
    v123 = *(v1 + 496);
    v131 = *(v1 + 488);
    v133 = *(v1 + 632);
    v71 = *(v1 + 480);
    v118 = v71;
    v119 = v70;
    v128 = *(v1 + 143);
    v120 = *(v1 + 424);
    v124 = *(v67 + 32);
    v125 = v69;
    v116 = v68;
    v124(v65, *(v1 + 672), v68);
    v126 = dispatch_semaphore_create(0);
    v137 = swift_allocObject();
    *(v137 + 16) = 0;
    static TaskPriority.userInitiated.getter();
    v72 = type metadata accessor for TaskPriority();
    (*(*(v72 - 8) + 56))(v69, 0, 1, v72);
    (*(v67 + 16))(v66, v65, v68);
    (*(v133 + 16))(v135, v121, v64);
    (*(v131 + 16))(v70, v120, v71);
    v73 = (*(v67 + 80) + 56) & ~*(v67 + 80);
    v74 = (v122 + *(v133 + 80) + v73) & ~*(v133 + 80);
    v75 = (v63 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
    v77 = (*(v131 + 80) + v76 + 8) & ~*(v131 + 80);
    v78 = (v77 + v123) & 0xFFFFFFFFFFFFFFF8;
    v79 = swift_allocObject();
    *(v79 + 16) = 0;
    *(v79 + 24) = 0;
    *(v79 + 32) = v127;
    *(v79 + 40) = 0;
    *(v79 + 48) = 0;
    v124(v79 + v73, v117, v116);
    (*(v133 + 32))(v79 + v74, v135, v64);
    *(v79 + v75) = v129;
    *(v79 + v76) = v130;
    (*(v131 + 32))(v79 + v77, v119, v118);
    *(v79 + v77 + v123) = v128;
    *(v79 + v78 + 8) = v137;
    *(v79 + ((v78 + 23) & 0xFFFFFFFFFFFFFFF8)) = v126;
    v80 = v129;
    v81 = v130;

    v82 = v126;
    outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(0, 0);
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v125, &closure #1 in ImageFileSync.write(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)partial apply, v79);

    outlined destroy of StocksKitCurrencyCache.Provider?(v125, &_sScPSgMd, &_sScPSgMR);
    OS_dispatch_semaphore.wait()();
    swift_beginAccess();
    v83 = *(v137 + 16);
    if (v83)
    {
      v136 = *(v1 + 736);
      v132 = *(v1 + 680);
      v134 = *(v1 + 712);
      v84 = *(v1 + 664);
      v85 = *(v1 + 632);
      v86 = *(v1 + 624);
      v87 = *(v1 + 552);
      v88 = *(v1 + 528);
      v89 = *(v1 + 520);
      swift_willThrow();
      v90 = v83;

      outlined consume of (@escaping @callee_guaranteed () -> ())?(0, 0);
      (*(v88 + 8))(v87, v89);
      (*(v85 + 8))(v84, v86);
      outlined destroy of StocksKitCurrencyCache.Provider?(v132, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v134, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v136, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);

LABEL_27:
      *(v1 + 816) = v83;
      v91 = *(v1 + 760);
      v92 = *(v1 + 752);
      v93 = MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:);
LABEL_38:

      return MEMORY[0x1EEE6DFA0](v93, v92, v91);
    }

    (*(*(v1 + 528) + 8))(*(v1 + 552), *(v1 + 520));

    outlined consume of (@escaping @callee_guaranteed () -> ())?(0, 0);
    v62 = v115;
    if (*(v1 + 849))
    {
      v101 = *(v1 + 808);
      v102 = *(v1 + 632);
      v103 = [objc_opt_self() defaultManager];
      NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
      v104 = (v102 + 8);
      if (v101)
      {
        v83 = v101;
        v105 = *(v1 + 736);
        v106 = *(v1 + 712);
        v107 = *(v1 + 680);
        v108 = *(v1 + 664);
        v109 = *(v1 + 624);

        (*v104)(v108, v109);
        outlined destroy of StocksKitCurrencyCache.Provider?(v107, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
        outlined destroy of StocksKitCurrencyCache.Provider?(v106, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
        outlined destroy of StocksKitCurrencyCache.Provider?(v105, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
        goto LABEL_27;
      }

      v113 = *(v1 + 584);

      outlined destroy of StocksKitCurrencyCache.Provider?(v113, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_37:
      *(v1 + 850) = v62 != 1;
      v110 = *(v1 + 736);
      v111 = *(v1 + 712);
      v112 = *(v1 + 680);
      (*v104)(*(v1 + 664), *(v1 + 624));
      outlined destroy of StocksKitCurrencyCache.Provider?(v112, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v111, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v110, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
      v91 = *(v1 + 760);
      v92 = *(v1 + 752);
      v93 = MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:);
      goto LABEL_38;
    }

LABEL_36:
    v104 = (*(v1 + 632) + 8);
    goto LABEL_37;
  }

  v94 = *(v1 + 712);
  v95 = *(v1 + 688);
  v96 = *(v1 + 456);
  v97 = *(v1 + 464);
  outlined destroy of StocksKitCurrencyCache.Provider?(*(v1 + 672), &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  outlined init with copy of Date?(v94, v95, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
  if ((*(v97 + 48))(v95, 1, v96) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(*(v1 + 688), &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR);
    goto LABEL_36;
  }

  (*(*(v1 + 464) + 32))(*(v1 + 472), *(v1 + 688), *(v1 + 456));
  Capsule.root.getter();
  type metadata accessor for CRContext();
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0;
  *(v1 + 144) = 0u;
  v98 = MEMORY[0x1DA6CC630](0, v1 + 144);
  *(v1 + 824) = v98;
  outlined destroy of StocksKitCurrencyCache.Provider?(v1 + 144, &_s9Coherence18EncryptionDelegate_pSgMd, &_s9Coherence18EncryptionDelegate_pSgMR);
  *(v1 + 16) = xmmword_1D405D330;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 125) = 0u;
  v99 = swift_task_alloc();
  *(v1 + 832) = v99;
  *v99 = v1;
  v99[1] = MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:);
  v100 = *(v1 + 472);

  return specialized PaperDocument.newPDFDocument<A>(use:in:options:)(v98 | 0x4000000000000000, v100, v1 + 16);
}

void MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:)()
{
  *(*v1 + 800) = v0;

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:), 0, 0);
  }
}

uint64_t MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 824);
  v4 = *(*v1 + 448);
  *(v2 + 840) = a1;

  outlined destroy of StocksKitCurrencyCache.Provider?(v2 + 16, &_s8PaperKit0A17RenderableOptionsVSgMd, &_s8PaperKit0A17RenderableOptionsVSgMR);
  _s8PaperKit9DataOrURLOWOhTm_0(v4, type metadata accessor for PaperDocument);

  return MEMORY[0x1EEE6DFA0](MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:), 0, 0);
}

uint64_t @objc closure #1 in MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 128) = a3;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for UTType();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  v8 = type metadata accessor for URL();
  *(v6 + 80) = v8;
  *(v6 + 88) = *(v8 - 8);
  *(v6 + 96) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 104) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](@objc closure #1 in MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:), v10, v9);
}

uint64_t @objc closure #1 in MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);

  *(v0 + 112) = _Block_copy(v1);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v6 = v2;
  v7 = v3;
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = @objc closure #1 in MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:);
  v9 = *(v0 + 96);
  v10 = *(v0 + 72);
  v11 = *(v0 + 32);
  v12 = *(v0 + 128);

  return MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:)(v9, v10, v12, v11);
}

uint64_t @objc closure #1 in MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:)(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 32);
  v9 = *v2;

  v10 = v5[14];
  v11 = v5[12];
  v12 = v5[11];
  v13 = v5[10];
  (*(v5[8] + 8))(v5[9], v5[7]);
  (*(v12 + 8))(v11, v13);
  if (v3)
  {
    v14 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, 0, v14);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(v6[14]);

  v15 = *(v9 + 8);

  return v15();
}

uint64_t MarkupContainerViewController.dataRepresentation(withError:)(void *a1)
{
  v3 = type metadata accessor for CRCodingError();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v81 = &v66 - v8;
  v9 = type metadata accessor for Image(0);
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v83 = *(v11 - 8);
  v12 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v66 - v19;
  v21 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
  if (v21)
  {
    v77 = v18;
    v66 = v6;
    v67 = v4;
    v68 = v3;
    v69 = a1;
    v82 = v17;
    MEMORY[0x1EEE9AC00](v17);
    *(&v66 - 4) = v9;
    v78 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    *(&v66 - 3) = v78;
    *(&v66 - 2) = &protocol witness table for Image;
    swift_getKeyPath();
    v84 = v21;
    v22 = v9;
    v23 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    v24 = v21;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v25 = *&v24[direct field offset for CanvasElementViewController._canvasView];
    if (v25)
    {
      v26 = *(v25 + direct field offset for Canvas.paperView);
      v27 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x3F0);
      swift_beginAccess();
      v79 = v24;
      v28 = v20;
      v29 = v83;
      v30 = *(v83 + 16);
      v31 = v26 + v27;
      v32 = v82;
      v74 = v83 + 16;
      v73 = v30;
      v30(v15, v31, v82);
      v33 = v29;
      v34 = v28;
      v35 = v79;
      v75 = *(v33 + 32);
      v76 = v33 + 32;
      v36 = v75(v34, v15, v32);
      MEMORY[0x1EEE9AC00](v36);
      v70 = v22;
      *(&v66 - 4) = v22;
      v37 = v78;
      *(&v66 - 3) = v78;
      *(&v66 - 2) = &protocol witness table for Image;
      swift_getKeyPath();
      v84 = v35;
      v71 = v23;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v38 = *&v35[direct field offset for CanvasElementViewController.__imageSize];
      v39 = *&v35[direct field offset for CanvasElementViewController.__imageSize + 8];
      if (v38 == 0.0 && v39 == 0.0)
      {
        swift_getKeyPath();
        Capsule.subscript.getter();

        v38 = v85;
        v39 = v86;
      }

      type metadata accessor for ImageWrapper #1 in MarkupContainerViewController.dataRepresentation(withError:)();
      v40 = swift_allocObject();
      v72 = v40;
      *(v40 + 16) = 0;
      MEMORY[0x1EEE9AC00](v40);
      *(&v66 - 4) = v70;
      *(&v66 - 3) = v37;
      *(&v66 - 2) = &protocol witness table for Image;
      swift_getKeyPath();
      v84 = v35;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v41 = *&v35[direct field offset for CanvasElementViewController.__imageHeadroom];

      v42 = v80;
      v43 = v82;
      v78 = v34;
      Capsule.root.getter();
      _s8PaperKit9DataOrURLOWOhTm_0(v42, type metadata accessor for Image);
      v44 = 0;
      if (v41 <= 1.0)
      {
        v41 = 1.0;
      }

      if (v41 > 1.0)
      {
        v44 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0D8]);
      }

      v45 = dispatch_semaphore_create(0);
      v46 = v81;
      static TaskPriority.userInitiated.getter();
      v47 = type metadata accessor for TaskPriority();
      (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
      v48 = v77;
      v73(v77, v78, v43);
      v49 = (*(v83 + 80) + 72) & ~*(v83 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = 0;
      *(v50 + 24) = 0;
      *(v50 + 32) = v38;
      *(v50 + 40) = v39;
      *(v50 + 48) = v44;
      *(v50 + 56) = v41;
      v51 = v72;
      *(v50 + 64) = v72;
      v75(v50 + v49, v48, v43);
      *(v50 + ((v12 + v49 + 7) & 0xFFFFFFFFFFFFFFF8)) = v45;
      v52 = v44;

      v53 = v45;
      _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v46, &async function pointer to partial apply for closure #1 in MarkupContainerViewController.dataRepresentation(withError:), v50);

      outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_sScPSgMd, &_sScPSgMR);
      OS_dispatch_semaphore.wait()();
      v54 = *(v51 + 16);
      if (v54)
      {
        v55 = v54;
        v56 = UIImageJPEGRepresentation(v55, 0.9);
        if (v56)
        {
          v57 = v56;
          v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v83 + 8))(v78, v43);
          return v58;
        }

        (*(v83 + 8))(v78, v43);
      }

      else
      {
        v60 = v69;
        if (v69)
        {
          v61 = v66;
          *v66 = 0xD000000000000014;
          v61[1] = 0x80000001D4087670;
          v62 = v67;
          v63 = v68;
          (*(v67 + 104))(v61, *MEMORY[0x1E6995188], v68);
          _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
          v64 = swift_allocError();
          (*(v62 + 32))(v65, v61, v63);
          *v60 = _convertErrorToNSError(_:)();

          (*(v83 + 8))(v78, v43);
        }

        else
        {
          (*(v83 + 8))(v78, v43);
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t closure #1 in MarkupContainerViewController.dataRepresentation(withError:)(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 192) = a9;
  *(v10 + 200) = a10;
  *(v10 + 184) = a8;
  *(v10 + 176) = a3;
  *(v10 + 168) = a7;
  *(v10 + 152) = a1;
  *(v10 + 160) = a2;
  type metadata accessor for Image(0);
  *(v10 + 208) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in MarkupContainerViewController.dataRepresentation(withError:), 0, 0);
}

uint64_t closure #1 in MarkupContainerViewController.dataRepresentation(withError:)()
{
  v1 = *(v0 + 21);
  if (v1)
  {
    DeviceRGB = *(v0 + 21);
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v1 = 0;
  }

  v3 = v1;
  v4 = DeviceRGB;
  v5 = 1;
  if (!CGColorSpaceUsesExtendedRange(v4))
  {
    v5 = MEMORY[0x1DA6CEC30](v4);
  }

  v6 = *(v0 + 22);
  v8 = *(v0 + 19);
  v7 = *(v0 + 20);
  type metadata accessor for ImageRenderer();
  v9 = swift_allocObject();
  *(v9 + 16) = 1;
  *(v9 + 24) = v8;
  *(v9 + 32) = v7;
  *(v9 + 40) = 0x3FF0000000000000;
  *(v9 + 48) = 0;
  *(v9 + 49) = v5;
  *(v9 + 56) = v6;
  *(v9 + 64) = 0;
  *(v9 + 72) = v4;
  *(v9 + 80) = 1;
  type metadata accessor for CanvasElementImageRenderer();
  inited = swift_initStackObject();
  *(v0 + 27) = inited;
  v12 = specialized CanvasElementImageRenderer.init(renderer:)(v9, inited, v11);
  *(v0 + 28) = v12;

  *(v12 + 74) = 0;
  swift_beginAccess();
  *(v12 + 72) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  Capsule.root.getter();
  swift_getKeyPath();
  Capsule.subscript.getter();

  v13 = v0[12];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[15];
  v17 = swift_task_alloc();
  *(v0 + 29) = v17;
  *v17 = v0;
  v17[1] = closure #1 in MarkupContainerViewController.dataRepresentation(withError:);
  v18 = *(v0 + 26);
  v19 = *(v0 + 24);

  return specialized CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:)(v18, v19, 0, 0, 0, v13, v14, v15, v16);
}

{
  v1 = v0[30];
  if (v1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[23];
  _s8PaperKit9DataOrURLOWOhTm_0(v0[26], type metadata accessor for Image);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  OS_dispatch_semaphore.signal()();

  v5 = v0[1];

  return v5();
}

uint64_t closure #1 in MarkupContainerViewController.dataRepresentation(withError:)(uint64_t a1)
{
  *(*v1 + 240) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in MarkupContainerViewController.dataRepresentation(withError:), 0, 0);
}

uint64_t MarkupContainerViewController.archivedModelData()()
{
  v1 = type metadata accessor for CRCodableVersion();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  v15 = *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
  if (!v15)
  {
    return 0;
  }

  v26 = v0;
  v27 = v7;
  v28 = v2;
  MEMORY[0x1EEE9AC00](v12);
  *(&v26 - 4) = type metadata accessor for Image(0);
  *(&v26 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  *(&v26 - 2) = &protocol witness table for Image;
  swift_getKeyPath();
  v30 = v15;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  v16 = v15;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *&v16[direct field offset for CanvasElementViewController._canvasView];
  if (!v17)
  {

    return 0;
  }

  v18 = *(v17 + direct field offset for Canvas.paperView);
  v19 = *((*MEMORY[0x1E69E7D40] & *v18) + 0x3F0);
  swift_beginAccess();
  v20 = v29;
  (*(v29 + 16))(v10, &v18[v19], v8);

  (*(v20 + 32))(v14, v10, v8);
  Capsule.mutate<A>(_:)();
  v21 = v28;
  v22 = *(v28 + 104);
  v22(v4, *MEMORY[0x1E6995288], v1);
  if (Capsule.minAppFormatVersion.getter() >= 7)
  {
    (*(v21 + 8))(v4, v1);
    v22(v4, *MEMORY[0x1E6995290], v1);
  }

  v23 = v27;
  (*(v21 + 32))(v27, v4, v1);
  v24 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
  (*(v21 + 8))(v23, v1);
  (*(v29 + 8))(v14, v8);
  return v24;
}

uint64_t closure #1 in MarkupContainerViewController.archivedModelData()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  swift_getKeyPath();
  v3 = type metadata accessor for CRAssetOrData(0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return Capsule.Ref.subscript.setter();
}

id MarkupContainerViewController.contentViewScrollView.getter()
{
  if (*(v0 + OBJC_IVAR___PPKMarkupContainerViewController_placeholderImageScrollView))
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
  if (!v2)
  {
    v9 = *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
    if (!v9)
    {
      return 0;
    }

    v10 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v11 = *(v9 + v10);
    if (!v11)
    {
      return 0;
    }

    v12 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
    swift_beginAccess();
    result = *(v11 + v12);
    if (result)
    {
      return [result documentScrollView];
    }

LABEL_22:
    __break(1u);
    return result;
  }

  v3 = v2;
  result = [v3 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = result;
  v5 = [result subviews];

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_18:

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v6 & 0xC000000000000001) == 0)
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v6 + 32);
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_21;
  }

  v7 = MEMORY[0x1DA6CE0C0](0, v6);
LABEL_11:
  v8 = v7;

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

uint64_t MarkupContainerViewController.annotationEditingEnabled.getter()
{
  v1 = OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void MarkupContainerViewController.annotationEditingEnabled.didset()
{
  v1 = v0;
  MarkupContainerViewController.updateEditingMode()();
  MarkupContainerViewController.updateGestures()();
  v2 = OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled;
  v3 = swift_beginAccess();
  if (v0[v2] == 1)
  {
    v4 = MarkupContainerViewController.toolPicker.getter();
    if (!v4)
    {
      return;
    }

    v5 = v4;
    if (*(v1 + v2) == 1 && ([v4 isVisible] & 1) == 0)
    {
      [v1 becomeFirstResponder];
    }

    goto LABEL_22;
  }

  if (one-time initialization token for isLowJetsamLimitEnvironment != -1)
  {
    v3 = swift_once();
  }

  if (static NSBundle.isLowJetsamLimitEnvironment == 1)
  {
    v6 = *&v0[OBJC_IVAR___PPKMarkupContainerViewController_imageViewController];
    if (v6)
    {
      MEMORY[0x1EEE9AC00](v3);
      type metadata accessor for Image(0);
      _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
      swift_getKeyPath();
      v18 = v6;
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
      v7 = v6;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v8 = *&v7[direct field offset for CanvasElementViewController._canvasView];
      v9 = v8;

      if (v8)
      {
        v10 = *&v9[direct field offset for CanvasView.canvasTiledView];

        [v10 _cancelCurrentStrokeAndReduceMemoryFootprint];
      }
    }
  }

  if (one-time initialization token for imageCache != -1)
  {
    swift_once();
  }

  [*(static CRAsset.imageCache + 16) removeAllObjects];
  v11 = [v1 viewIfLoaded];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 window];

    if (v13)
    {
      v5 = [v13 windowScene];

      if (v5)
      {
        v14 = [objc_opt_self() _existingInteractionForWindowScene_];
        if (v14)
        {
          v15 = v14;
          if ([v14 _paletteViewVisible])
          {
            v16 = [v1 view];
            if (!v16)
            {
              __break(1u);
              return;
            }

            v17 = v16;
            [v15 _setMiniPaletteVisible_hoverLocation_inView_];
          }
        }

LABEL_22:
      }
    }
  }
}

void (*MarkupContainerViewController.annotationEditingEnabled.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MarkupContainerViewController.annotationEditingEnabled.modify;
}

uint64_t MarkupContainerViewController.allEditingDisabled.getter()
{
  v1 = OBJC_IVAR___PPKMarkupContainerViewController_allEditingDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void @objc MarkupContainerViewController.formFillingEnabled.setter(_BYTE *a1, uint64_t a2, char a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  a1[v6] = a3;
  v7 = a1;
  MarkupContainerViewController.delegate.didset();
}

void (*MarkupContainerViewController.allEditingDisabled.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MarkupContainerViewController.allEditingDisabled.modify;
}

void MarkupContainerViewController.formFillingEnabled.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    MarkupContainerViewController.delegate.didset();
  }
}

uint64_t MarkupContainerViewController.pencilAlwaysDraws.getter()
{
  v1 = OBJC_IVAR___PPKMarkupContainerViewController_pencilAlwaysDraws;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*MarkupContainerViewController.pencilAlwaysDraws.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MarkupContainerViewController.pencilAlwaysDraws.modify;
}

uint64_t MarkupContainerViewController.formFillingEnabled.getter()
{
  v1 = OBJC_IVAR___PPKMarkupContainerViewController_formFillingEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

double MarkupContainerViewController.delegate.didset()
{
  v1 = OBJC_IVAR___PPKMarkupContainerViewController_allEditingDisabled;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v3 = OBJC_IVAR___PPKMarkupContainerViewController_formFillingEnabled;
    swift_beginAccess();
    v2 = *(v0 + v3);
    if (v2 != 1)
    {
      v4 = OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled;
      swift_beginAccess();
      if (*(v0 + v4))
      {
        LOBYTE(v2) = 3;
      }

      else
      {
        v5 = OBJC_IVAR___PPKMarkupContainerViewController_pencilAlwaysDraws;
        swift_beginAccess();
        if (*(v0 + v5))
        {
          LOBYTE(v2) = 2;
        }

        else
        {
          LOBYTE(v2) = 0;
        }
      }
    }
  }

  *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_editingMode) = v2;
  return MarkupContainerViewController.editingMode.didset();
}

void (*MarkupContainerViewController.formFillingEnabled.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MarkupContainerViewController.allEditingDisabled.modify;
}

Swift::Void __swiftcall MarkupContainerViewController.setFormFillingEnabled(_:didUseBanner:)(Swift::Bool _, Swift::Bool didUseBanner)
{
  v5 = OBJC_IVAR___PPKMarkupContainerViewController_formFillingEnabled;
  swift_beginAccess();
  *(v2 + v5) = _;
  MarkupContainerViewController.delegate.didset();
  if (_)
  {
    if (didUseBanner)
    {
      v7 = 48;
    }

    else
    {
      v7 = 51;
    }

    v8 = *(v2 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
    if (v8)
    {
      v9 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
      swift_beginAccess();
      v10 = *(v8 + v9);
      if (v10)
      {
        *(*(v10 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_formAnalytics) + 19) = v7;
      }
    }

    else
    {
      v11 = *(v2 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
      if (v11)
      {
        MEMORY[0x1EEE9AC00](v6);
        type metadata accessor for Image(0);
        _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
        swift_getKeyPath();
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
        v12 = v11;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v13 = *&v12[direct field offset for CanvasElementViewController._canvasView];
        v14 = v13;

        if (v13)
        {
          v15 = *&v14[direct field offset for CanvasView.formAnalytics];

          *(v15 + 19) = v7;
        }
      }
    }
  }
}

uint64_t MarkupContainerViewController.toolbarHidden.getter()
{
  v1 = OBJC_IVAR___PPKMarkupContainerViewController_toolbarHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MarkupContainerViewController.toolbarHidden.setter(char a1)
{
  v3 = OBJC_IVAR___PPKMarkupContainerViewController_toolbarHidden;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void MarkupContainerViewController.currentPDFPageIndex.getter()
{
  v1 = v0 + OBJC_IVAR___PPKMarkupContainerViewController__currentPDFPageIndex;
  if (*(v0 + OBJC_IVAR___PPKMarkupContainerViewController__currentPDFPageIndex + 8) == 1)
  {
    v2 = *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
    if (v2)
    {
      v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
      swift_beginAccess();
      v4 = *(v2 + v3);
      if (v4)
      {
        v5 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
        swift_beginAccess();
        v6 = *(v4 + v5);
        if (v6)
        {
          v7 = v6;
          v8 = [v7 currentPage];
          if (v8)
          {
            v9 = v8;
            v10 = [v7 document];
            if (v10)
            {
              v11 = v10;
              v12 = [v10 indexForPage_];

              if ((v12 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else
              {
                *v1 = v12;
                *(v1 + 8) = 0;
              }
            }

            else
            {
            }
          }

          else
          {
          }
        }
      }
    }
  }
}

double MarkupContainerViewController.currentPDFPageIndex.setter(unint64_t a1)
{
  if ((*(v1 + OBJC_IVAR___PPKMarkupContainerViewController__currentPDFPageIndex + 8) & 1) != 0 || *(v1 + OBJC_IVAR___PPKMarkupContainerViewController__currentPDFPageIndex) != a1)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = a1;
    if (*(v1 + OBJC_IVAR___PPKMarkupContainerViewController_isContentLoaded) == 1)
    {

      closure #1 in MarkupContainerViewController.currentPDFPageIndex.setter(v5, a1);
    }

    else
    {
      v6 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_loadContentOperationQueue);
      if (v6)
      {
        v7 = swift_allocObject();
        *(v7 + 16) = partial apply for closure #1 in MarkupContainerViewController.currentPDFPageIndex.setter;
        *(v7 + 24) = v4;
        v11[4] = closure #1 in MarkupContainerViewController.performBlockWhenContentIsLoaded(_:)partial apply;
        v11[5] = v7;
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 1107296256;
        v11[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v11[3] = &block_descriptor_92_0;
        v8 = _Block_copy(v11);

        v9 = v6;

        [v9 addOperationWithBlock_];

        _Block_release(v8);

        return result;
      }
    }
  }

  return result;
}

id key path getter for MarkupContainerViewController.currentPDFPageIndex : MarkupContainerViewController@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentPDFPageIndex];
  *a2 = result;
  return result;
}

void closure #1 in MarkupContainerViewController.currentPDFPageIndex.setter(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
    if (v5)
    {
      v6 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
      swift_beginAccess();
      v7 = *(v5 + v6);
      if (v7)
      {
        v8 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
        swift_beginAccess();
        v9 = *(v7 + v8);
        if (v9)
        {
          v10 = v9;
          v11 = [v10 document];
          if (v11)
          {
            v12 = v11;
            v13 = [v11 pageCount];
            if (v13 >= 1 && v13 > a2)
            {
              v16 = [v12 pageAtIndex_];
              if (v16)
              {
                v17 = v16;
                [v10 goToPage_];
              }

              else
              {
                if (one-time initialization token for logger != -1)
                {
                  swift_once();
                }

                v18 = type metadata accessor for Logger();
                __swift_project_value_buffer(v18, logger);
                v19 = Logger.logObject.getter();
                v20 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v19, v20))
                {
                  v21 = swift_slowAlloc();
                  *v21 = 134217984;
                  *(v21 + 4) = a2;
                  _os_log_impl(&dword_1D38C4000, v19, v20, "Unable to change PDF page index to: %lu", v21, 0xCu);
                  MEMORY[0x1DA6D0660](v21, -1, -1);
                }

                v17 = v4;
                v4 = v19;
              }

              v15 = v4;
            }

            else
            {
              v15 = v12;
              v12 = v10;
              v10 = v4;
            }

            v4 = v12;
          }

          v4 = v10;
        }
      }
    }
  }
}

id MarkupContainerViewController.validateUndo(_:)(uint64_t a1, SEL *a2)
{
  result = *(v2 + OBJC_IVAR___PPKMarkupContainerViewController_contentUndoManager);
  if (result)
  {
    return [result *a2];
  }

  return result;
}

id @objc MarkupContainerViewController.validateUndo(_:)(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  result = *(a1 + OBJC_IVAR___PPKMarkupContainerViewController_contentUndoManager);
  if (result)
  {
    return [result *a4];
  }

  return result;
}

void MarkupContainerViewController.revert(_:)()
{
  v1 = *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_contentUndoManager);
  if (v1)
  {
    v2 = v1;
    if ([v2 canUndo])
    {
      do
      {
        [v2 undo];
      }

      while (([v2 canUndo] & 1) != 0);
    }

    [v2 removeAllActions];
  }
}

id MarkupContainerViewController.backgroundColor.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
  if (!v3 || (MEMORY[0x1EEE9AC00](a1), type metadata accessor for Image(0), _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image), swift_getKeyPath(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>), v4 = v3, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v5 = *&v4[direct field offset for CanvasElementViewController._canvasView], v6 = v5, v4, !v5))
  {
    v7 = *(v2 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
    if (v7)
    {
      v6 = [v7 view];
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = [v6 backgroundColor];

  return v8;
}

void MarkupContainerViewController.backgroundColor.setter(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
  if (!v4 || (MEMORY[0x1EEE9AC00](a1), type metadata accessor for Image(0), _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image), swift_getKeyPath(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>), v5 = v4, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v6 = *&v5[direct field offset for CanvasElementViewController._canvasView], v7 = v6, v5, !v6))
  {
    v8 = *(v2 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
    if (v8)
    {
      v7 = [v8 view];
    }

    else
    {
      v7 = 0;
    }
  }

  [v7 setBackgroundColor_];
}

void (*MarkupContainerViewController.backgroundColor.modify(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = MarkupContainerViewController.backgroundColor.getter(a1);
  return MarkupContainerViewController.backgroundColor.modify;
}

void MarkupContainerViewController.backgroundColor.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    MarkupContainerViewController.backgroundColor.setter(v2);
  }

  else
  {
    MarkupContainerViewController.backgroundColor.setter(*a1);
  }
}

Swift::Bool __swiftcall MarkupContainerViewController.isTouchInThumbnailView(_:)(UITouch a1)
{
  v2 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  if (!v2)
  {
    return 0;
  }

  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentThumbnailView;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (!v5)
  {
    return 0;
  }

  v6 = v2;
  v7 = v5;
  [(objc_class *)a1.super.isa locationInView:v7];
  v8 = [v7 pointInside:0 withEvent:?];

  return v8;
}

Swift::Bool __swiftcall MarkupContainerViewController.isTouchInPageLabelView(_:)(UITouch a1)
{
  v2 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  if (!v2)
  {
    return 0;
  }

  v4 = v2;
  v5 = PaperDocumentViewController.pageLabelView.getter();
  [(objc_class *)a1.super.isa locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = *&v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController____lazy_storage___pageLabelView];
  v11 = [v10 pointInside:0 withEvent:{v7, v9}];

  return v11;
}

Swift::Bool __swiftcall MarkupContainerViewController.isTouchInBannerView(_:)(UITouch a1)
{
  v3 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView];
    if (v4)
    {
      v5 = v3;
      v6 = v4;
      [(objc_class *)a1.super.isa locationInView:v6];
      v7 = [v6 pointInside:0 withEvent:?];

      return v7;
    }
  }

  else
  {
    v9 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
    if (v9)
    {
      MEMORY[0x1EEE9AC00](a1.super.isa);
      type metadata accessor for Image(0);
      _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
      swift_getKeyPath();
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
      v10 = v9;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v11 = *&v10[direct field offset for CanvasElementViewController._bannerView];
      if (v11)
      {
        v12 = v11;
        [(objc_class *)a1.super.isa locationInView:v12];
        v13 = [v12 pointInside:0 withEvent:?];

        return v13;
      }
    }
  }

  return 0;
}

Swift::Bool __swiftcall MarkupContainerViewController.acceptSingleTouch(_:)(UITouch a1)
{
  v3 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  if (v3)
  {
    v4 = v3;
    v5 = PaperDocumentViewController.acceptSingleTouch(_:)(a1);
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
    if (!v6)
    {
      return 0;
    }

    v4 = v6;
    v5 = specialized CanvasElementViewController.acceptSingleTouch(_:)(a1.super.isa);
  }

  v7 = v5;

  return v7;
}

void *MarkupContainerViewController.bannerView.getter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView);
    if (v3)
    {
      v4 = v3;
    }
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
    if (v5)
    {
      MEMORY[0x1EEE9AC00](a1);
      type metadata accessor for Image(0);
      _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
      swift_getKeyPath();
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
      v6 = v5;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v3 = *&v6[direct field offset for CanvasElementViewController._bannerView];
      v7 = v3;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void MarkupContainerViewController.showBannerView(with:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  if (v3)
  {
    v4 = v3;
    BannerViewConfiguration.init(from:)(a1, &v27);
    v23 = v29;
    v5 = v30;
    v6 = &v4[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerViewConfiguration];
    swift_beginAccess();
    v7 = *v6;
    v8 = *(v6 + 1);
    v9 = *(v6 + 2);
    v10 = *(v6 + 3);
    v11 = *(v6 + 4);
    v12 = *(v6 + 5);
    v13 = *(v6 + 6);
    v14 = v28;
    *v6 = v27;
    *(v6 + 1) = v14;
    *(v6 + 2) = v23;
    *(v6 + 6) = v5;
    outlined consume of BannerViewConfiguration?(v7, v8, v9, v10, v11, v12, v13);
    PaperDocumentViewController.bannerViewConfiguration.didset();
  }

  else
  {
    v15 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
    if (v15)
    {
      v16 = a1;
      v17 = v15;
      BannerViewConfiguration.init(from:)(v16, v24);
      v18 = *(&v25 + 1);
      v19 = v26;
      v22 = *&v24[0];
      v27 = v24[0];
      v28 = v24[1];
      v29 = v25;
      v30 = v26;
      MEMORY[0x1EEE9AC00](v20);
      type metadata accessor for Image(0);
      _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

uint64_t MarkupContainerViewController.showBannerView.getter()
{
  v1 = OBJC_IVAR___PPKMarkupContainerViewController_showBannerView;
  swift_beginAccess();
  return *(v0 + v1);
}

void MarkupContainerViewController.showBannerView.didset(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView);
    if (v3)
    {

      [v3 removeFromSuperview];
    }
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
    if (v4)
    {
      MEMORY[0x1EEE9AC00](a1);
      type metadata accessor for Image(0);
      _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
      swift_getKeyPath();
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
      v5 = v4;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v6 = *&v5[direct field offset for CanvasElementViewController._bannerView];
      v7 = v6;

      if (v6)
      {
        [v7 removeFromSuperview];
      }
    }
  }
}

void (*MarkupContainerViewController.showBannerView.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MarkupContainerViewController.showBannerView.modify;
}

void MarkupContainerViewController.pdfFrame.getter()
{
  v1 = *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v3 = *(v1 + v2);
    if (v3)
    {
      v4 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
      swift_beginAccess();
      v5 = *(v3 + v4);
      if (v5)
      {
        v6 = [v5 documentView];
        if (v6)
        {
          v7 = v6;
          [v6 frame];
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id MarkupContainerViewController.findInteraction.getter(SEL *a1)
{
  v2 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  if (!v2)
  {
    return 0;
  }

  v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!v5)
  {
    return 0;
  }

  v6 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  result = *(v5 + v6);
  if (result)
  {
    return [result *a1];
  }

  __break(1u);
  return result;
}

void *MarkupContainerViewController.pdfBackgroundColor.getter()
{
  v1 = OBJC_IVAR___PPKMarkupContainerViewController_pdfBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MarkupContainerViewController.pdfBackgroundColor.setter(void *a1)
{
  v3 = OBJC_IVAR___PPKMarkupContainerViewController_pdfBackgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  MarkupContainerViewController.updateBackgroundColor()();
}

void key path setter for MarkupContainerViewController.pdfBackgroundColor : MarkupContainerViewController(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PPKMarkupContainerViewController_pdfBackgroundColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  MarkupContainerViewController.updateBackgroundColor()();
}

void (*MarkupContainerViewController.pdfBackgroundColor.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MarkupContainerViewController.pdfBackgroundColor.modify;
}

id MarkupContainerViewController.canBecomeFirstResponder.getter(SEL *a1)
{
  v3 = *&v1[OBJC_IVAR___PPKMarkupContainerViewController_imageViewController];
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR___PPKMarkupContainerViewController_imageViewController];
  }

  else
  {
    v5 = *&v1[OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController];
    if (!v5)
    {
      v9.receiver = v1;
      v9.super_class = type metadata accessor for MarkupContainerViewController(0);
      return objc_msgSendSuper2(&v9, *a1);
    }

    v4 = v5;
    v3 = 0;
  }

  v6 = v3;
  v7 = [v4 *a1];

  return v7;
}

void *MarkupContainerViewController.toolPicker.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  if (!v2 || (v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView, swift_beginAccess(), (v4 = *(v2 + v3)) == 0) || (swift_getKeyPath(), _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView), v5 = v4, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v6 = *&v5[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__toolPicker], v7 = v6, v5, !v6))
  {
    v8 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
    if (v8)
    {
      v6 = *(v8 + OBJC_IVAR____TtC8PaperKit30AnyCanvasElementViewController_toolPicker);
      v9 = v6;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

Swift::Void __swiftcall MarkupContainerViewController.updateBackgroundColor()()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = &selRef_systemBackgroundColor;
    if (v1[OBJC_IVAR___PPKMarkupContainerViewController_editingMode] != 3 && *&v1[OBJC_IVAR___PPKMarkupContainerViewController_imageViewController])
    {
      v4 = &selRef_clearColor;
    }

    v5 = [objc_opt_self() *v4];
    [v3 setBackgroundColor_];

    v6 = OBJC_IVAR___PPKMarkupContainerViewController_pdfBackgroundColor;
    swift_beginAccess();
    v7 = *&v1[v6];
    if (v7)
    {
      v8 = OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController;
      v9 = *&v1[OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController];
      if (v9)
      {
        v10 = *&v9[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_backgroundColor];
        *&v9[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_backgroundColor] = v7;
        v11 = v7;
        v12 = v9;

        PaperDocumentViewController.updateBackgroundColor()();
        v13 = *&v1[v8];
        if (v13)
        {
          v14 = *&v13[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_backgroundColor];
          v15 = *&v13[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewBackgroundColor];
          *&v13[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_thumbnailViewBackgroundColor] = v14;
          v7 = v14;
          v16 = v13;

          PaperDocumentViewController.updateBackgroundColor()();
        }
      }

      else
      {
        v17 = v7;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall MarkupContainerViewController.configureLookAndStyle()()
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController];
  if (v3)
  {
    v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    v0 = swift_beginAccess();
    v5 = *(v3 + v4);
    if (v5)
    {
      v6 = *&v5[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView];
      if (!v6)
      {
        __break(1u);
        goto LABEL_28;
      }

      v7 = v5;
      v0 = [v6 canvasView];
      if (v0)
      {
        v8 = v0;
        v9 = v0;
LABEL_9:
        v12 = objc_opt_self();
        v13 = v8;
        v14 = [v12 clearColor];
        [v13 setBackgroundColor_];

        goto LABEL_11;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v10 = *&v2[OBJC_IVAR___PPKMarkupContainerViewController_imageViewController];
  if (v10)
  {
    MEMORY[0x1EEE9AC00](v0);
    type metadata accessor for Image(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    swift_getKeyPath();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    v11 = v10;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *&v11[direct field offset for CanvasElementViewController._canvasView];
    v8 = v9;

    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v9 = 0;
LABEL_11:
  MarkupContainerViewController.updateBackgroundColor()();
  v16 = OBJC_IVAR___PPKMarkupContainerViewController_imageViewController;
  v17 = *&v2[OBJC_IVAR___PPKMarkupContainerViewController_imageViewController];
  if (!v17)
  {
    goto LABEL_18;
  }

  MEMORY[0x1EEE9AC00](v15);
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  v18 = v17;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = *&v18[direct field offset for CanvasElementViewController._canvasView];
  v20 = v19;

  if (v19)
  {
    v21 = [v2 view];
    v22 = *&v20[direct field offset for CanvasView.canvasTiledView];
    if (v22)
    {
      [v22 setContentSnapshottingView_];

      goto LABEL_15;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_15:
  v23 = *&v2[v16];
  if (v23)
  {
    v24 = v23;
    v25 = [v2 view];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 superview];

      specialized CanvasElementViewController.rulerHostView.setter(v27);
      goto LABEL_18;
    }

LABEL_29:
    __break(1u);
    return;
  }

LABEL_18:
  if (v5)
  {
    [v5 setOverrideUserInterfaceStyle_];
  }

  if (v9)
  {
    [v9 setOverrideUserInterfaceStyle_];
  }

  v28 = MarkupContainerViewController.toolPicker.getter();
  if (v28)
  {
    v29 = v28;
    [v28 setColorUserInterfaceStyle_];
  }

  MarkupContainerViewController.updateBannerViewStyle()(v28);
  v30 = MarkupContainerViewController.toolPicker.getter();
  if (v30)
  {
    v31 = v30;
    [v30 _setShowsHandwritingTool_];
  }
}

void MarkupContainerViewController.updateBannerViewStyle()(void *Strong)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController];
  if (v3)
  {
    v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    Strong = swift_beginAccess();
    if (*(v3 + v4))
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        type metadata accessor for PaperDocumentViewController(0);
        v6 = swift_dynamicCastClass();
        if (v6)
        {
          v7 = *(v6 + OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_bannerView);
          v8 = v7;

          if (v7)
          {
LABEL_10:
            v12 = v8;
            v13 = [v2 traitCollection];
            v14 = [v13 userInterfaceStyle];

            [v12 setOverrideUserInterfaceStyle_];
            return;
          }
        }

        else
        {
        }
      }
    }
  }

  v9 = *&v2[OBJC_IVAR___PPKMarkupContainerViewController_imageViewController];
  if (v9)
  {
    MEMORY[0x1EEE9AC00](Strong);
    type metadata accessor for Image(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    swift_getKeyPath();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    v10 = v9;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = *&v10[direct field offset for CanvasElementViewController._bannerView];
    v8 = v11;

    if (v11)
    {
      goto LABEL_10;
    }
  }
}

Swift::Void __swiftcall MarkupContainerViewController.removeContentViewController()()
{
  v1 = OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController;
  v2 = *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = v3;
  [v3 removeFromSuperview];

  v5 = *(v0 + v1);
  if (v5)
  {
    [v5 removeFromParentViewController];
    v6 = *(v0 + v1);
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

  *(v0 + v1) = 0;

  v7 = OBJC_IVAR___PPKMarkupContainerViewController_imageViewController;
  v8 = *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
  if (v8)
  {
    v9 = [v8 view];
    if (v9)
    {
      v10 = v9;
      [v9 removeFromSuperview];

      v8 = *(v0 + v7);
      if (v8)
      {
        [v8 removeFromParentViewController];
        v8 = *(v0 + v7);
      }

      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    return;
  }

LABEL_10:
  *(v0 + v7) = 0;
}

Swift::Void __swiftcall MarkupContainerViewController.updateEditingMode()()
{
  v1 = OBJC_IVAR___PPKMarkupContainerViewController_allEditingDisabled;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    v2 = 0;
  }

  else
  {
    v3 = OBJC_IVAR___PPKMarkupContainerViewController_formFillingEnabled;
    swift_beginAccess();
    if (*(v0 + v3))
    {
      v2 = 1;
    }

    else
    {
      v4 = OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled;
      swift_beginAccess();
      if (*(v0 + v4))
      {
        v2 = 3;
      }

      else
      {
        v5 = OBJC_IVAR___PPKMarkupContainerViewController_pencilAlwaysDraws;
        swift_beginAccess();
        if (*(v0 + v5))
        {
          v2 = 2;
        }

        else
        {
          v2 = 0;
        }
      }
    }
  }

  *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_editingMode) = v2;
  MarkupContainerViewController.editingMode.didset();
}

void MarkupContainerViewController.pdfViewScaleChanged(_:)()
{
  if ((*(v0 + OBJC_IVAR___PPKMarkupContainerViewController_viewIsTransitioningBetweenSizes) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
    if (v1)
    {
      v2 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
      swift_beginAccess();
      v3 = *(v1 + v2);
      if (v3)
      {
        v4 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
        swift_beginAccess();
        v5 = *(v3 + v4);
        if (v5)
        {
          v6 = v5;
          v7 = [v6 documentScrollView];
          if (v7)
          {
            v8 = v7;
            [v6 autoScaleFactor];
            v10 = v9;
            [v8 minimumZoomScale];
            if (v10 != v11)
            {
              [v8 setMinimumZoomScale_];
            }

            [v8 zoomScale];
            v13 = v12;
            v14 = &selRef_minimumZoomScale;
            [v8 minimumZoomScale];
            if (v13 < v15 || ([v8 zoomScale], v17 = v16, v14 = &selRef_maximumZoomScale, objc_msgSend(v8, sel_maximumZoomScale), v18 < v17))
            {
              [v8 *v14];
              [v8 setZoomScale_];
            }
          }
        }
      }
    }
  }
}

void MarkupContainerViewController.pdfViewPageChanged(_:)()
{
  v1 = *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v3 = *(v1 + v2);
    if (v3)
    {
      v4 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
      swift_beginAccess();
      v5 = *(v3 + v4);
      if (v5)
      {
        v6 = v0;
        v7 = v5;
        Notification.object.getter();
        if (v17[3])
        {
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFView, 0x1E6978048);
          if (swift_dynamicCast())
          {
            v7 = v7;
            v8 = static NSObject.== infix(_:_:)();

            if (v8)
            {
              v9 = [v7 document];
              if (v9)
              {
                v10 = v9;
                v11 = [v7 currentPage];
                if (!v11)
                {

                  return;
                }

                v12 = v11;
                v13 = [v10 indexForPage_];
                v14 = v13;
                v15 = v6 + OBJC_IVAR___PPKMarkupContainerViewController__currentPDFPageIndex;
                if ((*(v6 + OBJC_IVAR___PPKMarkupContainerViewController__currentPDFPageIndex + 8) & 1) != 0 || (v13 & 0x8000000000000000) != 0 || v13 != *v15)
                {
                  v17[0] = v6;
                  swift_getKeyPath();
                  _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
                  if ((v14 & 0x8000000000000000) != 0)
                  {
                    __break(1u);
                    return;
                  }

                  *v15 = v14;
                  *(v15 + 8) = 0;
                  v17[0] = v6;
                  swift_getKeyPath();
                  _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
                }
              }
            }
          }
        }

        else
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_sypSgMd, &_sypSgMR);
        }
      }
    }
  }
}

uint64_t closure #1 in MarkupContainerViewController.updateZoomScales(animated:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 88) = a7;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a6;
  type metadata accessor for MainActor();
  *(v7 + 48) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 56) = v9;
  *(v7 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](closure #1 in MarkupContainerViewController.updateZoomScales(animated:), v9, v8);
}

uint64_t closure #1 in MarkupContainerViewController.updateZoomScales(animated:)()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
  *(v0 + 72) = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = closure #1 in MarkupContainerViewController.updateZoomScales(animated:);
    v3 = *(v0 + 88);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);

    return CanvasElementViewController<>.updateImageZoomScale(in:animated:zoomable:)(v3, 0, v4, v5);
  }

  else
  {

    **(v0 + 16) = *(v0 + 72) == 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 72);

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](closure #1 in MarkupContainerViewController.updateZoomScales(animated:), v4, v3);
}

{

  **(v0 + 16) = *(v0 + 72) == 0;
  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall MarkupContainerViewController.updatePreviewImageZoomScale(for:animated:)(CGSize a1, Swift::Bool animated)
{
  v3 = *(v2 + OBJC_IVAR___PPKMarkupContainerViewController_placeholderImageScrollView);
  if (!v3)
  {
    return;
  }

  width = a1.width;
  height = a1.height;
  v28 = v3;
  v7 = [v28 subviews];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_22:

LABEL_23:
    v16 = v28;
    goto LABEL_24;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_22;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1DA6CE0C0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 image];
    if (v13)
    {
      v14 = v13;
      v15 = (v2 + OBJC_IVAR___PPKMarkupContainerViewController_placeholderActualImageSize);
      if ((*(v2 + OBJC_IVAR___PPKMarkupContainerViewController_placeholderActualImageSize + 16) & 1) == 0)
      {
        v17 = *v15;
        v18 = v15[1];
        [v13 size];
        if (v17 >= width || v18 >= height)
        {
          v22 = width / v19;
          v23 = height / v20;
          if (v23 < v22)
          {
            v22 = v23;
          }

          v21 = fmax(v22, 0.0001);
        }

        else
        {
          v21 = v17 / v19;
        }

        [v28 setZoomScale:animated animated:v21];
        v16 = v10;
        [v28 center];
        v25 = v24;
        v27 = v26;

        [v12 setCenter_];
        goto LABEL_24;
      }
    }

    else
    {
    }

    goto LABEL_23;
  }

  v16 = v28;
  v28 = v10;
LABEL_24:
}

Swift::Void __swiftcall MarkupContainerViewController.doubleTapped(_:)(UITapGestureRecognizer *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled;
  v7 = swift_beginAccess();
  if ((v1[v6] & 1) == 0)
  {
    v8 = *&v1[OBJC_IVAR___PPKMarkupContainerViewController_imageViewController];
    if (v8)
    {
      v9 = v1;
      MEMORY[0x1EEE9AC00](v7);
      *(&v22 - 4) = type metadata accessor for Image(0);
      *(&v22 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
      *(&v22 - 2) = &protocol witness table for Image;
      swift_getKeyPath();
      v22 = v8;
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
      v10 = v8;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v11 = *&v10[direct field offset for CanvasElementViewController._canvasView];
      if (v11)
      {
        v12 = *(v11 + direct field offset for CanvasView.canvasScrollView);
        if (v12)
        {
          v13 = v12;

          v14 = type metadata accessor for TaskPriority();
          (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
          type metadata accessor for MainActor();
          v15 = v10;
          v16 = v13;
          v17 = v9;
          v18 = a1;
          v19 = static MainActor.shared.getter();
          v20 = swift_allocObject();
          v21 = MEMORY[0x1E69E85E0];
          v20[2] = v19;
          v20[3] = v21;
          v20[4] = v15;
          v20[5] = v17;
          v20[6] = v16;
          v20[7] = v18;
          _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in MarkupContainerViewController.doubleTapped(_:), v20);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

uint64_t closure #1 in MarkupContainerViewController.doubleTapped(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[8] = v9;
  v7[9] = v8;

  return MEMORY[0x1EEE6DFA0](closure #1 in MarkupContainerViewController.doubleTapped(_:), v9, v8);
}

id closure #1 in MarkupContainerViewController.doubleTapped(_:)()
{
  result = [*(v0 + 32) view];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;
    v6 = v5;

    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = closure #1 in MarkupContainerViewController.doubleTapped(_:);

    return CanvasElementViewController<>.preferredZoomScale(in:zoomable:)(0, v4, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in MarkupContainerViewController.doubleTapped(_:)(double a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return MEMORY[0x1EEE6DFA0](closure #1 in MarkupContainerViewController.doubleTapped(_:), v4, v3);
}

uint64_t closure #1 in MarkupContainerViewController.doubleTapped(_:)()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);

  [v2 zoomScale];
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  if (vabdd_f64(v3, v1) >= 0.01)
  {
    [*(v0 + 40) setZoomScale:1 animated:*(v0 + 88)];
    v8 = swift_task_alloc();
    *v8 = type metadata accessor for Image(0);
    v8[1] = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    v8[2] = &protocol witness table for Image;
    swift_getKeyPath();

    *(v0 + 16) = v5;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v5 + direct field offset for CanvasElementViewController._canvasView);
    if (v9)
    {
      v10 = v9[direct field offset for CanvasView.zoomState];
      v9[direct field offset for CanvasView.zoomState] = 0;
      if (v10)
      {
        v11 = *&v9[direct field offset for Canvas.paperView];
        v12 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x3D0);
        v13 = v9;
        v14 = v11;
        v12();
      }
    }
  }

  else
  {
    v6 = *(v0 + 48);
    v7 = specialized CanvasElementViewController.imageView.getter();
    [v6 locationInView_];

    [v4 maximumZoomScale];
    specialized CanvasElementViewController.zoomRect(for:with:)();
    [v4 zoomToRect:1 animated:?];
  }

  v15 = *(v0 + 8);

  return v15();
}

Swift::Void __swiftcall MarkupContainerViewController.updateGestures()()
{
  v1 = *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
  if (v1)
  {
    v2 = v0;
    (MEMORY[0x1EEE9AC00])();
    type metadata accessor for Image(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    swift_getKeyPath();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    v3 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *&v3[direct field offset for CanvasElementViewController._canvasView];
    v5 = v4;

    if (v4)
    {
      v6 = *&v5[direct field offset for Canvas.paperView];

      v7 = OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled;
      swift_beginAccess();
      v8 = OBJC_IVAR___PPKMarkupContainerViewController_doubleTapGestureRecognizer;
      v9 = *(v2 + OBJC_IVAR___PPKMarkupContainerViewController_doubleTapGestureRecognizer);
      if (*(v2 + v7))
      {
        if (v9)
        {
          [v6 removeGestureRecognizer_];

          v6 = *(v2 + v8);
          *(v2 + v8) = 0;
        }
      }

      else if (!v9)
      {
        v10 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v2 action:sel_doubleTapped_];
        v11 = *(v2 + v8);
        *(v2 + v8) = v10;
        v12 = v10;

        [v12 setNumberOfTapsRequired_];
        v13 = *(v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0x400));
        if (v13)
        {
          [v13 requireGestureRecognizerToFail_];
        }

        [v6 addGestureRecognizer_];
      }
    }
  }
}

uint64_t MarkupContainerViewControllerAnalysisDelegate.__deallocating_deinit()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return swift_deallocClassInstance();
}

double @objc MarkupContainerViewControllerAnalysisDelegate.contextWillPresentVisualSearchController(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  swift_unknownObjectRetain();

  a5(a4);
  swift_unknownObjectRelease();

  return result;
}

void MarkupContainerViewControllerAnalysisDelegate.contextDidCompleteSubjectAnalysis(_:)(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      if ([v4 respondsToSelector_])
      {
        v5 = swift_unknownObjectWeakLoadStrong();
        if (!v5)
        {
          swift_unknownObjectRelease();
          __break(1u);
          return;
        }

        v6 = v5;
        [v4 markupContainerViewController:v5 detectedSubjectInContent:{objc_msgSend(a1, sel_isSubjectHighlightAvailable)}];
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t MarkupContainerViewController.isInteractionActive.getter(uint64_t a1)
{
  v1 = MarkupContainerViewController.imageAnalysisContext.getter(a1);
  if (v1)
  {
    v2 = [v1 isVisualIntelligenceV2Enabled];
    v1 = swift_unknownObjectRelease();
    if (v2)
    {
      return 1;
    }
  }

  result = MarkupContainerViewController.imageAnalysisContext.getter(v1);
  if (result)
  {
    v4 = [result analysisInteractionHidden];
    swift_unknownObjectRelease();
    return v4 ^ 1;
  }

  return result;
}

id MarkupContainerViewController.imageAnalysisContext.getter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
  if (v2)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Image(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    swift_getKeyPath();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    v3 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *&v3[direct field offset for CanvasElementViewController._canvasView];
    v5 = v4;

    if (v4)
    {
      v6 = *&v5[direct field offset for Canvas.paperView];

      type metadata accessor for ImageElementView(0);
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = *(v7 + direct field offset for ImageElementView.mediaView);

        v9 = [v8 imageAnalysisContext];
        return v9;
      }
    }
  }

  return 0;
}

uint64_t MarkupContainerViewController.hasResultsForVisualSearch.getter(uint64_t a1)
{
  v1 = MarkupContainerViewController.imageAnalysisContext.getter(a1);
  if (v1)
  {
    v2 = [v1 isVisualIntelligenceV2Enabled];
    v1 = swift_unknownObjectRelease();
    if (v2)
    {
      return 1;
    }
  }

  result = MarkupContainerViewController.imageAnalysisContext.getter(v1);
  if (result)
  {
    v4 = [result hasResultsForAnalysisTypes_];
    swift_unknownObjectRelease();
    return v4;
  }

  return result;
}

id MarkupContainerViewController.isVisualSearchEnabled.getter(uint64_t a1)
{
  v1 = MarkupContainerViewController.imageAnalysisContext.getter(a1);
  if (v1 && (v2 = [v1 isVisualIntelligenceV2Enabled], v1 = swift_unknownObjectRelease(), v2))
  {
    result = MarkupContainerViewController.imageAnalysisContext.getter(v1);
    if (!result)
    {
      return result;
    }

    v4 = 16;
  }

  else
  {
    result = MarkupContainerViewController.imageAnalysisContext.getter(v1);
    if (!result)
    {
      return result;
    }

    v4 = 4;
  }

  v5 = [result activeInteractionTypes];
  swift_unknownObjectRelease();
  return ((v5 & v4) != 0);
}

void MarkupContainerViewController.shouldHighlightTextAndODAfterNextAnalysis.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
  if (v2)
  {
    v3 = a1;
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Image(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    swift_getKeyPath();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    v4 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = *&v4[direct field offset for CanvasElementViewController._canvasView];
    v6 = v5;

    if (v5)
    {
      v7 = *&v6[direct field offset for Canvas.paperView];

      type metadata accessor for ImageElementView(0);
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = *(v8 + direct field offset for ImageElementView.mediaView);
        v10 = v9;

        if (v9)
        {
          v11 = [v10 imageAnalysisContext];

          if (v11)
          {
            [v11 setAutomaticallyInvokedInteraction_];
            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
      }
    }
  }
}

BOOL MarkupContainerViewController.shouldHighlightTextAndODAfterNextAnalysis.getter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
  if (v2)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Image(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    swift_getKeyPath();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    v3 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *&v3[direct field offset for CanvasElementViewController._canvasView];
    v5 = v4;

    if (v4)
    {
      v6 = *&v5[direct field offset for Canvas.paperView];

      type metadata accessor for ImageElementView(0);
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = *(v7 + direct field offset for ImageElementView.mediaView);
        v9 = v8;

        if (v8)
        {
          v10 = [v9 imageAnalysisContext];

          if (v10)
          {
            v11 = [v10 automaticallyInvokedInteraction];
            swift_unknownObjectRelease();
            return v11 == 1;
          }
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

void MarkupContainerViewController.shouldEnterVisualSearchAfterNextAnalysis.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
  if (v2)
  {
    v3 = a1;
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Image(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    swift_getKeyPath();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    v4 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = *&v4[direct field offset for CanvasElementViewController._canvasView];
    v6 = v5;

    if (v5)
    {
      v7 = *&v6[direct field offset for Canvas.paperView];

      type metadata accessor for ImageElementView(0);
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = *(v8 + direct field offset for ImageElementView.mediaView);
        v10 = v9;

        if (v9)
        {
          v11 = [v10 imageAnalysisContext];

          if (v11)
          {
            if (v3)
            {
              v12 = 4;
            }

            else
            {
              v12 = 0;
            }

            [v11 setAutomaticallyInvokedInteraction_];
            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
      }
    }
  }
}

BOOL MarkupContainerViewController.shouldUpliftSubjectAfterNextAnalysis.getter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
  if (v2)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Image(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    swift_getKeyPath();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    v3 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *&v3[direct field offset for CanvasElementViewController._canvasView];
    v5 = v4;

    if (v4)
    {
      v6 = *&v5[direct field offset for Canvas.paperView];

      type metadata accessor for ImageElementView(0);
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = *(v7 + direct field offset for ImageElementView.mediaView);
        v9 = v8;

        if (v8)
        {
          v10 = [v9 imageAnalysisContext];

          if (v10)
          {
            v11 = [v10 automaticallyInvokedInteraction];
            swift_unknownObjectRelease();
            return v11 == 8;
          }
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

void MarkupContainerViewController.shouldUpliftSubjectAfterNextAnalysis.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
  if (v2)
  {
    v3 = a1;
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Image(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    swift_getKeyPath();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    v4 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = *&v4[direct field offset for CanvasElementViewController._canvasView];
    v6 = v5;

    if (v5)
    {
      v7 = *&v6[direct field offset for Canvas.paperView];

      type metadata accessor for ImageElementView(0);
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = *(v8 + direct field offset for ImageElementView.mediaView);
        v10 = v9;

        if (v9)
        {
          v11 = [v10 imageAnalysisContext];

          if (v11)
          {
            if (v3)
            {
              v12 = 8;
            }

            else
            {
              v12 = 0;
            }

            [v11 setAutomaticallyInvokedInteraction_];
            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
      }
    }
  }
}

id @objc MarkupContainerViewController.infoButtonGlyphName.getter(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = MarkupContainerViewController.imageAnalysisContext.getter(v4);
  if (v5 && (v6 = [v5 *a3], swift_unknownObjectRelease(), v6))
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = MEMORY[0x1DA6CCED0](v7, v9);

    v11 = v10;
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

uint64_t MarkupContainerViewController.infoButtonGlyphName.getter(SEL *a1)
{
  v2 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
  if (v2)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Image(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    swift_getKeyPath();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    v4 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = *&v4[direct field offset for CanvasElementViewController._canvasView];
    v6 = v5;

    if (v5)
    {
      v7 = *&v6[direct field offset for Canvas.paperView];

      type metadata accessor for ImageElementView(0);
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = *(v8 + direct field offset for ImageElementView.mediaView);

        v10 = [v9 imageAnalysisContext];
        if (v10)
        {
          v11 = [v10 *a1];
          swift_unknownObjectRelease();
          if (v11)
          {
            v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

            return v12;
          }
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

Swift::Void __swiftcall MarkupContainerViewController.updateForFullscreen(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v3 = *(v2 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  if (v3)
  {
    v5 = v3;
    PaperDocumentViewController.showPageNumberOverlay(animated:)(animated);
  }
}

Swift::Void __swiftcall MarkupContainerViewController.setShouldHideMarkupOverlays(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v3 = *(v2 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](_);
    type metadata accessor for Image(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    swift_getKeyPath();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    v6 = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *&v6[direct field offset for CanvasElementViewController._canvasView];
    v8 = v7;

    if (v7)
    {
      v9 = *&v8[direct field offset for Canvas.paperView];

      type metadata accessor for ImageElementView(0);
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = *(v10 + direct field offset for ImageElementView.mediaView);
        v12 = v11;

        if (v11)
        {
          v13 = [v12 imageAnalysisContext];

          if (v13)
          {
            [v13 setAnalysisInteractionHidden:_ animated:animated];
            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
      }
    }
  }
}

Swift::Void __swiftcall MarkupContainerViewController.infoButtonTapped()()
{
  v1 = MarkupContainerViewController.imageAnalysisContext.getter(v0);
  if (v1 && (v2 = [v1 isVisualIntelligenceV2Enabled], v1 = swift_unknownObjectRelease(), v2))
  {
    v3 = MarkupContainerViewController.imageAnalysisContext.getter(v1);
    if (!v3)
    {
      return;
    }

    [v3 didActivateVisualIntelligenceButton];
  }

  else
  {
    v4 = MarkupContainerViewController.imageAnalysisContext.getter(v1);
    if (!v4)
    {
      return;
    }

    [v4 toggleInteractionTypes_];
  }

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall MarkupContainerViewController.setupAndStartImageAnalysisIfNeeded()()
{
  v1 = *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController);
  if (v1)
  {
    (MEMORY[0x1EEE9AC00])();
    type metadata accessor for Image(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    swift_getKeyPath();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    v2 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = *&v2[direct field offset for CanvasElementViewController._canvasView];
    v4 = v3;

    if (v3)
    {
      v5 = *&v4[direct field offset for Canvas.paperView];

      type metadata accessor for ImageElementView(0);
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = *(v6 + direct field offset for ImageElementView.mediaView);
        v8 = v7;

        if (v7)
        {
          v9 = [v8 imageAnalysisContext];

          if (v9)
          {
            [v9 setActiveInteractionTypes_];
            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
      }
    }
  }
}

void MarkupContainerViewController.documentView(_:detectedFormInContent:withAutofill:)(void *a1, char a2, char a3)
{
  v4 = v3;
  v5 = *(v3 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  if (v5)
  {
    v9 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v10 = *(v5 + v9);
    if (v10)
    {
      type metadata accessor for PaperDocumentView(0);
      v11 = v10;
      v12 = a1;
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v15 = Strong;
          if ([Strong respondsToSelector_])
          {
            [v15 markupContainerViewController:v4 detectedFormInContent:a2 & 1 withAutofill:a3 & 1];
          }

          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void *MarkupContainerViewController.documentView(_:openFormFilling:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if ([result respondsToSelector_])
    {
      [v2 markupContainerViewController:v0 openFormFilling:1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *MarkupContainerViewController.documentView(_:willPresentViewController:animated:)(uint64_t a1, uint64_t a2, char a3, SEL *a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    if ([result respondsToSelector_])
    {
      [v8 *a4];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t MarkupContainerViewController.documentView(_:drawingWillChangeIn:)()
{
  v1 = OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled;
  result = swift_beginAccess();
  if ((*(v0 + v1) & 1) == 0)
  {
    *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_shouldAskDelegateToEnableMarkup) = 1;
  }

  return result;
}

uint64_t MarkupContainerViewController.documentView(_:shouldOpenLink:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v2 = Strong;
  if ([Strong respondsToSelector_])
  {
    URL._bridgeToObjectiveC()(v3);
    v5 = v4;
    v6 = [v2 markupContainerViewController:v0 shouldOpenLink:v4];
  }

  else
  {
    v6 = 1;
  }

  swift_unknownObjectRelease();
  return v6;
}

void *protocol witness for PaperDocumentViewDelegate.documentView(_:willPresentViewController:animated:) in conformance MarkupContainerViewController(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    if ([result respondsToSelector_])
    {
      [v10 *a6];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t protocol witness for PaperDocumentViewDelegate.documentView(_:drawingWillChangeIn:) in conformance MarkupContainerViewController()
{
  v1 = OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled;
  result = swift_beginAccess();
  if ((*(v0 + v1) & 1) == 0)
  {
    *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_shouldAskDelegateToEnableMarkup) = 1;
  }

  return result;
}

void *protocol witness for PaperDocumentViewDelegate.documentView(_:openFormFilling:) in conformance MarkupContainerViewController()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if ([result respondsToSelector_])
    {
      [v2 markupContainerViewController:v0 openFormFilling:1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void MarkupContainerViewController.sourceContentType(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v32 = &v31 - v5;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DataOrURL(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SbtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SbtGMR);
  inited = swift_initStackObject();
  v14 = MEMORY[0x1E696E0A8];
  *(inited + 16) = xmmword_1D4058CF0;
  v15 = *v14;
  *(inited + 32) = v15;
  *(inited + 40) = 0;
  v16 = v15;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SbTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo11CFStringRefa_SbtMd, &_sSo11CFStringRefa_SbtMR);
  type metadata accessor for CFStringRef(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  _s8PaperKit9PDFPageIDVWOcTm_0(a1, v12, type metadata accessor for DataOrURL);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v12, v6);
    URL._bridgeToObjectiveC()(v18);
    v20 = v19;
    v21 = CGImageSourceCreateWithURL(v19, v17.super.isa);

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v22 = *v12;
    v23 = v12[1];
    isa = Data._bridgeToObjectiveC()().super.isa;
    v25 = v17.super.isa;
    v21 = CGImageSourceCreateWithData(isa, v25);
    outlined consume of Data._Representation(v22, v23);
  }

  v26 = type metadata accessor for UTType();
  (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
  if (!v21)
  {

    return;
  }

  v27 = v21;
  v28 = CGImageSourceGetType(v27);
  if (!v28)
  {
    goto LABEL_10;
  }

  v29 = v28;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v33 = 0;
    v34 = 0;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v34)
    {
      v30 = v32;
      UTType.init(_:)();

      outlined destroy of StocksKitCurrencyCache.Provider?(a2, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
      outlined init with take of Range<AttributedString.Index>(v30, a2, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
      return;
    }

LABEL_10:

    return;
  }
}

void MarkupContainerViewController.addPlaceholderImage(_:)(void *a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  v14 = [v13 topEdgeEffect];
  v15 = [objc_opt_self() _clearStyle];
  [v14 setStyle_];

  v16 = v13;
  [v16 setClipsToBounds_];
  [v16 setDelegate_];
  [v16 setUserInteractionEnabled_];
  [v16 setContentInsetAdjustmentBehavior_];
  [v16 setAutoresizingMask_];

  v25 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [a1 size];
  [v25 setFrame_];
  [v25 setContentMode_];
  [v25 setPreferredImageDynamicRange_];
  [v25 setAccessibilityIgnoresInvertColors_];
  [v16 addSubview_];
  [v25 bounds];
  [v16 setContentSize_];
  [v16 setMinimumZoomScale_];
  [v16 setMaximumZoomScale_];
  v21 = [v1 view];
  if (!v21)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v22 = v21;
  [v21 addSubview_];

  v23 = *&v1[OBJC_IVAR___PPKMarkupContainerViewController_placeholderImageScrollView];
  *&v1[OBJC_IVAR___PPKMarkupContainerViewController_placeholderImageScrollView] = v16;
  v24 = v16;

  MarkupContainerViewController.updatePreviewImageZoomScale(for:animated:)(__PAIR128__(*&v12, *&v10), 0);
}

uint64_t closure #1 in MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *(v9 + 248) = a1;
  *(v9 + 240) = v15;
  *(v9 + 224) = v14;
  *(v9 + 328) = a9;
  *(v9 + 208) = a7;
  *(v9 + 216) = a8;
  *(v9 + 192) = a5;
  *(v9 + 200) = a6;
  type metadata accessor for MainActor();
  *(v9 + 256) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 264) = v11;
  *(v9 + 272) = v10;

  return MEMORY[0x1EEE6DFA0](closure #1 in MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:), v11, v10);
}

uint64_t closure #1 in MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:)(__n128 a1)
{
  if (static Task<>.isCancelled.getter())
  {
    v2 = *(v1 + 192);

    if (v2)
    {
      v3 = *(v1 + 192);
      lazy protocol witness table accessor for type PPKMarkupContainerViewControllerError and conformance PPKMarkupContainerViewControllerError();
      v4 = swift_allocError();
      *v5 = 1;
      v3();
    }

    goto LABEL_13;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v1 + 280) = Strong;
  if (!Strong)
  {

LABEL_13:
    v19 = *(v1 + 8);

    return v19();
  }

  v7 = Strong;
  v8 = *(v1 + 216);
  v9 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  *(v1 + 288) = v9;
  [v9 setMaxConcurrentOperationCount_];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v10 = static OS_dispatch_queue.main.getter();
  [v9 setUnderlyingQueue_];

  [v9 setSuspended_];
  v11 = *(v7 + OBJC_IVAR___PPKMarkupContainerViewController_loadContentOperationQueue);
  *(v7 + OBJC_IVAR___PPKMarkupContainerViewController_loadContentOperationQueue) = v9;
  v12 = v9;

  if (v8)
  {
    v13 = *(v1 + 192);
    if (v13)
    {
      v13(0);
    }

    if (*(v1 + 328) == 1)
    {
      goto LABEL_9;
    }
  }

  else if (*(v1 + 328))
  {
LABEL_9:
    v14 = swift_task_alloc();
    *(v1 + 296) = v14;
    *v14 = v1;
    v14[1] = closure #1 in MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:);
    v15 = *(v1 + 232);
    v16 = *(v1 + 240);
    v17 = *(v1 + 224);

    return MarkupContainerViewController.loadImage(from:with:)(v17, v15, v16);
  }

  v20 = swift_task_alloc();
  *(v1 + 312) = v20;
  *v20 = v1;
  v20[1] = closure #1 in MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:);
  v21 = *(v1 + 224);

  return MarkupContainerViewController.loadPDF(from:)(v21);
}

uint64_t closure #1 in MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:)()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 272);
  v4 = *(v2 + 264);
  if (v0)
  {
    v5 = closure #1 in MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:);
  }

  else
  {
    v5 = closure #1 in MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{

  if (*(v0 + 216))
  {
    if (one-time initialization token for isQuickLookUIExtension != -1)
    {
      swift_once();
    }

    v1 = 0.0;
    if (static NSBundle.isQuickLookUIExtension == 1)
    {
      v2 = *(v0 + 248);
      v3 = v2 - CACurrentMediaTime() + 0.5;
      if (v3 < 0.0)
      {
        v1 = 0.0;
      }

      else
      {
        v1 = v3;
      }
    }

    v4 = *(v0 + 280);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = *(v4 + OBJC_IVAR___PPKMarkupContainerViewController_placeholderImageScrollView);
    if (v6)
    {
      v7 = *(v0 + 280);
      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = v6;
      *(v0 + 48) = partial apply for closure #1 in MarkupContainerViewController.swapPlaceholderImageWithContentView(with:_:);
      *(v0 + 56) = v9;
      *(v0 + 16) = MEMORY[0x1E69E9820];
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(v0 + 40) = &block_descriptor_355;
      v10 = _Block_copy((v0 + 16));
      v11 = v6;

      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = v7;
      v12[4] = partial apply for closure #1 in closure #1 in MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:);
      v12[5] = v5;
      *(v0 + 96) = partial apply for closure #2 in MarkupContainerViewController.swapPlaceholderImageWithContentView(with:_:);
      *(v0 + 104) = v12;
      *(v0 + 64) = MEMORY[0x1E69E9820];
      *(v0 + 72) = 1107296256;
      *(v0 + 80) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      *(v0 + 88) = &block_descriptor_361;
      v13 = _Block_copy((v0 + 64));
      v14 = v11;
      v15 = v7;

      [v8 animateWithDuration:0 delay:v10 options:v13 animations:0.25 completion:{fmax(v1, 0.25)}];

      _Block_release(v13);
      _Block_release(v10);
    }
  }

  else
  {
    v16 = *(v0 + 192);
    if (v16)
    {
      v16(0);
    }

    v17 = MarkupContainerViewController.toolPicker.getter();
    if (v17)
    {
      v18 = v17;
      v19 = *(v0 + 280);
      v20 = OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled;
      swift_beginAccess();
      if (*(v19 + v20) == 1 && ([v18 isVisible] & 1) == 0)
      {
        [*(v0 + 280) becomeFirstResponder];
      }
    }
  }

  v22 = *(v0 + 280);
  v21 = *(v0 + 288);
  MarkupContainerViewController.updateGestures()();

  v23 = *(v0 + 8);

  return v23();
}

{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 272);
  v4 = *(v2 + 264);
  if (v0)
  {
    v5 = closure #1 in MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:);
  }

  else
  {
    v5 = closure #1 in MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v36 = v0;
  v1 = *(v0 + 304);

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v35);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D38C4000, v4, v5, "Unable to load source: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1DA6D0660](v7, -1, -1);
    MEMORY[0x1DA6D0660](v6, -1, -1);
  }

  if (*(v0 + 216))
  {
    if (one-time initialization token for isQuickLookUIExtension != -1)
    {
      swift_once();
    }

    v11 = 0.0;
    if (static NSBundle.isQuickLookUIExtension == 1)
    {
      v12 = *(v0 + 248);
      v13 = v12 - CACurrentMediaTime() + 0.5;
      if (v13 < 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v13;
      }
    }

    v14 = *(v0 + 280);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = *(v14 + OBJC_IVAR___PPKMarkupContainerViewController_placeholderImageScrollView);
    if (v16)
    {
      v17 = *(v0 + 280);
      v18 = objc_opt_self();
      v19 = swift_allocObject();
      *(v19 + 16) = v16;
      *(v0 + 48) = partial apply for closure #1 in MarkupContainerViewController.swapPlaceholderImageWithContentView(with:_:);
      *(v0 + 56) = v19;
      *(v0 + 16) = MEMORY[0x1E69E9820];
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(v0 + 40) = &block_descriptor_355;
      v20 = _Block_copy((v0 + 16));
      v21 = v16;

      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = v17;
      v22[4] = partial apply for closure #1 in closure #1 in MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:);
      v22[5] = v15;
      *(v0 + 96) = partial apply for closure #2 in MarkupContainerViewController.swapPlaceholderImageWithContentView(with:_:);
      *(v0 + 104) = v22;
      *(v0 + 64) = MEMORY[0x1E69E9820];
      *(v0 + 72) = 1107296256;
      *(v0 + 80) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      *(v0 + 88) = &block_descriptor_361;
      v23 = _Block_copy((v0 + 64));
      v24 = v21;
      v25 = v17;

      [v18 animateWithDuration:0 delay:v20 options:v23 animations:0.25 completion:{fmax(v11, 0.25)}];

      _Block_release(v23);
      _Block_release(v20);
    }
  }

  else
  {
    v26 = *(v0 + 192);
    if (v26)
    {
      v26(v1);
    }

    v27 = MarkupContainerViewController.toolPicker.getter();
    if (v27)
    {
      v28 = v27;
      v29 = *(v0 + 280);
      v30 = OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled;
      swift_beginAccess();
      if (*(v29 + v30) == 1 && ([v28 isVisible] & 1) == 0)
      {
        [*(v0 + 280) becomeFirstResponder];
      }
    }
  }

  v31 = *(v0 + 280);
  v32 = *(v0 + 288);
  MarkupContainerViewController.updateGestures()();

  v33 = *(v0 + 8);

  return v33();
}

{
  v36 = v0;
  v1 = *(v0 + 320);

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v35);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D38C4000, v4, v5, "Unable to load source: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1DA6D0660](v7, -1, -1);
    MEMORY[0x1DA6D0660](v6, -1, -1);
  }

  if (*(v0 + 216))
  {
    if (one-time initialization token for isQuickLookUIExtension != -1)
    {
      swift_once();
    }

    v11 = 0.0;
    if (static NSBundle.isQuickLookUIExtension == 1)
    {
      v12 = *(v0 + 248);
      v13 = v12 - CACurrentMediaTime() + 0.5;
      if (v13 < 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v13;
      }
    }

    v14 = *(v0 + 280);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = *(v14 + OBJC_IVAR___PPKMarkupContainerViewController_placeholderImageScrollView);
    if (v16)
    {
      v17 = *(v0 + 280);
      v18 = objc_opt_self();
      v19 = swift_allocObject();
      *(v19 + 16) = v16;
      *(v0 + 48) = partial apply for closure #1 in MarkupContainerViewController.swapPlaceholderImageWithContentView(with:_:);
      *(v0 + 56) = v19;
      *(v0 + 16) = MEMORY[0x1E69E9820];
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(v0 + 40) = &block_descriptor_355;
      v20 = _Block_copy((v0 + 16));
      v21 = v16;

      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = v17;
      v22[4] = partial apply for closure #1 in closure #1 in MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:);
      v22[5] = v15;
      *(v0 + 96) = partial apply for closure #2 in MarkupContainerViewController.swapPlaceholderImageWithContentView(with:_:);
      *(v0 + 104) = v22;
      *(v0 + 64) = MEMORY[0x1E69E9820];
      *(v0 + 72) = 1107296256;
      *(v0 + 80) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      *(v0 + 88) = &block_descriptor_361;
      v23 = _Block_copy((v0 + 64));
      v24 = v21;
      v25 = v17;

      [v18 animateWithDuration:0 delay:v20 options:v23 animations:0.25 completion:{fmax(v11, 0.25)}];

      _Block_release(v23);
      _Block_release(v20);
    }
  }

  else
  {
    v26 = *(v0 + 192);
    if (v26)
    {
      v26(v1);
    }

    v27 = MarkupContainerViewController.toolPicker.getter();
    if (v27)
    {
      v28 = v27;
      v29 = *(v0 + 280);
      v30 = OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled;
      swift_beginAccess();
      if (*(v29 + v30) == 1 && ([v28 isVisible] & 1) == 0)
      {
        [*(v0 + 280) becomeFirstResponder];
      }
    }
  }

  v31 = *(v0 + 280);
  v32 = *(v0 + 288);
  MarkupContainerViewController.updateGestures()();

  v33 = *(v0 + 8);

  return v33();
}

uint64_t MarkupContainerViewController.loadImage(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  v4[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = type metadata accessor for DataOrURL(0);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[45] = v6;
  v4[46] = *(v6 - 8);
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = type metadata accessor for MainActor();
  v4[53] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[54] = v8;
  v4[55] = v7;

  return MEMORY[0x1EEE6DFA0](MarkupContainerViewController.loadImage(from:with:), v8, v7);
}

uint64_t MarkupContainerViewController.loadImage(from:with:)()
{
  v1 = *(v0 + 408);
  v40 = *(v0 + 352);
  v2 = *(v0 + 208);
  v38 = *(v0 + 184);
  v3 = *(v2 + OBJC_IVAR___PPKMarkupContainerViewController_context);
  v36 = *(v2 + OBJC_IVAR___PPKMarkupContainerViewController_editingMode);
  v4 = OBJC_IVAR___PPKMarkupContainerViewController_isImageAnalysisEnabled;
  swift_beginAccess();
  v35 = *(v2 + v4);
  v5 = objc_allocWithZone(type metadata accessor for ImageCanvasElementViewController(0));
  v5[direct field offset for ImageCanvasElementViewController._allowAutomaticZoomScaleAdjustment] = 0;
  ObservationRegistrar.init()();
  *&v5[direct field offset for CanvasElementViewController._canvasView] = 0;
  v6 = &v5[direct field offset for CanvasElementViewController._liveStreamMessenger];
  *v6 = 0;
  v6[1] = 0;
  *&v5[direct field offset for CanvasElementViewController._participantDetailsDataSource + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  swift_unknownObjectWeakInit();
  v5[direct field offset for CanvasElementViewController._showParticipantCursors] = 0;
  *&v5[direct field offset for CanvasElementViewController._mediaAnalysisObserver] = 0;
  v5[direct field offset for CanvasElementViewController._allowsContentSnapping] = 0;
  *&v5[direct field offset for CanvasElementViewController._contentViewController] = 0;
  *&v5[direct field offset for CanvasElementViewController._canvasSubscribeCancellable] = 0;
  v7 = direct field offset for CanvasElementViewController.passThroughSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd, &_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMR);
  swift_allocObject();
  *&v5[v7] = PassthroughSubject.init()();
  v8 = &v5[direct field offset for CanvasElementViewController.__imageSize];
  *v8 = 0;
  v8[1] = 0;
  *&v5[direct field offset for CanvasElementViewController.__imageHeadroom] = 0;
  v5[direct field offset for CanvasElementViewController._liveStreamDrawings] = 0;
  v5[direct field offset for CanvasElementViewController._isSixChannelBlendingEnabled] = 1;
  v9 = direct field offset for CanvasElementViewController._sixChannelBlendingDisableSnapshotting;
  v5[direct field offset for CanvasElementViewController._sixChannelBlendingDisableSnapshotting] = 0;
  v5[direct field offset for CanvasElementViewController._sixChannelBlendingRendersTransparent] = 0;
  v5[direct field offset for CanvasElementViewController._canEditVellumOpacity] = 0;
  v10 = direct field offset for CanvasElementViewController._isImageAnalysisEnabled;
  v5[direct field offset for CanvasElementViewController._isImageAnalysisEnabled] = 1;
  v5[direct field offset for CanvasElementViewController._canEditDescription] = 1;
  v11 = direct field offset for CanvasElementViewController.plusButton;
  type metadata accessor for FormPlusButtonView();
  *&v5[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5[direct field offset for CanvasElementViewController._isUpdatingBannerConfiguration] = 0;
  v12 = &v5[direct field offset for CanvasElementViewController._bannerViewConfiguration];
  *v12 = 1;
  *(v12 + 40) = 0u;
  *(v12 + 24) = 0u;
  *(v12 + 8) = 0u;
  v13 = [objc_allocWithZone(PPKQuickLookBannerView) init];
  *&v5[direct field offset for CanvasElementViewController._bannerView] = v13;
  *&v5[direct field offset for CanvasElementViewController.__rulerHostingDelegate] = 0;
  *&v5[direct field offset for CanvasElementViewController._rulerHostView] = 0;
  *&v5[direct field offset for CanvasElementViewController._formDelegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  swift_unknownObjectWeakInit();
  *&v5[direct field offset for CanvasElementViewController._analysis] = 0;
  ObservationRegistrar.init()();
  v5[direct field offset for CanvasElementViewController.allowMediaCanvasElements] = 1;
  *&v5[direct field offset for CanvasElementViewController.context] = v3;
  v5[direct field offset for CanvasElementViewController.transparentBackground] = 0;
  v5[direct field offset for CanvasElementViewController._editingMode] = v36;
  v5[v10] = v35;
  v5[v9] = 1;
  v14 = v3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR);
  *(v0 + 152) = v5;
  *(v0 + 160) = v15;
  *(v0 + 448) = objc_msgSendSuper2((v0 + 152), sel_initWithNibName_bundle_, 0, 0);
  v16 = type metadata accessor for CRAsset();
  v17 = *(*(v16 - 8) + 56);
  v17(v1, 1, 1, v16);
  v18 = OBJC_IVAR___PPKMarkupContainerViewController_originalAsset;
  swift_beginAccess();
  outlined assign with take of CRAsset?(v1, v2 + v18);
  swift_endAccess();
  _s8PaperKit9PDFPageIDVWOcTm_0(v38, v40, type metadata accessor for DataOrURL);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v16;
    v37 = v17;
    v39 = v2;
    v19 = *(v0 + 392);
    v21 = *(v0 + 376);
    v20 = *(v0 + 384);
    v22 = *(v0 + 360);
    v23 = *(v0 + 368);
    v24 = *(v23 + 32);
    v24(v20, *(v0 + 352), v22);
    v24(v19, v20, v22);
    (*(v23 + 16))(v21, v19, v22);
    type metadata accessor for CRContext();
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    v25 = MEMORY[0x1DA6CC630](0, v0 + 16);
    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 16, &_s9Coherence18EncryptionDelegate_pSgMd, &_s9Coherence18EncryptionDelegate_pSgMR);
    CRContext.assetManager.getter();

    CRAsset.init(safelyFrom:coordinated:assetManager:)();
    v26 = *(v0 + 400);
    (*(*(v0 + 368) + 8))(*(v0 + 392), *(v0 + 360));
    v37(v26, 0, 1, v34);
    swift_beginAccess();
    outlined assign with take of CRAsset?(v26, v39 + v18);
    swift_endAccess();
  }

  else
  {
    _s8PaperKit9DataOrURLOWOhTm_0(*(v0 + 352), type metadata accessor for DataOrURL);
  }

  v27 = *(v0 + 256);
  v29 = *(v0 + 192);
  v28 = *(v0 + 200);
  _s8PaperKit9PDFPageIDVWOcTm_0(*(v0 + 184), *(v0 + 344), type metadata accessor for DataOrURL);
  outlined copy of Data?(v29, v28);
  static TaskPriority.userInitiated.getter();
  v30 = type metadata accessor for TaskPriority();
  *(v0 + 456) = v30;
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  *(v0 + 464) = v32;
  *(v0 + 472) = (v31 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v32(v27, 0, 1, v30);

  return MEMORY[0x1EEE6DFA0](MarkupContainerViewController.loadImage(from:with:), 0, 0);
}

{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[24];
  v3 = v0[25];
  _s8PaperKit9PDFPageIDVWOcTm_0(v0[43], v0[42], type metadata accessor for DataOrURL);
  outlined init with copy of Date?(v2, v1, &_sScPSgMd, &_sScPSgMR);
  outlined copy of Data?(v4, v3);
  v5 = v0[42];
  v6 = v0[31];
  if (v3 >> 60 == 15)
  {
    v7 = v0[29];
    _s8PaperKit9PDFPageIDVWOcTm_0(v5, v0[40], type metadata accessor for DataOrURL);
    outlined init with copy of Date?(v6, v7, &_sScPSgMd, &_sScPSgMR);
    v8 = swift_task_alloc();
    v0[62] = v8;
    *v8 = v0;
    v8[1] = MarkupContainerViewController.loadImage(from:with:);
    v9 = v0[40];
    v10 = v0[35];
    v11 = v0[29];

    return Capsule<>.init(_:priority:fileCoordinator:)(v10, v9, v11, 0);
  }

  else
  {
    v13 = v0[30];
    v15 = v0[24];
    v14 = v0[25];
    _s8PaperKit9PDFPageIDVWOcTm_0(v5, v0[41], type metadata accessor for DataOrURL);
    outlined init with copy of Date?(v6, v13, &_sScPSgMd, &_sScPSgMR);
    outlined copy of Data._Representation(v15, v14);
    v16 = swift_task_alloc();
    v0[60] = v16;
    *v16 = v0;
    v16[1] = MarkupContainerViewController.loadImage(from:with:);
    v17 = v0[41];
    v18 = v0[36];
    v19 = v0[30];
    v20 = v0[24];
    v21 = v0[25];

    return Capsule<>.init(baseImage:with:priority:)(v18, v17, v20, v21, v19);
  }
}

{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = MarkupContainerViewController.loadImage(from:with:);
  }

  else
  {
    v2 = MarkupContainerViewController.loadImage(from:with:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = MarkupContainerViewController.loadImage(from:with:);
  }

  else
  {
    v2 = MarkupContainerViewController.loadImage(from:with:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  outlined consume of Data?(v0[24], v0[25]);
  v0[64] = v0[61];
  v1 = v0[42];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[34];
  v13 = v0[32];
  v14 = v0[43];
  v8 = v0[24];
  v7 = v0[25];
  outlined destroy of StocksKitCurrencyCache.Provider?(v0[31], &_sScPSgMd, &_sScPSgMR);
  _s8PaperKit9DataOrURLOWOhTm_0(v1, type metadata accessor for DataOrURL);
  v9 = *(v6 + 32);
  v9(v3, v4, v5);
  v9(v2, v3, v5);
  outlined consume of Data?(v8, v7);
  outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_sScPSgMd, &_sScPSgMR);
  _s8PaperKit9DataOrURLOWOhTm_0(v14, type metadata accessor for DataOrURL);
  v10 = v0[54];
  v11 = v0[55];

  return MEMORY[0x1EEE6DFA0](MarkupContainerViewController.loadImage(from:with:), v10, v11);
}

{
  outlined consume of Data?(v0[24], v0[25]);
  v0[65] = v0[61];
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[32];
  v5 = v0[24];
  v4 = v0[25];
  outlined destroy of StocksKitCurrencyCache.Provider?(v0[31], &_sScPSgMd, &_sScPSgMR);
  _s8PaperKit9DataOrURLOWOhTm_0(v1, type metadata accessor for DataOrURL);
  outlined consume of Data?(v5, v4);
  outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_sScPSgMd, &_sScPSgMR);
  _s8PaperKit9DataOrURLOWOhTm_0(v2, type metadata accessor for DataOrURL);
  v6 = v0[54];
  v7 = v0[55];

  return MEMORY[0x1EEE6DFA0](MarkupContainerViewController.loadImage(from:with:), v6, v7);
}

{
  v1 = *(v0 + 448);

  v2 = *(v0 + 8);

  return v2();
}

{
  v2 = v0[34];
  v1 = v0[35];
  v0[64] = v0[63];
  v3 = v0[42];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[33];
  v13 = v0[32];
  v14 = v0[43];
  v8 = v0[24];
  v7 = v0[25];
  outlined destroy of StocksKitCurrencyCache.Provider?(v0[31], &_sScPSgMd, &_sScPSgMR);
  _s8PaperKit9DataOrURLOWOhTm_0(v3, type metadata accessor for DataOrURL);
  v9 = *(v2 + 32);
  v9(v5, v1, v6);
  v9(v4, v5, v6);
  outlined consume of Data?(v8, v7);
  outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_sScPSgMd, &_sScPSgMR);
  _s8PaperKit9DataOrURLOWOhTm_0(v14, type metadata accessor for DataOrURL);
  v10 = v0[54];
  v11 = v0[55];

  return MEMORY[0x1EEE6DFA0](MarkupContainerViewController.loadImage(from:with:), v10, v11);
}

{
  v0[65] = v0[63];
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[32];
  v5 = v0[24];
  v4 = v0[25];
  outlined destroy of StocksKitCurrencyCache.Provider?(v0[31], &_sScPSgMd, &_sScPSgMR);
  _s8PaperKit9DataOrURLOWOhTm_0(v1, type metadata accessor for DataOrURL);
  outlined consume of Data?(v5, v4);
  outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_sScPSgMd, &_sScPSgMR);
  _s8PaperKit9DataOrURLOWOhTm_0(v2, type metadata accessor for DataOrURL);
  v6 = v0[54];
  v7 = v0[55];

  return MEMORY[0x1EEE6DFA0](MarkupContainerViewController.loadImage(from:with:), v6, v7);
}

void MarkupContainerViewController.loadImage(from:with:)()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v4 = *(v0 + 216);
  (*(v3 + 16))(v4, *(v0 + 304), v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  v5 = v1;
  specialized CanvasElementViewController.updateViewForPaper(_:)(v4);
  outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  v6 = direct field offset for CanvasElementViewController._isSixChannelBlendingEnabled;
  swift_beginAccess();
  if (v5[v6] == 1)
  {
    v5[v6] = 1;
    specialized CanvasElementViewController._isSixChannelBlendingEnabled.didset();
  }

  else
  {
    v7 = *(v0 + 448);
    v8 = swift_task_alloc();
    *v8 = type metadata accessor for Image(0);
    v8[1] = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    v8[2] = &protocol witness table for Image;
    swift_getKeyPath();

    v9 = swift_task_alloc();
    *(v9 + 16) = v7;
    *(v9 + 24) = 1;
    *(v0 + 168) = v7;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v10 = [*(v0 + 448) view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = v10;
  v12 = [*(v0 + 208) view];
  if (!v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = v12;
  v14 = *(v0 + 448);
  [v12 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v11 setFrame_];
  v23 = [v14 view];
  if (!v23)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = v23;
  v25 = *(v0 + 208);
  [v23 setAutoresizingMask_];

  v26 = *(v25 + OBJC_IVAR___PPKMarkupContainerViewController_placeholderImageScrollView);
  v27 = *(v0 + 208);
  if (!v26)
  {
    v33 = [*(v0 + 208) view];
    if (v33)
    {
      v30 = v33;
      v34 = *(v0 + 448);
      v32 = [v34 view];

      if (v32)
      {

        [v30 addSubview_];
        goto LABEL_14;
      }

LABEL_25:
      __break(1u);
      return;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = v26;
  v29 = [v27 view];
  if (!v29)
  {
    goto LABEL_22;
  }

  v30 = v29;
  v31 = *(v0 + 448);
  v32 = [v31 view];

  if (!v32)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v30 insertSubview:v32 belowSubview:v28];

LABEL_14:
  v35 = *(v0 + 448);
  v36 = *(v0 + 208);

  [v36 addChildViewController_];
  [v35 didMoveToParentViewController_];
  v37 = *&v36[OBJC_IVAR___PPKMarkupContainerViewController_imageViewController];
  *&v36[OBJC_IVAR___PPKMarkupContainerViewController_imageViewController] = v35;
  v38 = v35;

  v39 = v36;
  specialized CanvasElementViewController.delegate.setter(v36, &protocol witness table for MarkupContainerViewController);
  v40 = swift_task_alloc();
  *v40 = type metadata accessor for Image(0);
  v40[1] = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  v40[2] = &protocol witness table for Image;
  swift_getKeyPath();

  *(v0 + 176) = v38;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v41 = *&v38[direct field offset for CanvasElementViewController._canvasView];
  v42 = v41;

  if (v41)
  {
    v42[direct field offset for CanvasView.firstLayout] = 0;
  }

  v43 = *(v0 + 464);
  v45 = *(v0 + 448);
  v44 = *(v0 + 456);
  v46 = *(v0 + 304);
  v47 = *(v0 + 272);
  v56 = *(v0 + 264);
  v48 = *(v0 + 224);
  v49 = *(v0 + 208);
  MarkupContainerViewController.configureLookAndStyle()();
  v49[OBJC_IVAR___PPKMarkupContainerViewController_isContentLoaded] = 1;
  [*&v49[OBJC_IVAR___PPKMarkupContainerViewController_loadContentOperationQueue] setSuspended_];
  v43(v48, 1, 1, v44);
  v50 = v45;
  v51 = v49;
  v52 = static MainActor.shared.getter();
  v53 = swift_allocObject();
  v54 = MEMORY[0x1E69E85E0];
  v53[2] = v52;
  v53[3] = v54;
  v53[4] = v50;
  v53[5] = v51;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v48, &async function pointer to partial apply for closure #1 in MarkupContainerViewController.loadImage(from:with:), v53);

  (*(v47 + 8))(v46, v56);

  v55 = *(v0 + 8);

  v55();
}

uint64_t MarkupContainerViewController.loadPDF(from:)(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  type metadata accessor for DataOrURL(0);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  v2[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[21] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](MarkupContainerViewController.loadPDF(from:), v4, v3);
}

void MarkupContainerViewController.loadPDF(from:)()
{
  v32 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = type metadata accessor for CRAsset();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = OBJC_IVAR___PPKMarkupContainerViewController_originalAsset;
  swift_beginAccess();
  outlined assign with take of CRAsset?(v1, v4 + v6);
  swift_endAccess();
  type metadata accessor for CRContext();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v7 = MEMORY[0x1DA6CC630](0, v0 + 16);
  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 16, &_s9Coherence18EncryptionDelegate_pSgMd, &_s9Coherence18EncryptionDelegate_pSgMR);
  _s8PaperKit9PDFPageIDVWOcTm_0(v3, v2, type metadata accessor for DataOrURL);
  v31[0] = *(v4 + OBJC_IVAR___PPKMarkupContainerViewController_editingMode);
  v8 = objc_allocWithZone(type metadata accessor for PaperDocumentViewController(0));
  v9 = v7;
  v10 = PaperDocumentViewController.init(withDataOrURL:context:editingMode:)(v2, v9, v31);
  v11 = *(v0 + 144);
  v12 = *(v11 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  *(v11 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController) = v10;
  v13 = v10;

  v14 = swift_unknownObjectRetain();
  PaperDocumentViewController.delegate.setter(v14, &protocol witness table for MarkupContainerViewController);
  v15 = v13;
  v16 = [v15 view];
  if (!v16)
  {
    __break(1u);
    goto LABEL_8;
  }

  v17 = v16;
  v18 = *(v0 + 144);
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];

  v19 = [v18 view];
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20 = v19;
  v21 = [v15 view];

  if (!v21)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v22 = *(v0 + 144);

  [v20 addSubview_];

  [v22 addChildViewController_];
  [v15 didMoveToParentViewController_];
  v23 = OBJC_IVAR___PPKMarkupContainerViewController_showThumbnailViewForMultipage;
  swift_beginAccess();
  LOBYTE(v23) = v22[v23];
  v24 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed;
  swift_beginAccess();
  v25 = v15[v24];
  v15[v24] = (v23 & 1) == 0;
  PaperDocumentViewController.isThumbnailViewCollapsed.didset(v25);
  v26 = *&v15[OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_passThroughSubject];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0H8DocumentVGs5NeverOGGMd, &_s7Combine12PublisherBoxCyAA18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit0H8DocumentVGs5NeverOGGMR);
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v0 + 128) = v27;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type AnyPublisher<Capsule<PaperDocument>, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMd, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit0F8DocumentVGs5NeverOGMR, MEMORY[0x1E695BED8]);
  v28 = Publisher<>.sink(receiveValue:)();

  *&v22[OBJC_IVAR___PPKMarkupContainerViewController_pdfCancellable] = v28;

  v29 = &v22[OBJC_IVAR___PPKMarkupContainerViewController__currentPDFPageIndex];
  *v29 = 0;
  v29[8] = 1;

  v30 = *(v0 + 8);

  v30();
}

void closure #1 in closure #1 in MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = MarkupContainerViewController.toolPicker.getter();
    if (v3)
    {
      v4 = v3;
      v5 = OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled;
      swift_beginAccess();
      if (*(v2 + v5) == 1 && ([v4 isVisible] & 1) == 0)
      {
        [v2 becomeFirstResponder];
      }
    }
  }
}

void closure #1 in MarkupContainerViewController.loadPDF(from:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (*(Strong + OBJC_IVAR___PPKMarkupContainerViewController_editingMode))
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      v17 = static OS_dispatch_queue.main.getter();
      v12 = swift_allocObject();
      v18 = v6;
      v13 = v12;
      swift_unknownObjectWeakInit();
      aBlock[4] = partial apply for closure #1 in closure #1 in MarkupContainerViewController.loadPDF(from:);
      aBlock[5] = v13;
      v16[1] = v13;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_390;
      v16[0] = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v19 = MEMORY[0x1E69E7CC0];
      _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v14 = v16[0];
      v15 = v17;
      MEMORY[0x1DA6CD890](0, v9, v5, v16[0]);
      _Block_release(v14);

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v18);
    }

    else
    {
    }
  }
}

uint64_t closure #1 in MarkupContainerViewController.loadImage(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v7;
  v5[8] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in MarkupContainerViewController.loadImage(from:with:), v7, v6);
}

id closure #1 in MarkupContainerViewController.loadImage(from:with:)()
{
  result = [*(v0 + 40) view];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;
    v6 = v5;

    v7 = swift_task_alloc();
    *(v0 + 72) = v7;
    *v7 = v0;
    v7[1] = closure #1 in MarkupContainerViewController.loadImage(from:with:);

    return CanvasElementViewController<>.updateImageZoomScale(in:animated:zoomable:)(0, 0, v4, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in MarkupContainerViewController.loadImage(from:with:)()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](closure #1 in MarkupContainerViewController.loadImage(from:with:), v3, v2);
}

{
  v1 = v0[5];
  v2 = v0[4];

  v3 = *(v2 + direct field offset for CanvasElementViewController.passThroughSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGGMd, &_s7Combine12PublisherBoxCyAA18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v0[2] = v4;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type AnyPublisher<Capsule<Image>, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMR, MEMORY[0x1E695BED8]);
  v5 = Publisher<>.sink(receiveValue:)();

  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_imageCancellable) = v5;

  v6 = swift_task_alloc();
  *v6 = type metadata accessor for Image(0);
  v6[1] = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  v6[2] = &protocol witness table for Image;
  swift_getKeyPath();

  v0[3] = v2;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v2 + direct field offset for CanvasElementViewController._canvasView);
  if (v7)
  {
    v8 = *(v7 + direct field offset for Canvas.paperView);
    type metadata accessor for ImageElementView(0);
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  type metadata accessor for MarkupContainerViewControllerAnalysisDelegate();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  if (v9)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();

    v13 = v9;
    ImageElementView.imageAnalysisDelegate.didset(Strong);
    swift_unknownObjectRelease();

    v14 = *&v13[direct field offset for ImageElementView.mediaView];
    if (v14)
    {

      v15 = v13;
      v16 = v14;
      v17 = [v16 imageAnalysisContext];
      if (v17)
      {
        [v17 addAnalysisObserver_];
        swift_unknownObjectRelease();
      }
    }

    else
    {

      v18 = v13;
      v16 = ImageElementView.pendingImageAnalysisObservers.getter();
      [v16 addObject_];
    }
  }

  *(v0[5] + OBJC_IVAR___PPKMarkupContainerViewController_analysisDelegate) = v11;

  MarkupContainerViewController.updateContentInsets()();

  v19 = v0[1];

  return v19();
}

void closure #1 in closure #1 in MarkupContainerViewController.loadImage(from:with:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (*(Strong + OBJC_IVAR___PPKMarkupContainerViewController_editingMode))
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      v21 = v3;
      v19 = static OS_dispatch_queue.main.getter();
      v12 = swift_allocObject();
      v20 = v7;
      v13 = v12;
      swift_beginAccess();
      v14 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in MarkupContainerViewController.loadImage(from:with:);
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_380;
      v15 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v22 = MEMORY[0x1E69E7CC0];
      _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v18 = v6;
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v16 = v19;
      MEMORY[0x1DA6CD890](0, v9, v5, v15);
      _Block_release(v15);

      (*(v21 + 8))(v5, v2);
      (*(v20 + 8))(v9, v18);
    }

    else
    {
    }
  }
}

void closure #1 in closure #1 in MarkupContainerViewController.loadPDF(from:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      if ([v3 respondsToSelector_])
      {
        [v4 markupContainerViewControllerDidChangeContent:v2 enablingMarkup:v2[OBJC_IVAR___PPKMarkupContainerViewController_shouldAskDelegateToEnableMarkup]];
      }

      swift_unknownObjectRelease();
      v2[OBJC_IVAR___PPKMarkupContainerViewController_shouldAskDelegateToEnableMarkup] = 0;
    }
  }
}

uint64_t PPKZeroCallbackCounter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void __swiftcall MarkupContainerViewController.viewForZooming(in:)(UIView_optional *__return_ptr retstr, UIScrollView *in)
{
  v2 = [(UIScrollView *)in subviews];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_7;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:

    return;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1DA6CE0C0](0, v3);
    goto LABEL_7;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
    goto LABEL_7;
  }

  __break(1u);
}

void *MarkupContainerViewController.canvasElementViewController(_:detectedFormInContent:withAutofill:)(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    if ([result respondsToSelector_])
    {
      [v7 markupContainerViewController:v3 detectedFormInContent:a2 & 1 withAutofill:a3 & 1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t MarkupContainerViewController.canvasDrawingWillChange(_:)()
{
  v1 = OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled;
  result = swift_beginAccess();
  if ((*(v0 + v1) & 1) == 0)
  {
    *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_shouldAskDelegateToEnableMarkup) = 1;
  }

  return result;
}

void *MarkupContainerViewController.documentView(_:thumbnailViewDidCollapse:)(uint64_t a1, char a2, SEL *a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    if ([result respondsToSelector_])
    {
      [v7 *a3];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *MarkupContainerViewController.documentView(_:contentFrameDidChange:)(double a1, double a2, double a3, double a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    if ([result respondsToSelector_])
    {
      [v10 markupContainerViewController:v4 contentFrameDidChange:{a1, a2, a3, a4}];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *protocol witness for CanvasElementViewControllerDelegate.canvasElementViewController(_:detectedFormInContent:withAutofill:) in conformance MarkupContainerViewController(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    if ([result respondsToSelector_])
    {
      [v7 markupContainerViewController:v3 detectedFormInContent:a2 & 1 withAutofill:a3 & 1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *protocol witness for PaperDocumentViewDelegate.documentView(_:thumbnailViewDidCollapse:) in conformance MarkupContainerViewController(uint64_t a1, char a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    if ([result respondsToSelector_])
    {
      [v9 *a5];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Bool __swiftcall AnyCanvas.canvasElementExists(at:)(CGPoint at)
{
  y = at.y;
  x = at.x;
  v21 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x440);
  v4 = v21();
  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 64))(ObjectType, v6);

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
        v11 = MEMORY[0x1DA6CE0C0](v10, v8);
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

      if ((*((*MEMORY[0x1E69E7D40] & *v11) + 0x1F0))())
      {
      }

      else
      {
        v14 = v21();
        [v12 convertPoint:v14 fromCoordinateSpace:{x, y}];
        v16 = v15;
        v18 = v17;

        v19 = [v12 hitTest:0 withEvent:{v16, v18}];
        if (v19)
        {

          return 1;
        }
      }

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

  return 0;
}

uint64_t specialized CanvasElementViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + OBJC_IVAR____TtC8PaperKit30AnyCanvasElementViewController_delegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v3 + direct field offset for CanvasElementViewController._canvasView);
  if (!v6)
  {
    return swift_unknownObjectRelease();
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  v8 = v6;
  swift_unknownObjectRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return swift_unknownObjectRelease_n();
}

void specialized CanvasElementViewController.isImageAnalysisEnabled.setter(char a1)
{
  v2 = a1 & 1;
  v3 = direct field offset for CanvasElementViewController._isImageAnalysisEnabled;
  v4 = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
    v6 = specialized CanvasElementViewController.imageView.getter();
    if (v6)
    {
      v7 = v6;
      MEMORY[0x1EEE9AC00](v6);
      type metadata accessor for Image(0);
      _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
      swift_getKeyPath();
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v7[direct field offset for ImageElementView.isImageAnalysisEnabled] = *(v1 + v3);
      ImageElementView.updateMediaViewImageAnalysis()();
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    type metadata accessor for Image(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void specialized CanvasElementViewController._rulerHostingDelegate.setter(void *a1)
{
  v2 = v1;
  v4 = direct field offset for CanvasElementViewController.__rulerHostingDelegate;
  v5 = *(v1 + direct field offset for CanvasElementViewController.__rulerHostingDelegate);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Image(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for RulerHostingDelegate();
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void specialized CanvasElementViewController.rulerHostView.setter(void *a1)
{
  v3 = direct field offset for CanvasElementViewController._rulerHostView;
  v4 = *(v1 + direct field offset for CanvasElementViewController._rulerHostView);
  if (!v4)
  {
    if (!a1)
    {
      v10 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Image(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v9 = v6;
  specialized CanvasElementViewController._rulerHostView.didset(v10);
}

void specialized CanvasElementViewController._isSixChannelBlendingEnabled.didset()
{
  v1 = v0;
  v12 = type metadata accessor for Image(0);
  v2 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v0 + direct field offset for CanvasElementViewController._canvasView);
  if (v4)
  {
    v5 = *(v4 + direct field offset for CanvasView.canvasTiledView);
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v3);
      swift_getKeyPath();
      v6 = v5;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v7 = direct field offset for CanvasElementViewController._isSixChannelBlendingEnabled;
      swift_beginAccess();
      if (*(v1 + v7))
      {
        v8 = [objc_opt_self() standardUserDefaults];
        v9 = MEMORY[0x1DA6CCED0](0xD000000000000036, 0x80000001D4088200);
        v10 = [v8 BOOLForKey_];

        v11 = v10 ^ 1;
      }

      else
      {
        v11 = 0;
      }

      [v6 setSixChannelBlending_];
    }
  }
}

uint64_t specialized CanvasElementViewController.imageView.getter()
{
  v10 = type metadata accessor for Image(0);
  v11 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  swift_getKeyPath();
  v12 = v0;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + direct field offset for CanvasElementViewController._canvasView);
  if (!v1)
  {
    return 0;
  }

  v2 = *&v1[direct field offset for CanvasView.zoomView];
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;
  v5 = [v4 subviews];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1DA6CE0C0](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v8 = *(v6 + 32);
  }

  v9 = v8;

  type metadata accessor for ImageElementView(0);
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

void specialized closure #1 in CanvasElementViewController.isImageAnalysisEnabled.setter(uint64_t a1, char a2)
{
  v4 = direct field offset for CanvasElementViewController._isImageAnalysisEnabled;
  swift_beginAccess();
  *(a1 + v4) = a2;
  v5 = specialized CanvasElementViewController.imageView.getter();
  if (v5)
  {
    v6 = v5;
    MEMORY[0x1EEE9AC00](v5);
    type metadata accessor for Image(0);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    swift_getKeyPath();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6[direct field offset for ImageElementView.isImageAnalysisEnabled] = *(a1 + v4);
    ImageElementView.updateMediaViewImageAnalysis()();
  }
}

void specialized CanvasElementViewController.zoomRect(for:with:)()
{
  v1 = type metadata accessor for Image(0);
  v2 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = direct field offset for CanvasElementViewController._canvasView;
  v4 = *(v0 + direct field offset for CanvasElementViewController._canvasView);
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = *(v4 + direct field offset for CanvasView.canvasScrollView);
  if (!v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = [v5 frame];
  MEMORY[0x1EEE9AC00](v6);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v0 + v3);
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(v7 + direct field offset for CanvasView.canvasScrollView);
  if (v8)
  {
    [v8 frame];
    return;
  }

LABEL_9:
  __break(1u);
}

BOOL specialized CanvasElementViewController.acceptSingleTouch(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Image(0);
  v5 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  swift_getKeyPath();
  v14 = v1;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v1 + direct field offset for CanvasElementViewController._bannerView);
  if (v7 && (v8 = v7, [a1 locationInView_], v9 = objc_msgSend(v8, sel_pointInside_withEvent_, 0), v8, (v9 & 1) != 0))
  {
    return 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = *(v2 + direct field offset for CanvasElementViewController._canvasView);
    if (v11)
    {
      v12 = v11;
      v10 = AnyCanvas.acceptSingleTouch(_:)(a1);
    }

    else
    {
      return 0;
    }
  }

  return v10;
}

void specialized CanvasElementViewController.merge<A>(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v75 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v80 = &v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v75 - v10;
  v11 = type metadata accessor for Image(0);
  v89 = v11;
  v12 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  v90 = v12;
  v91 = &protocol witness table for Image;
  swift_getKeyPath();
  v92 = v1;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(*&v1 + direct field offset for CanvasElementViewController._canvasView);
  if (!v13)
  {
    (*(v9 + 16))(v5, a1, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    specialized CanvasElementViewController.updateViewForPaper(_:)(v5);
    outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
    return;
  }

  v86 = v9;
  v14 = direct field offset for Canvas.paperView;
  v15 = *&v13[direct field offset for Canvas.paperView];
  swift_beginAccess();
  v16 = v15;
  v17 = v13;
  Capsule.merge<A>(_:)();
  swift_endAccess();

  v18 = *&v17[direct field offset for CanvasView.canvasScrollView];
  if (!v18)
  {
    goto LABEL_30;
  }

  v76 = direct field offset for CanvasView.canvasScrollView;
  [v18 contentOffset];
  v20 = v19;
  v22 = v21;
  v81 = v13;
  v82 = v14;
  v23 = *&v13[v14];
  v24 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x3F0);
  swift_beginAccess();
  v25 = v86;
  v26 = *(v86 + 16);
  v27 = v23 + v24;
  v28 = v87;
  v85 = v86 + 16;
  v84 = v26;
  v29 = (v26)(v87, v27, v8);
  MEMORY[0x1EEE9AC00](v29);
  v78 = v11;
  *(&v75 - 4) = v11;
  *(&v75 - 3) = v12;
  v77 = v12;
  *(&v75 - 2) = &protocol witness table for Image;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v31 = *(v25 + 8);
  v30 = v25 + 8;
  v83 = v31;
  v31(v28, v8);
  v32 = v92;
  v33 = v93;
  specialized Canvas.mergeToCanvasElements()();
  v34 = direct field offset for Canvas.subscriptions;
  swift_beginAccess();
  v35 = *&v17[v34];
  v36 = v17;
  if (v35 >> 62)
  {
    v37 = __CocoaSet.count.getter();
  }

  else
  {
    v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = v82;
  v39 = MEMORY[0x1E69E7D40];
  if (!v37)
  {
    goto LABEL_17;
  }

  if (v37 < 1)
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v86 = v30;
  v79 = v8;
  v88 = v35 & 0xC000000000000001;

  for (i = 0; i != v37; ++i)
  {
    if (v88)
    {
      v50 = MEMORY[0x1DA6CE0C0](i, v35);
    }

    else
    {
      v50 = *(v35 + 8 * i + 32);
    }

    v51 = AnyCanvas.isLiveEditing()();
    v52 = *v50;
    if (!v51 || (*(v50 + *(v52 + 136)) & 1) != 0)
    {
      v41 = v80;
      outlined init with copy of Date?(v50 + *(v52 + 120), v80, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMR);
      v42 = *&v81[v38];
      v43 = *((*v39 & *v42) + 0x3F0);
      swift_beginAccess();
      v44 = v42 + v43;
      v45 = v36;
      v46 = v87;
      v47 = v79;
      v84(v87, v44, v79);
      dispatch thunk of AnySubscriberBase.receive(_:)();

      v48 = v46;
      v36 = v45;
      v39 = MEMORY[0x1E69E7D40];
      v49 = v47;
      v38 = v82;
      v83(v48, v49);
      outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMR);
    }

    else
    {
    }
  }

  v8 = v79;
LABEL_17:
  v53 = v81;
  if (*&v36[direct field offset for Canvas.multipeerConnection])
  {
    v54 = *&v81[v38];
    v55 = *((*MEMORY[0x1E69E7D40] & *v54) + 0x3F0);
    swift_beginAccess();
    v56 = v54 + v55;
    v57 = v87;
    v84(v87, v56, v8);

    CRMulticastSyncManager.sync(_:sendDelta:)();

    v83(v57, v8);
  }

  specialized Canvas.scheduleFinalizeTask()();
  v58 = direct field offset for Canvas.xpcMulticast;
  swift_beginAccess();
  v59 = v78;
  v60 = v77;
  v61 = v76;
  if (*&v36[v58])
  {
    v62 = *&v53[v38];
    v63 = *((*MEMORY[0x1E69E7D40] & *v62) + 0x3F0);
    swift_beginAccess();
    v64 = v62 + v63;
    v38 = v82;
    v65 = v87;
    v84(v87, v64, v8);

    CRMulticastSyncManager.sync(_:sendDelta:)();

    v83(v65, v8);
  }

  v66 = *&v36[v61];
  if (!v66)
  {
    goto LABEL_31;
  }

  specialized CanvasView.updateAfterDidScroll(_:)(v66);
  v67 = *&v53[v38];
  v68 = *((*MEMORY[0x1E69E7D40] & *v67) + 0x3F0);
  swift_beginAccess();
  v69 = v67 + v68;
  v70 = v87;
  v71 = (v84)(v87, v69, v8);
  MEMORY[0x1EEE9AC00](v71);
  *(&v75 - 4) = v59;
  *(&v75 - 3) = v60;
  *(&v75 - 2) = &protocol witness table for Image;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v83(v70, v8);
  v72 = *&v36[v61];
  if (!v72)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v72 setContentOffset_];
  v73 = *&v36[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  if (!v73)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v74 = *(v73 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController);
  if (v74)
  {
    *(v74 + direct field offset for MiniMenuController.needsStateUpdate) = 1;
  }
}

void specialized CanvasElementViewController._bannerViewConfiguration.didset()
{
  v1 = v0;
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  swift_getKeyPath();
  aBlock[0] = v0;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((v0[direct field offset for CanvasElementViewController._isUpdatingBannerConfiguration] & 1) == 0)
  {
    v70 = direct field offset for CanvasElementViewController._isUpdatingBannerConfiguration;
    MEMORY[0x1EEE9AC00](v2);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    MEMORY[0x1EEE9AC00](v4);
    swift_getKeyPath();
    aBlock[0] = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = &v0[direct field offset for CanvasElementViewController._bannerViewConfiguration];
    v6 = swift_beginAccess();
    v7 = *v5;
    v8 = *(v5 + 2);
    v67 = *(v5 + 1);
    v68 = *(v5 + 3);
    v9 = *(v5 + 5);
    v69 = *(v5 + 4);
    v10 = *(v5 + 6);
    MEMORY[0x1EEE9AC00](v6);
    swift_getKeyPath();
    if (v7 == 1)
    {
      aBlock[0] = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v11 = *&v1[direct field offset for CanvasElementViewController._bannerView];
      if (v11)
      {
        v11 = [v11 removeFromSuperview];
      }

      v12 = v70;
      if (v1[v70] == 1)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }

    aBlock[0] = v1;
    v66 = v10;
    v63 = v10;
    v62 = v7;

    v13 = v9;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = direct field offset for CanvasElementViewController._bannerView;
    v15 = *&v1[direct field offset for CanvasElementViewController._bannerView];
    if (v15)
    {
      v15 = [v15 superview];
      if (v15)
      {

        outlined consume of BannerViewConfiguration?(v7, v67, v8, v68, v69, v9, v10);
        v12 = v70;
        if (v1[v70] == 1)
        {
LABEL_10:
          MEMORY[0x1EEE9AC00](v11);
          v16 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v16);
          aBlock[0] = v1;
LABEL_28:
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

          return;
        }

        goto LABEL_29;
      }
    }

    v60 = v7;
    v65 = v8;
    v61 = v9;
    MEMORY[0x1EEE9AC00](v15);
    swift_getKeyPath();
    aBlock[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = *&v1[v14];
    if (!v18)
    {
      outlined consume of BannerViewConfiguration?(v7, v67, v8, v68, v69, v9, v66);
      goto LABEL_26;
    }

    MEMORY[0x1EEE9AC00](v17);
    swift_getKeyPath();
    aBlock[0] = v1;
    v19 = v18;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = *&v1[direct field offset for CanvasElementViewController._canvasView];
    if (v20)
    {
      [v20 addSubview_];
    }

    if (v8)
    {
      v21 = MEMORY[0x1DA6CCED0](v67);
      if (v69)
      {
LABEL_16:
        v22 = MEMORY[0x1DA6CCED0](v68);
        goto LABEL_20;
      }
    }

    else
    {
      v21 = 0;
      if (v69)
      {
        goto LABEL_16;
      }
    }

    v22 = 0;
LABEL_20:
    v24 = [objc_opt_self() configurationWithImage:v62 title:v21 subtitle:v22 primaryAction:v13 dismissAction:v63];

    [v19 populateWithConfiguration_];
    v25 = v19;
    [v25 setTranslatesAutoresizingMaskIntoConstraints_];
    v26 = [v25 bottomAnchor];
    v27 = [v1 view];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 safeAreaLayoutGuide];

      v30 = [v29 topAnchor];
      v31 = [v26 constraintEqualToAnchor_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D405B630;
      *(v32 + 32) = v31;
      v64 = v31;
      v33 = [v25 leadingAnchor];
      v34 = [v1 view];
      if (v34)
      {
        v35 = v34;
        v36 = [v34 leadingAnchor];

        v37 = [v33 constraintEqualToAnchor:v36 constant:8.0];
        *(v32 + 40) = v37;
        v38 = [v25 leadingAnchor];
        v39 = [v1 view];
        if (v39)
        {
          v40 = v39;
          v41 = [v39 safeAreaLayoutGuide];

          v42 = [v41 leadingAnchor];
          v43 = [v38 constraintGreaterThanOrEqualToAnchor:v42 constant:8.0];

          *(v32 + 48) = v43;
          v44 = [v25 trailingAnchor];

          v45 = [v1 view];
          if (v45)
          {
            v46 = v45;
            v47 = objc_opt_self();
            v48 = [v46 safeAreaLayoutGuide];

            v49 = [v48 &selRef_imageAnalysisOrientation + 4];
            v50 = [v44 constraintEqualToAnchor:v49 constant:-8.0];

            *(v32 + 56) = v50;
            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v47 activateConstraints_];

            v52 = [v1 view];
            if (v52)
            {
              v53 = v52;
              [v52 layoutIfNeeded];

              v54 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v55 = swift_allocObject();
              v55[2] = v54;
              v55[3] = v64;
              v55[4] = v25;
              aBlock[4] = partial apply for specialized closure #1 in CanvasElementViewController._bannerViewConfiguration.didset;
              aBlock[5] = v55;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
              aBlock[3] = &block_descriptor_298_0;
              v56 = _Block_copy(aBlock);
              v57 = v25;
              v58 = v64;

              [v57 showWithAnimations_];
              outlined consume of BannerViewConfiguration?(v60, v67, v65, v68, v69, v61, v66);
              _Block_release(v56);

LABEL_26:
              v12 = v70;
              if (v1[v70] == 1)
              {
                MEMORY[0x1EEE9AC00](v23);
                v59 = swift_getKeyPath();
                MEMORY[0x1EEE9AC00](v59);
                aBlock[0] = v1;
                goto LABEL_28;
              }

LABEL_29:
              v1[v12] = 0;
              return;
            }

LABEL_35:
            __break(1u);
            return;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }
}