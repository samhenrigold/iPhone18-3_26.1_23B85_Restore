Swift::Void __swiftcall ImageElementView.setMissingImage()()
{
  v1 = type metadata accessor for ImageElementView.ImageState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  if (*(v0 + direct field offset for ImageElementView.shouldShowMissingImagePlaceholder) == 1)
  {
    v7 = direct field offset for ImageElementView.presentedState;
    swift_beginAccess();
    outlined init with copy of ImageElementView.ImageOrFile(v0 + v7, v6, type metadata accessor for ImageElementView.ImageState);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v7) = specialized static ImageElementView.ImageState.== infix(_:_:)(v6, v3);
    outlined destroy of ImageElementView.ImageOrFile(v3, type metadata accessor for ImageElementView.ImageState);
    if (v7)
    {
      outlined destroy of ImageElementView.ImageOrFile(v6, type metadata accessor for ImageElementView.ImageState);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      v8 = specialized static ImageElementView.ImageState.== infix(_:_:)(v6, v3);
      outlined destroy of ImageElementView.ImageOrFile(v3, type metadata accessor for ImageElementView.ImageState);
      outlined destroy of ImageElementView.ImageOrFile(v6, type metadata accessor for ImageElementView.ImageState);
      if ((v8 & 1) == 0)
      {
        return;
      }
    }

    v9 = direct field offset for ImageElementView.contentView;
    [*(v0 + direct field offset for ImageElementView.contentView) bounds];
    v14 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
    v15 = *(v0 + v9);
    v16 = v14;
    [v15 addSubview_];
    if (one-time initialization token for imageMissingBackgroundColor != -1)
    {
      swift_once();
    }

    [v16 setBackgroundColor_];
    v17 = [objc_opt_self() configurationWithPointSize_];
    v18 = MEMORY[0x1DA6CCED0](0x6F746F6870, 0xE500000000000000);
    v19 = [objc_opt_self() systemImageNamed:v18 withConfiguration:v17];

    [v16 setImage_];
    [v16 setContentMode_];

    if (one-time initialization token for imageMissingIconColor != -1)
    {
      swift_once();
    }

    [v16 setTintColor_];
    [v16 setAutoresizingMask_];

    v20 = *(v0 + direct field offset for ImageElementView.missingImageView);
    *(v0 + direct field offset for ImageElementView.missingImageView) = v16;
  }
}

Swift::Void __swiftcall ImageElementView.updateMediaViewImageAnalysis()()
{
  v1 = *(v0 + direct field offset for ImageElementView.mediaView);
  if (!v1)
  {
    return;
  }

  v2 = direct field offset for ImageElementView.isImageAnalysisEnabled;
  v3 = *(v0 + direct field offset for ImageElementView.isImageAnalysisEnabled);
  v14 = v1;
  [v14 setIsImageAnalysisEnabled_];
  v4 = v14;
  if (*(v0 + v2) == 1)
  {
    v5 = [v14 imageAnalysisContext];
    if (v5)
    {
      [v5 setDelegate_];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    v6 = ImageElementView.pendingImageAnalysisObservers.getter();
    v7 = [v6 allObjects];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo57PPKPhotosMediaViewImageAnalysisInteractionContextObserver_pMd, &_sSo57PPKPhotosMediaViewImageAnalysisInteractionContextObserver_pMR);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      v9 = __CocoaSet.count.getter();
      if (v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_7:
        if (v9 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v9; ++i)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1DA6CE0C0](i, v8);
          }

          else
          {
            v11 = *(v8 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          v12 = [v14 imageAnalysisContext];
          if (v12)
          {
            [v12 addAnalysisObserver_];
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }
      }
    }

    v13 = *(v0 + direct field offset for ImageElementView.$__lazy_storage_$_pendingImageAnalysisObservers);
    [v13 removeAllObjects];

    v4 = v14;
  }
}

void ImageElementView.setImage(_:canAnimate:)(uint64_t a1, char a2)
{
  v5 = type metadata accessor for ImageElementView.ImageOrFile(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  if (*&v2[direct field offset for ImageElementView.mediaView] && (a2 & 1) != 0)
  {
    v8 = objc_opt_self();
    v9 = *&v2[direct field offset for ImageElementView.contentView];
    outlined init with copy of ImageElementView.ImageOrFile(a1, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ImageElementView.ImageOrFile);
    v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    outlined init with take of CRAssetOrData(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for ImageElementView.ImageOrFile);
    aBlock[4] = partial apply for closure #1 in ImageElementView.setImage(_:canAnimate:);
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_220;
    v12 = _Block_copy(aBlock);
    v13 = v9;
    v14 = v2;

    [v8 transitionWithView:v13 duration:5242880 options:v12 animations:0 completion:0.3];
    _Block_release(v12);
  }

  else
  {

    perform #1 () in ImageElementView.setImage(_:canAnimate:)(v2, a1);
  }
}

uint64_t perform #1 () in ImageElementView.setImage(_:canAnimate:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageElementView.ImageOrFile(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v15[-v9];
  v11 = direct field offset for ImageElementView.missingImageView;
  [*(a1 + direct field offset for ImageElementView.missingImageView) removeFromSuperview];
  v12 = *(a1 + v11);
  *(a1 + v11) = 0;

  outlined init with copy of ImageElementView.ImageOrFile(a2, v10, type metadata accessor for ImageElementView.ImageOrFile);
  v13 = direct field offset for ImageElementView.image;
  swift_beginAccess();
  outlined init with copy of ImageElementView.ImageOrFile(a1 + v13, v6, type metadata accessor for ImageElementView.ImageOrFile);
  swift_beginAccess();
  outlined assign with copy of ImageElementView.ImageOrFile(v10, a1 + v13);
  swift_endAccess();
  ImageElementView.image.didset(v6);
  outlined destroy of ImageElementView.ImageOrFile(v6, type metadata accessor for ImageElementView.ImageOrFile);
  return outlined destroy of ImageElementView.ImageOrFile(v10, type metadata accessor for ImageElementView.ImageOrFile);
}

Swift::Void __swiftcall ImageElementView.addMediaView(_:)(PPKPhotosMediaView *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Image(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &v19 - v10;
  v12 = direct field offset for ImageElementView.contentView;
  [*(v2 + direct field offset for ImageElementView.contentView) bounds];
  [(PPKPhotosMediaView *)a1 setFrame:?];
  [(PPKPhotosMediaView *)a1 setAutoresizingMask:18];
  [(PPKPhotosMediaView *)a1 setContentMode:1];
  [(PPKPhotosMediaView *)a1 setBackgroundColor:0];
  v13 = *(v2 + direct field offset for ImageElementView.mediaView);
  *(v2 + direct field offset for ImageElementView.mediaView) = a1;
  v14 = a1;

  [(PPKPhotosMediaView *)v14 setIsImageAnalysisEnabled:*(v2 + direct field offset for ImageElementView.isImageAnalysisEnabled)];
  v15 = [v2 superview];
  [(PPKPhotosMediaView *)v14 setImageAnalysisInteractionHostView:v15];

  v16 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  (*(v8 + 16))(v11, v2 + v16, v7);
  Capsule.root.getter();
  (*(v8 + 8))(v11, v7);
  v17 = off_1F4F5EE38(v4);
  outlined destroy of ImageElementView.ImageOrFile(v6, type metadata accessor for Image);
  v18 = 0;
  if ((v17 - 2) <= 6)
  {
    v18 = qword_1D4075108[v17 - 2];
  }

  [(PPKPhotosMediaView *)v14 setImageAnalysisOrientation:v18];
  [(PPKPhotosMediaView *)v14 setClipsToBounds:1];
  [*(v2 + v12) addSubview_];
  ImageElementView.addInnerBorderLayerIfNeeded()();
  ImageElementView.updateRoundedCorners()();
}

Swift::Void __swiftcall ImageElementView.updateMediaViewCropBounds(_:)(__C::CGRect_optional *a1)
{
  if (a1->is_nil)
  {
    v2 = direct field offset for ImageElementView.mediaView;
    v3 = *(v1 + direct field offset for ImageElementView.mediaView);
    if (!v3)
    {
      return;
    }

    [v3 setStillImageContentsRect_];
    v4 = *(v1 + v2);
    if (!v4)
    {
      return;
    }

    v5 = 1;
  }

  else
  {
    v6 = direct field offset for ImageElementView.mediaView;
    [*(v1 + direct field offset for ImageElementView.mediaView) setStillImageContentsRect_];
    v4 = *(v1 + v6);
    if (!v4)
    {
      return;
    }

    v5 = 2;
  }

  [v4 setContentMode_];
}

id ImageElementView.image.didset(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRStableAsset();
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ImageElementView.ImageOrFile(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v16 = direct field offset for ImageElementView.image;
  swift_beginAccess();
  outlined init with copy of ImageElementView.ImageOrFile(&v2[v16], v15, type metadata accessor for ImageElementView.ImageOrFile);
  LOBYTE(a1) = specialized static ImageElementView.ImageOrFile.== infix(_:_:)(v15, a1);
  result = outlined destroy of ImageElementView.ImageOrFile(v15, type metadata accessor for ImageElementView.ImageOrFile);
  if ((a1 & 1) == 0)
  {
    outlined init with copy of ImageElementView.ImageOrFile(&v2[v16], v12, type metadata accessor for ImageElementView.ImageOrFile);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v19 = v37;
        (*(v37 + 32))(v9, v12, v7);
        v20 = *&v2[direct field offset for ImageElementView.mediaView];
        if (v20)
        {
          v21 = v20;
          CRStableAsset.url.getter();
          URL._bridgeToObjectiveC()(v22);
          v24 = v23;
          (*(v36 + 8))(v6, v4);
          [v21 setURL_];
        }

        else
        {
          CRStableAsset.url.getter();
          v28 = objc_allocWithZone(PPKPhotosMediaView);
          URL._bridgeToObjectiveC()(v29);
          v31 = v30;
          v24 = [v28 initWithImageURL_];

          (*(v36 + 8))(v6, v4);
          ImageElementView.addMediaView(_:)(v24);
        }

        (*(v19 + 8))(v9, v7);
      }
    }

    else
    {
      v25 = *v12;
      v26 = *&v2[direct field offset for ImageElementView.mediaView];
      if (v26)
      {
        v27 = v26;
        [v27 setImage:v25 orientation:0];
      }

      else
      {
        v32 = [objc_allocWithZone(PPKPhotosMediaView) initWithImage:v25 orientation:0];
        ImageElementView.addMediaView(_:)(v32);
      }
    }

    ImageElementView.updateMediaViewImageAnalysis()();
    v33 = [v2 traitCollection];
    v34 = [v33 imageDynamicRange];

    return [*&v2[direct field offset for ImageElementView.mediaView] setIsHDRAllowed_];
  }

  return result;
}

double ImageElementView.imageAnalysisDelegate.didset(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_unknownObjectRelease();
    if (v5 == a1)
    {
      return result;
    }
  }

  else if (!a1)
  {
    return result;
  }

  v6 = *(v1 + direct field offset for ImageElementView.mediaView);
  if (v6)
  {
    v7 = [v6 imageAnalysisContext];
    if (v7)
    {
      [v7 setDelegate_];
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }
  }

  return result;
}

id ImageElementView.pendingImageAnalysisObservers.getter()
{
  v1 = direct field offset for ImageElementView.$__lazy_storage_$_pendingImageAnalysisObservers;
  v2 = *(v0 + direct field offset for ImageElementView.$__lazy_storage_$_pendingImageAnalysisObservers);
  if (v2)
  {
    v3 = *(v0 + direct field offset for ImageElementView.$__lazy_storage_$_pendingImageAnalysisObservers);
  }

  else
  {
    v4 = [objc_opt_self() weakObjectsHashTable];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

Swift::Void __swiftcall ImageElementView.endLiveEdit(undoable:discard:)(Swift::Bool undoable, Swift::Bool discard)
{
  v16 = undoable;
  v17 = discard;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F8);
  swift_beginAccess();
  outlined init with copy of Date?(v2 + v9, v8, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v11 = *(*(v10 - 8) + 48);
  v12 = v11(v8, 1, v10);
  outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  if (v12 != 1 || (v13 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x558))) != 0 && *(v13 + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveStreamingDisplayLink))
  {
    outlined init with copy of Date?(v2 + v9, v5, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
    v14 = v11(v5, 1, v10);
    outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
    if (v14 != 1 || (v15 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x558))) != 0 && *(v15 + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveStreamingDisplayLink))
    {
      specialized CanvasElementView.endLiveEdit(undoable:discard:)(v16, v17);
      specialized ContainerCanvasElementView.transformDrawing()();
    }

    ImageElementView.updateUI()();
  }
}

void @objc ImageElementView.didMoveToWindow()(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for ImageElementView(0);
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, sel_didMoveToWindow);
  v2 = [v1 window];
  if (v2)
  {

    specialized ContainerCanvasElementView.screenScaleDidChange()();
    ImageElementView.updateUI()();
  }
}

void @objc ImageElementView.didMoveToSuperview()(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for ImageElementView(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_didMoveToSuperview);
  v2 = *&v1[direct field offset for ImageElementView.mediaView];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 superview];
    [v3 setImageAnalysisInteractionHostView_];
  }
}

Swift::Void __swiftcall ImageElementView.screenScaleDidChange()()
{
  specialized ContainerCanvasElementView.screenScaleDidChange()();

  ImageElementView.updateUI()();
}

unint64_t ImageElementView.didZoom(in:)(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchTime();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v26 - v8;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  MEMORY[0x1EEE9AC00](v9);
  result = specialized ContainerCanvasElementView.subelementViews.getter();
  v11 = result;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    v12 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = 0;
  v14 = MEMORY[0x1E69E7D40];
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1DA6CE0C0](v13, v11);
    }

    else
    {
      v15 = *(v11 + 8 * v13 + 32);
    }

    v16 = v15;
    ++v13;
    (*((*v14 & *v15) + 0x260))(a1);
  }

  while (v12 != v13);
LABEL_10:

  ImageElementView.updateRoundedCorners()();
  ImageElementView.updateInnerBorderWidth()();
  v17 = direct field offset for ImageElementView.updateAfterZoomWorkItem;
  if (*(v3 + direct field offset for ImageElementView.updateAfterZoomWorkItem))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in ImageElementView.didZoom(in:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_56;
  _Block_copy(aBlock);
  v31 = MEMORY[0x1E69E7CC0];
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v19 = DispatchWorkItem.init(flags:block:)();

  *(v3 + v17) = v19;

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v20 = static OS_dispatch_queue.main.getter();
  v21 = v27;
  static DispatchTime.now()();
  v22 = v28;
  + infix(_:_:)();
  v23 = v30;
  v24 = *(v29 + 8);
  result = v24(v21, v30);
  v25 = *(v3 + v17);
  if (v25)
  {

    MEMORY[0x1DA6CD850](v22, v25);

    return v24(v22, v23);
  }

LABEL_15:
  __break(1u);
  return result;
}

void closure #1 in ImageElementView.didZoom(in:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    ImageElementView.updateUI()();
  }
}

Swift::Void __swiftcall ImageElementView.didEndDrawing()()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
  }

  v4 = [v1 traitCollection];
  v5 = [v4 imageDynamicRange];

  v6 = *&v1[direct field offset for ImageElementView.mediaView];

  [v6 setIsHDRAllowed_];
}

double ImageElementView.cropBounds.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
  swift_beginAccess();
  (*(v2 + 16))(v4, &v0[v5], v1);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v2 + 8))(v4, v1);
  return *&v7[1];
}

void ImageElementView.cropBounds.setter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v95 = type metadata accessor for ContentsBounds(0);
  v96 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v90 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v94 = type metadata accessor for Image(0) - 8;
  MEMORY[0x1EEE9AC00](*&v94);
  *&v92 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v91 = &v89 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v89 - v19;
  v21 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x3F0);
  swift_beginAccess();
  v22 = *(v15 + 16);
  v22(v20, &v5[v21], v14);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v23 = *(v15 + 8);
  v97 = *&v20;
  v23(v20, v14);
  x = v100.origin.x;
  y = v100.origin.y;
  width = v100.size.width;
  height = v100.size.height;
  v101.origin.x = a1;
  v101.origin.y = a2;
  v101.size.width = a3;
  v101.size.height = a4;
  v98 = CGRectGetWidth(v101);
  v102.origin.x = x;
  v102.origin.y = y;
  v102.size.width = width;
  v102.size.height = height;
  v93 = v98 / CGRectGetWidth(v102);
  v103.origin.x = a1;
  v103.origin.y = a2;
  v103.size.width = a3;
  v103.size.height = a4;
  v28 = CGRectGetHeight(v103);
  v104.origin.x = x;
  v104.origin.y = y;
  v104.size.width = width;
  v104.size.height = height;
  v29 = v28 / CGRectGetHeight(v104);
  v105.origin.x = x;
  v105.origin.y = y;
  v105.size.width = width;
  v105.size.height = height;
  v30 = (a1 - x) / CGRectGetWidth(v105);
  v106.origin.x = x;
  v106.origin.y = y;
  v106.size.width = width;
  v106.size.height = height;
  v31 = (a2 - y) / CGRectGetHeight(v106);
  v98 = *&v5;
  v22(v17, &v5[v21], v14);
  v32 = *&v92;
  Capsule.root.getter();
  v23(v17, v14);
  v33 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  CRRegister.wrappedValue.getter();
  v34 = v95;
  outlined destroy of ImageElementView.ImageOrFile(v32, type metadata accessor for Image);
  if ((*(*&v96 + 48))(v33, 1, v34) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
LABEL_5:
    v133.origin.x = 0.0;
    v133.origin.y = 0.0;
    v133.size.width = 1.0;
    v133.size.height = 1.0;
    v107.origin.x = v30;
    v107.origin.y = v31;
    v107.size.width = v93;
    v107.size.height = v29;
    v108 = CGRectIntersection(v107, v133);
    v36 = v108.origin.x;
    v37 = v108.origin.y;
    v38 = v108.size.width;
    v39 = v108.size.height;
    v100 = v108;
    v96 = v108.origin.x;
    v40 = v97;
    v22(*&v97, (*&v98 + v21), v14);
    swift_getKeyPath();
    Capsule.subscript.getter();

    v23(*&v40, v14);
    v41 = v99.origin.x;
    v42 = v99.origin.y;
    size = v99.size;
    v109.origin.x = v36;
    v109.origin.y = v37;
    v109.size.width = v38;
    v109.size.height = v39;
    v44 = CGRectGetWidth(v109);
    v110.origin.x = v41;
    v110.origin.y = v42;
    v110.size = size;
    v97 = v44 * CGRectGetWidth(v110);
    v45 = v96;
    v111.origin.x = v96;
    v111.origin.y = v37;
    v111.size.width = v38;
    v111.size.height = v39;
    v46 = CGRectGetHeight(v111);
    v112.origin.x = v41;
    v112.origin.y = v42;
    v112.size = size;
    v47 = v46 * CGRectGetHeight(v112);
    v113.origin.x = v41;
    v113.origin.y = v42;
    v113.size = size;
    v48 = v41 + v45 * CGRectGetWidth(v113);
    v114.origin.x = v41;
    v114.origin.y = v42;
    v114.size = size;
    v49 = v42 + v37 * CGRectGetHeight(v114);
    v50 = 1.0;
    v51 = v48;
    v52 = v97;
    v53 = v47;
    goto LABEL_6;
  }

  v35 = v90;
  outlined init with copy of ImageElementView.ImageOrFile(v33, v90, type metadata accessor for ContentsBounds);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of ImageElementView.ImageOrFile(v35, type metadata accessor for ContentsBounds);
    outlined destroy of ImageElementView.ImageOrFile(v33, type metadata accessor for ContentsBounds);
    goto LABEL_5;
  }

  v62 = *v35;
  v63 = *(v35 + 8);
  v65 = *(v35 + 16);
  v64 = *(v35 + 24);
  outlined destroy of ImageElementView.ImageOrFile(v33, type metadata accessor for ContentsBounds);
  v116.origin.x = v30;
  v116.origin.y = v31;
  v66 = v93;
  v116.size.width = v93;
  v116.size.height = v29;
  v96 = CGRectGetWidth(v116);
  v117.origin.x = v62;
  v117.origin.y = v63;
  v117.size.width = v65;
  v117.size.height = v64;
  v96 = v96 * CGRectGetWidth(v117);
  v118.origin.x = v30;
  v118.origin.y = v31;
  v118.size.width = v66;
  v118.size.height = v29;
  v67 = CGRectGetHeight(v118);
  v119.origin.x = v62;
  v119.origin.y = v63;
  v119.size.width = v65;
  v119.size.height = v64;
  v68 = v67 * CGRectGetHeight(v119);
  v120.origin.x = v62;
  v120.origin.y = v63;
  v120.size.width = v65;
  v120.size.height = v64;
  v69 = CGRectGetWidth(v120);
  v89 = v62;
  v70 = v62 + v30 * v69;
  v121.origin.x = v62;
  v121.origin.y = v63;
  v121.size.width = v65;
  v95 = *&v64;
  v121.size.height = v64;
  v122.origin.y = v63 + v31 * CGRectGetHeight(v121);
  v134.origin.x = 0.0;
  v134.origin.y = 0.0;
  v134.size.width = 1.0;
  v134.size.height = 1.0;
  v122.origin.x = v70;
  v122.size.width = v96;
  v122.size.height = v68;
  v123 = CGRectIntersection(v122, v134);
  v94 = v123.origin.x;
  v96 = v123.origin.y;
  v93 = v123.size.width;
  v92 = v123.size.height;
  v100 = v123;
  v71 = v97;
  v22(*&v97, (*&v98 + v21), v14);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v23(*&v71, v14);
  v72 = v99.origin.x;
  v73 = v99.origin.y;
  v74 = v99.size;
  v75 = CGRectGetWidth(v99);
  v76 = v89;
  v124.origin.x = v89;
  v124.origin.y = v63;
  v124.size.width = v65;
  *&v124.size.height = v95;
  v77 = v75 / CGRectGetWidth(v124);
  v125.origin.x = v72;
  v125.origin.y = v73;
  v125.size = v74;
  v78 = CGRectGetHeight(v125);
  v126.origin.x = v76;
  v126.origin.y = v63;
  v126.size.width = v65;
  *&v126.size.height = v95;
  v79 = v78 / CGRectGetHeight(v126);
  v80 = v72 - v76 * v77;
  v81 = v73 - v63 * v79;
  v82 = v94;
  v127.origin.x = v94;
  v83 = v96;
  v127.origin.y = v96;
  v84 = v93;
  v127.size.width = v93;
  v85 = v92;
  v127.size.height = v92;
  v97 = CGRectGetWidth(v127);
  v128.origin.x = v80;
  v128.origin.y = v81;
  v128.size.width = v77;
  v128.size.height = v79;
  v97 = v97 * CGRectGetWidth(v128);
  v129.origin.x = v82;
  v129.origin.y = v83;
  v129.size.width = v84;
  v129.size.height = v85;
  v86 = CGRectGetHeight(v129);
  v130.origin.x = v80;
  v130.origin.y = v81;
  v130.size.width = v77;
  v130.size.height = v79;
  v87 = v86 * CGRectGetHeight(v130);
  v131.origin.x = v80;
  v131.origin.y = v81;
  v131.size.width = v77;
  v131.size.height = v79;
  v88 = v80 + v82 * CGRectGetWidth(v131);
  v132.origin.x = v80;
  v132.origin.y = v81;
  v132.size.width = v77;
  v132.size.height = v79;
  v49 = v81 + v96 * CGRectGetHeight(v132);
  v50 = 1.0;
  v51 = v88;
  v52 = v97;
  v53 = v87;
LABEL_6:
  v115.origin.x = CGRect.rounded(scale:)(v50, v51, v49, v52, v53);
  v54 = v115.origin.x;
  v55 = v115.origin.y;
  v99 = v115;
  IsEmpty = CGRectIsEmpty(v115);
  if (IsEmpty)
  {
    v99.origin.x = v54;
    v99.origin.y = v55;
    __asm { FMOV            V0.2D, #1.0 }

    v99.size = _Q0;
  }

  MEMORY[0x1EEE9AC00](IsEmpty);
  *(&v89 - 2) = &v100;
  *(&v89 - 1) = &v99;
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  specialized CanvasElementView.commit()();
  ImageElementView.updateUI()();
}

uint64_t closure #1 in ImageElementView.cropBounds.setter(uint64_t a1, _OWORD *a2, __int128 *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v17 - v9);
  v11 = a2[1];
  *v10 = *a2;
  v10[1] = v11;
  v12 = type metadata accessor for ContentsBounds(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  v13 = Capsule.Ref.root.modify();
  outlined init with copy of Date?(v10, v7, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  v13(v21, 0);
  v14 = *a3;
  v17 = a3[1];
  v18 = v14;
  v15 = Capsule.Ref.root.modify();
  v19 = v18;
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return v15(v21, 0);
}

Swift::Void __swiftcall ImageElementView.updateUI()()
{
  v1 = v0;
  v245 = type metadata accessor for ImageElementView.ImageOrFile(0);
  MEMORY[0x1EEE9AC00](v245);
  v246 = &v234 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v264 = &v234 - v4;
  v250 = type metadata accessor for CRAsset();
  v249 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250);
  v236 = &v234 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v234 = &v234 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v237 = &v234 - v9;
  v267 = type metadata accessor for ImageElementView.ImageState(0);
  v243 = *(v267 - 8);
  MEMORY[0x1EEE9AC00](v267);
  v255 = &v234 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v271 = &v234 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v252 = &v234 - v14;
  v244 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v263 = &v234 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
  v240 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v262 = &v234 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v273 = &v234 - v21;
  v241 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v265 = &v234 - v24;
  v260 = type metadata accessor for ContentsBounds(0);
  v274 = *(v260 - 8);
  MEMORY[0x1EEE9AC00](v260);
  v258 = (&v234 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v248 = (&v234 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  v239 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v261 = &v234 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v259 = &v234 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v257 = &v234 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v256 = &v234 - v35;
  v254 = v36;
  MEMORY[0x1EEE9AC00](v37);
  v282 = &v234 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v269 = &v234 - v40;
  v275 = type metadata accessor for CRAssetOrData(0);
  v272 = *(v275 - 8);
  MEMORY[0x1EEE9AC00](v275);
  v253 = &v234 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v238 = (&v234 - v43);
  MEMORY[0x1EEE9AC00](v44);
  v235 = &v234 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v251 = &v234 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v270 = &v234 - v49;
  v242 = v50;
  MEMORY[0x1EEE9AC00](v51);
  v276 = &v234 - v52;
  v53 = type metadata accessor for Image(0);
  MEMORY[0x1EEE9AC00](v53);
  v268 = (&v234 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v55);
  v281 = &v234 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v58 = *(v57 - 1);
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v234 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v234 - v62;
  specialized ContainerCanvasElementView.updateGestures()();
  v247 = OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_parentCanvasElement;
  Strong = swift_unknownObjectWeakLoadStrong();
  v65 = MEMORY[0x1E69E7D40];
  v280 = v53;
  if (Strong)
  {
    v66 = v63;

    specialized CanvasElementView.updateFrame()();
  }

  else
  {
    [v1 transform];
    v67 = v285;
    v68 = v286;
    v279 = v283;
    v278 = v284;
    v283 = 0x3FF0000000000000uLL;
    *&v284 = 0;
    *(&v284 + 1) = 0x3FF0000000000000;
    v285 = 0;
    v286 = 0;
    [v1 setTransform_];
    v69 = *((*v65 & *v1) + 0x3F0);
    swift_beginAccess();
    v70 = (*(v58 + 16))(v63, v1 + v69, v57);
    MEMORY[0x1EEE9AC00](v70);
    *(&v234 - 4) = v53;
    *(&v234 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_3(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    *(&v234 - 2) = &protocol witness table for Image;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v66 = v63;
    (*(v58 + 8))(v63, v57);
    [v1 setFrame_];
    v283 = v279;
    v284 = v278;
    v285 = v67;
    v286 = v68;
    [v1 setTransform_];
  }

  v71 = swift_unknownObjectWeakLoadStrong();
  v72 = MEMORY[0x1E69E7D40];
  if (v71)
  {
    v73 = v71;
    (*((*MEMORY[0x1E69E7D40] & *v71) + 0x928))();
  }

  v74 = *((*v72 & *v1) + 0x3F0);
  swift_beginAccess();
  v75 = *(v58 + 16);
  v76 = v66;
  *&v279 = v58 + 16;
  *&v278 = v75;
  v75(v66, v1 + v74, v57);
  v77 = v281;
  Capsule.root.getter();
  outlined destroy of ImageElementView.ImageOrFile(v77, type metadata accessor for Image);
  v78 = *(v58 + 8);
  v266 = v76;
  v277 = v78;
  (v78)(v76, v57);
  v79 = swift_unknownObjectWeakLoadStrong();
  if (v79)
  {
    v80 = v79;
    (*((*v72 & *v79) + 0x228))();
  }

  specialized ContainerCanvasElementView.updateDrawing()();
  specialized ContainerCanvasElementView.updateSubelements()();
  v81 = *(v1 + *((*v72 & *v1) + 0x568));
  if (v81)
  {
    v82 = v81;
    FormFillingView.updateUI()();
  }

  v83 = [v1 traitCollection];
  v84 = [v83 imageDynamicRange];

  [*(v1 + direct field offset for ImageElementView.mediaView) setIsHDRAllowed_];
  (v278)(v60, v1 + v74, v57);
  v85 = v268;
  Capsule.root.getter();
  (v277)(v60, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  v86 = v269;
  CRRegister.wrappedValue.getter();
  outlined destroy of ImageElementView.ImageOrFile(v85, type metadata accessor for Image);
  if ((*(v272 + 48))(v86, 1, v275) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v86, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
    v87 = direct field offset for ImageElementView.state;
    swift_beginAccess();
    v57 = v271;
    outlined init with copy of ImageElementView.ImageOrFile(v87 + v1, v271, type metadata accessor for ImageElementView.ImageState);
    v88 = v255;
    swift_storeEnumTagMultiPayload();
    v89 = specialized static ImageElementView.ImageState.== infix(_:_:)(v57, v88);
    outlined destroy of ImageElementView.ImageOrFile(v88, type metadata accessor for ImageElementView.ImageState);
    outlined destroy of ImageElementView.ImageOrFile(v57, type metadata accessor for ImageElementView.ImageState);
    if (v89)
    {
LABEL_71:
      [v1 setNeedsLayout];
      return;
    }

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of ImageElementView.ImageState(v57, v87 + v1);
    swift_endAccess();
    if (*(v1 + direct field offset for ImageElementView.getImageTask))
    {

      MEMORY[0x1DA6CD3C0](v90, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    }

    v91 = *(v1 + direct field offset for ImageElementView.imageGetCounter);
    v92 = v91 + 1;
    if (!__OFADD__(v91, 1))
    {
      *(v1 + direct field offset for ImageElementView.imageGetCounter) = v92;
      v93 = v246;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      ImageElementView.updateImage(_:state:counter:)(v93, v57, v92);
      outlined destroy of ImageElementView.ImageOrFile(v57, type metadata accessor for ImageElementView.ImageState);
      v94 = type metadata accessor for ImageElementView.ImageOrFile;
      v95 = v93;
LABEL_61:
      outlined destroy of ImageElementView.ImageOrFile(v95, v94);
      goto LABEL_71;
    }

    __break(1u);
    goto LABEL_90;
  }

  v268 = v74;
  outlined init with take of CRAssetOrData(v86, v276, type metadata accessor for CRAssetOrData);
  v96 = swift_unknownObjectWeakLoadStrong();
  v97 = 1.0;
  v85 = &selRef_setIsEditing_;
  if (v96)
  {
    v98 = v96;
    *&v99 = COERCE_DOUBLE((*((*MEMORY[0x1E69E7D40] & *v96) + 0x348))());
    v74 = v259;
    v100 = v260;
    if (v101)
    {
      v102 = [v98 window];
      if (v102)
      {
        v103 = v102;
        v104 = [v102 screen];

        [v104 scale];
        v97 = v105;
      }
    }

    else
    {
      v106 = *&v99;

      v97 = v106;
    }
  }

  else
  {
    v74 = v259;
    v100 = v260;
  }

  v107 = [v1 window];
  if (v107 && (v108 = v107, v109 = [v107 screen], v108, v110 = objc_msgSend(v109, sel_coordinateSpace), v109, v110))
  {
    [v1 bounds];
    [v1 convertRect:v110 toCoordinateSpace:?];
    v112 = v111;
    v114 = v113;
    v116 = v115;
    v118 = v117;
    swift_unknownObjectRelease();
  }

  else
  {
    [v1 bounds];
    v112 = v119;
    v114 = v120;
    v116 = v121;
    v118 = v122;
  }

  v123 = v266;
  (v278)(v266, v268 + v1, v57);
  v124 = v281;
  Capsule.root.getter();
  (v277)(v123, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  v125 = v282;
  CRRegister.wrappedValue.getter();
  outlined destroy of ImageElementView.ImageOrFile(v124, type metadata accessor for Image);
  v287.origin.x = v112;
  v287.origin.y = v114;
  v287.size.width = v116;
  v287.size.height = v118;
  Width = CGRectGetWidth(v287);
  v127 = v256;
  outlined init with copy of Date?(v125, v256, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  v87 = *(v274 + 48);
  v274 += 48;
  if (v87(v127, 1, v100) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v127, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
    v128 = 1.0;
    v129 = v258;
  }

  else
  {
    v130 = v248;
    outlined init with copy of ImageElementView.ImageOrFile(v127, v248, type metadata accessor for ContentsBounds);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v129 = v258;
    if (EnumCaseMultiPayload)
    {
      outlined destroy of ImageElementView.ImageOrFile(v130, type metadata accessor for ContentsBounds);
      outlined destroy of ImageElementView.ImageOrFile(v127, type metadata accessor for ContentsBounds);
      v128 = 1.0;
    }

    else
    {
      *&v269 = v97;
      v132 = *v130;
      v133 = v130[1];
      v134 = v130[2];
      v255 = *(v130 + 3);
      outlined destroy of ImageElementView.ImageOrFile(v127, type metadata accessor for ContentsBounds);
      v288.origin.x = v132;
      v97 = *&v269;
      v288.origin.y = v133;
      v288.size.width = v134;
      *&v288.size.height = v255;
      v128 = CGRectGetWidth(v288);
    }
  }

  v135 = Width / v128;
  v289.origin.x = v112;
  v289.origin.y = v114;
  v289.size.width = v116;
  v289.size.height = v118;
  Height = CGRectGetHeight(v289);
  v137 = v257;
  outlined init with copy of Date?(v282, v257, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  if (v87(v137, 1, v100) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v137, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  }

  else
  {
    outlined init with copy of ImageElementView.ImageOrFile(v137, v129, type metadata accessor for ContentsBounds);
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of ImageElementView.ImageOrFile(v129, type metadata accessor for ContentsBounds);
      outlined destroy of ImageElementView.ImageOrFile(v137, type metadata accessor for ContentsBounds);
    }

    else
    {
      v138 = *v129;
      v139 = v129[1];
      v140 = v129[2];
      v141 = v129[3];
      outlined destroy of ImageElementView.ImageOrFile(v137, type metadata accessor for ContentsBounds);
      v290.origin.x = v138;
      v290.origin.y = v139;
      v290.size.width = v140;
      v290.size.height = v141;
      Height = Height / CGRectGetHeight(v290);
    }
  }

  if (v135 > Height)
  {
    v142 = v135;
  }

  else
  {
    v142 = Height;
  }

  v143 = v97 * v142;
  v144 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x588));
  *&v269 = NAN;
  if ((v144 & 1) != 0 || (*&v143 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_45:
    if (one-time initialization token for isLowJetsamLimitEnvironment != -1)
    {
      swift_once();
    }

    if (static NSBundle.isLowJetsamLimitEnvironment == 1)
    {
      v145 = swift_unknownObjectWeakLoadStrong();
      if (!v145)
      {
        if (one-time initialization token for isMarkupPhotoEditingExtension == -1)
        {
          goto LABEL_73;
        }

        goto LABEL_93;
      }
    }

    goto LABEL_50;
  }

  if (v143 <= -9.22337204e18)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (v143 < 9.22337204e18)
  {
    v269 = v143;
    goto LABEL_45;
  }

LABEL_91:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_93:
    swift_once();
LABEL_73:
    if (static NSBundle.isMarkupPhotoEditingExtension == 1)
    {
      v218 = [objc_opt_self() currentDevice];
      v219 = [v218 userInterfaceIdiom];

      if (!v219)
      {
        v269 = 2048;
LABEL_50:
        v146 = v271;
        v147 = v265;
        goto LABEL_51;
      }
    }

    v220 = [v1 v85[138]];
    if (v220)
    {
      v221 = v220;
      v222 = [v220 screen];
    }

    else
    {
      v222 = [objc_opt_self() mainScreen];
    }

    [v222 nativeBounds];
    v229 = v228;
    v231 = v230;

    v232 = v229 > v231 ? v229 : v231;
    v146 = v271;
    v147 = v265;
    if ((*&v232 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v232 <= -9.22337204e18)
    {
      goto LABEL_95;
    }

    if (v232 >= 9.22337204e18)
    {
      goto LABEL_96;
    }

    v233 = v232;
    if (v232 <= 2048)
    {
      v233 = 2048;
    }

    v269 = v233;
LABEL_51:
    v148 = v266;
    (v278)(v266, v268 + v1, v57);
    v149 = v281;
    Capsule.root.getter();
    (v277)(v148, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
    CRRegister.wrappedValue.getter();
    outlined destroy of ImageElementView.ImageOrFile(v149, type metadata accessor for Image);
    v150 = [v1 traitCollection];
    v280 = [v150 imageDynamicRange];

    v151 = v276;
    outlined init with copy of ImageElementView.ImageOrFile(v276, v270, type metadata accessor for CRAssetOrData);
    outlined init with copy of Date?(v147, v273, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
    outlined init with copy of Date?(v282, v74, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
    v152 = v151;
    v153 = v251;
    outlined init with copy of ImageElementView.ImageOrFile(v152, v251, type metadata accessor for CRAssetOrData);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of ImageElementView.ImageOrFile(v153, type metadata accessor for CRAssetOrData);
      v283 = 0u;
      v284 = 0u;
      v285 = 0;
      outlined destroy of StocksKitCurrencyCache.Provider?(&v283, &_s9Coherence18EncryptionDelegate_pSgMd, &_s9Coherence18EncryptionDelegate_pSgMR);
      v154 = v263;
      v155 = v252;
    }

    else
    {
      v156 = v249;
      v157 = v237;
      v158 = v153;
      v159 = v250;
      (*(v249 + 32))(v237, v158, v250);
      CRAsset.assetManager.getter();
      (*(v156 + 8))(v157, v159);
      CRAssetManager.encryptionDelegate.getter();

      v160 = *(&v284 + 1);
      outlined destroy of StocksKitCurrencyCache.Provider?(&v283, &_s9Coherence18EncryptionDelegate_pSgMd, &_s9Coherence18EncryptionDelegate_pSgMR);
      v154 = v263;
      v155 = v252;
      if (v160)
      {
        goto LABEL_58;
      }
    }

    v161 = type metadata accessor for ImageFilter(0);
    if ((*(*(v161 - 8) + 48))(v273, 1, v161) == 1 && v87(v74, 1, v260) == 1)
    {
      v162 = v270;
      v163 = v235;
      outlined init with copy of ImageElementView.ImageOrFile(v270, v235, type metadata accessor for CRAssetOrData);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        outlined destroy of ImageElementView.ImageOrFile(v162, type metadata accessor for CRAssetOrData);
        v223 = *(v249 + 32);
        v224 = v234;
        v225 = v163;
        v226 = v250;
        v223(v234, v225, v250);
        v227 = v224;
        v74 = v259;
        v223(v155, v227, v226);
        v169 = v273;
        goto LABEL_59;
      }

      outlined destroy of ImageElementView.ImageOrFile(v163, type metadata accessor for CRAssetOrData);
    }

LABEL_58:
    v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataO5asset_AA11ImageFilterOSg6filterAA14ContentsBoundsOSg4cropSi20maxDimensionInPixelstMd, &_s8PaperKit13CRAssetOrDataO5asset_AA11ImageFilterOSg6filterAA14ContentsBoundsOSg4cropSi20maxDimensionInPixelstMR);
    v165 = v164[12];
    v166 = v164[16];
    v167 = v164[20];
    outlined init with take of CRAssetOrData(v270, v155, type metadata accessor for CRAssetOrData);
    v168 = v155 + v165;
    v169 = v273;
    outlined init with copy of Date?(v273, v168, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
    outlined init with copy of Date?(v74, v155 + v166, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
    *(v155 + v167) = *&v269;
LABEL_59:
    swift_storeEnumTagMultiPayload();
    outlined init with take of CRAssetOrData(v155, v154, type metadata accessor for ImageElementView.ImageState);
    outlined destroy of StocksKitCurrencyCache.Provider?(v74, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v169, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
    v170 = direct field offset for ImageElementView.state;
    swift_beginAccess();
    outlined init with copy of ImageElementView.ImageOrFile(v1 + v170, v146, type metadata accessor for ImageElementView.ImageState);
    v171 = specialized static ImageElementView.ImageState.== infix(_:_:)(v146, v154);
    outlined destroy of ImageElementView.ImageOrFile(v146, type metadata accessor for ImageElementView.ImageState);
    if (v171)
    {
      outlined destroy of ImageElementView.ImageOrFile(v154, type metadata accessor for ImageElementView.ImageState);
      outlined destroy of StocksKitCurrencyCache.Provider?(v147, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v282, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
      v94 = type metadata accessor for CRAssetOrData;
      v95 = v276;
      goto LABEL_61;
    }

    outlined init with copy of ImageElementView.ImageOrFile(v154, v146, type metadata accessor for ImageElementView.ImageState);
    swift_beginAccess();
    outlined assign with take of ImageElementView.ImageState(v146, v1 + v170);
    swift_endAccess();
    v277 = direct field offset for ImageElementView.getThumbnailTask;
    v172 = MEMORY[0x1E69E7CA8];
    if (*(v1 + direct field offset for ImageElementView.getThumbnailTask))
    {

      MEMORY[0x1DA6CD3C0](v173, v172 + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    }

    v174 = v238;
    outlined init with copy of ImageElementView.ImageOrFile(v276, v238, type metadata accessor for CRAssetOrData);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v175 = *v174;
      v176 = v174[1];
      v177 = v174[2];
      v178 = v174[3];
      outlined copy of Data._Representation(*v174, v176);
      v281 = v175;
      outlined consume of Data._Representation(v175, v176);
      outlined consume of Data._Representation(v177, v178);
    }

    else
    {
      v179 = v249;
      v180 = v236;
      v181 = v174;
      v182 = v250;
      (*(v249 + 32))(v236, v181, v250);
      v281 = CRAsset.digest.getter();
      v176 = v183;
      (*(v179 + 8))(v180, v182);
    }

    v184 = (v1 + direct field offset for ImageElementView.thumbnailCacheDigest);
    v185 = *(v1 + direct field offset for ImageElementView.thumbnailCacheDigest);
    v186 = *(v1 + direct field offset for ImageElementView.thumbnailCacheDigest + 8);
    v187 = v281;
    *v184 = v281;
    v184[1] = v176;
    outlined copy of Data._Representation(v187, v176);
    outlined consume of Data?(v185, v186);
    v188 = v264;
    static TaskPriority.userInitiated.getter();
    v189 = type metadata accessor for TaskPriority();
    v190 = *(v189 - 8);
    v191 = *(v190 + 56);
    v267 = v189;
    v266 = v191;
    v260 = v190 + 56;
    (v191)(v188, 0, 1);
    v192 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&v279 = direct field offset for ImageElementView.imageGetCounter;
    *&v278 = *(v1 + direct field offset for ImageElementView.imageGetCounter);
    v193 = v262;
    outlined init with copy of Date?(v147, v262, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
    v194 = v261;
    outlined init with copy of Date?(v282, v261, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
    v195 = *(v240 + 80);
    v274 = ~v195;
    v196 = (v195 + 56) & ~v195;
    v197 = *(v239 + 80);
    v273 = ~v197;
    v270 = v241 + v197;
    v198 = (v241 + v197 + v196) & ~v197;
    v275 = v195;
    v199 = (v254 + v198 + 7) & 0xFFFFFFFFFFFFFFF8;
    v268 = (v195 | v197);
    v200 = swift_allocObject();
    v200[2] = 0;
    v200[3] = 0;
    v200[4] = v187;
    v200[5] = v176;
    v200[6] = v192;
    outlined init with take of Range<AttributedString.Index>(v193, v200 + v196, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
    outlined init with take of Range<AttributedString.Index>(v194, v200 + v198, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
    *(v200 + v199) = v278;
    *&v278 = v176;
    outlined copy of Data._Representation(v187, v176);
    v201 = v264;
    v202 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v264, &async function pointer to partial apply for closure #1 in ImageElementView.updateUI(), v200);
    outlined destroy of StocksKitCurrencyCache.Provider?(v201, &_sScPSgMd, &_sScPSgMR);
    *&v277[v1] = v202;

    v277 = direct field offset for ImageElementView.getImageTask;
    if (*(v1 + direct field offset for ImageElementView.getImageTask))
    {

      MEMORY[0x1DA6CD3C0](v203, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    }

    LODWORD(v280) = v280 != 0;
    v204 = v264;
    static TaskPriority.userInitiated.getter();
    (v266)(v204, 0, 1, v267);
    v267 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v266 = *(v1 + v279);
    v205 = v271;
    outlined init with copy of ImageElementView.ImageOrFile(v263, v271, type metadata accessor for ImageElementView.ImageState);
    outlined init with copy of ImageElementView.ImageOrFile(v276, v253, type metadata accessor for CRAssetOrData);
    outlined init with copy of Date?(v265, v262, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
    outlined init with copy of Date?(v282, v261, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
    v206 = (*(v243 + 80) + 32) & ~*(v243 + 80);
    v207 = (v244 + v206 + 7) & 0xFFFFFFFFFFFFFFF8;
    v208 = (v207 + 15) & 0xFFFFFFFFFFFFFFF8;
    v209 = (*(v272 + 80) + v208 + 8) & ~*(v272 + 80);
    v74 = (v242 + v209 + 7) & 0xFFFFFFFFFFFFFFF8;
    v210 = (v275 + v74 + 9) & v274;
    v211 = (v270 + v210) & v273;
    v85 = swift_allocObject();
    v85[2] = 0;
    v85[3] = 0;
    outlined init with take of CRAssetOrData(v205, v85 + v206, type metadata accessor for ImageElementView.ImageState);
    *(v85 + v207) = v267;
    *(v85 + v208) = v266;
    outlined init with take of CRAssetOrData(v253, v85 + v209, type metadata accessor for CRAssetOrData);
    v212 = (v85 + v74);
    *v212 = *&v269;
    *(v212 + 8) = v280;
    v87 = &_s8PaperKit11ImageFilterOSgMd;
    v57 = &_s8PaperKit11ImageFilterOSgMR;
    outlined init with take of Range<AttributedString.Index>(v262, v85 + v210, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
    outlined init with take of Range<AttributedString.Index>(v261, v85 + v211, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
    v213 = v264;
    v214 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v264, &async function pointer to partial apply for specialized closure #2 in ImageElementView.updateUI(), v85);
    outlined consume of Data._Representation(v281, v278);
    outlined destroy of StocksKitCurrencyCache.Provider?(v213, &_sScPSgMd, &_sScPSgMR);
    outlined destroy of ImageElementView.ImageOrFile(v263, type metadata accessor for ImageElementView.ImageState);
    outlined destroy of StocksKitCurrencyCache.Provider?(v265, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v282, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
    outlined destroy of ImageElementView.ImageOrFile(v276, type metadata accessor for CRAssetOrData);
    *&v277[v1] = v214;

    v215 = *(v1 + v279);
    v216 = __OFADD__(v215, 2);
    v217 = v215 + 2;
    if (!v216)
    {
      *(v1 + v279) = v217;
      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
}

uint64_t closure #1 in ImageElementView.updateUI()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v12;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v9 = type metadata accessor for ContentsBounds(0);
  v8[18] = v9;
  v8[19] = *(v9 - 8);
  v8[20] = swift_task_alloc();
  v8[21] = type metadata accessor for ImageElementView.ImageOrFile(0);
  v8[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v8[27] = type metadata accessor for ImageElementView.ImageState(0);
  v8[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in ImageElementView.updateUI(), 0, 0);
}

uint64_t closure #1 in ImageElementView.updateUI()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static ImageThumbnailManager.shared;
  *(v0 + 232) = static ImageThumbnailManager.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ImageElementView.updateUI(), v1, 0);
}

{
  v1 = swift_task_alloc();
  v0[30] = v1;
  *v1 = v0;
  v1[1] = closure #1 in ImageElementView.updateUI();
  v3 = v0[12];
  v2 = v0[13];

  return specialized AsyncCache.cached(for:)(v3, v2);
}

{
  v1 = v0[31];
  if (v1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[32] = Strong;
    if (Strong)
    {
      v3 = v0[17];
      v4 = swift_storeEnumTagMultiPayload();
      v0[33] = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
      }

      else
      {
        type metadata accessor for MainActor();
        v0[34] = static MainActor.shared.getter();
        v7 = dispatch thunk of Actor.unownedExecutor.getter();
        v9 = v8;
        v4 = closure #1 in ImageElementView.updateUI();
        v5 = v7;
        v6 = v9;
      }

      return MEMORY[0x1EEE6DFA0](v4, v5, v6);
    }
  }

  v10 = v0[1];

  return v10();
}

{
  v1 = *(v0 + 208);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 128);

  outlined init with copy of Date?(v4, v1, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  v5 = *(v3 + 48);
  if (v5(v1, 1, v2) != 1)
  {
    outlined init with copy of Date?(*(v0 + 208), *(v0 + 200), &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (one-time initialization token for defaultFilterQueue != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 256);
      v7 = *(v0 + 264);
      v8 = *(v0 + 248);
      v9 = *(v0 + 224);
      v10 = *(v0 + 176);
      v11 = defaultFilterQueue;
      v12 = swift_task_alloc();
      v13 = *(v0 + 120);
      *(v12 + 16) = v8;
      *(v12 + 24) = v13;
      type metadata accessor for CGImageRef(0);
      v14 = v11;
      OS_dispatch_queue.sync<A>(execute:)();

      v15 = *(v0 + 88);
      *v10 = v15;
      swift_storeEnumTagMultiPayload();
      v16 = v15;
      ImageElementView.updateImage(_:state:counter:)(v10, v9, v7);

      outlined destroy of ImageElementView.ImageOrFile(v10, type metadata accessor for ImageElementView.ImageOrFile);
      goto LABEL_16;
    }

    outlined destroy of ImageElementView.ImageOrFile(*(v0 + 200), type metadata accessor for ContentsBounds);
  }

  v42 = v5;
  (*(*(v0 + 152) + 56))(*(v0 + 192), 1, 1, *(v0 + 144));
  if (one-time initialization token for defaultFilterQueue != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 264);
  v17 = *(v0 + 248);
  v37 = *(v0 + 224);
  v18 = *(v0 + 184);
  v19 = *(v0 + 192);
  v20 = *(v0 + 176);
  v21 = *(v0 + 120);
  v39 = *(v0 + 128);
  v40 = *(v0 + 144);
  v22 = defaultFilterQueue;
  v23 = swift_task_alloc();
  v23[2] = v17;
  v23[3] = v21;
  v23[4] = v19;
  type metadata accessor for CGImageRef(0);
  v24 = v22;
  OS_dispatch_queue.sync<A>(execute:)();

  v25 = *(v0 + 80);
  outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  *v20 = v25;
  swift_storeEnumTagMultiPayload();
  v26 = v25;
  ImageElementView.updateImage(_:state:counter:)(v20, v37, v38);
  outlined destroy of ImageElementView.ImageOrFile(v20, type metadata accessor for ImageElementView.ImageOrFile);
  outlined init with copy of Date?(v39, v18, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  v27 = v42(v18, 1, v40);
  v28 = *(v0 + 184);
  if (v27 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
    v29 = 0uLL;
    v30 = 1;
    v31 = 0uLL;
  }

  else
  {
    outlined init with copy of ImageElementView.ImageOrFile(v28, *(v0 + 160), type metadata accessor for ContentsBounds);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v30 = EnumCaseMultiPayload != 0;
    v33 = *(v0 + 160);
    if (EnumCaseMultiPayload)
    {
      outlined destroy of ImageElementView.ImageOrFile(v33, type metadata accessor for ContentsBounds);
      v41 = 0u;
      v43 = 0u;
    }

    else
    {
      v41 = v33[1];
      v43 = *v33;
    }

    outlined destroy of ImageElementView.ImageOrFile(*(v0 + 184), type metadata accessor for ContentsBounds);
    v31 = v41;
    v29 = v43;
  }

  v34 = *(v0 + 256);
  *(v0 + 16) = v29;
  *(v0 + 32) = v31;
  *(v0 + 48) = v30;
  ImageElementView.updateMediaViewCropBounds(_:)((v0 + 16));

LABEL_16:
  v35 = *(v0 + 208);
  outlined destroy of ImageElementView.ImageOrFile(*(v0 + 224), type metadata accessor for ImageElementView.ImageState);
  outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);

  return MEMORY[0x1EEE6DFA0](closure #1 in ImageElementView.updateUI(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in ImageElementView.updateUI()(uint64_t a1)
{
  *(*v1 + 248) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in ImageElementView.updateUI(), 0, 0);
}

uint64_t specialized closure #2 in ImageElementView.updateUI()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = v15;
  *(v8 + 168) = v16;
  *(v8 + 49) = v14;
  *(v8 + 144) = a7;
  *(v8 + 152) = a8;
  *(v8 + 128) = a5;
  *(v8 + 136) = a6;
  *(v8 + 120) = a4;
  v9 = type metadata accessor for ContentsBounds(0);
  *(v8 + 176) = v9;
  *(v8 + 184) = *(v9 - 8);
  *(v8 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = type metadata accessor for ImageElementView.ImageOrFile(0);
  *(v8 + 240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13CRStableAssetVSgMd, &_s9Coherence13CRStableAssetVSgMR);
  *(v8 + 248) = swift_task_alloc();
  v10 = type metadata accessor for CRStableAsset();
  *(v8 + 256) = v10;
  *(v8 + 264) = *(v10 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = type metadata accessor for ImageElementView.ImageState(0);
  *(v8 + 288) = swift_task_alloc();
  v11 = type metadata accessor for CRAsset();
  *(v8 + 296) = v11;
  *(v8 + 304) = *(v11 - 8);
  *(v8 + 312) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #2 in ImageElementView.updateUI(), 0, 0);
}

uint64_t specialized closure #2 in ImageElementView.updateUI()()
{
  outlined init with copy of ImageElementView.ImageOrFile(*(v0 + 120), *(v0 + 288), type metadata accessor for ImageElementView.ImageState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(v0 + 304) + 32))(*(v0 + 312), *(v0 + 288), *(v0 + 296));
    v1 = swift_task_alloc();
    *(v0 + 320) = v1;
    *v1 = v0;
    v1[1] = specialized closure #2 in ImageElementView.updateUI();
    v2 = *(v0 + 248);
    v3 = *(v0 + 256);

    return MEMORY[0x1EEDF52A8](v2, 1, &async function pointer to closure #1 in closure #2 in ImageElementView.updateUI(), 0, v3);
  }

  else
  {
    outlined destroy of ImageElementView.ImageOrFile(*(v0 + 288), type metadata accessor for ImageElementView.ImageState);
    v4 = swift_task_alloc();
    *(v0 + 328) = v4;
    *v4 = v0;
    v4[1] = specialized closure #2 in ImageElementView.updateUI();
    v5 = *(v0 + 49);
    v6 = *(v0 + 152);

    return CRAssetOrData.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:)(v6, 1, v5);
  }
}

{
  v1 = v0[42];
  if (v1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[43] = Strong;
    if (Strong)
    {
      v5 = v0[17];
      v0[47] = v5 + 2;
      if (__OFADD__(v5, 2))
      {
        __break(1u);
      }

      else
      {
        type metadata accessor for MainActor();
        v0[48] = static MainActor.shared.getter();
        v6 = dispatch thunk of Actor.unownedExecutor.getter();
        v8 = v7;
        Strong = specialized closure #2 in ImageElementView.updateUI();
        v3 = v6;
        v4 = v8;
      }

      return MEMORY[0x1EEE6DFA0](Strong, v3, v4);
    }
  }

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(v0[38] + 8))(v0[39], v0[37]);
    outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s9Coherence13CRStableAssetVSgMd, &_s9Coherence13CRStableAssetVSgMR);
LABEL_9:

    v15 = v0[1];

    return v15();
  }

  (*(v2 + 32))(v0[34], v3, v1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[44] = Strong;
  if (!Strong)
  {
    v13 = v0[38];
    v12 = v0[39];
    v14 = v0[37];
    (*(v0[33] + 8))(v0[34], v0[32]);
    (*(v13 + 8))(v12, v14);
    goto LABEL_9;
  }

  v5 = v0[17];
  (*(v0[33] + 16))(v0[30], v0[34], v0[32]);
  v6 = swift_storeEnumTagMultiPayload();
  if (__OFADD__(v5, 2))
  {
    __break(1u);
  }

  else
  {
    v0[45] = v5 + 2;
    type metadata accessor for MainActor();
    v0[46] = static MainActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
    v6 = specialized closure #2 in ImageElementView.updateUI();
    v7 = v9;
    v8 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

{
  v1 = v0[45];
  v2 = v0[44];
  v3 = v0[30];
  v4 = v0[15];

  ImageElementView.updateImage(_:state:counter:)(v3, v4, v1);

  outlined destroy of ImageElementView.ImageOrFile(v3, type metadata accessor for ImageElementView.ImageOrFile);

  return MEMORY[0x1EEE6DFA0](specialized closure #2 in ImageElementView.updateUI(), 0, 0);
}

{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  (*(v0[33] + 8))(v0[34], v0[32]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v1 = *(v0 + 224);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);

  outlined init with copy of Date?(v4, v1, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  v5 = *(v3 + 48);
  if (v5(v1, 1, v2) != 1)
  {
    outlined init with copy of Date?(*(v0 + 224), *(v0 + 216), &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (one-time initialization token for defaultFilterQueue != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 376);
      v7 = *(v0 + 336);
      v8 = *(v0 + 344);
      v9 = *(v0 + 240);
      v10 = *(v0 + 120);
      v11 = defaultFilterQueue;
      v12 = swift_task_alloc();
      v13 = *(v0 + 160);
      *(v12 + 16) = v7;
      *(v12 + 24) = v13;
      type metadata accessor for CGImageRef(0);
      v14 = v11;
      OS_dispatch_queue.sync<A>(execute:)();

      v15 = *(v0 + 112);
      *v9 = v15;
      swift_storeEnumTagMultiPayload();
      v16 = v15;
      ImageElementView.updateImage(_:state:counter:)(v9, v10, v6);

      outlined destroy of ImageElementView.ImageOrFile(v9, type metadata accessor for ImageElementView.ImageOrFile);
      goto LABEL_16;
    }

    outlined destroy of ImageElementView.ImageOrFile(*(v0 + 216), type metadata accessor for ContentsBounds);
  }

  v41 = v5;
  (*(*(v0 + 184) + 56))(*(v0 + 208), 1, 1, *(v0 + 176));
  if (one-time initialization token for defaultFilterQueue != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 336);
  v37 = *(v0 + 376);
  v18 = *(v0 + 240);
  v19 = *(v0 + 200);
  v20 = *(v0 + 208);
  v38 = *(v0 + 168);
  v39 = *(v0 + 176);
  v21 = *(v0 + 160);
  v36 = *(v0 + 120);
  v22 = defaultFilterQueue;
  v23 = swift_task_alloc();
  v23[2] = v17;
  v23[3] = v21;
  v23[4] = v20;
  type metadata accessor for CGImageRef(0);
  v24 = v22;
  OS_dispatch_queue.sync<A>(execute:)();

  v25 = *(v0 + 104);
  outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  *v18 = v25;
  swift_storeEnumTagMultiPayload();
  v26 = v25;
  ImageElementView.updateImage(_:state:counter:)(v18, v36, v37);
  outlined destroy of ImageElementView.ImageOrFile(v18, type metadata accessor for ImageElementView.ImageOrFile);
  outlined init with copy of Date?(v38, v19, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  v27 = v41(v19, 1, v39);
  v28 = *(v0 + 200);
  if (v27 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
    v29 = 0uLL;
    v30 = 1;
    v31 = 0uLL;
  }

  else
  {
    outlined init with copy of ImageElementView.ImageOrFile(v28, *(v0 + 192), type metadata accessor for ContentsBounds);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v30 = EnumCaseMultiPayload != 0;
    v33 = *(v0 + 192);
    if (EnumCaseMultiPayload)
    {
      outlined destroy of ImageElementView.ImageOrFile(v33, type metadata accessor for ContentsBounds);
      v40 = 0u;
      v42 = 0u;
    }

    else
    {
      v40 = v33[1];
      v42 = *v33;
    }

    outlined destroy of ImageElementView.ImageOrFile(*(v0 + 200), type metadata accessor for ContentsBounds);
    v31 = v40;
    v29 = v42;
  }

  v34 = *(v0 + 344);
  *(v0 + 16) = v29;
  *(v0 + 32) = v31;
  *(v0 + 48) = v30;
  ImageElementView.updateMediaViewCropBounds(_:)((v0 + 16));

LABEL_16:
  outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 224), &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);

  return MEMORY[0x1EEE6DFA0](specialized closure #2 in ImageElementView.updateUI(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void specialized closure #2 in ImageElementView.updateUI()()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](specialized closure #2 in ImageElementView.updateUI(), 0, 0);
  }
}

uint64_t specialized closure #2 in ImageElementView.updateUI()(uint64_t a1)
{
  *(*v1 + 336) = a1;

  return MEMORY[0x1EEE6DFA0](specialized closure #2 in ImageElementView.updateUI(), 0, 0);
}

uint64_t closure #1 in closure #2 in ImageElementView.updateUI()(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in ImageElementView.updateUI(), 0, 0);
}

uint64_t closure #1 in closure #2 in ImageElementView.updateUI()()
{
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  CRStableAsset.init(url:extension:)();

  v1 = v0[1];

  return v1();
}

uint64_t ImageElementView.needsRoundedCorners.getter(uint64_t a1)
{
  if (one-time initialization token for isPreviewApp != -1)
  {
    swift_once();
  }

  if (static NSBundle.isPreviewApp == 1)
  {
    result = _UISolariumEnabled();
    if (!result)
    {
      return result;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return 1;
    }
  }

  return 0;
}

Swift::Void __swiftcall ImageElementView.updateRoundedCorners()()
{
  specialized ContainerCanvasElementView.updateRoundedCorners()();
  v1 = *&v0[direct field offset for ImageElementView.mediaView];
  if (v1)
  {
    v2 = v1;
    [v0 _continuousCornerRadius];
    [v2 _setContinuousCornerRadius_];
  }

  [v0 _continuousCornerRadius];
  v3 = direct field offset for ImageElementView.innerBorderLayerRadius;
  *&v0[direct field offset for ImageElementView.innerBorderLayerRadius] = v4;
  v5 = *&v0[direct field offset for ImageElementView.innerBorderLayer];
  if (v5)
  {
    v6 = v5;
    [v0 bounds];
    v11 = [objc_opt_self() bezierPathWithRoundedRect:-1 byRoundingCorners:v7 cornerRadii:{v8, v9, v10, *&v0[v3], *&v0[v3]}];
    v12 = [v11 CGPath];
    [v6 setPath_];
  }
}

id ImageElementView.drawingDidChange(newDrawing:)(char *a1)
{
  specialized ContainerCanvasElementView.drawingDidChange(newDrawing:)(a1);
  v2 = [v1 traitCollection];
  v3 = [v2 imageDynamicRange];

  v4 = *&v1[direct field offset for ImageElementView.mediaView];

  return [v4 setIsHDRAllowed_];
}

Swift::OpaquePointer_optional __swiftcall ImageElementView.pasteboardRepresentation()()
{
  v1 = type metadata accessor for CRStableAsset();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v27[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for ImageElementView.ImageOrFile(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = direct field offset for ImageElementView.image;
  swift_beginAccess();
  outlined init with copy of ImageElementView.ImageOrFile(v0 + v12, v11, type metadata accessor for ImageElementView.ImageOrFile);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v15 = 0;
    if (EnumCaseMultiPayload == 1)
    {
      (*(v2 + 32))(v4, v11, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4058CF0;
      static UTType.url.getter();
      v17 = UTType.identifier.getter();
      v19 = v18;
      (*(v6 + 8))(v8, v5);
      *(inited + 32) = v17;
      *(inited + 40) = v19;
      *(inited + 72) = type metadata accessor for URL();
      __swift_allocate_boxed_opaque_existential_1((inited + 48));
      CRStableAsset.url.getter();
      v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      (*(v2 + 8))(v4, v1);
    }
  }

  else
  {
    v20 = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_1D4058CF0;
    static UTType.png.getter();
    v22 = UTType.identifier.getter();
    v24 = v23;
    (*(v6 + 8))(v8, v5);
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    type metadata accessor for CGImageRef(0);
    *(v21 + 72) = v25;
    *(v21 + 48) = v20;
    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v21);
    swift_setDeallocating();
    outlined destroy of StocksKitCurrencyCache.Provider?(v21 + 32, &_sSS_yptMd, &_sSS_yptMR);
  }

  v26 = v15;
  result.value._rawValue = v26;
  result.is_nil = v14;
  return result;
}

id @objc ImageElementView.contextMenuInteraction(_:previewForHighlightingMenuWithConfiguration:)(void *a1)
{
  v1 = a1;
  v2 = [v1 window];
  if (v2)
  {

    v3 = *&v1[direct field offset for ImageElementView.contentView];
    v4 = objc_allocWithZone(MEMORY[0x1E69DD070]);
    v5 = v3;
    v6 = [v4 initWithView_];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t type metadata completion function for ImageElementView(uint64_t a1)
{
  result = type metadata accessor for ImageElementView.ImageState(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ImageElementView.ImageOrFile(319);
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

id ImageElementView.dragInteractionPreviewForLifting(item:session:)()
{
  v1 = direct field offset for ImageElementView.contentView;
  result = [*(v0 + direct field offset for ImageElementView.contentView) window];
  if (result)
  {

    return [objc_allocWithZone(MEMORY[0x1E69DD068]) initWithView_];
  }

  return result;
}

Swift::Void __swiftcall ImageElementView.updateInnerBorderWidth()()
{
  v1 = *(v0 + direct field offset for ImageElementView.innerBorderLayer);
  if (!v1)
  {
    return;
  }

  v2 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v13 = v1;
    goto LABEL_9;
  }

  v4 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x450);
  v5 = Strong;
  v6 = v1;
  v7 = v4();

  if (!v7)
  {
LABEL_9:
    v7 = 0;
    v9 = *(v2 + direct field offset for ImageElementView.innerBorderWidth);
    goto LABEL_11;
  }

  [v7 zoomScale];
  v9 = *(v2 + direct field offset for ImageElementView.innerBorderWidth) / v8;
  v14 = v7;
  if (![v14 isZooming])
  {

    goto LABEL_11;
  }

  [v6 lineWidth];
  v11 = v10;

  if (vabdd_f64(v11, v9) >= 0.1)
  {
LABEL_11:
    [v1 setLineWidth_];

    v12 = v7;
    goto LABEL_12;
  }

  v12 = v14;
LABEL_12:
}

Swift::Void __swiftcall ImageElementView.addInnerBorderLayerIfNeeded()()
{
  if (one-time initialization token for isPreviewApp != -1)
  {
    swift_once();
  }

  if (static NSBundle.isPreviewApp == 1 && _UISolariumEnabled())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v2 = direct field offset for ImageElementView.innerBorderLayer;
      v3 = *&v0[direct field offset for ImageElementView.innerBorderLayer];
      if (v3)
      {
        [v3 removeFromSuperlayer];
      }

      v4 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
      v5 = objc_opt_self();
      v6 = [v5 separatorColor];
      v7 = [v6 colorWithAlphaComponent_];

      v8 = [v7 CGColor];
      [v4 setStrokeColor_];

      v9 = [v5 clearColor];
      v10 = [v9 CGColor];

      [v4 setFillColor_];
      v11 = *&v0[v2];
      *&v0[v2] = v4;
      v13 = v4;

      v12 = [v0 layer];
      [v12 addSublayer_];

      *&v0[direct field offset for ImageElementView.innerBorderWidth] = 0x3FF0000000000000;
      ImageElementView.updateInnerBorderWidth()();
      Strong = v13;
    }
  }
}

uint64_t type metadata completion function for ImageElementView.ImageOrFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata accessor for (asset: CRAssetOrData, filter: ImageFilter?, crop: ContentsBounds?, maxDimensionInPixels: Int)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (asset: CRAssetOrData, filter: ImageFilter?, crop: ContentsBounds?, maxDimensionInPixels: Int))
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for CRAssetOrData(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (asset: CRAssetOrData, filter: ImageFilter?, crop: ContentsBounds?, maxDimensionInPixels: Int));
    }
  }
}

void type metadata accessor for (asset: CRAsset)()
{
  if (!lazy cache variable for type metadata for (asset: CRAsset))
  {
    v0 = type metadata accessor for CRAsset();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (asset: CRAsset));
    }
  }
}

uint64_t specialized closure #1 in ContainerCanvasElementView.drawingDidChange(newDrawing:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v21 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v20 = v17 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  v11 = OBJC_IVAR___PKDrawingCoherence_model;
  v18 = a2;
  swift_beginAccess();
  v12 = *(v8 + 16);
  v12(v10, a2 + v11, v7);
  v17[1] = type metadata accessor for PKDrawingStruct(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_3(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct, &protocol conformance descriptor for PKDrawingStruct);
  Capsule.Ref.import<A>(_:)();
  v13 = *(v8 + 8);
  v13(v10, v7);
  v22 = type metadata accessor for Image(0);
  v23 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_3(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  v24 = &protocol witness table for Image;
  v17[0] = swift_getKeyPath();
  v12(v10, v18 + v11, v7);
  Capsule.rootID.getter();
  v13(v10, v7);
  v14 = v20;
  Ref.init(id:)();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  return Capsule.Ref.subscript.setter();
}

uint64_t specialized closure #1 in CanvasElementView.endLiveEdit(undoable:discard:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in CanvasElementView.endLiveEdit(undoable:discard:), v6, v5);
}

{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in CanvasElementView.endLiveEdit(undoable:discard:), v6, v5);
}

uint64_t specialized closure #1 in CanvasElementView.endLiveEdit(undoable:discard:)()
{
  v1 = v0[2];
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x420);
  v0[6] = v2;
  v3 = *(v1 + v2);
  v0[7] = v3;
  if (v3)
  {

    return MEMORY[0x1EEE6DFA0](specialized closure #1 in CanvasElementView.endLiveEdit(undoable:discard:), v3, 0);
  }

  else
  {

    *(v0[2] + v0[6]) = 0;

    v4 = v0[1];

    return v4();
  }
}

{
  PPKSignpost.complete(message:)(0, 0, 0x100u);

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in CanvasElementView.endLiveEdit(undoable:discard:), v1, v2);
}

{
  v1 = v0[2];
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x420);
  v0[6] = v2;
  v3 = *(v1 + v2);
  v0[7] = v3;
  if (v3)
  {

    return MEMORY[0x1EEE6DFA0](specialized closure #1 in CanvasElementView.endLiveEdit(undoable:discard:), v3, 0);
  }

  else
  {

    *(v0[2] + v0[6]) = 0;

    v4 = v0[1];

    return v4();
  }
}

{
  PPKSignpost.complete(message:)(0, 0, 0x100u);

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in CanvasElementView.endLiveEdit(undoable:discard:), v1, v2);
}

{

  *(v0[2] + v0[6]) = 0;

  v1 = v0[1];

  return v1();
}

uint64_t specialized Dictionary._Variant.updateValue(_:forKey:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v7 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v5;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v16;
  if (v14[3] < v20)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, isUniquelyReferenced_nonNull_native);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
    if ((v6 & 1) == (v21 & 1))
    {
      goto LABEL_6;
    }

    v15 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v24 = v15;
    specialized _NativeDictionary.copy()();
    v15 = v24;
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_10:
    specialized _NativeDictionary._insert(at:key:value:)(v15, a4, a5, a1, a2, a3 & 1, v14);
    outlined copy of Data._Representation(a4, a5);
    result = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v22 = v14[7] + 24 * v15;
  result = *v22;
  *v22 = a1;
  *(v22 + 8) = a2;
  *(v22 + 16) = a3 & 1;
LABEL_11:
  *v7 = v14;
  return result;
}

void specialized ImageElementView.addImageAnalysisObserver(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + direct field offset for ImageElementView.mediaView);
  if (v3)
  {
    v5 = v3;
    v4 = [v5 imageAnalysisContext];
    if (v4)
    {
      [v4 addAnalysisObserver_];

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    v5 = ImageElementView.pendingImageAnalysisObservers.getter();
    [v5 addObject_];
  }
}

uint64_t specialized closure #1 in AsyncCache.cached(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  *(v5 + 56) = a3;
  *(v5 + 64) = a4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  *(v5 + 16) = *a5;
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in AsyncCache.cached(for:), a4, 0);
}

uint64_t specialized closure #1 in AsyncCache.cached(for:)()
{
  v1 = *(v0 + 64);
  v2 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type AsyncCache<Data, CGImageRef> and conformance AsyncCache<A, B>, &_s8PaperKit10AsyncCacheCy10Foundation4DataVSo10CGImageRefaGMd, &_s8PaperKit10AsyncCacheCy10Foundation4DataVSo10CGImageRefaGMR, &protocol conformance descriptor for AsyncCache<A, B>);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v1;
  *(v3 + 40) = v0 + 16;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10CGImageRefaSgMd, &_sSo10CGImageRefaSgMR);
  *v4 = v0;
  v4[1] = specialized closure #1 in AsyncCache.cached(for:);

  return MEMORY[0x1EEE6DDE0](v0 + 32, v1, v2, 0x6628646568636163, 0xEC000000293A726FLL, partial apply for specialized closure #1 in closure #1 in AsyncCache.cached(for:), v3, v5);
}

{
  v1 = *(*v0 + 64);

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in AsyncCache.cached(for:), v1, 0);
}

{
  **(v0 + 40) = *(v0 + 32);
  return (*(v0 + 8))();
}

double specialized closure #2 in AsyncCache.cached(for:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = *a2;
  v13 = a2[1];
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  (*(v7 + 16))(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v15 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = a1;
  *(v16 + 5) = v12;
  *(v16 + 6) = v13;
  (*(v7 + 32))(&v16[v15], &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  outlined copy of Data._Representation(v12, v13);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for specialized closure #1 in closure #2 in AsyncCache.cached(for:), v16);

  return result;
}

uint64_t specialized closure #1 in closure #2 in AsyncCache.cached(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6)
{
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  *(v6 + 32) = *a5;
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #2 in AsyncCache.cached(for:), a4, 0);
}

uint64_t specialized closure #1 in closure #2 in AsyncCache.cached(for:)()
{
  v1.n128_f64[0] = specialized AsyncCache.cancel(for:uuid:)(v0[4], v0[5], v0[3]);
  v2 = v0[1];

  return v2(v1);
}

double specialized closure #1 in closure #1 in AsyncCache.cached(for:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSgs5NeverOGSgMd, &_sScCySo10CGImageRefaSgs5NeverOGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for UUID();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a5;
  v16 = a5[1];
  (*(v17 + 16))(v14, a3, v12);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSgs5NeverOGMd, &_sScCySo10CGImageRefaSgs5NeverOGMR);
  v19 = *(v18 - 8);
  (*(v19 + 16))(v10, a1, v18);
  (*(v19 + 56))(v10, 0, 1, v18);
  specialized Dictionary.subscript.setter(v10, v14);
  swift_beginAccess();

  v21 = specialized Dictionary._Variant.updateValue(_:forKey:)(v20, 0, 0, v15, v16);
  v23 = v22;
  LOBYTE(a1) = v24;
  swift_endAccess();
  return outlined consume of AsyncCache<Data, CGImageRef>.CacheState?(v21, v23, a1);
}

uint64_t specialized static ImageElementView.ImageState.== infix(_:_:)(char *a1, char *a2)
{
  v103 = a1;
  v104 = a2;
  v2 = type metadata accessor for CRAsset();
  v3 = *(v2 - 8);
  v101 = v2;
  v102 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v98 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContentsBounds(0);
  v90 = *(v5 - 8);
  v91 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v87 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSg_ADtMd, &_s8PaperKit14ContentsBoundsOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v84 - v7;
  v8 = type metadata accessor for ImageFilter(0);
  v96 = *(v8 - 8);
  v97 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSg_ADtMd, &_s8PaperKit11ImageFilterOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v84 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v88 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v99 = &v84 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v84 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v84 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v84 - v24;
  v26 = type metadata accessor for CRAssetOrData(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ImageElementView.ImageState(0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v84 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit16ImageElementViewC0C5StateO_AEtMd, &_s8PaperKit16ImageElementViewC0C5StateO_AEtMR);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v84 - v36;
  v39 = &v84 + *(v38 + 56) - v36;
  outlined init with copy of ImageElementView.ImageOrFile(v103, &v84 - v36, type metadata accessor for ImageElementView.ImageState);
  outlined init with copy of ImageElementView.ImageOrFile(v104, v39, type metadata accessor for ImageElementView.ImageState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v86 = v19;
    v41 = v102;
    v103 = v22;
    v104 = v25;
    if (EnumCaseMultiPayload)
    {
      outlined init with copy of ImageElementView.ImageOrFile(v37, v31, type metadata accessor for ImageElementView.ImageState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v48 = v41;
        v49 = *(v41 + 32);
        v50 = v98;
        v51 = v101;
        v49(v98, v39, v101);
        v52 = v37;
        v47 = static CRAsset.== infix(_:_:)();
        v53 = *(v48 + 8);
        v53(v50, v51);
        v53(v31, v51);
        outlined destroy of ImageElementView.ImageOrFile(v52, type metadata accessor for ImageElementView.ImageState);
        return v47 & 1;
      }

      (*(v41 + 8))(v31, v101);
      goto LABEL_16;
    }

    v102 = v37;
    outlined init with copy of ImageElementView.ImageOrFile(v37, v34, type metadata accessor for ImageElementView.ImageState);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataO5asset_AA11ImageFilterOSg6filterAA14ContentsBoundsOSg4cropSi20maxDimensionInPixelstMd, &_s8PaperKit13CRAssetOrDataO5asset_AA11ImageFilterOSg6filterAA14ContentsBoundsOSg4cropSi20maxDimensionInPixelstMR);
    v43 = v42[12];
    v44 = v42[16];
    v45 = v42[20];
    v46 = *&v34[v45];
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(&v34[v44], &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(&v34[v43], &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
      outlined destroy of ImageElementView.ImageOrFile(v34, type metadata accessor for CRAssetOrData);
      v37 = v102;
      goto LABEL_16;
    }

    v101 = v46;
    v98 = *&v39[v45];
    outlined init with take of CRAssetOrData(v39, v28, type metadata accessor for CRAssetOrData);
    v55 = v104;
    outlined init with take of Range<AttributedString.Index>(&v34[v43], v104, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
    outlined init with take of Range<AttributedString.Index>(&v34[v44], v100, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
    v56 = v103;
    outlined init with take of Range<AttributedString.Index>(&v39[v43], v103, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
    v57 = &v39[v44];
    v58 = v99;
    outlined init with take of Range<AttributedString.Index>(v57, v99, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
    v59 = specialized static CRAssetOrData.== infix(_:_:)(v34, v28);
    outlined destroy of ImageElementView.ImageOrFile(v34, type metadata accessor for CRAssetOrData);
    if ((v59 & 1) == 0)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v100, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v55, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
      outlined destroy of ImageElementView.ImageOrFile(v28, type metadata accessor for CRAssetOrData);
      goto LABEL_35;
    }

    v85 = v28;
    v60 = v95;
    v61 = *(v94 + 48);
    outlined init with copy of Date?(v55, v95, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
    outlined init with copy of Date?(v56, v60 + v61, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
    v62 = v55;
    v63 = v97;
    v64 = *(v96 + 48);
    v65 = v56;
    if (v64(v60, 1, v97) == 1)
    {
      v66 = v64(v60 + v61, 1, v63);
      v67 = v92;
      v68 = v93;
      v69 = v100;
      if (v66 == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
        v70 = v99;
LABEL_29:
        v77 = *(v67 + 48);
        outlined init with copy of Date?(v69, v68, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
        outlined init with copy of Date?(v70, v68 + v77, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
        v78 = v91;
        v79 = *(v90 + 48);
        if (v79(v68, 1, v91) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
          outlined destroy of StocksKitCurrencyCache.Provider?(v103, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
          outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
          outlined destroy of StocksKitCurrencyCache.Provider?(v104, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
          outlined destroy of ImageElementView.ImageOrFile(v85, type metadata accessor for CRAssetOrData);
          if (v79(v68 + v77, 1, v78) == 1)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
LABEL_37:
            v47 = v101 == v98;
            outlined destroy of ImageElementView.ImageOrFile(v102, type metadata accessor for ImageElementView.ImageState);
            return v47 & 1;
          }

          goto LABEL_34;
        }

        v80 = v88;
        outlined init with copy of Date?(v68, v88, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
        v81 = v79(v68 + v77, 1, v78);
        v82 = v85;
        if (v81 == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v99, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
          outlined destroy of StocksKitCurrencyCache.Provider?(v103, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
          outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
          outlined destroy of StocksKitCurrencyCache.Provider?(v104, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
          outlined destroy of ImageElementView.ImageOrFile(v82, type metadata accessor for CRAssetOrData);
          outlined destroy of ImageElementView.ImageOrFile(v80, type metadata accessor for ContentsBounds);
LABEL_34:
          outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s8PaperKit14ContentsBoundsOSg_ADtMd, &_s8PaperKit14ContentsBoundsOSg_ADtMR);
          goto LABEL_35;
        }

        v83 = v87;
        outlined init with take of CRAssetOrData(v68 + v77, v87, type metadata accessor for ContentsBounds);
        LODWORD(v100) = specialized static ContentsBounds.== infix(_:_:)(v80, v83);
        outlined destroy of ImageElementView.ImageOrFile(v83, type metadata accessor for ContentsBounds);
        outlined destroy of StocksKitCurrencyCache.Provider?(v99, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
        outlined destroy of StocksKitCurrencyCache.Provider?(v103, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
        outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
        outlined destroy of StocksKitCurrencyCache.Provider?(v104, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
        outlined destroy of ImageElementView.ImageOrFile(v82, type metadata accessor for CRAssetOrData);
        outlined destroy of ImageElementView.ImageOrFile(v80, type metadata accessor for ContentsBounds);
        outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
        if (v100)
        {
          goto LABEL_37;
        }

LABEL_35:
        outlined destroy of ImageElementView.ImageOrFile(v102, type metadata accessor for ImageElementView.ImageState);
        goto LABEL_17;
      }
    }

    else
    {
      v71 = v86;
      outlined init with copy of Date?(v60, v86, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
      v72 = v64(v60 + v61, 1, v63);
      v67 = v92;
      v68 = v93;
      v73 = v100;
      if (v72 != 1)
      {
        v74 = v60 + v61;
        v75 = v89;
        outlined init with take of CRAssetOrData(v74, v89, type metadata accessor for ImageFilter);
        v76 = specialized static ImageFilter.== infix(_:_:)(v71, v75);
        outlined destroy of ImageElementView.ImageOrFile(v75, type metadata accessor for ImageFilter);
        outlined destroy of ImageElementView.ImageOrFile(v71, type metadata accessor for ImageFilter);
        outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
        v70 = v99;
        v69 = v73;
        if (v76)
        {
          goto LABEL_29;
        }

LABEL_27:
        outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
        outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
        outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
        outlined destroy of StocksKitCurrencyCache.Provider?(v62, &_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
        outlined destroy of ImageElementView.ImageOrFile(v85, type metadata accessor for CRAssetOrData);
        goto LABEL_35;
      }

      outlined destroy of ImageElementView.ImageOrFile(v71, type metadata accessor for ImageFilter);
      v69 = v73;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_s8PaperKit11ImageFilterOSg_ADtMd, &_s8PaperKit11ImageFilterOSg_ADtMR);
    v70 = v99;
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
LABEL_16:
    outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s8PaperKit16ImageElementViewC0C5StateO_AEtMd, &_s8PaperKit16ImageElementViewC0C5StateO_AEtMR);
LABEL_17:
    v47 = 0;
    return v47 & 1;
  }

LABEL_12:
  outlined destroy of ImageElementView.ImageOrFile(v37, type metadata accessor for ImageElementView.ImageState);
  v47 = 1;
  return v47 & 1;
}

uint64_t specialized static ImageElementView.ImageOrFile.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v39 - v7;
  v8 = type metadata accessor for CRStableAsset();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = type metadata accessor for ImageElementView.ImageOrFile(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v39 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit16ImageElementViewC0C6OrFileO_AEtMd, &_s8PaperKit16ImageElementViewC0C6OrFileO_AEtMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v39 - v21;
  v24 = *(v23 + 56);
  outlined init with copy of ImageElementView.ImageOrFile(a1, &v39 - v21, type metadata accessor for ImageElementView.ImageOrFile);
  outlined init with copy of ImageElementView.ImageOrFile(a2, &v22[v24], type metadata accessor for ImageElementView.ImageOrFile);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of ImageElementView.ImageOrFile(v22, v19, type metadata accessor for ImageElementView.ImageOrFile);
    v36 = *v19;
    if (!swift_getEnumCaseMultiPayload())
    {
      v37 = *&v22[v24];

      v31 = v36 == v37;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined init with copy of ImageElementView.ImageOrFile(v22, v16, type metadata accessor for ImageElementView.ImageOrFile);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v43;
      v26 = v44;
      v28 = *(v43 + 32);
      v28(v13, v16, v44);
      v28(v10, &v22[v24], v26);
      v29 = v39;
      CRStableAsset.url.getter();
      v30 = v40;
      CRStableAsset.url.getter();
      v31 = static URL.== infix(_:_:)();
      v32 = *(v41 + 8);
      v33 = v30;
      v34 = v42;
      v32(v33, v42);
      v32(v29, v34);
      v35 = *(v27 + 8);
      v35(v10, v26);
      v35(v13, v26);
LABEL_12:
      outlined destroy of ImageElementView.ImageOrFile(v22, type metadata accessor for ImageElementView.ImageOrFile);
      return v31 & 1;
    }

    (*(v43 + 8))(v16, v44);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s8PaperKit16ImageElementViewC0C6OrFileO_AEtMd, &_s8PaperKit16ImageElementViewC0C6OrFileO_AEtMR);
    v31 = 0;
    return v31 & 1;
  }

  outlined destroy of ImageElementView.ImageOrFile(v22, type metadata accessor for ImageElementView.ImageOrFile);
  v31 = 1;
  return v31 & 1;
}

uint64_t outlined init with copy of ImageElementView.ImageOrFile(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ImageElementView.ImageOrFile(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of CRAssetOrData(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *specialized ImageElementView.init(canvasElement:canvas:parentCanvasElement:)(uint64_t a1, void *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v30 - v12;
  *(v3 + direct field offset for ImageElementView.mediaView) = 0;
  *(v3 + direct field offset for ImageElementView.missingImageView) = 0;
  *(v3 + direct field offset for ImageElementView.getImageTask) = 0;
  *(v3 + direct field offset for ImageElementView.getThumbnailTask) = 0;
  *(v3 + direct field offset for ImageElementView.imageGetCounter) = 0;
  *(v3 + direct field offset for ImageElementView.imageSetCounter) = 0;
  *(v3 + direct field offset for ImageElementView.updateAfterZoomWorkItem) = 0;
  *(v3 + direct field offset for ImageElementView.thumbnailCacheDigest) = xmmword_1D405C100;
  *(v3 + direct field offset for ImageElementView.shouldShowMissingImagePlaceholder) = 1;
  type metadata accessor for ImageElementView.ImageState(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *(v3 + direct field offset for ImageElementView.isImageAnalysisEnabled) = 0;
  type metadata accessor for ImageElementView.ImageOrFile(0);
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectWeakInit();
  *(v3 + direct field offset for ImageElementView.$__lazy_storage_$_pendingImageAnalysisObservers) = 0;
  *(v3 + direct field offset for ImageElementView.innerBorderLayer) = 0;
  *(v3 + direct field offset for ImageElementView.innerBorderWidth) = 0;
  *(v3 + direct field offset for ImageElementView.innerBorderLayerRadius) = 0;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v14 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *(v3 + direct field offset for ImageElementView.contentView) = v14;
  [v14 setContentMode_];
  (*(v11 + 16))(v13, a1, v10);
  v15 = a3;
  v16 = a2;
  v17 = specialized ContainerCanvasElementView.init(canvasElement:canvas:parentCanvasElement:)(v13, a2, a3);
  v18 = direct field offset for ImageElementView.contentView;
  v19 = *(v17 + direct field offset for ImageElementView.contentView);
  v20 = v17;
  [v20 insertSubview:v19 atIndex:0];
  [*(v17 + v18) setClipsToBounds_];
  if (a3)
  {
    v21 = [*(v17 + v18) layer];
    [v21 setCornerRadius_];
  }

  v22 = v20;
  v23 = MEMORY[0x1DA6CCED0](0xD000000000000026, 0x80000001D408FC50);
  [v22 setAccessibilityIdentifier_];

  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();

  type metadata accessor for MainActor();

  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E85E0];
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v25;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in ImageElementView.init(canvasElement:canvas:parentCanvasElement:), v27);

  (*(v11 + 8))(a1, v10);
  return v22;
}

uint64_t outlined assign with take of ImageElementView.ImageState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageElementView.ImageState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ImageElementView.updateUI()(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[6];
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ImageElementView.updateUI()(a1, v8, v9, v10, v11, v12, v1 + v4, v1 + v7);
}

uint64_t partial apply for specialized closure #2 in ImageElementView.updateUI()(uint64_t a1)
{
  v2 = *(type metadata accessor for ImageElementView.ImageState(0) - 8);
  v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v3 = (*(v2 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for CRAssetOrData(0) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v3);
  v11 = *(v1 + v4);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v15 + 16) = v13;
  *v13 = v15;
  v13[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return specialized closure #2 in ImageElementView.updateUI()(a1, v8, v9, v1 + v16, v10, v11, v1 + v6, v12);
}

uint64_t partial apply for specialized closure #1 in AsyncCache.cached(for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return specialized closure #1 in AsyncCache.cached(for:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for specialized closure #1 in closure #2 in AsyncCache.cached(for:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return specialized closure #1 in closure #2 in AsyncCache.cached(for:)(a1, v6, v7, v8, (v1 + 40), v1 + v5);
}

double outlined consume of AsyncCache<Data, CGImageRef>.CacheState?(uint64_t a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of AsyncCache<Data, CGImageRef>.CacheState(a1, a2, a3 & 1);
  }

  return result;
}

double block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t partial apply for specialized closure #1 in CanvasElementView.endLiveEdit(undoable:discard:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return specialized closure #1 in CanvasElementView.endLiveEdit(undoable:discard:)(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return specialized closure #1 in CanvasElementView.endLiveEdit(undoable:discard:)(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return specialized closure #1 in CanvasElementView.endLiveEdit(undoable:discard:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ImageElementView.setImage(_:canAnimate:)()
{
  v1 = *(type metadata accessor for ImageElementView.ImageOrFile(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return perform #1 () in ImageElementView.setImage(_:canAnimate:)(v2, v3);
}

uint64_t outlined assign with copy of ImageElementView.ImageOrFile(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageElementView.ImageOrFile(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void specialized ImageElementView.init(coder:)()
{
  *(v0 + direct field offset for ImageElementView.mediaView) = 0;
  *(v0 + direct field offset for ImageElementView.missingImageView) = 0;
  *(v0 + direct field offset for ImageElementView.getImageTask) = 0;
  *(v0 + direct field offset for ImageElementView.getThumbnailTask) = 0;
  *(v0 + direct field offset for ImageElementView.imageGetCounter) = 0;
  *(v0 + direct field offset for ImageElementView.imageSetCounter) = 0;
  *(v0 + direct field offset for ImageElementView.updateAfterZoomWorkItem) = 0;
  *(v0 + direct field offset for ImageElementView.thumbnailCacheDigest) = xmmword_1D405C100;
  *(v0 + direct field offset for ImageElementView.shouldShowMissingImagePlaceholder) = 1;
  type metadata accessor for ImageElementView.ImageState(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *(v0 + direct field offset for ImageElementView.isImageAnalysisEnabled) = 0;
  type metadata accessor for ImageElementView.ImageOrFile(0);
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectWeakInit();
  *(v0 + direct field offset for ImageElementView.$__lazy_storage_$_pendingImageAnalysisObservers) = 0;
  *(v0 + direct field offset for ImageElementView.innerBorderLayer) = 0;
  *(v0 + direct field offset for ImageElementView.innerBorderWidth) = 0;
  *(v0 + direct field offset for ImageElementView.innerBorderLayerRadius) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t partial apply for closure #1 in ImageElementView.deinit(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ImageElementView.deinit(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_212Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in ImageElementView.init(canvasElement:canvas:parentCanvasElement:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ImageElementView.init(canvasElement:canvas:parentCanvasElement:)(a1, v4, v5, v6);
}

uint64_t type metadata accessor for UnknownLayout(uint64_t a1)
{
  result = type metadata singleton initialization cache for UnknownLayout;
  if (!type metadata singleton initialization cache for UnknownLayout)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for UnknownLayout(uint64_t a1)
{
  result = type metadata accessor for CRKeyPath();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnknownCanvasElement and conformance UnknownCanvasElement()
{
  result = lazy protocol witness table cache variable for type UnknownCanvasElement and conformance UnknownCanvasElement;
  if (!lazy protocol witness table cache variable for type UnknownCanvasElement and conformance UnknownCanvasElement)
  {
    type metadata accessor for UnknownCanvasElement(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnknownCanvasElement and conformance UnknownCanvasElement);
  }

  return result;
}

void *UnknownLayout.createView<A>(in:canvas:parent:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v25[1] = a4;
  v25[2] = a5;
  v25[3] = a1;
  v9 = type metadata accessor for CRKeyPath();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit20UnknownCanvasElementVGMd, &_s9Coherence3RefVy8PaperKit20UnknownCanvasElementVGMR);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v25 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMd, &_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMR);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v25 - v19;
  (*(v10 + 16))(v12, v6, v9, v18);
  type metadata accessor for UnknownCanvasElement(0);
  lazy protocol witness table accessor for type UnknownCanvasElement and conformance UnknownCanvasElement();
  Ref.init(id:)();
  type metadata accessor for Capsule();
  lazy protocol witness table accessor for type Ref<UnknownCanvasElement> and conformance Ref<A>();
  Capsule.encapsulate<A>(_:)();
  (*(v14 + 8))(v16, v13);
  v21 = *(v6 + *(type metadata accessor for UnknownLayout(0) + 20));
  objc_allocWithZone(type metadata accessor for UnknownCanvasElementView(0));
  v22 = a3;
  v23 = a2;
  return UnknownCanvasElementView.init(canvasElement:tag:canvas:parentCanvasElement:)(v20, v21, a2, a3);
}

unint64_t lazy protocol witness table accessor for type Ref<UnknownCanvasElement> and conformance Ref<A>()
{
  result = lazy protocol witness table cache variable for type Ref<UnknownCanvasElement> and conformance Ref<A>;
  if (!lazy protocol witness table cache variable for type Ref<UnknownCanvasElement> and conformance Ref<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence3RefVy8PaperKit20UnknownCanvasElementVGMd, &_s9Coherence3RefVy8PaperKit20UnknownCanvasElementVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Ref<UnknownCanvasElement> and conformance Ref<A>);
  }

  return result;
}

double UnknownPage.frame.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

double UnknownPage.frame.setter(double a1, double a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*UnknownPage.frame.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeStruct.properties.modify;
}

uint64_t UnknownPage.$frame.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);

  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for UnknownPage.$frame : UnknownPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t UnknownPage.$frame.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*UnknownPage.$frame.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$inherited.modify;
}

double UnknownPage.init()()
{
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_10(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  CRRegister.init(wrappedValue:)();
  type metadata accessor for UnknownPage(0);
  UnknownProperties.init()();
  return result;
}

uint64_t UnknownPage.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v33 = &v30[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v30[-v19];
  v21 = type metadata accessor for UnknownPage.Partial(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v30[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of UnknownPage.Partial(v2, v23, type metadata accessor for UnknownPage.Partial);
  v35 = a1;
  outlined init with copy of Date?(a1, v14, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v24 = *(v16 + 48);
  if (v24(v14, 1, v15) == 1)
  {
    v11 = v14;
LABEL_5:
    outlined destroy of UnknownPage.Partial(v23, type metadata accessor for UnknownPage.Partial);
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    goto LABEL_6;
  }

  (*(v16 + 32))(v20, v14, v15);
  outlined init with copy of Date?(v23, v11, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  if (v24(v11, 1, v15) == 1)
  {
    (*(v16 + 8))(v20, v15);
    goto LABEL_5;
  }

  v31 = CRRegister.canMerge(delta:)();
  v32 = v2;
  v27 = *(v16 + 8);
  v27(v20, v15);
  outlined destroy of UnknownPage.Partial(v23, type metadata accessor for UnknownPage.Partial);
  v27(v11, v15);
  v2 = v32;
  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  outlined init with copy of Date?(v2, v8, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v25 = v24(v8, 1, v15);
  outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  if (v25 == 1)
  {
    outlined assign with copy of CRRegister<CGRect>?(v35, v2);
  }

  else
  {
    v26 = v34;
    outlined init with copy of Date?(v35, v34, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    if (v24(v26, 1, v15) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      v29 = v33;
      (*(v16 + 32))(v33, v26, v15);
      if (!v24(v2, 1, v15))
      {
        CRRegister.merge(delta:)();
      }

      (*(v16 + 8))(v29, v15);
    }
  }

  return 1;
}

BOOL UnknownPage.Partial.canMerge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  outlined init with copy of Date?(a1, v8, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v13 = *(v10 + 48);
  if (v13(v8, 1, v9) == 1)
  {
    v5 = v8;
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    return 1;
  }

  (*(v10 + 32))(v12, v8, v9);
  outlined init with copy of Date?(v1, v5, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  if (v13(v5, 1, v9) == 1)
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_5;
  }

  v15 = CRRegister.canMerge(delta:)();
  v16 = *(v10 + 8);
  v16(v12, v9);
  v16(v5, v9);
  return (v15 & 1) != 0;
}

uint64_t outlined assign with copy of CRRegister<CGRect>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t UnknownPage.Partial.visitReferences(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  outlined init with copy of Date?(v2, &v9 - v4, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  CRRegister.visitReferences(_:)();
  return (*(v7 + 8))(v5, v6);
}

void UnknownPage.Partial.init(from:)(uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v8 = *(*(v7 - 8) + 56);
  v8(a2, 1, 1, v7);
  dispatch thunk of CRDecoder.keyedContainer()();
  if (v2)
  {

    outlined destroy of UnknownPage.Partial(a2, type metadata accessor for UnknownPage.Partial);
  }

  else if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    type metadata accessor for CGRect(0);
    v10[1] = v9;
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_10(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
    CRRegister.init(from:)();

    v8(v6, 0, 1, v7);
    outlined assign with take of UUID?(v6, a2, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
  }
}

double UnknownPage.Partial.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v10 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  dispatch thunk of CREncoder.keyedContainer()();
  if (!v1)
  {
    outlined init with copy of Date?(v0, v4, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      lazy protocol witness table accessor for type CRRegister<CGRect> and conformance CRRegister<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, MEMORY[0x1E6995080]);
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

uint64_t protocol witness for PartialCRDT.visitReferences(_:) in conformance UnknownPage.Partial(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  outlined init with copy of Date?(v2, &v9 - v4, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  CRRegister.visitReferences(_:)();
  return (*(v7 + 8))(v5, v6);
}

uint64_t UnknownPage.pdfPageID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PDFPageID(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void (*sub_1D3E7279C(double a1, double a2, double a3, double a4))()
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return UnknownCanvasElementView.flags.modify;
}

void *UnknownPage.update<A>(pdfPage:id:use:in:options:)(void *a1)
{
  type metadata accessor for PaperKitPDFPage(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    a1;
    specialized PaperPage.updateCropAndRotation(pdfPage:updateMediaBox:)(v3, 0);
  }

  return result;
}

id UnknownPage.createPageView<A>(id:in:pdfView:documentView:pdfPage:)(int a1, int a2, id a3)
{
  [a3 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = objc_allocWithZone(type metadata accessor for UnknownPageView());

  return [v11 initWithFrame_];
}

uint64_t outlined init with copy of UnknownPage.Partial(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t (*protocol witness for PaperPage.frame.modify in conformance UnknownPage(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

id protocol witness for PaperPage.createPageView<A>(id:in:pdfView:documentView:pdfPage:) in conformance UnknownPage(int a1, int a2, id a3)
{
  [a3 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = objc_allocWithZone(type metadata accessor for UnknownPageView());

  return [v11 initWithFrame_];
}

void *protocol witness for PaperPage.update<A>(pdfPage:id:use:in:options:) in conformance UnknownPage(void *a1)
{
  type metadata accessor for PaperKitPDFPage(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    a1;
    specialized PaperPage.updateCropAndRotation(pdfPage:updateMediaBox:)(v3, 0);
  }

  return result;
}

uint64_t UnknownPage.merge(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownPage.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t UnknownPage.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[0] = a2;
  v18[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v19 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  v20 = type metadata accessor for MergeResult();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeResult.init()();
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v14 = *(v3 + 8);
  v14(v10, v2);
  (*(v3 + 16))(v19, v7, v2);
  CRRegister.projectedValue.setter();
  v14(v7, v2);
  MergeResult.merge(_:)();
  v15 = *(v11 + 8);
  v16 = v20;
  v15(v13, v20);
  type metadata accessor for UnknownPage(0);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return (v15)(v13, v16);
}

uint64_t UnknownPage.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v12 = *(v3 + 8);
  v12(v5, v2);
  v12(v8, v2);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMR);
  v14 = 1;
  if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
  {
    outlined init with copy of Date?(v11, a1, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
    v14 = 0;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
  v15 = type metadata accessor for UnknownPage.MutatingAction(0);
  return (*(*(v15 - 8) + 56))(a1, v14, 1, v15);
}

uint64_t UnknownPage.apply(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v17 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11UnknownPageV14MutatingActionVSgMd, &_s8PaperKit11UnknownPageV14MutatingActionVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for UnknownPage.MutatingAction(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(a1, v10, &_s8PaperKit11UnknownPageV14MutatingActionVSgMd, &_s8PaperKit11UnknownPageV14MutatingActionVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s8PaperKit11UnknownPageV14MutatingActionVSgMd, &_s8PaperKit11UnknownPageV14MutatingActionVSgMR);
  }

  outlined init with take of UnknownPage.MutatingAction(v10, v14);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v16 = v17;
  (*(v17 + 16))(v4, v7, v2);
  CRRegister.projectedValue.setter();
  (*(v16 + 8))(v7, v2);
  return outlined destroy of UnknownPage.Partial(v14, type metadata accessor for UnknownPage.MutatingAction);
}

uint64_t outlined init with take of UnknownPage.MutatingAction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownPage.MutatingAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of UnknownPage.Partial(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t UnknownPage.hasDelta(from:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v8 = CRRegister.hasDelta(from:)();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    type metadata accessor for UnknownPage(0);
    v10 = UnknownProperties.hasDelta(from:)();
  }

  return v10 & 1;
}

uint64_t UnknownPage.copy(renamingReferences:)@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UnknownProperties();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  v18 = v2;
  outlined init with copy of UnknownPage.Partial(v2, a2, type metadata accessor for UnknownPage);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v14 = *(v8 + 8);
  v14(v10, v7);
  (*(v8 + 16))(v10, v13, v7);
  CRRegister.projectedValue.setter();
  v14(v13, v7);
  v15 = type metadata accessor for UnknownPage(0);
  UnknownProperties.copy(renamingReferences:)();
  return (*(v19 + 40))(a2 + *(v15 + 20), v6, v20);
}

uint64_t UnknownPage.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownProperties();
  v14 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v17 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_10(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v15 = 0u;
  v16 = 0u;
  CRRegister.init(wrappedValue:)();
  v9 = *(type metadata accessor for UnknownPage(0) + 20);
  UnknownProperties.init()();
  CRRegister.init(defaultState:)();
  if (v1)
  {
    return outlined destroy of UnknownPage.Partial(a1, type metadata accessor for UnknownPage);
  }

  v10 = v14;
  (*(v6 + 40))(a1, v8, v5);
  v11 = v17;
  UnknownProperties.init(defaultState:)();
  return (*(v10 + 40))(a1 + v9, v11, v3);
}

uint64_t UnknownPage.isDefaultState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  type metadata accessor for UnknownPage(0);
  if (UnknownProperties.isDefaultState.getter())
  {
    CRRegister.projectedValue.getter();
    v4 = CRRegister.isDefaultState.getter();
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t UnknownPage.visitReferences(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - v3;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v2 + 8))(v4, v1);
  type metadata accessor for UnknownPage(0);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t UnknownPage.newRefs(from:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  v13 = MEMORY[0x1E69E7CD0];
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v8 = CRRegister.newRefs(from:)();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  specialized Set.formUnion<A>(_:)(v8);
  type metadata accessor for UnknownPage(0);
  v10 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v10);
  return v13;
}

Swift::Bool __swiftcall UnknownPage.needToFinalizeTimestamps()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - v2;
  CRRegister.projectedValue.getter();
  v4 = CRRegister.needToFinalizeTimestamps()();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return 1;
  }

  else
  {
    type metadata accessor for UnknownPage(0);
    return UnknownProperties.needToFinalizeTimestamps()();
  }
}

uint64_t UnknownPage.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (*(v3 + 16))(v5, v8, v2);
  CRRegister.projectedValue.setter();
  (*(v3 + 8))(v8, v2);
  type metadata accessor for UnknownPage(0);
  return MEMORY[0x1DA6CBA30](a1);
}

uint64_t UnknownPage.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v23 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - v3;
  v5 = type metadata accessor for CRCodableVersion();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  type metadata accessor for UnknownPage(0);
  v24 = v1;
  UnknownProperties.minEncodingVersion.getter();
  (*(v6 + 104))(v11, *MEMORY[0x1E6995288], v5);
  v15 = static CRCodableVersion.== infix(_:_:)();
  v16 = *(v6 + 8);
  v16(v11, v5);
  if (v15)
  {
    v17 = *(v6 + 32);
    v18 = v25;
  }

  else
  {
    v19 = v25;
    CRRegister.projectedValue.getter();
    CRRegister.minEncodingVersion.getter();
    (*(v23 + 8))(v4, v2);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_10(&lazy protocol witness table cache variable for type CRCodableVersion and conformance CRCodableVersion, MEMORY[0x1E6995298], MEMORY[0x1E69952A0]);
    v20 = (v6 + 32);
    if (dispatch thunk of static Comparable.>= infix(_:_:)())
    {
      v16(v14, v5);
      return (*v20)(v19, v8, v5);
    }

    v16(v8, v5);
    v17 = *v20;
    v18 = v19;
  }

  return v17(v18, v14, v5);
}

uint64_t UnknownPage.observableDifference(from:with:)@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v13 = *(v4 + 8);
  v13(v6, v3);
  v13(v9, v3);
  v14 = type metadata accessor for CRValueObservableDifference();
  v15 = 1;
  if ((*(*(v14 - 8) + 48))(v12, 1, v14) != 1)
  {
    outlined init with copy of Date?(v12, a2, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    v15 = 0;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  v16 = type metadata accessor for UnknownPage.ObservableDifference(0);
  return (*(*(v16 - 8) + 56))(a2, v15, 1, v16);
}

double UnknownPage.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - v3;
  dispatch thunk of CREncoder.keyedContainer()();
  if (!v0)
  {
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type CRRegister<CGRect> and conformance CRRegister<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v2 + 8))(v4, v1);
    type metadata accessor for UnknownPage(0);
    UnknownProperties.encode(to:)();
  }

  return result;
}

uint64_t UnknownPage.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = type metadata accessor for UnknownProperties();
  v61 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtSgMd, &_sSS_9Coherence7AnyCRDTVtSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = (&v51 - v7);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v58 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v62 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_10(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v67 = 0u;
  v68 = 0u;
  CRRegister.init(wrappedValue:)();
  v15 = *(type metadata accessor for UnknownPage(0) + 20);
  v66 = a2;
  UnknownProperties.init()();
  v16 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v2)
  {

    return outlined destroy of UnknownPage.Partial(v66, type metadata accessor for UnknownPage);
  }

  else
  {
    v56 = v15;
    v57 = a1;
    v55 = v11;
    v17 = v16;
    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      CRRegister.init(from:)();
      (*(v62 + 40))(v66, v14, v12);
    }

    v18 = dispatch thunk of CRDecoder.CRDTKeyedContainer.allKeys()();
    v53 = 0;
    v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v18);

    *&v67 = v20;
    specialized Set._Variant.remove(_:)(0x656D617266, 0xE500000000000000);

    v21 = v67 + 56;
    v22 = 1 << *(v67 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v67 + 56);
    v25 = (v22 + 63) >> 6;
    v62 = v63 + 56;
    v26 = v67;

    v27 = 0;
    v54 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v28 = v27;
      if (!v24)
      {
        break;
      }

LABEL_14:
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v30 = (*(v26 + 48) + ((v27 << 10) | (16 * v29)));
      v32 = *v30;
      v31 = v30[1];

      if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
      {
        v52 = v17;
        v34 = v64;
        *v64 = v32;
        *(v34 + 8) = v31;

        v35 = v53;
        AnyCRDT.init(from:)();
        v53 = v35;
        if (v35)
        {
LABEL_29:

          swift_bridgeObjectRelease_n();
          return outlined destroy of UnknownPage.Partial(v66, type metadata accessor for UnknownPage);
        }

        (*v62)(v34, 0, 1, v65);
        v36 = v55;
        outlined init with take of (String, AnyCRDT)(v34, v55);
        outlined init with take of (String, AnyCRDT)(v36, v58);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v52;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54[2] + 1, 1, v54);
        }

        v38 = v63;
        v40 = v54[2];
        v39 = v54[3];
        v41 = v58;
        if (v40 >= v39 >> 1)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v54);
          v38 = v63;
          v54 = v43;
          v41 = v58;
        }

        v42 = v54;
        v54[2] = v40 + 1;
        outlined init with take of (String, AnyCRDT)(v41, v42 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v40);
      }

      else
      {

        v33 = v64;
        (*v62)(v64, 1, 1, v65);
        outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_sSS_9Coherence7AnyCRDTVtSgMd, &_sSS_9Coherence7AnyCRDTVtSgMR);
      }
    }

    while (1)
    {
      v27 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v27 >= v25)
      {
        break;
      }

      v24 = *(v21 + 8 * v27);
      ++v28;
      if (v24)
      {
        goto LABEL_14;
      }
    }

    v44 = v54;
    if (v54[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd, &_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMR);
      v45 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v45 = MEMORY[0x1E69E7CC8];
    }

    v46 = v56;
    v47 = v59;
    v48 = v60;
    v49 = v61;
    v69 = v45;
    v50 = v53;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v44, 1, &v69);
    if (v50)
    {

      return outlined destroy of UnknownPage.Partial(v66, type metadata accessor for UnknownPage);
    }

    UnknownProperties.init(_:)();

    return (*(v49 + 40))(v66 + v46, v48, v47);
  }
}

uint64_t UnknownPage.delta(_:from:)@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v16 = *(v4 + 8);
  v16(v6, v3);
  v16(v9, v3);
  v17 = 1;
  if ((*(v4 + 48))(v15, 1, v3) != 1)
  {
    outlined init with copy of Date?(v15, v12, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    (*(v4 + 56))(a2, 1, 1, v3);
    outlined assign with take of UUID?(v12, a2, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v17 = 0;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v18 = type metadata accessor for UnknownPage.Partial(0);
  return (*(*(v18 - 8) + 56))(a2, v17, 1, v18);
}

BOOL UnknownPage.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  outlined init with copy of Date?(a1, v4, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    return 1;
  }

  (*(v6 + 32))(v11, v4, v5);
  CRRegister.projectedValue.getter();
  v12 = CRRegister.canMerge(delta:)();
  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v11, v5);
  return (v12 & 1) != 0;
}

uint64_t UnknownPage.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v29 = &v26[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26[-v18];
  outlined init with copy of Date?(a1, v8, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v20 = *(v10 + 48);
  v21 = v20(v8, 1, v9);
  v30 = v1;
  if (v21 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    (*(v10 + 32))(v19, v8, v9);
    CRRegister.projectedValue.getter();
    v27 = CRRegister.canMerge(delta:)();
    v22 = *(v10 + 8);
    v22(v16, v9);
    v22(v19, v9);
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(a1, v5, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  if (v20(v5, 1, v9) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    v23 = v29;
    (*(v10 + 32))(v29, v5, v9);
    CRRegister.projectedValue.getter();
    CRRegister.merge(delta:)();
    (*(v10 + 16))(v28, v16, v9);
    CRRegister.projectedValue.setter();
    v24 = *(v10 + 8);
    v24(v16, v9);
    v24(v23, v9);
  }

  return 1;
}

uint64_t static UnknownPage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  lazy protocol witness table accessor for type CRRegister<CGRect> and conformance CRRegister<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, MEMORY[0x1E6995090]);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if (v9)
  {
    type metadata accessor for UnknownPage(0);
    v11 = static UnknownProperties.== infix(_:_:)();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t protocol witness for CRDT.context.getter in conformance UnknownPage(uint64_t a1)
{
  v2 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_10(&lazy protocol witness table cache variable for type UnknownPage and conformance UnknownPage, type metadata accessor for UnknownPage, &protocol conformance descriptor for UnknownPage);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t protocol witness for CRDT.newRefs(from:) in conformance UnknownPage(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v14 = MEMORY[0x1E69E7CD0];
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v9 = CRRegister.newRefs(from:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  specialized Set.formUnion<A>(_:)(v9);
  v11 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v11);
  return v14;
}

uint64_t protocol witness for CRDT.hasDelta(from:) in conformance UnknownPage(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v9 = CRRegister.hasDelta(from:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = UnknownProperties.hasDelta(from:)();
  }

  return v11 & 1;
}

uint64_t protocol witness for CRType.copy(renamingReferences:) in conformance UnknownPage@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v20 = type metadata accessor for UnknownProperties();
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  v17 = v3;
  outlined init with copy of UnknownPage.Partial(v3, a3, type metadata accessor for UnknownPage);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v14 = *(v8 + 8);
  v14(v10, v7);
  (*(v8 + 16))(v10, v13, v7);
  CRRegister.projectedValue.setter();
  v14(v13, v7);
  v15 = v19;
  UnknownProperties.copy(renamingReferences:)();
  return (*(v18 + 40))(a3 + *(v15 + 20), v6, v20);
}

uint64_t protocol witness for CRType.visitReferences(_:) in conformance UnknownPage(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - v3;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v2 + 8))(v4, v1);
  return UnknownProperties.visitReferences(_:)();
}

BOOL protocol witness for CRType.needToFinalizeTimestamps() in conformance UnknownPage()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - v2;
  CRRegister.projectedValue.getter();
  v4 = CRRegister.needToFinalizeTimestamps()();
  (*(v1 + 8))(v3, v0);
  return v4 || UnknownProperties.needToFinalizeTimestamps()();
}

uint64_t protocol witness for CRType.finalizeTimestamps(_:) in conformance UnknownPage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (*(v3 + 16))(v5, v8, v2);
  CRRegister.projectedValue.setter();
  (*(v3 + 8))(v8, v2);
  return MEMORY[0x1DA6CBA30](a1);
}

uint64_t protocol witness for CRMergeable.merge(_:) in conformance UnknownPage(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownPage.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UnknownPage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  lazy protocol witness table accessor for type CRRegister<CGRect> and conformance CRRegister<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, MEMORY[0x1E6995090]);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);
  if (v10)
  {
    v12 = static UnknownProperties.== infix(_:_:)();
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void protocol witness for CRCodable.encode(to:) in conformance UnknownPage()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v5 - v3;
  dispatch thunk of CREncoder.keyedContainer()();
  if (!v0)
  {
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type CRRegister<CGRect> and conformance CRRegister<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v2 + 8))(v4, v1);
    UnknownProperties.encode(to:)();
  }
}

uint64_t protocol witness for CRCodable.init(defaultState:) in conformance UnknownPage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UnknownProperties();
  v16 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v19 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_10(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v17 = 0u;
  v18 = 0u;
  CRRegister.init(wrappedValue:)();
  v11 = *(a1 + 20);
  UnknownProperties.init()();
  CRRegister.init(defaultState:)();
  if (v2)
  {
    return outlined destroy of UnknownPage.Partial(a2, type metadata accessor for UnknownPage);
  }

  v12 = v16;
  (*(v8 + 40))(a2, v10, v7);
  v13 = v19;
  UnknownProperties.init(defaultState:)();
  return (*(v12 + 40))(a2 + v11, v13, v5);
}

uint64_t protocol witness for CRCodable.isDefaultState.getter in conformance UnknownPage()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  if (UnknownProperties.isDefaultState.getter())
  {
    CRRegister.projectedValue.getter();
    v4 = CRRegister.isDefaultState.getter();
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t lazy protocol witness table accessor for type CRRegister<CGRect> and conformance CRRegister<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for UnknownPage(uint64_t a1)
{
  type metadata accessor for CRRegister<CGRect>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownProperties();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for UnknownPage.ObservableDifference(uint64_t a1)
{
  type metadata accessor for CRValueObservableDifference?(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata completion function for UnknownPage.Partial(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_index_13Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_index_14Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

unint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC8PaperKit09AnyCanvasA4ViewC_SayAFGTt0g5(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8PaperKit20AnyCanvasElementViewC_Tt1g5();
  specialized Array._copyContents(initializing:)(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void AnyCanvas.performSelectionAction(_:_:at:)(unsigned __int8 a1, void *a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v9 = v8;
  v161 = a6;
  LODWORD(v165) = a5;
  v167 = a2;
  v168 = a4;
  v166 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v156 = &v152 - v14;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v164 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v163 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_SS3utitSgMd, &_s10Foundation3URLV3url_SS3utitSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v162 = &v152 - v22;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_SStMd, &_s10Foundation3URLV_SStMR);
  MEMORY[0x1EEE9AC00](v157);
  v24 = &v152 - v23;
  v160 = type metadata accessor for URL();
  v159 = *(v160 - 8);
  v25 = MEMORY[0x1EEE9AC00](v160);
  v158 = &v152 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*((*MEMORY[0x1E69E7D40] & *v8) + 0x7A0))(v25))
  {
    return;
  }

  v155 = a8;
  *&aBlock.d = &type metadata for PencilAndPaperFeatureFlags;
  v27 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  *&aBlock.tx = v27;
  LOBYTE(aBlock.a) = 0;
  v28 = isFeatureEnabled(_:)();
  v29 = __swift_destroy_boxed_opaque_existential_0(&aBlock);
  if ((v28 & 1) == 0)
  {
    v30 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x468))(v29);
    if (v30)
    {
      v31 = v30;
      v153 = a7;
      v154 = v9;
      v32 = [v30 selectionInteraction];
      v33 = [v32 currentSelectionHasStrokes];

      if (v33)
      {
        if (a1 <= 3u)
        {
          if (a1 > 1u)
          {
            if (a1 == 2)
            {
              [v31 paste_];
            }

            else
            {
              [v31 duplicate_];
            }
          }

          else if (a1)
          {
            [v31 copy_];
          }

          else
          {
            [v31 cut_];
          }
        }

        else if (a1 == 4)
        {
          [v31 delete_];
        }

        return;
      }

      v9 = v154;
      a7 = v153;
    }
  }

  if (a1 <= 3u)
  {
    if (a1 <= 1u)
    {
      if (!a1)
      {
        v34 = v165;
        v35 = v166;
        v36 = v167;
        v37 = v168;
        AnyCanvas.performSelectionAction(_:_:at:)(1u, v167, v166, v168, v165 & 1, 0, 0, 1u);
        AnyCanvas.performSelectionAction(_:_:at:)(4u, v36, v35, v37, v34 & 1, 0, 0, 1u);
        return;
      }

      *&aBlock.d = &type metadata for PencilAndPaperFeatureFlags;
      *&aBlock.tx = v27;
      LOBYTE(aBlock.a) = 0;
      v72 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      v73 = v167;
      if (v72)
      {
        v74 = v165 & 1;
        v75 = v166;
        v76 = MEMORY[0x1E69E7D40];
      }

      else
      {
        v76 = MEMORY[0x1E69E7D40];
        v74 = v165 & 1;
        v75 = v166;
        if ((*((*MEMORY[0x1E69E7D40] & *v9) + 0x8E8))(v167, v166, v168, v74))
        {
          v85 = [objc_opt_self() generalPasteboard];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v85 setItems_];

          return;
        }
      }

      v87 = [objc_opt_self() generalPasteboard];
      v88 = &v169;
      v89 = (*((*v76 & *v9) + 0x8E0))(v73, v75, v168, v74);
      v170 = v89;
      *&aBlock.a = MEMORY[0x1E69E7CC0];
      if (!v89)
      {
        goto LABEL_54;
      }

      v90 = v89;
      MEMORY[0x1DA6CD190]();
      if (*((*&aBlock.a & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*&aBlock.a & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_53:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_54:
        outlined destroy of StocksKitCurrencyCache.Provider?(v88 + 32, &_sSo14NSItemProviderCSgMd, &_sSo14NSItemProviderCSgMR);
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSItemProvider, 0x1E696ACA0);
        v50 = Array._bridgeToObjectiveC()().super.isa;

        [v87 setItemProviders_];

        goto LABEL_55;
      }

LABEL_105:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_53;
    }

    if (a1 != 2)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      v77 = static OS_dispatch_queue.main.getter();
      v78 = swift_allocObject();
      v79 = v166;
      v80 = v167;
      *(v78 + 16) = v9;
      *(v78 + 24) = v80;
      v81 = v168;
      *(v78 + 32) = v79;
      *(v78 + 40) = v81;
      *(v78 + 48) = v165 & 1;
      *&aBlock.tx = partial apply for closure #6 in AnyCanvas.performSelectionAction(_:_:at:);
      *&aBlock.ty = v78;
      *&aBlock.a = MEMORY[0x1E69E9820];
      *&aBlock.b = 1107296256;
      *&aBlock.c = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *&aBlock.d = &block_descriptor_57;
      v82 = _Block_copy(&aBlock);
      v83 = v9;

      static DispatchQoS.unspecified.getter();
      *&aBlock.a = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type AnyCanvas and conformance AnyCanvas(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1DA6CD890](0, v20, v17, v82);
      _Block_release(v82);

      (*(v164 + 8))(v17, v15);
      (*(v163 + 8))(v20, v18);
      return;
    }

    v153 = a7;
    v167 = objc_opt_self();
    v38 = [v167 generalPasteboard];
    v39 = [v38 itemProviders];

    v166 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSItemProvider, 0x1E696ACA0);
    v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v154 = v9;
    if (v40 >> 62)
    {
      goto LABEL_63;
    }

    for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v42 = 0;
      while (1)
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x1DA6CE0C0](v42, v40);
        }

        else
        {
          if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v43 = *(v40 + 8 * v42 + 32);
        }

        v44 = v43;
        v45 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        v46 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
        v47 = [v44 hasItemConformingToTypeIdentifier_];

        if (v47)
        {

          v91 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
          v92 = swift_allocObject();
          v93 = v154;
          v94 = v161;
          *(v92 + 16) = v154;
          *(v92 + 24) = v94;
          *(v92 + 32) = *&v153;
          *(v92 + 40) = v155 & 1;
          *&aBlock.tx = partial apply for closure #3 in AnyCanvas.performSelectionAction(_:_:at:);
          *&aBlock.ty = v92;
          *&aBlock.a = MEMORY[0x1E69E9820];
          *&aBlock.b = 1107296256;
          *&aBlock.c = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
          *&aBlock.d = &block_descriptor_32_2;
          v95 = _Block_copy(&aBlock);
          v96 = v93;

          v97 = [v44 loadFileRepresentationForTypeIdentifier:v91 completionHandler:v95];
          _Block_release(v95);

          return;
        }

        ++v42;
        if (v45 == i)
        {
          goto LABEL_64;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      ;
    }

LABEL_64:

    v98 = v167;
    v99 = [v167 generalPasteboard];
    v100 = [v99 items];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    v101 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v102 = v162;
    Array<A>.pasteboardPaperKitURL.getter(v101, v162);

    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_SS3utitMd, &_s10Foundation3URLV3url_SS3utitMR);
    if ((*(*(v103 - 8) + 48))(v102, 1, v103) != 1)
    {
      v113 = (v102 + *(v103 + 48));
      v114 = *v113;
      v115 = v113[1];
      v116 = &v24[*(v157 + 48)];
      v117 = v159;
      v118 = *(v159 + 32);
      v119 = v102;
      v120 = v160;
      v118(v24, v119, v160);
      *v116 = v114;
      *(v116 + 1) = v115;

      v121 = v158;
      v122 = (v118)(v158, v24, v120);
      v123 = (*((*MEMORY[0x1E69E7D40] & *v154) + 0x440))(v122);
      v125 = v124;
      ObjectType = swift_getObjectType();
      (*(v125 + 136))(v121, 1, 0, 0, 1, ObjectType, v125);

      (*(v117 + 8))(v121, v120);
      return;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v102, &_s10Foundation3URLV3url_SS3utitSgMd, &_s10Foundation3URLV3url_SS3utitSgMR);
    v104 = [v98 generalPasteboard];
    v105 = [v104 itemProviders];

    v106 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if (v106 >> 62)
    {
      v107 = __CocoaSet.count.getter();
    }

    else
    {
      v107 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v108 = v154;
    v87 = v155;
    if (v107)
    {
      v88 = 0;
      v168 = v106 & 0xC000000000000001;
      do
      {
        if (v168)
        {
          v109 = MEMORY[0x1DA6CE0C0](v88, v106);
        }

        else
        {
          if (v88 >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_103;
          }

          v109 = *(v106 + 8 * v88 + 32);
        }

        v87 = v109;
        v110 = (v88 + 1);
        if (__OFADD__(v88, 1))
        {
          goto LABEL_102;
        }

        v111 = MEMORY[0x1DA6CCED0](0xD000000000000011, 0x80000001D40813A0);
        v112 = [v87 hasItemConformingToTypeIdentifier_];

        if (v112)
        {

          v146 = MEMORY[0x1DA6CCED0](0xD000000000000011, 0x80000001D40813A0);
          v147 = swift_allocObject();
          v148 = v161;
          *(v147 + 16) = v108;
          *(v147 + 24) = v148;
          *(v147 + 32) = *&v153;
          *(v147 + 40) = v155 & 1;
          *&aBlock.tx = partial apply for closure #5 in AnyCanvas.performSelectionAction(_:_:at:);
          *&aBlock.ty = v147;
          *&aBlock.a = MEMORY[0x1E69E9820];
          *&aBlock.b = 1107296256;
          *&aBlock.c = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
          *&aBlock.d = &block_descriptor_38;
          v149 = _Block_copy(&aBlock);
          v150 = v108;

          v151 = [v87 loadFileRepresentationForTypeIdentifier:v146 completionHandler:v149];
          _Block_release(v149);

          return;
        }

        ++v88;
        v87 = v155;
      }

      while (v110 != v107);
    }

    if (v87)
    {
      x = (*((*MEMORY[0x1E69E7D40] & *v108) + 0x990))(v127, 240.0, 240.0);
      y = v129;
    }

    else
    {
      x = *&v161;
      y = *&v153;
    }

    v131 = [v167 generalPasteboard];
    v132 = [v131 itemProviders];

    v87 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if (v87 >> 62)
    {
      v133 = __CocoaSet.count.getter();
      if (v133)
      {
LABEL_83:
        v88 = 0;
        v167 = v87;
        v168 = v87 & 0xC000000000000001;
        v165 = v87 + 32;
        v166 = v87 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v168)
          {
            v134 = v108;
            v135 = MEMORY[0x1DA6CE0C0](v88, v167);
          }

          else
          {
            if (v88 >= *(v166 + 16))
            {
              goto LABEL_104;
            }

            v134 = v108;
            v135 = *(v165 + 8 * v88);
          }

          v136 = v135;
          if (__OFADD__(v88++, 1))
          {
            break;
          }

          v138 = AnyCanvas.acceptedDropLayouts.getter();
          v139 = (v138 + 40);
          v140 = -*(v138 + 16);
          v141 = -1;
          do
          {
            if (v140 + v141 == -1)
            {

              goto LABEL_85;
            }

            if (++v141 >= *(v138 + 16))
            {
              __break(1u);
              goto LABEL_101;
            }

            v87 = (v139 + 2);
            v142 = *(v139 - 1);
            v143 = *v139;
            v144 = (*(*v139 + 32))(v136, v142, *v139);
            v139 = v87;
          }

          while ((v144 & 1) == 0);

          if ((*(v143 + 16))(v136, v134, 0, v142, v143, x, y, 240.0, 240.0, 0.0))
          {
            CGAffineTransformMakeTranslation(&aBlock, 20.0, 20.0);
            v172.x = x;
            v172.y = y;
            v145 = CGPointApplyAffineTransform(v172, &aBlock);
            x = v145.x;
            y = v145.y;
          }

LABEL_85:
          v108 = v134;
          if (v88 == v133)
          {
            goto LABEL_108;
          }
        }

LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }
    }

    else
    {
      v133 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v133)
      {
        goto LABEL_83;
      }
    }

LABEL_108:

    return;
  }

  if (a1 > 5u)
  {
    if (a1 != 6)
    {
      if (a1 == 7)
      {
        (*((*MEMORY[0x1E69E7D40] & *v9) + 0x720))(v167, v166, v168, v165 & 1);
      }

      else
      {
        (*((*MEMORY[0x1E69E7D40] & *v9) + 0x728))(v167, v166, v168, v165 & 1);
      }

      return;
    }

    v48 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x468);
    v49 = (v48)(v167);
    if (!v49)
    {
      return;
    }

    v50 = v49;
    type metadata accessor for TiledTextView();
    v51 = swift_dynamicCastClass();
    if (v51)
    {
      v52 = v51;
      v53 = v9;
      v54 = TiledTextView.canvasGenerationToolOverlayController.getter();
      v55 = CanvasGenerationToolOverlayController.imageGenerationController.getter();
      v56 = [v55 shouldShowImageGenerationUI];

      if (v56)
      {
        v57 = v48();
        if (!v57 || (v58 = v57, v59 = [v57 window], v58, !v59) || (v60 = objc_msgSend(objc_opt_self(), sel_sharedInstance), v61 = objc_msgSend(v60, sel_presentGreymatterAvailabilityAlertControllerInWindow_, v59), v60, v59, !v61))
        {
          v62 = type metadata accessor for TaskPriority();
          v63 = v156;
          (*(*(v62 - 8) + 56))(v156, 1, 1, v62);
          type metadata accessor for MainActor();
          v64 = v53;
          v65 = v50;
          v66 = v167;

          v67 = v166;

          v68 = static MainActor.shared.getter();
          v69 = swift_allocObject();
          v70 = MEMORY[0x1E69E85E0];
          *(v69 + 16) = v68;
          *(v69 + 24) = v70;
          *(v69 + 32) = v52;
          *(v69 + 40) = v66;
          v71 = v168;
          *(v69 + 48) = v67;
          *(v69 + 56) = v71;
          *(v69 + 64) = v165 & 1;
          *(v69 + 72) = v64;
          _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v63, &async function pointer to partial apply for closure #7 in AnyCanvas.performSelectionAction(_:_:at:), v69);

          return;
        }
      }
    }

LABEL_55:

    return;
  }

  if (a1 == 4)
  {
    (*((*MEMORY[0x1E69E7D40] & *v9) + 0x718))(v167, v166, v168, v165 & 1);
  }

  else
  {
    *&aBlock.d = &type metadata for PencilAndPaperFeatureFlags;
    *&aBlock.tx = v27;
    LOBYTE(aBlock.a) = 6;
    v84 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    if (v84)
    {
      (*((*MEMORY[0x1E69E7D40] & *v9) + 0x740))(v167, v166, v168, v165 & 1);
    }
  }
}

void AnyCanvas.contextMenuInteraction(_:members:configurationForMenuAtLocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6, double a7)
{
  v8 = v7;
  v56 = a4;
  v15 = type metadata accessor for CRKeyPath();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v57 = v7;
  lazy protocol witness table accessor for type AnyCanvas and conformance AnyCanvas(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v7 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isScribbling) & 1) == 0 && (*(a2 + 16) || *(a3 + 16) || (a5))
  {
    v55 = a5;
    v54 = a1;
    specialized CanvasMembers.views(in:)(v7, a2);
    v20 = v19;
    v21 = v19 >> 62;
    if (v19 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_5:
        v52 = v16;
        v53 = v20 & 0xC000000000000001;
        if ((v20 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1DA6CE0C0](0, v20);
        }

        else
        {
          if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_43;
          }

          v22 = *(v20 + 32);
        }

        v23 = v22;
        v24 = MEMORY[0x1E69E7D40];
        v25 = (*((*MEMORY[0x1E69E7D40] & *v22) + 0x318))();

        if (v25)
        {
          v26 = (*((*v24 & *v25) + 0x98))();

          if (v26)
          {
            goto LABEL_10;
          }
        }

        v27 = v24;
        AnyCanvas.actions(canvasElementViews:members:)(v20, a2, a3, v56, v55 & 1);
        if (v21)
        {
          v28 = __CocoaSet.count.getter();
        }

        else
        {
          v28 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v29 = v53;
        v30 = v27;
        if (v28 != 1)
        {
LABEL_38:
          _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC8PaperKit09AnyCanvasA4ViewC_SayAFGTt0g5(v20);
          (*((*v30 & *v8) + 0x9B0))();

          return;
        }

        if (!*(v8 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView))
        {
LABEL_44:
          __break(1u);
          return;
        }

        _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(v31);
        v33 = v32;

        if (v29)
        {
          v34 = MEMORY[0x1DA6CE0C0](0, v20);
          goto LABEL_23;
        }

        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v34 = *(v20 + 32);
LABEL_23:
          v35 = v34;
          (*((*v27 & *v34) + 0xE8))();

          LOBYTE(v35) = specialized Sequence<>.contains(_:)(v18, v33);

          (*(v52 + 8))(v18, v15);
          if ((v35 & 1) == 0)
          {
            v36 = v29 ? MEMORY[0x1DA6CE0C0](0, v20) : *(v20 + 32);
            v37 = v36;
            [v8 convertPoint:v36 fromCoordinateSpace:{a6, a7}];
            v39 = v38;
            v41 = v40;

            v42 = (*((*v27 & *v8) + 0x440))();
            v44 = v43;
            ObjectType = swift_getObjectType();
            v46 = (*(v44 + 160))(0, ObjectType, v44, v39, v41);

            if (v46)
            {
              type metadata accessor for LinkCanvasElementView(0);
              if (swift_dynamicCastClass())
              {

                return;
              }
            }
          }

          if (v29)
          {
            v47 = MEMORY[0x1DA6CE0C0](0, v20);
          }

          else
          {
            v47 = *(v20 + 32);
          }

          v48 = v47;
          type metadata accessor for LinkCanvasElementView(0);
          v49 = swift_dynamicCastClass();
          if (v49)
          {
            v50 = v49;

            [v50 contextMenuInteraction:v54 configurationForMenuAtLocation:{a6, a7}];

            return;
          }

          if (v29)
          {
            MEMORY[0x1DA6CE0C0](0, v20);
            swift_unknownObjectRelease();
          }

          goto LABEL_38;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:
  }
}

UITargetedPreview_optional __swiftcall AnyCanvas.contextMenuInteraction(_:canvasElementViews:previewForHighlightingMenuWithConfiguration:)(UIContextMenuInteraction _, Swift::OpaquePointer canvasElementViews, UIContextMenuConfiguration previewForHighlightingMenuWithConfiguration)
{
  isa = _.super.isa;
  if (canvasElementViews._rawValue >> 62)
  {
    if (__CocoaSet.count.getter() != 1 || (_.super.isa = __CocoaSet.count.getter()) == 0)
    {
LABEL_9:
      memset(v24, 0, sizeof(v24));
      v25 = 1;
      v11 = MEMORY[0x1E69E7D40];
      _.super.isa = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x920))(canvasElementViews._rawValue, v24);
      if (!_.super.isa)
      {
        goto LABEL_21;
      }

      v12 = _.super.isa;
      v13 = (*((*v11 & *v3) + 0x450))();
      if (!v13)
      {

        _.super.isa = 0;
        goto LABEL_21;
      }

      v14 = v13;
      _.super.isa = *(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
      if (_.super.isa)
      {
        [(objc_class *)_.super.isa frame];
        x = v27.origin.x;
        y = v27.origin.y;
        width = v27.size.width;
        height = v27.size.height;
        MidX = CGRectGetMidX(v27);
        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        v20 = [objc_allocWithZone(MEMORY[0x1E69DC9A8]) initWithContainer:v14 center:{MidX, CGRectGetMidY(v28)}];
        v21 = [objc_allocWithZone(MEMORY[0x1E69DC9A0]) init];
        v22 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
        [v22 _setContinuousCornerRadius_];
        v23 = [objc_allocWithZone(MEMORY[0x1E69DD068]) initWithView:v22 parameters:v21 target:v20];

        _.super.isa = v23;
        goto LABEL_21;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  else if (*((canvasElementViews._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_9;
  }

  if ((canvasElementViews._rawValue & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1DA6CE0C0](0, canvasElementViews._rawValue);
  }

  else
  {
    if (!*((canvasElementViews._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v7 = *(canvasElementViews._rawValue + 4);
  }

  v8 = v7;
  v9 = [v7 window];
  if (!v9)
  {

    goto LABEL_9;
  }

  v10 = [v8 contextMenuInteraction:isa previewForHighlightingMenuWithConfiguration:previewForHighlightingMenuWithConfiguration.super.isa];
  _.super.isa = v10;
LABEL_21:
  result.is_nil = canvasElementViews._rawValue;
  result.value.super.isa = _.super.isa;
  return result;
}

void *AnyCanvas.createImageAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  result = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x468))();
  if (result)
  {
    v11 = result;
    type metadata accessor for TiledTextView();
    if (!swift_dynamicCastClass() || (v12 = TiledTextView.canvasGenerationToolOverlayController.getter(), v13 = CanvasGenerationToolOverlayController.imageGenerationController.getter(), v14 = [v13 shouldShowImageGenerationUI], v12, v13, !v14) || *(a1 + 16) || *(a2 + 16) || (a4 & 1) != 0)
    {

      return 0;
    }

    else
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v5;
      *(v15 + 24) = a1;
      *(v15 + 32) = a2;
      *(v15 + 40) = a3;
      *(v15 + 48) = 0;
      v16 = one-time initialization token for paperKitBundle;
      v17 = v5;

      if (v16 != -1)
      {
        swift_once();
      }

      v24._object = 0x80000001D40840E0;
      v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v18.value._object = 0xEB00000000656C62;
      v19._object = 0x80000001D40840C0;
      v24._countAndFlagsBits = 0xD00000000000003BLL;
      v19._countAndFlagsBits = 0xD000000000000011;
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v18, paperKitBundle, v20, v24);
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
      v21 = MEMORY[0x1DA6CCED0](0xD000000000000016, 0x80000001D4084120);
      v22 = [objc_opt_self() systemImageNamed_];

      v23 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      return v23;
    }
  }

  return result;
}

uint64_t AnyCanvas.createImageActionWithDivider(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = AnyCanvas.createImageAction(_:)(a1, a2, a3, a4 & 1);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13UIMenuElementCSgGMd, &_ss23_ContiguousArrayStorageCySo13UIMenuElementCSgGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D405C990;
  *(v6 + 32) = v5;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1D405CEB0;
  *(preferredElementSize + 32) = v5;
  v8 = v5;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v12.value.super.isa = 0;
  v12.is_nil = 0;
  *(v6 + 40) = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v9, 0, v12, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v11);

  return v6;
}

uint64_t closure #1 in closure #3 in AnyCanvas.performSelectionAction(_:_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v14;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = type metadata accessor for URL();
  *(v8 + 56) = v9;
  *(v8 + 64) = *(v9 - 8);
  *(v8 + 72) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 80) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #3 in AnyCanvas.performSelectionAction(_:_:at:), v11, v10);
}

uint64_t closure #1 in closure #3 in AnyCanvas.performSelectionAction(_:_:at:)()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);
  v3 = *(v0 + 88);
  v10 = *(v0 + 56);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 32);

  ObjectType = swift_getObjectType();
  CRStableAsset.url.getter();
  (*(v6 + 136))(v1, 1, v5, v4, v3 & 1, ObjectType, v6);

  (*(v2 + 8))(v1, v10);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t closure #3 in AnyCanvas.performSelectionAction(_:_:at:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v55 = a8;
  v50 = a7;
  v54 = a6;
  v52 = a4;
  v53 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v56 = &v45 - v11;
  v51 = type metadata accessor for CRStableAsset();
  v12 = *(v51 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v45 - v18;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v45 - v25;
  outlined init with copy of URL?(a1, v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  v28 = *(v21 + 32);
  v48 = v26;
  v28(v26, v19, v20);
  (*(v21 + 16))(v23, v26, v20);
  v47 = v16;
  CRStableAsset.init(url:extension:)();
  v29 = type metadata accessor for TaskPriority();
  v30 = (*(*(v29 - 8) + 56))(v56, 1, 1, v29);
  v31 = (*((*MEMORY[0x1E69E7D40] & *a3) + 0x440))(v30);
  v45 = v32;
  v46 = v31;
  v33 = v49;
  v34 = v16;
  v35 = v51;
  (*(v12 + 16))(v49, v34, v51);
  type metadata accessor for MainActor();
  v36 = static MainActor.shared.getter();
  v37 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v38 = (v13 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = MEMORY[0x1E69E85E0];
  *(v39 + 16) = v36;
  *(v39 + 24) = v40;
  (*(v12 + 32))(v39 + v37, v33, v35);
  v41 = (v39 + v38);
  v42 = v45;
  *v41 = v46;
  v41[1] = v42;
  v43 = v39 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8);
  v44 = v53;
  *v43 = v52;
  *(v43 + 8) = v44;
  *(v43 + 16) = v54 & 1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v56, v55, v39);

  (*(v12 + 8))(v47, v35);
  return (*(v21 + 8))(v48, v20);
}

uint64_t closure #1 in closure #5 in AnyCanvas.performSelectionAction(_:_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v14;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = type metadata accessor for URL();
  *(v8 + 56) = v9;
  *(v8 + 64) = *(v9 - 8);
  *(v8 + 72) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 80) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #5 in AnyCanvas.performSelectionAction(_:_:at:), v11, v10);
}

uint64_t closure #1 in closure #5 in AnyCanvas.performSelectionAction(_:_:at:)()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);
  v3 = *(v0 + 88);
  v10 = *(v0 + 56);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 32);

  ObjectType = swift_getObjectType();
  CRStableAsset.url.getter();
  (*(v6 + 128))(v1, v5, v4, v3 & 1, ObjectType, v6);

  (*(v2 + 8))(v1, v10);

  v8 = *(v0 + 8);

  return v8();
}

double closure #6 in AnyCanvas.performSelectionAction(_:_:at:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x730))(a2, a3, a4, a5 & 1, 0, 0, 1);

  return result;
}

uint64_t closure #7 in AnyCanvas.performSelectionAction(_:_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 104) = a8;
  *(v8 + 48) = a7;
  *(v8 + 56) = v13;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  type metadata accessor for MainActor();
  *(v8 + 64) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 72) = v10;
  *(v8 + 80) = v9;

  return MEMORY[0x1EEE6DFA0](closure #7 in AnyCanvas.performSelectionAction(_:_:at:), v10, v9);
}

uint64_t closure #7 in AnyCanvas.performSelectionAction(_:_:at:)()
{
  v1 = TiledTextView.canvasGenerationToolOverlayController.getter();
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC8PaperKit37CanvasGenerationToolOverlayController_canvasGenerationToolController];
  if (v3)
  {
    v4 = *(v0 + 56);
    v5 = *(v0 + 104);
    v6 = *(v3 + OBJC_IVAR____TtC8PaperKit30CanvasGenerationToolController_canvasGenerationTool);
    *(v0 + 88) = v6;
    v6;

    v7 = swift_task_alloc();
    *(v0 + 96) = v7;
    *v7 = v0;
    v7[1] = closure #7 in AnyCanvas.performSelectionAction(_:_:at:);
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    v10 = *(v0 + 32);

    return CanvasGenerationTool.initiateMagicGenerativePlayground(for:canvas:invocation:)(v10, v8, v9, v5 & 1, v4, 2);
  }

  else
  {

    **(v0 + 16) = 1;
    v12 = *(v0 + 8);

    return v12();
  }
}

{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 88);
  if (v0)
  {

    v5 = *(v3 + 72);
    v6 = *(v3 + 80);
    v7 = closure #7 in AnyCanvas.performSelectionAction(_:_:at:);
  }

  else
  {

    v5 = *(v3 + 72);
    v6 = *(v3 + 80);
    v7 = closure #7 in AnyCanvas.performSelectionAction(_:_:at:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

{

  **(v0 + 16) = 0;
  v1 = *(v0 + 8);

  return v1();
}

{

  **(v0 + 16) = 1;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t AnyCanvas.actions(canvasElementViews:members:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v105 = a5;
  v108 = a4;
  v106 = a3;
  v107 = a2;
  v7 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x440))();
  v9 = v8;
  ObjectType = swift_getObjectType();
  v11 = (*(v9 + 184))(ObjectType, v9);

  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_40:
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  while (v13 != v14)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1DA6CE0C0](v14, a1);
    }

    else
    {
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_38;
      }

      v15 = *(a1 + 8 * v14 + 32);
    }

    v16 = v15;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v110[0] = v15;
    MEMORY[0x1EEE9AC00](v15);
    v117._object = v110;
    if (specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_Say8PaperKit09AnyCanvasA4ViewCG_TG5TA_0, &v96, v11))
    {

LABEL_19:

      v65 = swift_allocObject();
      v66 = v104;
      v67 = v107;
      *(v65 + 16) = v104;
      *(v65 + 24) = v67;
      v68 = v108;
      *(v65 + 32) = v106;
      *(v65 + 40) = v68;
      *(v65 + 48) = v105 & 1;
      v69 = one-time initialization token for paperKitBundle;
      v70 = v66;

      if (v69 != -1)
      {
        swift_once();
      }

      v117._object = 0x80000001D4083E60;
      v71._countAndFlagsBits = 0x6574656C6544;
      v72.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v72.value._object = 0xEB00000000656C62;
      v116._countAndFlagsBits = 0xD000000000000020;
      v71._object = 0xE600000000000000;
      v73._countAndFlagsBits = 0;
      v73._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v71, v72, paperKitBundle, v73, v116);
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
      v74 = MEMORY[0x1DA6CCED0](0x6873617274, 0xE500000000000000);
      v75 = [objc_opt_self() systemImageNamed_];

      MEMORY[0x1DA6CCED0](0xD000000000000015, 0x80000001D408D910);
      v97 = _s8PaperKit9AnyCanvasC12deleteActionySo8UIActionCAA0D7MembersVFyAFcfU_TA_0;
      v117._object = v65;
      v96 = 0;
      v76 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v111 = v76;
      v77 = MEMORY[0x1E69E7CC0];
      v110[0] = MEMORY[0x1E69E7CC0];
      if (v76)
      {
        v78 = v76;
        MEMORY[0x1DA6CD190]();
        if (*((v110[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v77 = v110[0];
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(&v111, &_sSo13UIMenuElementCSgMd, &_sSo13UIMenuElementCSgMR);
      return v77;
    }

    (*((*MEMORY[0x1E69E7D40] & *v16) + 0x1D8))(v110);

    ++v14;
    if ((v110[0] & 4) != 0)
    {
      goto LABEL_19;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13UIMenuElementCSgGMd, &_ss23_ContiguousArrayStorageCySo13UIMenuElementCSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D40621E0;
  v18 = swift_allocObject();
  v19 = v104;
  v20 = v107;
  *(v18 + 16) = v104;
  *(v18 + 24) = v20;
  v21 = v108;
  *(v18 + 32) = v106;
  *(v18 + 40) = v21;
  LODWORD(v101) = v105 & 1;
  *(v18 + 48) = v105 & 1;
  v22 = one-time initialization token for paperKitBundle;
  v99 = v19;

  if (v22 != -1)
  {
    swift_once();
  }

  v23.value._object = 0xEB00000000656C62;
  v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v103.super.isa = paperKitBundle.super.isa;
  v117._object = 0x80000001D408D860;
  v112._countAndFlagsBits = 0xD00000000000001BLL;
  v24._countAndFlagsBits = 7632195;
  v24._object = 0xE300000000000000;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v23, paperKitBundle, v25, v112);
  v26 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
  v27 = MEMORY[0x1DA6CCED0](0x73726F7373696373, 0xE800000000000000);
  v102 = objc_opt_self();
  v28 = [v102 systemImageNamed_];

  MEMORY[0x1DA6CCED0](0xD000000000000012, 0x80000001D408D880);
  v97 = _s8PaperKit9AnyCanvasC9cutActionySo8UIActionCAA0D7MembersVFyAFcfU_TA_0;
  v117._object = v18;
  v96 = 0;
  *(inited + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v29 = swift_allocObject();
  v30 = v99;
  v100 = inited;
  v31 = v107;
  *(v29 + 16) = v99;
  *(v29 + 24) = v31;
  v32 = v106;
  v33 = v108;
  *(v29 + 32) = v106;
  *(v29 + 40) = v33;
  *(v29 + 48) = v101;
  v99 = v30;

  v117._object = 0x80000001D4083DB0;
  v34._countAndFlagsBits = 0x6C45282079706F43;
  v34._object = 0xEE0029746E656D65;
  v113._countAndFlagsBits = 0xD00000000000001ELL;
  v35.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v35.value._object = 0xEB00000000656C62;
  v36._countAndFlagsBits = 2037411651;
  v36._object = 0xE400000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v103, v36, v113);
  v37 = MEMORY[0x1DA6CCED0](0x642E6E6F2E636F64, 0xEA0000000000636FLL);
  v38 = [v102 systemImageNamed_];

  v98 = 0xD000000000000013;
  MEMORY[0x1DA6CCED0]();
  v97 = _s8PaperKit9AnyCanvasC10copyActionySo8UIActionCAA0D7MembersVFyAFcfU_TA_0;
  v117._object = v29;
  v96 = 0;
  v39 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v40 = v100;
  *(v100 + 40) = v39;
  *(v40 + 48) = 0;
  v41 = swift_allocObject();
  v42 = v99;
  *(v41 + 16) = v99;
  *(v41 + 24) = v31;
  v43 = v108;
  *(v41 + 32) = v32;
  *(v41 + 40) = v43;
  *(v41 + 48) = v101;
  v101 = v42;

  v117._object = 0x80000001D408D8C0;
  v44._countAndFlagsBits = 0x746163696C707544;
  v114._countAndFlagsBits = 0xD000000000000021;
  v44._object = 0xE900000000000065;
  v45.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v45.value._object = 0xEB00000000656C62;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v45, v103, v46, v114);
  v47 = MEMORY[0x1DA6CCED0](0xD000000000000015, 0x80000001D4083E40);
  v48 = [v102 systemImageNamed_];

  a1 = v26;
  MEMORY[0x1DA6CCED0](0xD000000000000018, 0x80000001D408D8F0);
  v97 = _s8PaperKit9AnyCanvasC15duplicateActionySo8UIActionCAA0D7MembersVFyAFcfU_TA_0;
  v117._object = v41;
  v96 = 0;
  v49 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v50 = v100;
  *(v100 + 56) = v49;
  v110[3] = &type metadata for PencilAndPaperFeatureFlags;
  v110[4] = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v110[0]) = 6;
  LOBYTE(v26) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v110);
  v51 = v108;
  if (v26)
  {
    v52 = v32;
    v11 = v101;
    v53 = v105;
    v54 = v105 & 1;
    v55 = v107;
    if ((*((*MEMORY[0x1E69E7D40] & *v101) + 0x738))(v107, v52, v108, v105 & 1))
    {
      v56 = swift_allocObject();
      *(v56 + 16) = v11;
      *(v56 + 24) = v55;
      *(v56 + 32) = v52;
      *(v56 + 40) = v51;
      *(v56 + 48) = v54;
      v57 = v11;

      v117._object = 0x80000001D40841F0;
      v58._countAndFlagsBits = 0xD000000000000016;
      v58._object = 0x80000001D40841D0;
      v115._countAndFlagsBits = 0xD00000000000002ALL;
      v59.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v59.value._object = 0xEB00000000656C62;
      v60._countAndFlagsBits = 0;
      v60._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v58, v59, v103, v60, v115);
      v61 = a1;
      v62 = MEMORY[0x1DA6CCED0](v98, 0x80000001D4084220);
      v63 = [v102 systemImageNamed_];

      a1 = v61;
      v53 = v105;
      v97 = partial apply for closure #1 in AnyCanvas.convertToHandwritingAction(_:);
      v117._object = v56;
      v96 = 0;
      v55 = v107;
      v64 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    }

    else
    {
      v64 = 0;
    }
  }

  else
  {
    v64 = 0;
    v53 = v105;
    v54 = v105 & 1;
    v55 = v107;
    v11 = v101;
  }

  *(v50 + 64) = v64;
  v110[0] = v50;
  v79 = v106;
  v80 = v108;
  v81 = AnyCanvas.createImageActionWithDivider(_:)(v55, v106, v108, v54);
  specialized Array.append<A>(contentsOf:)(v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v82 = swift_initStackObject();
  *(v82 + 16) = xmmword_1D405CEB0;
  v83 = swift_allocObject();
  *(v83 + 16) = v11;
  *(v83 + 24) = v55;
  *(v83 + 32) = v79;
  *(v83 + 40) = v80;
  *(v83 + 48) = v53 & 1;
  v84 = v11;

  v117._object = 0x80000001D4083E60;
  v85._countAndFlagsBits = 0x6574656C6544;
  v117._countAndFlagsBits = 0xD000000000000020;
  v85._object = 0xE600000000000000;
  v86.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v86.value._object = 0xEB00000000656C62;
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v85, v86, v103, v87, v117);
  v88 = MEMORY[0x1DA6CCED0](0x6873617274, 0xE500000000000000);
  v89 = [v102 systemImageNamed_];

  MEMORY[0x1DA6CCED0](0xD000000000000015, 0x80000001D408D910);
  v97 = closure #1 in AnyCanvas.deleteAction(_:)partial apply;
  v117._object = v83;
  v96 = 0;
  *(v82 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v90 = specialized _arrayForceCast<A, B>(_:)(v82);
  swift_setDeallocating();
  swift_arrayDestroy();
  specialized Array.append<A>(contentsOf:)(v90);
  v91 = 0;
  v92 = v110[0];
  v77 = MEMORY[0x1E69E7CC0];
  v109 = MEMORY[0x1E69E7CC0];
  v12 = *(v110[0] + 16);
  while (v12 != v91)
  {
    if (v91 >= *(v92 + 16))
    {
      goto LABEL_39;
    }

    v93 = *(v92 + 8 * v91++ + 32);
    if (v93)
    {
      v94 = v93;
      MEMORY[0x1DA6CD190]();
      if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v77 = v109;
    }
  }

  return v77;
}

unint64_t specialized Array._copyToContiguousArray()(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t partial apply for closure #7 in AnyCanvas.performSelectionAction(_:_:at:)(uint64_t a1)
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

  return closure #7 in AnyCanvas.performSelectionAction(_:_:at:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

double block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t partial apply for closure #1 in closure #5 in AnyCanvas.performSelectionAction(_:_:at:)(uint64_t a1)
{
  v3 = *(type metadata accessor for CRStableAsset() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);
  v13 = *(v1 + v6 + 8);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in closure #5 in AnyCanvas.performSelectionAction(_:_:at:)(a1, v7, v8, v1 + v4, v10, v11, v12, v13);
}

uint64_t objectdestroy_40Tm()
{
  v1 = type metadata accessor for CRStableAsset();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 17, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #3 in AnyCanvas.performSelectionAction(_:_:at:)(uint64_t a1)
{
  v3 = *(type metadata accessor for CRStableAsset() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);
  v13 = *(v1 + v6 + 8);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in closure #3 in AnyCanvas.performSelectionAction(_:_:at:)(a1, v7, v8, v1 + v4, v10, v11, v12, v13);
}

uint64_t Image.resizeImage(to:)(uint64_t a1)
{
  *(v2 + 112) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  v4 = type metadata accessor for CRAssetOrData(0);
  *(v2 + 160) = v4;
  *(v2 + 168) = *(v4 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = *a1;
  *(v2 + 276) = *(a1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 200) = v5;
  *v5 = v2;
  v5[1] = Image.resizeImage(to:);

  return Image.imageSize(applyingCrop:)(1);
}

uint64_t Image.resizeImage(to:)(double a1, double a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 208) = a2;
    *(v6 + 216) = a1;

    return MEMORY[0x1EEE6DFA0](Image.resizeImage(to:), 0, 0);
  }
}

uint64_t Image.resizeImage(to:)()
{
  CGSize.integral.getter(*(v0 + 216), *(v0 + 208));
  v2 = v1;
  v4 = v3;
  if (Image.Resize.isValid(from:)(__PAIR128__(*&v3, *&v1)))
  {
    v5 = *(v0 + 184);
    if (*(v0 + 276))
    {
      v6 = v2 * v5;
      v7 = v4 * v5;
    }

    else
    {
      CGSize.integral.getter(*(v0 + 184), *(v0 + 192));
    }

    CGSize.integral.getter(v6, v7);
    *(v0 + 224) = v10;
    *(v0 + 232) = v11;
    if (v10 != v2 || v11 != v4)
    {
      v13 = v10;
      v14 = v11;
      v15 = type metadata accessor for Image(0);
      *(v0 + 240) = v15;
      *(v0 + 272) = *(v15 + 28);
      *(v0 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
      CRRegister.wrappedValue.getter();
      v16 = swift_task_alloc();
      *(v0 + 256) = v16;
      *v16 = v0;
      v16[1] = Image.resizeImage(to:);
      v17 = *(v0 + 176);
      v18 = *(v0 + 152);

      return Image.resizedImage(newSize:contentsBounds:)(v17, v18, v13, v14);
    }

    v9 = *(v0 + 8);
  }

  else
  {
    lazy protocol witness table accessor for type Image.ResizeErrors and conformance Image.ResizeErrors();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();

    v9 = *(v0 + 8);
  }

  return v9();
}

{
  v2 = *(*v1 + 152);
  *(*v1 + 264) = v0;

  outlined destroy of StocksKitCurrencyCache.Provider?(v2, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  if (v0)
  {
    v3 = Image.resizeImage(to:);
  }

  else
  {
    v3 = Image.resizeImage(to:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 168);
  v18 = *(v0 + 176);
  v4 = *(v0 + 160);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  outlined init with copy of ContentsBounds(v18, v8, type metadata accessor for CRAssetOrData);
  (*(v3 + 56))(v8, 0, 1, v4);
  outlined init with copy of Date?(v8, v7, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  v9 = type metadata accessor for ContentsBounds(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  outlined init with copy of Date?(v5, v6, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  v10 = v2 / CGRectGetWidth(*(v0 + 16));
  CRRegister.wrappedValue.getter();
  v11 = v1 / CGRectGetHeight(*(v0 + 48));
  if (v11 >= v10)
  {
    v11 = v10;
  }

  v12 = v2 / v11;
  v13 = v1 / v11;
  v14 = CRRegister.wrappedValue.modify();
  *(v15 + 16) = v12;
  *(v15 + 24) = v13;
  v14(v0 + 80, 0);
  outlined destroy of ContentsBounds(v18, type metadata accessor for CRAssetOrData);

  v16 = *(v0 + 8);

  return v16();
}

{

  v1 = *(v0 + 8);

  return v1();
}

void static Image.Resize.pixels(_:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
}

void static Image.Resize.aspectScale(_:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t Image.imageSize(applyingCrop:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 88) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  *(v2 + 24) = swift_task_alloc();
  v3 = type metadata accessor for ContentsBounds(0);
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = Image.imageSize(applyingCrop:);

  return closure #1 in Image.imageSize(applyingCrop:)(v1);
}

uint64_t Image.imageSize(applyingCrop:)(double a1, double a2)
{
  v4 = *v3;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;

  if (v2)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](Image.imageSize(applyingCrop:), 0, 0);
  }
}

uint64_t Image.imageSize(applyingCrop:)()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  CRRegister.wrappedValue.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 24), &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
LABEL_4:
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
LABEL_5:

    v6 = *(v0 + 8);
    v7.n128_f64[0] = v5;
    v8.n128_f64[0] = v4;
    goto LABEL_6;
  }

  v10 = *(v0 + 48);
  v11 = *(v0 + 56);
  outlined init with take of ContentsBounds(*(v0 + 24), v11, type metadata accessor for ContentsBounds);
  outlined init with copy of ContentsBounds(v11, v10, type metadata accessor for ContentsBounds);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v20 = *(v0 + 72);
    v19 = *(v0 + 80);
    v21 = *(v0 + 48);
    outlined destroy of ContentsBounds(*(v0 + 56), type metadata accessor for ContentsBounds);
    v5 = v20 * *(v21 + 16);
    v4 = v19 * *(v21 + 24);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    if (one-time initialization token for imageElementResizeLogger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, imageElementResizeLogger);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D38C4000, v14, v15, "Image size failed due to quad contents bounds not being supported", v16, 2u);
      MEMORY[0x1DA6D0660](v16, -1, -1);
    }

    v17 = *(v0 + 56);

    lazy protocol witness table accessor for type Image.ResizeErrors and conformance Image.ResizeErrors();
    swift_allocError();
    *v18 = 2;
    swift_willThrow();
    outlined destroy of ContentsBounds(v17, type metadata accessor for ContentsBounds);
  }

  else
  {
    if (one-time initialization token for imageElementResizeLogger != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, imageElementResizeLogger);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D38C4000, v23, v24, "Image size failed due to unknown contents bounds", v25, 2u);
      MEMORY[0x1DA6D0660](v25, -1, -1);
    }

    v27 = *(v0 + 48);
    v26 = *(v0 + 56);

    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR) + 48);
    lazy protocol witness table accessor for type Image.ResizeErrors and conformance Image.ResizeErrors();
    swift_allocError();
    *v29 = 2;
    swift_willThrow();
    outlined destroy of ContentsBounds(v26, type metadata accessor for ContentsBounds);
    v30 = type metadata accessor for AnyCRValue();
    (*(*(v30 - 8) + 8))(v27 + v28, v30);
  }

  v6 = *(v0 + 8);
LABEL_6:

  return v6(v7, v8);
}

uint64_t one-time initialization function for imageElementResizeLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, imageElementResizeLogger);
  __swift_project_value_buffer(v0, imageElementResizeLogger);
  return Logger.init(subsystem:category:)();
}

Swift::Bool __swiftcall Image.Resize.isValid(from:)(CGSize from)
{
  height = from.height;
  width = from.width;
  v4 = *v1;
  if (*(v1 + 16))
  {
    v5 = v4 * from.width;
    v6 = v4 * from.height;
  }

  else
  {
    CGSize.integral.getter(*v1, *(v1 + 8));
  }

  result = 0;
  if (v5 <= 0.0 || v6 <= 0.0)
  {
    return result;
  }

  if (v5 <= -1.0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v5 >= 1.84467441e19)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v6 <= -1.0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v6 >= 1.84467441e19)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!is_mul_ok(v5, v6))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (width <= -1.0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (width >= 1.84467441e19)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((*&height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_34;
  }

  if (height <= -1.0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (height >= 1.84467441e19)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!is_mul_ok(width, height))
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v8 = v5 * v6;
  return width * height >= v8 || v8 < 0x8000001;
}

uint64_t Image.Resize.isValid(for:)()
{
  *(v1 + 16) = *v0;
  *(v1 + 56) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = Image.Resize.isValid(for:);

  return Image.imageSize(applyingCrop:)(1);
}

{
  v1 = Image.Resize.isValid(from:)(__PAIR128__(v0[5], v0[6]));
  v2 = v0[1];
  v3 = v1;

  return v2(v3);
}

uint64_t Image.Resize.isValid(for:)(double a1, double a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8(0);
  }

  else
  {
    *(v6 + 40) = a2;
    *(v6 + 48) = a1;

    return MEMORY[0x1EEE6DFA0](Image.Resize.isValid(for:), 0, 0);
  }
}

uint64_t Image.resizedImage(newSize:contentsBounds:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 144) = a2;
  *(v5 + 152) = v4;
  *(v5 + 128) = a3;
  *(v5 + 136) = a4;
  *(v5 + 120) = a1;
  v6 = type metadata accessor for SHA256();
  *(v5 + 160) = v6;
  *(v5 + 168) = *(v6 - 8);
  *(v5 + 176) = swift_task_alloc();
  v7 = type metadata accessor for SHA256Digest();
  *(v5 + 184) = v7;
  *(v5 + 192) = *(v7 - 8);
  *(v5 + 200) = swift_task_alloc();
  v8 = type metadata accessor for CRAssetOrData(0);
  *(v5 + 208) = v8;
  *(v5 + 216) = *(v8 - 8);
  *(v5 + 224) = swift_task_alloc();
  v9 = type metadata accessor for CRAsset();
  *(v5 + 232) = v9;
  *(v5 + 240) = *(v9 - 8);
  *(v5 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Image.resizedImage(newSize:contentsBounds:), 0, 0);
}

uint64_t Image.resizedImage(newSize:contentsBounds:)()
{
  v28 = v0;
  closure #1 in Image.resizedImage(newSize:contentsBounds:)(*(v0 + 144), v26);
  v1 = (v0 + 16);
  v2 = *(v0 + 272);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = v26[1];
  *(v0 + 16) = v26[0];
  *(v0 + 32) = v5;
  *(v0 + 48) = v27;
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  CRRegister.wrappedValue.getter();
  v6 = *(v4 + 48);
  *(v0 + 280) = v6;
  *(v0 + 288) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v2, 1, v3) == 1)
  {
    if (one-time initialization token for imageElementResizeLogger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, imageElementResizeLogger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D38C4000, v8, v9, "Image could not be resized due to missing image asset or data", v10, 2u);
      MEMORY[0x1DA6D0660](v10, -1, -1);
    }

    lazy protocol witness table accessor for type Image.ResizeErrors and conformance Image.ResizeErrors();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 272);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *(v0 + 320) = *v14;
      *(v0 + 328) = v14[1];
      v15 = v14[2];
      *(v0 + 336) = v15;
      v16 = v14[3];
      *(v0 + 96) = *(v0 + 128);
      v17 = *(v0 + 32);
      *(v0 + 56) = *v1;
      *(v0 + 344) = v16;
      *(v0 + 112) = 0x80;
      *(v0 + 72) = v17;
      *(v0 + 88) = *(v0 + 48);
      v18 = swift_task_alloc();
      *(v0 + 352) = v18;
      *v18 = v0;
      v18[1] = Image.resizedImage(newSize:contentsBounds:);

      return static ImageResize.resizedImage(fromData:outputSize:inputCrop:)(v15, v16, (v0 + 96), (v0 + 56));
    }

    else
    {
      v19 = *(v0 + 248);
      v21 = *(v0 + 128);
      v20 = *(v0 + 136);
      (*(*(v0 + 240) + 32))(v19, v14, *(v0 + 232));
      v22 = swift_task_alloc();
      *(v0 + 296) = v22;
      *(v22 + 16) = v21;
      *(v22 + 24) = v20;
      *(v22 + 32) = 0x80;
      *(v22 + 40) = v1;
      *(v22 + 48) = v19;
      v23 = swift_task_alloc();
      *(v0 + 304) = v23;
      *v23 = v0;
      v23[1] = Image.resizedImage(newSize:contentsBounds:);
      v24 = *(v0 + 264);
      v25 = *(v0 + 208);

      return MEMORY[0x1EEDF52A8](v24, 1, &async function pointer to partial apply for closure #2 in Image.resizedImage(newSize:contentsBounds:), v22, v25);
    }
  }
}

{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = Image.resizedImage(newSize:contentsBounds:);
  }

  else
  {

    v2 = Image.resizedImage(newSize:contentsBounds:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[26];
  outlined init with copy of Date?(v0[33], v2, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  if (v1(v2, 1, v3) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v0[32], &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
    if (one-time initialization token for imageElementResizeLogger != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, imageElementResizeLogger);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D38C4000, v5, v6, "Image could not be resized from asset URL", v7, 2u);
      MEMORY[0x1DA6D0660](v7, -1, -1);
    }

    v8 = v0[33];
    v10 = v0[30];
    v9 = v0[31];
    v11 = v0[29];

    lazy protocol witness table accessor for type Image.ResizeErrors and conformance Image.ResizeErrors();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
    (*(v10 + 8))(v9, v11);

    v13 = v0[1];
  }

  else
  {
    v14 = v0[32];
    v16 = v0[30];
    v15 = v0[31];
    v18 = v0[28];
    v17 = v0[29];
    v19 = v0[15];
    outlined destroy of StocksKitCurrencyCache.Provider?(v0[33], &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
    outlined init with take of ContentsBounds(v14, v18, type metadata accessor for CRAssetOrData);
    outlined init with take of ContentsBounds(v18, v19, type metadata accessor for CRAssetOrData);
    (*(v16 + 8))(v15, v17);

    v13 = v0[1];
  }

  return v13();
}

{
  v2 = v0[46];
  v1 = v0[47];
  v20 = v0[42];
  v21 = v0[43];
  v18 = v0[40];
  v19 = v0[41];
  v22 = v0[24];
  v16 = v0[25];
  v17 = v0[23];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];
  v6 = v0[15];
  outlined copy of Data._Representation(v1, v2);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(v1, v2);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v1, v2);
  outlined consume of Data._Representation(v1, v2);
  dispatch thunk of HashFunction.finalize()();
  (*(v3 + 8))(v4, v5);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x1E69663E0], MEMORY[0x1E69663D8]);
  v7 = Digest.makeIterator()();
  specialized _copySequenceToContiguousArray<A>(_:)(v7, v8);
  v10 = v9;

  v11 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v10);
  v13 = v12;

  outlined consume of Data._Representation(v18, v19);
  outlined consume of Data._Representation(v20, v21);
  outlined consume of Data._Representation(v1, v2);
  (*(v22 + 8))(v16, v17);
  *v6 = v11;
  v6[1] = v13;
  v6[2] = v1;
  v6[3] = v2;
  swift_storeEnumTagMultiPayload();

  v14 = v0[1];

  return v14();
}

{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[42];
  v2 = v0[43];
  outlined consume of Data._Representation(v0[40], v0[41]);
  outlined consume of Data._Representation(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t Image.resizedImage(newSize:contentsBounds:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 360) = v2;

  if (v2)
  {
    v7 = Image.resizedImage(newSize:contentsBounds:);
  }

  else
  {
    *(v6 + 368) = a2;
    *(v6 + 376) = a1;
    v7 = Image.resizedImage(newSize:contentsBounds:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t closure #1 in Image.resizedImage(newSize:contentsBounds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  outlined init with copy of Date?(a1, &v17 - v5, &_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR);
  v7 = type metadata accessor for ContentsBounds(0);
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result == 1)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = -2;
  }

  else
  {
    result = swift_getEnumCaseMultiPayload();
    if (result)
    {
      if (result != 1)
      {
        v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR) + 48);
        v10 = type metadata accessor for AnyCRValue();
        (*(*(v10 - 8) + 8))(&v6[v9], v10);
      }

      if (one-time initialization token for imageElementResizeLogger != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, imageElementResizeLogger);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1D38C4000, v12, v13, "Image could not be resized due to unsupported contents bounds", v14, 2u);
        MEMORY[0x1DA6D0660](v14, -1, -1);
      }

      lazy protocol witness table accessor for type Image.ResizeErrors and conformance Image.ResizeErrors();
      swift_allocError();
      *v15 = 2;
      return swift_willThrow();
    }

    else
    {
      v16 = *(v6 + 1);
      *a2 = *v6;
      *(a2 + 16) = v16;
      *(a2 + 32) = 0;
    }
  }

  return result;
}

uint64_t closure #2 in Image.resizedImage(newSize:contentsBounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a1;
  *(v7 + 88) = a7;
  v13 = type metadata accessor for URL();
  *(v7 + 96) = v13;
  *(v7 + 104) = *(v13 - 8);
  *(v7 + 112) = swift_task_alloc();
  v14 = swift_task_alloc();
  *(v7 + 56) = a3;
  *(v7 + 120) = v14;
  *(v7 + 64) = a4;
  *(v7 + 72) = a5;
  v15 = *(a6 + 16);
  *(v7 + 16) = *a6;
  *(v7 + 32) = v15;
  *(v7 + 48) = *(a6 + 32);
  v16 = swift_task_alloc();
  *(v7 + 128) = v16;
  *v16 = v7;
  v16[1] = closure #2 in Image.resizedImage(newSize:contentsBounds:);

  return static ImageResize.resizedImage(fromURL:outputSize:inputCrop:)(v14, a2, (v7 + 56), (v7 + 16));
}

uint64_t closure #2 in Image.resizedImage(newSize:contentsBounds:)()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = closure #2 in Image.resizedImage(newSize:contentsBounds:);
  }

  else
  {
    v2 = closure #2 in Image.resizedImage(newSize:contentsBounds:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  (*(v3 + 16))(v0[14], v1, v2);
  CRAsset.assetManager.getter();
  CRAsset.init(url:coordinated:assetManager:)();
  (*(v3 + 8))(v1, v2);
  type metadata accessor for CRAssetOrData(0);
  swift_storeEnumTagMultiPayload();

  v4 = v0[1];

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in Image.imageSize(applyingCrop:)(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for CRAssetOrData(0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in Image.imageSize(applyingCrop:), 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = closure #1 in Image.imageSize(applyingCrop:);
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = closure #1 in Image.imageSize(applyingCrop:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t closure #1 in Image.imageSize(applyingCrop:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  CRRegister.wrappedValue.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v0[3], &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
    if (one-time initialization token for imageElementResizeLogger != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, imageElementResizeLogger);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D38C4000, v5, v6, "Image size failed due to missing asset or data", v7, 2u);
      MEMORY[0x1DA6D0660](v7, -1, -1);
    }

    lazy protocol witness table accessor for type Image.ResizeErrors and conformance Image.ResizeErrors();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    outlined init with take of ContentsBounds(v0[3], v0[6], type metadata accessor for CRAssetOrData);
    v11 = swift_task_alloc();
    v0[7] = v11;
    *v11 = v0;
    v11[1] = closure #1 in Image.imageSize(applyingCrop:);
    v12 = v0[6];

    return closure #1 in closure #1 in Image.imageSize(applyingCrop:)(v12);
  }
}

{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v1;
  specialized static ImageLayout.imageSize(_:)(v1);
  v5 = v4;
  v7 = v6;

  outlined destroy of ContentsBounds(v2, type metadata accessor for CRAssetOrData);

  v8 = v0[1];
  v9.n128_u64[0] = v5;
  v10.n128_u64[0] = v7;

  return v8(v9, v10);
}

{
  outlined destroy of ContentsBounds(*(v0 + 48), type metadata accessor for CRAssetOrData);

  v1 = *(v0 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type Image.ResizeErrors and conformance Image.ResizeErrors()
{
  result = lazy protocol witness table cache variable for type Image.ResizeErrors and conformance Image.ResizeErrors;
  if (!lazy protocol witness table cache variable for type Image.ResizeErrors and conformance Image.ResizeErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.ResizeErrors and conformance Image.ResizeErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Image.ResizeErrors and conformance Image.ResizeErrors;
  if (!lazy protocol witness table cache variable for type Image.ResizeErrors and conformance Image.ResizeErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.ResizeErrors and conformance Image.ResizeErrors);
  }

  return result;
}

uint64_t closure #1 in closure #1 in Image.imageSize(applyingCrop:)(uint64_t a1)
{
  v1[8] = a1;
  v2 = type metadata accessor for CRAsset();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for CRAssetOrData(0);
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in Image.imageSize(applyingCrop:), 0, 0);
}

{
  *(*v1 + 120) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in Image.imageSize(applyingCrop:), 0, 0);
}

uint64_t closure #1 in closure #1 in Image.imageSize(applyingCrop:)()
{
  outlined init with copy of ContentsBounds(v0[8], v0[13], type metadata accessor for CRAssetOrData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[13];
    v2 = *v1;
    v3 = v1[1];
    v4 = v1[2];
    v5 = v1[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SbtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SbtGMR);
    inited = swift_initStackObject();
    v7 = MEMORY[0x1E696E0A8];
    *(inited + 16) = xmmword_1D4058CF0;
    v8 = *v7;
    *(inited + 32) = v8;
    *(inited + 40) = 0;
    v9 = v8;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SbTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo11CFStringRefa_SbtMd, &_sSo11CFStringRefa_SbtMR);
    type metadata accessor for CFStringRef(0);
    _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v12 = CGImageSourceCreateWithData(isa, v10.super.isa);

    if (v12)
    {

      outlined consume of Data._Representation(v2, v3);
      outlined consume of Data._Representation(v4, v5);

      v13 = v0[1];

      return v13(v12);
    }

    else
    {
      if (one-time initialization token for imageElementResizeLogger != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, imageElementResizeLogger);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1D38C4000, v17, v18, "Image size failed due to data not being convertible to image source", v19, 2u);
        MEMORY[0x1DA6D0660](v19, -1, -1);
      }

      lazy protocol witness table accessor for type Image.ResizeErrors and conformance Image.ResizeErrors();
      swift_allocError();
      *v20 = 0;
      swift_willThrow();

      outlined consume of Data._Representation(v2, v3);
      outlined consume of Data._Representation(v4, v5);

      v21 = v0[1];

      return v21();
    }
  }

  else
  {
    (*(v0[10] + 32))(v0[11], v0[13], v0[9]);
    v15 = swift_task_alloc();
    v0[14] = v15;
    *v15 = v0;
    v15[1] = closure #1 in closure #1 in Image.imageSize(applyingCrop:);

    return CRAsset.cgImageSource(waitIfUnavailable:)(0);
  }
}

{
  v1 = v0[15];
  if (v1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    if (one-time initialization token for imageElementResizeLogger != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, imageElementResizeLogger);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D38C4000, v5, v6, "Image size failed due to asset not returning image source", v7, 2u);
      MEMORY[0x1DA6D0660](v7, -1, -1);
    }

    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];

    lazy protocol witness table accessor for type Image.ResizeErrors and conformance Image.ResizeErrors();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    (*(v9 + 8))(v8, v10);

    v12 = v0[1];

    return v12();
  }
}

uint64_t outlined init with take of ContentsBounds(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ContentsBounds(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of ContentsBounds(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _sSo11CFStringRefaABSHSCWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #2 in Image.resizedImage(newSize:contentsBounds:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 32);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #2 in Image.resizedImage(newSize:contentsBounds:)(a1, a2, v6, v7, v10, v8, v9);
}

Swift::Void __swiftcall ImageWandTipController.userDidUseImageWand()()
{
  v0 = type metadata accessor for Tips.InvalidationReason();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for imageWandTipController != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.imageWandTipController);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D38C4000, v5, v6, "invalidate tip; action performed", v7, 2u);
    MEMORY[0x1DA6D0660](v7, -1, -1);
  }

  (*(v1 + 104))(v3, *MEMORY[0x1E6982AE0], v0);
  lazy protocol witness table accessor for type ImageWandTip and conformance ImageWandTip();
  Tip.invalidate(reason:)();
  (*(v1 + 8))(v3, v0);
}

uint64_t one-time initialization function for imageWandTipController()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.imageWandTipController);
  __swift_project_value_buffer(v0, static Logger.imageWandTipController);
  return Logger.init(subsystem:category:)();
}

uint64_t ImageWandTipController.tipStatusIsPending.getter(unsigned int *a1)
{
  v3 = type metadata accessor for Tips.Status();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSg_AFtMd, &_s6TipKit4TipsO6StatusOSg_AFtMR);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  v17 = OBJC_IVAR____TtC8PaperKit22ImageWandTipController_lastTipStatus;
  swift_beginAccess();
  (*(v4 + 104))(v16, *a1, v3);
  (*(v4 + 56))(v16, 0, 1, v3);
  v18 = *(v8 + 56);
  outlined init with copy of Tips.Status?(v1 + v17, v10);
  outlined init with copy of Tips.Status?(v16, &v10[v18]);
  v19 = *(v4 + 48);
  if (v19(v10, 1, v3) != 1)
  {
    outlined init with copy of Tips.Status?(v10, v13);
    if (v19(&v10[v18], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v10[v18], v3);
      lazy protocol witness table accessor for type Tips.Status and conformance Tips.Status();
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v4 + 8);
      v21(v6, v3);
      outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
      v21(v13, v3);
      outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
      return v20 & 1;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
    (*(v4 + 8))(v13, v3);
    goto LABEL_6;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
  if (v19(&v10[v18], 1, v3) != 1)
  {
LABEL_6:
    outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s6TipKit4TipsO6StatusOSg_AFtMd, &_s6TipKit4TipsO6StatusOSg_AFtMR);
    v20 = 0;
    return v20 & 1;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
  v20 = 1;
  return v20 & 1;
}

id ImageWandTipController.init()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC8PaperKit22ImageWandTipController_tipObservationTask] = 0;
  v5 = OBJC_IVAR____TtC8PaperKit22ImageWandTipController_lastTipStatus;
  v6 = type metadata accessor for Tips.Status();
  (*(*(v6 - 8) + 56))(&v0[v5], 1, 1, v6);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v14, sel_init);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = v7;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in ImageWandTipController.init(), v11);

  return v9;
}

uint64_t closure #1 in ImageWandTipController.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSg_AFtMd, &_s6TipKit4TipsO6StatusOSg_AFtMR);
  v4[10] = swift_task_alloc();
  v5 = type metadata accessor for Tips.Status();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy6TipKit4TipsO6StatusOGMd, &_sScSy6TipKit4TipsO6StatusOGMR);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMR);
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v8 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation();
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  v9 = type metadata accessor for Tips.ConfigurationOption.DisplayFrequency();
  v4[29] = v9;
  v4[30] = *(v9 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = type metadata accessor for MainActor();
  v4[33] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[34] = v11;
  v4[35] = v10;

  return MEMORY[0x1EEE6DFA0](closure #1 in ImageWandTipController.init(), v11, v10);
}

uint64_t closure #1 in ImageWandTipController.init()(__n128 a1)
{
  if (os_variant_has_internal_ui())
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = MEMORY[0x1DA6CCED0](0xD000000000000018, 0x80000001D408FEF0);
    v4 = [v2 BOOLForKey_];

    if (v4)
    {
      if (one-time initialization token for imageWandTipController != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.imageWandTipController);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1D38C4000, v6, v7, "should force show image wand tip", v8, 2u);
        MEMORY[0x1DA6D0660](v8, -1, -1);
      }

      static Tips.resetDatastore()();
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO19ConfigurationOptionVGMd, &_ss23_ContiguousArrayStorageCy6TipKit4TipsO19ConfigurationOptionVGMR);
  type metadata accessor for Tips.ConfigurationOption();
  *(swift_allocObject() + 16) = xmmword_1D405C990;
  if (v4)
  {
    static Tips.ConfigurationOption.DisplayFrequency.immediate.getter();
  }

  else
  {
    static Tips.ConfigurationOption.DisplayFrequency.system.getter();
  }

  v10 = v1[30];
  v9 = v1[31];
  v12 = v1[28];
  v11 = v1[29];
  v13 = v1[26];
  v14 = v1[27];
  static Tips.ConfigurationOption.displayFrequency(_:)();
  v15 = (*(v10 + 8))(v9, v11);
  MEMORY[0x1DA6C94C0](v15);
  static Tips.ConfigurationOption.datastoreLocation(_:)();
  (*(v14 + 8))(v12, v13);
  static Tips.configure(_:)();
  v17 = v1[21];
  v16 = v1[22];
  v18 = v1[20];

  lazy protocol witness table accessor for type ImageWandTip and conformance ImageWandTip();
  Tip.statusUpdates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v17 + 8))(v16, v18);
  v19 = OBJC_IVAR____TtC8PaperKit22ImageWandTipController_delegate;
  v1[36] = OBJC_IVAR____TtC8PaperKit22ImageWandTipController_lastTipStatus;
  v1[37] = v19;
  swift_beginAccess();
  v20 = static MainActor.shared.getter();
  v1[38] = v20;
  v21 = swift_task_alloc();
  v1[39] = v21;
  *v21 = v1;
  v21[1] = closure #1 in ImageWandTipController.init();
  v22 = v1[23];
  v23 = v1[19];
  v24 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v23, v20, v24, v22);
}

uint64_t closure #1 in ImageWandTipController.init()()
{
  v1 = *v0;

  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return MEMORY[0x1EEE6DFA0](closure #1 in ImageWandTipController.init(), v3, v2);
}

{
  v62 = v0;
  v1 = v0[19];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v3[6];
  if (v4(v1, 1, v2) == 1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);

    v5 = v0[1];

    return v5();
  }

  v7 = v0[18];
  v8 = v0[15];
  v9 = v0[10];
  v56 = v0[9];
  v57 = v0[8];
  v58 = v0[36];
  v53 = v3[4];
  v53(v8, v1, v2);
  v55 = v3[2];
  v55(v7, v8, v2);
  v54 = v3[7];
  v54(v7, 0, 1, v2);
  v10 = *(v56 + 48);
  outlined init with copy of Tips.Status?(v57 + v58, v9);
  outlined init with copy of Tips.Status?(v7, v9 + v10);
  if (v4(v9, 1, v2) != 1)
  {
    v13 = v0[11];
    outlined init with copy of Tips.Status?(v0[10], v0[17]);
    v14 = v4(v9 + v10, 1, v13);
    v15 = v0[17];
    if (v14 != 1)
    {
      v42 = v0[14];
      v44 = v0[11];
      v43 = v0[12];
      v60 = v0[10];
      v45 = v9 + v10;
      v46 = v0[18];
      v53(v42, v45, v44);
      lazy protocol witness table accessor for type Tips.Status and conformance Tips.Status();
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = *(v43 + 8);
      v36(v42, v44);
      outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
      v36(v15, v44);
      outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
      if (v47)
      {
LABEL_19:
        v36(v0[15], v0[11]);
        goto LABEL_20;
      }

LABEL_11:
      v18 = v0[36];
      v19 = v0[16];
      v20 = v0[11];
      v21 = v0[8];
      v55(v19, v0[15], v20);
      v54(v19, 0, 1, v20);
      swift_beginAccess();
      outlined assign with take of Tips.Status?(v19, v21 + v18);
      swift_endAccess();
      if (one-time initialization token for imageWandTipController != -1)
      {
        swift_once();
      }

      v22 = v0[15];
      v23 = v0[13];
      v24 = v0[11];
      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Logger.imageWandTipController);
      v55(v23, v22, v24);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = v0[13];
        v29 = v0[14];
        v30 = v0[11];
        v31 = v0[12];
        v32 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v61 = v59;
        *v32 = 136315138;
        v55(v29, v28, v30);
        v33 = String.init<A>(describing:)();
        v35 = v34;
        v36 = *(v31 + 8);
        v36(v28, v30);
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v61);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_1D38C4000, v26, v27, "tip status did update: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x1DA6D0660](v59, -1, -1);
        MEMORY[0x1DA6D0660](v32, -1, -1);
      }

      else
      {
        v39 = v0[12];
        v38 = v0[13];
        v40 = v0[11];

        v36 = *(v39 + 8);
        v36(v38, v40);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong imageWandTipControllerTipStatusDidUpdate_];
        swift_unknownObjectRelease();
      }

      goto LABEL_19;
    }

    v16 = v0[11];
    v17 = v0[12];
    outlined destroy of StocksKitCurrencyCache.Provider?(v0[18], &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
    (*(v17 + 8))(v15, v16);
LABEL_10:
    outlined destroy of StocksKitCurrencyCache.Provider?(v0[10], &_s6TipKit4TipsO6StatusOSg_AFtMd, &_s6TipKit4TipsO6StatusOSg_AFtMR);
    goto LABEL_11;
  }

  v11 = v0[11];
  outlined destroy of StocksKitCurrencyCache.Provider?(v0[18], &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
  if (v4(v9 + v10, 1, v11) != 1)
  {
    goto LABEL_10;
  }

  v12 = v0[12];
  outlined destroy of StocksKitCurrencyCache.Provider?(v0[10], &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
  (*(v12 + 8))(v0[15], v0[11]);
LABEL_20:
  v48 = static MainActor.shared.getter();
  v0[38] = v48;
  v49 = swift_task_alloc();
  v0[39] = v49;
  *v49 = v0;
  v49[1] = closure #1 in ImageWandTipController.init();
  v50 = v0[23];
  v51 = v0[19];
  v52 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v51, v48, v52, v50);
}

void ImageWandTipController.showTip(withPresentationViewController:sourceItem:sourceRect:passthroughViews:permittedArrowDirections:tintColor:animated:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, double a7, double a8, double a9, double a10)
{
  v11 = v10;
  v34 = a6;
  v33 = a4;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v33 - v21;
  v23 = OBJC_IVAR____TtC8PaperKit22ImageWandTipController_tipObservationTask;
  if (*&v11[OBJC_IVAR____TtC8PaperKit22ImageWandTipController_tipObservationTask])
  {

    MEMORY[0x1DA6CD3C0](v24, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
  type metadata accessor for MainActor();
  v26 = a5;
  v27 = a1;
  v28 = v11;
  swift_unknownObjectRetain();

  v29 = static MainActor.shared.getter();
  v30 = swift_allocObject();
  v31 = MEMORY[0x1E69E85E0];
  *(v30 + 16) = v29;
  *(v30 + 24) = v31;
  *(v30 + 32) = v28;
  *(v30 + 40) = a2;
  v32 = v33;
  *(v30 + 48) = a3;
  *(v30 + 56) = v32;
  *(v30 + 64) = a7;
  *(v30 + 72) = a8;
  *(v30 + 80) = a9;
  *(v30 + 88) = a10;
  *(v30 + 96) = a5;
  *(v30 + 104) = v27;
  *(v30 + 112) = v34 & 1;
  *&v11[v23] = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v22, &async function pointer to partial apply for closure #1 in ImageWandTipController.showTip(withPresentationViewController:sourceItem:sourceRect:passthroughViews:permittedArrowDirections:tintColor:animated:), v30);
}

uint64_t closure #1 in ImageWandTipController.showTip(withPresentationViewController:sourceItem:sourceRect:passthroughViews:permittedArrowDirections:tintColor:animated:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 449) = v21;
  *(v12 + 216) = a12;
  *(v12 + 224) = v20;
  *(v12 + 200) = a3;
  *(v12 + 208) = a4;
  *(v12 + 184) = a1;
  *(v12 + 192) = a2;
  *(v12 + 168) = a10;
  *(v12 + 176) = a11;
  *(v12 + 152) = a8;
  *(v12 + 160) = a9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
  *(v12 + 232) = swift_task_alloc();
  v13 = type metadata accessor for Tips.Status();
  *(v12 + 240) = v13;
  *(v12 + 248) = *(v13 - 8);
  *(v12 + 256) = swift_task_alloc();
  *(v12 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy6TipKit4TipsO6StatusOGMd, &_sScSy6TipKit4TipsO6StatusOGMR);
  *(v12 + 272) = swift_task_alloc();
  *(v12 + 280) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMR);
  *(v12 + 288) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVyScSy6TipKit4TipsO6StatusOGSbGMd, &_ss16AsyncMapSequenceVyScSy6TipKit4TipsO6StatusOGSbGMR);
  *(v12 + 296) = v14;
  *(v12 + 304) = *(v14 - 8);
  *(v12 + 312) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVyScSy6TipKit4TipsO6StatusOGSb_GMd, &_ss16AsyncMapSequenceV8IteratorVyScSy6TipKit4TipsO6StatusOGSb_GMR);
  *(v12 + 320) = v15;
  *(v12 + 328) = *(v15 - 8);
  *(v12 + 336) = swift_task_alloc();
  *(v12 + 344) = type metadata accessor for MainActor();
  *(v12 + 352) = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v12 + 360) = v17;
  *(v12 + 368) = v16;

  return MEMORY[0x1EEE6DFA0](closure #1 in ImageWandTipController.showTip(withPresentationViewController:sourceItem:sourceRect:passthroughViews:permittedArrowDirections:tintColor:animated:), v17, v16);
}

uint64_t closure #1 in ImageWandTipController.showTip(withPresentationViewController:sourceItem:sourceRect:passthroughViews:permittedArrowDirections:tintColor:animated:)(uint64_t a1)
{
  v3 = *(v1 + 304);
  v2 = *(v1 + 312);
  v4 = *(v1 + 296);
  *(v1 + 376) = lazy protocol witness table accessor for type ImageWandTip and conformance ImageWandTip();
  v12 = *(v1 + 200);
  v13 = *(v1 + 184);
  Tip.shouldDisplayUpdates.getter();
  MEMORY[0x1DA6CE200](v4);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>, &_sScSy6TipKit4TipsO6StatusOGMd, &_sScSy6TipKit4TipsO6StatusOGMR, MEMORY[0x1E69E86A0]);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.Iterator.transform.getter();
  (*(v3 + 8))(v2, v4);
  AsyncMapSequence.Iterator.init(_:transform:)();
  *(v1 + 384) = OBJC_IVAR____TtC8PaperKit22ImageWandTipController_tipPopoverViewController;
  *(v1 + 104) = v12;
  v5 = MEMORY[0x1E695F050];
  *(v1 + 88) = v13;
  v6 = v5[1];
  *(v1 + 120) = *v5;
  *(v1 + 136) = v6;
  v7 = static MainActor.shared.getter();
  *(v1 + 392) = v7;
  if (v7)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *(v1 + 400) = v8;
  *(v1 + 408) = v10;

  return MEMORY[0x1EEE6DFA0](closure #1 in ImageWandTipController.showTip(withPresentationViewController:sourceItem:sourceRect:passthroughViews:permittedArrowDirections:tintColor:animated:), v8, v10);
}

uint64_t closure #1 in ImageWandTipController.showTip(withPresentationViewController:sourceItem:sourceRect:passthroughViews:permittedArrowDirections:tintColor:animated:)()
{
  v1 = v0[49];
  v0[52] = AsyncMapSequence.Iterator.baseIterator.modify();
  v2 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type AsyncStream<Tips.Status>.Iterator and conformance AsyncStream<A>.Iterator, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMR, MEMORY[0x1E69E8690]);
  v4 = swift_task_alloc();
  v0[53] = v4;
  *v4 = v0;
  v4[1] = closure #1 in ImageWandTipController.showTip(withPresentationViewController:sourceItem:sourceRect:passthroughViews:permittedArrowDirections:tintColor:animated:);
  v5 = v0[35];
  v6 = v0[29];
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v6, v1, v7, v3, v5, v2);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = closure #1 in ImageWandTipController.showTip(withPresentationViewController:sourceItem:sourceRect:passthroughViews:permittedArrowDirections:tintColor:animated:);
  }

  else
  {
    (*(v2 + 416))();
    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = closure #1 in ImageWandTipController.showTip(withPresentationViewController:sourceItem:sourceRect:passthroughViews:permittedArrowDirections:tintColor:animated:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
    v4 = v0[45];
    v5 = v0[46];

    return MEMORY[0x1EEE6DFA0](closure #1 in ImageWandTipController.showTip(withPresentationViewController:sourceItem:sourceRect:passthroughViews:permittedArrowDirections:tintColor:animated:), v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[32], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[54] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[55] = v8;
    *v8 = v0;
    v8[1] = closure #1 in ImageWandTipController.showTip(withPresentationViewController:sourceItem:sourceRect:passthroughViews:permittedArrowDirections:tintColor:animated:);
    v9 = v0[32];

    return (v11)(v0 + 56, v9);
  }
}

{
  return (*(v0 + 416))();
}

{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 240);

  (*(v3 + 8))(v2, v4);
  *(v1 + 450) = *(v1 + 448);
  v5 = *(v1 + 408);
  v6 = *(v1 + 400);

  return MEMORY[0x1EEE6DFA0](closure #1 in ImageWandTipController.showTip(withPresentationViewController:sourceItem:sourceRect:passthroughViews:permittedArrowDirections:tintColor:animated:), v6, v5);
}

{

  v1 = *(v0 + 360);
  v2 = *(v0 + 368);

  return MEMORY[0x1EEE6DFA0](closure #1 in ImageWandTipController.showTip(withPresentationViewController:sourceItem:sourceRect:passthroughViews:permittedArrowDirections:tintColor:animated:), v1, v2);
}

{
  if (*(v0 + 450))
  {
    if (one-time initialization token for imageWandTipController != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.imageWandTipController);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D38C4000, v2, v3, "show tip", v4, 2u);
      MEMORY[0x1DA6D0660](v4, -1, -1);
    }

    v5 = *(v0 + 376);

    type metadata accessor for TipUIPopoverViewController();
    *(v0 + 40) = &type metadata for ImageWandTip;
    *(v0 + 48) = v5;
    swift_unknownObjectRetain();
    v6 = TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)();
    v7 = TipUIPopoverViewController.popoverPresentationController.getter();
    if (v7)
    {
      v8 = v7;
      isa = *(v0 + 168);
      if (isa)
      {
        type metadata accessor for UIView();
        isa = Array._bridgeToObjectiveC()().super.isa;
      }

      [v8 setPassthroughViews_];
    }

    v10 = *(v0 + 120);
    v11 = *(v0 + 128);
    v12 = *(v0 + 136);
    v13 = *(v0 + 144);
    v14 = *(v0 + 88);
    v15 = *(v0 + 96);
    v16 = *(v0 + 104);
    v17 = *(v0 + 112);
    v18 = *(v0 + 176);
    v19 = TipUIPopoverViewController.popoverPresentationController.getter();
    [v19 setPermittedArrowDirections_];

    v38.origin.x = v14;
    v38.origin.y = v15;
    v38.size.width = v16;
    v38.size.height = v17;
    v39.origin.x = v10;
    v39.origin.y = v11;
    v39.size.width = v12;
    v39.size.height = v13;
    if (!CGRectEqualToRect(v38, v39))
    {
      v20 = TipUIPopoverViewController.popoverPresentationController.getter();
      if (v20)
      {
        v21 = v20;
        [v20 _setShouldHideArrow_];
      }

      v22 = *(v0 + 88);
      v23 = *(v0 + 96);
      v24 = *(v0 + 104);
      v25 = *(v0 + 112);
      v26 = TipUIPopoverViewController.popoverPresentationController.getter();
      [v26 setSourceRect_];
    }

    v27 = [v6 view];
    if (!v27)
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v27, v28, v29);
    }

    v30 = v27;
    v31 = *(v0 + 449);
    v32 = *(v0 + 224);
    [v27 setTintColor_];

    [v32 presentViewController:v6 animated:v31 completion:0];
    swift_unknownObjectWeakAssign();
  }

  else
  {
    ImageWandTipController.dismissTip(animated:completion:)(1, 0, 0);
  }

  v33 = static MainActor.shared.getter();
  *(v0 + 392) = v33;
  if (v33)
  {
    swift_getObjectType();
    v34 = dispatch thunk of Actor.unownedExecutor.getter();
    v29 = v35;
  }

  else
  {
    v34 = 0;
    v29 = 0;
  }

  *(v0 + 400) = v34;
  *(v0 + 408) = v29;
  v27 = closure #1 in ImageWandTipController.showTip(withPresentationViewController:sourceItem:sourceRect:passthroughViews:permittedArrowDirections:tintColor:animated:);
  v28 = v34;

  return MEMORY[0x1EEE6DFA0](v27, v28, v29);
}

{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void ImageWandTipController.dismissTip(animated:completion:)(char a1, void (*a2)(void), uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v7 = Strong;
  v8 = [v7 presentationController];
  if (!v8 || (v8, ([v7 isBeingDismissed] & 1) != 0))
  {

LABEL_5:
    if (a2)
    {
      a2();
    }

    return;
  }

  if (one-time initialization token for imageWandTipController != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.imageWandTipController);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1D38C4000, v10, v11, "dismiss tip", v12, 2u);
    MEMORY[0x1DA6D0660](v12, -1, -1);
  }

  v13 = [v7 presentationController];
  if (v13)
  {
    v14 = [v13 presentingViewController];

    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    v17[4] = partial apply for closure #1 in ImageWandTipController.dismissTip(animated:completion:);
    v17[5] = v15;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v17[3] = &block_descriptor_58;
    v16 = _Block_copy(v17);
    outlined copy of (@escaping @callee_guaranteed (@unowned CGSize) -> (@unowned CGSize))?(a2, a3);

    [v14 dismissViewControllerAnimated:a1 & 1 completion:v16];

    _Block_release(v16);
  }

  else
  {
  }

  swift_unknownObjectWeakAssign();
}

double ImageWandTipController.hideTip(animated:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC8PaperKit22ImageWandTipController_tipObservationTask;
  if (*(v3 + OBJC_IVAR____TtC8PaperKit22ImageWandTipController_tipObservationTask))
  {
    v5 = v3;
    if (one-time initialization token for imageWandTipController != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.imageWandTipController);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D38C4000, v10, v11, "hide tip", v12, 2u);
      MEMORY[0x1DA6D0660](v12, -1, -1);
    }

    if (*(v5 + v4))
    {

      MEMORY[0x1DA6CD3C0](v13, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    }

    *(v5 + v4) = 0;

    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    outlined copy of (@escaping @callee_guaranteed (@unowned CGSize) -> (@unowned CGSize))?(a2, a3);
    ImageWandTipController.dismissTip(animated:completion:)(a1 & 1, partial apply for closure #1 in ImageWandTipController.hideTip(animated:completion:), v14);
  }

  return result;
}

uint64_t type metadata accessor for ImageWandTipController(uint64_t a1)
{
  result = type metadata singleton initialization cache for ImageWandTipController;
  if (!type metadata singleton initialization cache for ImageWandTipController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ImageWandTipController(uint64_t a1)
{
  type metadata accessor for Tips.Status?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Tips.Status?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Tips.Status?)
  {
    type metadata accessor for Tips.Status();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Tips.Status?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ImageWandTip and conformance ImageWandTip()
{
  result = lazy protocol witness table cache variable for type ImageWandTip and conformance ImageWandTip;
  if (!lazy protocol witness table cache variable for type ImageWandTip and conformance ImageWandTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageWandTip and conformance ImageWandTip);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageWandTip and conformance ImageWandTip;
  if (!lazy protocol witness table cache variable for type ImageWandTip and conformance ImageWandTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageWandTip and conformance ImageWandTip);
  }

  return result;
}

uint64_t objectdestroy_5Tm_0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t partial apply for closure #1 in ImageWandTipController.hideTip(animated:completion:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

double block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t type metadata accessor for UIView()
{
  result = lazy cache variable for type metadata for UIView;
  if (!lazy cache variable for type metadata for UIView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIView);
  }

  return result;
}

uint64_t partial apply for closure #1 in ImageWandTipController.showTip(withPresentationViewController:sourceItem:sourceRect:passthroughViews:permittedArrowDirections:tintColor:animated:)(uint64_t a1)
{
  v4 = *(v1 + 3);
  v16 = *(v1 + 2);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v7 = *(v1 + 6);
  v8 = *(v1 + 7);
  v9 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  v12 = v1[11];
  v13 = *(v1 + 12);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ImageWandTipController.showTip(withPresentationViewController:sourceItem:sourceRect:passthroughViews:permittedArrowDirections:tintColor:animated:)(v9, v10, v11, v12, a1, v16, v4, v5, v6, v7, v8, v13);
}

double specialized ImageWandTipController.showTip(withPresentationViewController:sourceItem:passthroughViews:permittedArrowDirections:tintColor:animated:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  v13 = *MEMORY[0x1E695F050];
  v24 = *(MEMORY[0x1E695F050] + 16);
  v25 = v13;
  v14 = OBJC_IVAR____TtC8PaperKit22ImageWandTipController_tipObservationTask;
  if (*&v5[OBJC_IVAR____TtC8PaperKit22ImageWandTipController_tipObservationTask])
  {

    MEMORY[0x1DA6CD3C0](v15, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  type metadata accessor for MainActor();
  v17 = v5;
  swift_unknownObjectRetain();
  v18 = a1;
  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  *(v20 + 32) = v17;
  *(v20 + 40) = a2;
  *(v20 + 48) = 0;
  *(v20 + 56) = a3;
  v22 = v24;
  *(v20 + 64) = v25;
  *(v20 + 80) = v22;
  *(v20 + 96) = 0;
  *(v20 + 104) = v18;
  *(v20 + 112) = a4 & 1;
  *&v5[v14] = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &closure #1 in ImageWandTipController.showTip(withPresentationViewController:sourceItem:sourceRect:passthroughViews:permittedArrowDirections:tintColor:animated:)partial apply, v20);

  return result;
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 113, 7);
}

uint64_t closure #1 in ImageWandTipController.showTip(withPresentationViewController:sourceItem:sourceRect:passthroughViews:permittedArrowDirections:tintColor:animated:)partial apply(uint64_t a1)
{
  v4 = *(v1 + 3);
  v16 = *(v1 + 2);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v7 = *(v1 + 6);
  v8 = *(v1 + 7);
  v9 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  v12 = v1[11];
  v13 = *(v1 + 12);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in ImageWandTipController.showTip(withPresentationViewController:sourceItem:sourceRect:passthroughViews:permittedArrowDirections:tintColor:animated:)(v9, v10, v11, v12, a1, v16, v4, v5, v6, v7, v8, v13);
}

uint64_t partial apply for closure #1 in ImageWandTipController.init()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in ImageWandTipController.init()(a1, v4, v5, v6);
}

uint64_t outlined init with copy of Tips.Status?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Tips.Status?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Tips.Status and conformance Tips.Status()
{
  result = lazy protocol witness table cache variable for type Tips.Status and conformance Tips.Status;
  if (!lazy protocol witness table cache variable for type Tips.Status and conformance Tips.Status)
  {
    type metadata accessor for Tips.Status();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Tips.Status and conformance Tips.Status);
  }

  return result;
}

uint64_t protocol witness for Tip.title.getter in conformance ImageWandTip()
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v4._object = 0x80000001D408FFB0;
  v0._countAndFlagsBits = 0x6120657461657243;
  v0._object = 0xEF6567616D49206ELL;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000001ELL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v0, v1, paperKitBundle, v2, v4);
  lazy protocol witness table accessor for type String and conformance String();
  return Text.init<A>(_:)();
}

uint64_t protocol witness for Tip.message.getter in conformance ImageWandTip()
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v4._object = 0x80000001D408FF80;
  v0.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v0.value._object = 0xEB00000000656C62;
  v1._countAndFlagsBits = 0xD00000000000004ALL;
  v1._object = 0x80000001D408FF30;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000020;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v0, paperKitBundle, v2, v4);
  lazy protocol witness table accessor for type String and conformance String();
  return Text.init<A>(_:)();
}

uint64_t protocol witness for Tip.image.getter in conformance ImageWandTip()
{
  v0 = MEMORY[0x1DA6CCED0](0xD000000000000012, 0x80000001D40813C0);
  v1 = [objc_opt_self() bundleWithIdentifier_];

  return Image.init(_:bundle:)();
}

uint64_t protocol witness for Identifiable.id.getter in conformance ImageWandTip@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = lazy protocol witness table accessor for type ImageWandTip and conformance ImageWandTip();
  result = MEMORY[0x1DA6C93A0](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t specialized ImageWandTip.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F8OptionalyQrAaH_pSgFZQOy__Qo_Qo_Md, &_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F8OptionalyQrAaH_pSgFZQOy__Qo_Qo_MR);
  v39 = *(v0 - 8);
  v40 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v34 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F10ExpressionyQrxAaHRzlFZQOy__AC15MaxDisplayCountVQo_Qo_Md, &_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F10ExpressionyQrxAaHRzlFZQOy__AC15MaxDisplayCountVQo_Qo_MR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v34 - v5;
  v6 = type metadata accessor for Tips.MaxDisplayCount();
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV15buildExpressionyQrxAA0A6OptionRzlFZQOy__AC15MaxDisplayCountVQo_Md, &_s6TipKit4TipsO14OptionsBuilderV15buildExpressionyQrxAA0A6OptionRzlFZQOy__AC15MaxDisplayCountVQo_MR);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV13buildOptionalyQrAA0A6Option_pSgFZQOy__Qo_Md, &_s6TipKit4TipsO14OptionsBuilderV13buildOptionalyQrAA0A6Option_pSgFZQOy__Qo_MR);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v34 - v14;
  if (os_variant_has_internal_ui() && (v15 = [objc_opt_self() standardUserDefaults], v16 = MEMORY[0x1DA6CCED0](0xD000000000000018, 0x80000001D408FEF0), v34 = v4, v17 = v13, v18 = v3, v19 = v12, v20 = v2, v21 = v6, v22 = v16, v23 = objc_msgSend(v15, sel_BOOLForKey_, v16), v15, v22, v6 = v21, v2 = v20, v12 = v19, v3 = v18, v13 = v17, v4 = v34, (v23 & 1) != 0))
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    v24 = v41;
    MEMORY[0x1DA6C9400](&v44);
  }

  else
  {
    Tips.MaxDisplayCount.init(_:)();
    v25 = MEMORY[0x1E6982A88];
    MEMORY[0x1DA6C9410](v8, v6, MEMORY[0x1E6982A88]);
    (*(v35 + 8))(v8, v6);
    *&v44 = v6;
    *(&v44 + 1) = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v27 = v37;
    v28 = v38;
    MEMORY[0x1DA6C9430](v11, v37, OpaqueTypeConformance2);
    *(&v45 + 1) = v3;
    v42 = v27;
    v43 = OpaqueTypeConformance2;
    v46 = swift_getOpaqueTypeConformance2();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
    (*(v4 + 16))(boxed_opaque_existential_1, v28, v3);
    v24 = v41;
    MEMORY[0x1DA6C9400](&v44);
    (*(v4 + 8))(v28, v3);
    (*(v36 + 8))(v11, v27);
  }

  outlined destroy of TipOption?(&v44);
  v30 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1DA6C9430](v24, v12, v30);
  *&v44 = v12;
  *(&v44 + 1) = v30;
  swift_getOpaqueTypeConformance2();
  v31 = v40;
  v32 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v39 + 8))(v2, v31);
  (*(v13 + 8))(v24, v12);
  return v32;
}

uint64_t outlined destroy of TipOption?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit0A6Option_pSgMd, &_s6TipKit0A6Option_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for GraphableExpressionView(uint64_t a1)
{
  result = type metadata singleton initialization cache for GraphableExpressionView;
  if (!type metadata singleton initialization cache for GraphableExpressionView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for GraphableExpressionView(uint64_t a1)
{
  type metadata accessor for Binding<GraphableExpressionState>(319, &lazy cache variable for type metadata for Binding<GraphableExpressionState>, type metadata accessor for GraphableExpressionState, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for State<Bool>();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Binding<GraphableExpressionState>(319, &lazy cache variable for type metadata for Environment<EnvironmentValues>, MEMORY[0x1E697F228], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Binding<GraphableExpressionState>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void GraphableExpressionView.expressionColorDescription.getter()
{
  v20 = *v0;
  v21 = *(v0 + 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMd, &_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMR);
  MEMORY[0x1DA6CA790](&v19, v1);
  v2 = v19;
  swift_getKeyPath();
  v20 = v2;
  _s8PaperKit24GraphableExpressionStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + 32);

  if (!v3)
  {
    static Color.clear.getter();
  }

  type metadata accessor for UIColor();
  v4 = UIColor.init(_:)();
  v5 = [objc_opt_self() clearColor];
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {

    return;
  }

  v7 = [v4 accessibilityName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v20 = v8;
  *&v21 = v10;
  MEMORY[0x1DA6CD010](32, 0xE100000000000000);
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v22._object = 0x80000001D40900D0;
  v11._countAndFlagsBits = 0x207974696361704FLL;
  v11._object = 0xEE00296874614D28;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v13._countAndFlagsBits = 0x7974696361704FLL;
  v13._object = 0xE700000000000000;
  v22._countAndFlagsBits = 0xD000000000000030;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, paperKitBundle, v13, v22)._countAndFlagsBits;
  MEMORY[0x1DA6CD010](countAndFlagsBits);

  MEMORY[0x1DA6CD010](32, 0xE100000000000000);
  v15 = [v4 CGColor];
  Alpha = CGColorGetAlpha(v15);

  v17 = Alpha * 100.0;
  if (COERCE__INT64(fabs(Alpha * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v17 < 9.22337204e18)
  {
    v19 = v17;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1DA6CD010](v18);

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t closure #1 in GraphableExpressionView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v149 = a2;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAA6ButtonVyACyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicjK0OFQOyAA5ImageV_Qo_AGyAqA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingV0VGAA01_dsQ0VyAA9RectangleVGGAA023AccessibilityAttachmentQ0VGAA6SpacerV_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAA6ButtonVyACyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicjK0OFQOyAA5ImageV_Qo_AGyAqA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingV0VGAA01_dsQ0VyAA9RectangleVGGAA023AccessibilityAttachmentQ0VGAA6SpacerV_GMR);
  MEMORY[0x1EEE9AC00](v144);
  v147 = (&v126[0].super.isa - v3);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGMR);
  MEMORY[0x1EEE9AC00](v131);
  v132 = v126 - v4;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMR);
  MEMORY[0x1EEE9AC00](v142);
  v6 = v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v134 = v126 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA6ButtonVyACyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_AEyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGAA6SpacerVGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA6ButtonVyACyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_AEyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGAA6SpacerVGMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v148 = v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v152 = v126 - v12;
  v13 = type metadata accessor for GraphableExpressionView(0);
  v137 = *(v13 - 8);
  v14 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v139 = v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEy09CalculateB00F21ExpressionTypesetViewVAA14_PaddingLayoutVGAJGAA31AccessibilityAttachmentModifierVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEy09CalculateB00F21ExpressionTypesetViewVAA14_PaddingLayoutVGAJGAA31AccessibilityAttachmentModifierVGGMR);
  v145 = *(v15 - 8);
  v146 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v143 = v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v151 = v126 - v18;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x1EEE9AC00](v135);
  v20 = v126 - v19;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGALGALGALGAA01_de4KindN0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGALGALGALGAA01_de4KindN0VyAA9RectangleVGGMR);
  MEMORY[0x1EEE9AC00](v136);
  v150 = v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v153 = v126 - v23;
  v24 = *a1;
  v25 = a1[2];
  v129 = a1[1];
  v130 = v24;
  *&v162 = v24;
  *(&v162 + 1) = v129;
  v128 = v25;
  *&v163 = v25;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMd, &_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMR);
  MEMORY[0x1DA6CA790](&v157);
  v26 = v157;
  swift_getKeyPath();
  *&v162 = v26;
  v126[1].super.isa = _s8PaperKit24GraphableExpressionStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = *(v26 + 32);

  if (!v27)
  {
    v28 = [objc_opt_self() clearColor];
    v27 = Color.init(uiColor:)();
  }

  v138 = v14;
  v140 = a1;
  v133 = v6;

  v29 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  LOBYTE(v162) = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v161[39] = v171;
  *&v161[23] = v170;
  *&v161[7] = v169;
  v141 = v27;
  *&v157 = v27;
  WORD4(v157) = 256;
  LOBYTE(v158) = v29;
  *(&v158 + 1) = v31;
  *&v159 = v33;
  *(&v159 + 1) = v35;
  *&v160[0] = v37;
  BYTE8(v160[0]) = 0;
  *(v160 + 9) = *v161;
  *(&v160[1] + 9) = *&v161[16];
  *(&v160[2] + 9) = *&v161[32];
  *(&v160[3] + 1) = *(&v171 + 1);
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v38.value._object = 0xEB00000000656C62;
  v38.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v172._object = 0x80000001D408FFF0;
  v39._object = 0x80000001D408FFD0;
  v172._countAndFlagsBits = 0xD000000000000033;
  v39._countAndFlagsBits = 0xD000000000000017;
  v126[0] = paperKitBundle;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  v155 = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v38, paperKitBundle, v40, v172);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  v41 = lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();

  v165 = v160[0];
  v166 = v160[1];
  v167 = v160[2];
  v168 = v160[3];
  v162 = v157;
  v163 = v158;
  v164 = v159;
  outlined destroy of StocksKitCurrencyCache.Provider?(&v162, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGMR);
  v42 = v140;
  GraphableExpressionView.expressionColorDescription.getter();
  *&v157 = v43;
  *(&v157 + 1) = v44;
  v45 = v153;
  v135 = v41;
  ModifiedContent<>.accessibilityValue<A>(_:)();

  outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGMR);
  v46 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGALGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGALGMR) + 36);
  *v55 = v46;
  *(v55 + 8) = v48;
  *(v55 + 16) = v50;
  *(v55 + 24) = v52;
  *(v55 + 32) = v54;
  *(v55 + 40) = 0;
  v56 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGALGALGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGALGALGMR) + 36);
  *v65 = v56;
  *(v65 + 8) = v58;
  *(v65 + 16) = v60;
  *(v65 + 24) = v62;
  *(v65 + 32) = v64;
  *(v65 + 40) = 0;
  v66 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v75 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGALGALGALGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGALGALGALGMR) + 36);
  *v75 = v66;
  *(v75 + 8) = v68;
  *(v75 + 16) = v70;
  *(v75 + 24) = v72;
  *(v75 + 32) = v74;
  *(v75 + 40) = 0;
  v76 = (v45 + *(v136 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA9RectangleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA9RectangleVGMR);
  static ContentShapeKinds.interaction.getter();
  *v76 = 0;
  v77 = v139;
  outlined init with copy of GraphableExpressionView(v42, v139);
  v78 = (*(v137 + 80) + 16) & ~*(v137 + 80);
  v79 = swift_allocObject();
  v80 = outlined init with take of GraphableExpressionView(v77, v79 + v78);
  MEMORY[0x1EEE9AC00](v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGAHGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGAHGAA31AccessibilityAttachmentModifierVGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<CalculateExpressionTypesetView, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  v81 = *(v42 + 32);
  LOBYTE(v157) = *(v42 + 24);
  *(&v157 + 1) = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  if (LOBYTE(v155._countAndFlagsBits) == 1)
  {
    outlined init with copy of GraphableExpressionView(v42, v77);
    v82 = swift_allocObject();
    v83 = outlined init with take of GraphableExpressionView(v77, v82 + v78);
    MEMORY[0x1EEE9AC00](v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA08ModifiedD0VyAkA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA08ModifiedD0VyAkA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance <> _ConditionalContent<A, B>();
    v84 = v132;
    Button.init(action:label:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v85 = (v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGMR) + 36));
    v86 = v158;
    *v85 = v157;
    v85[1] = v86;
    v85[2] = v159;
    v87 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v96 = v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGMR) + 36);
    *v96 = v87;
    *(v96 + 8) = v89;
    *(v96 + 16) = v91;
    *(v96 + 24) = v93;
    *(v96 + 32) = v95;
    *(v96 + 40) = 0;
    *(v84 + *(v131 + 36)) = 0;
    v173._object = 0x80000001D4090030;
    v97._countAndFlagsBits = 0x696C696269736956;
    v173._countAndFlagsBits = 0xD000000000000035;
    v97._object = 0xEA00000000007974;
    v98.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v98.value._object = 0xEB00000000656C62;
    isa = v126[0].super.isa;
    v100._countAndFlagsBits = 0;
    v100._object = 0xE000000000000000;
    v155 = NSLocalizedString(_:tableName:bundle:value:comment:)(v97, v98, v126[0], v100, v173);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
    v101 = v133;
    View.accessibilityLabel<A>(_:)();

    outlined destroy of StocksKitCurrencyCache.Provider?(v84, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGMR);
    v155._countAndFlagsBits = v130;
    v155._object = v129;
    v156 = v128;
    MEMORY[0x1DA6CA790](&v154, v127);
    v102 = v154;
    swift_getKeyPath();
    v155._countAndFlagsBits = v102;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v103 = *(v102 + 24);

    v104 = v152;
    if (v103 == 1)
    {
      v125 = 0x80000001D40900A0;
      v107 = 0x656C6269736956;
      v108 = 0xD000000000000029;
      v109 = 0xE700000000000000;
    }

    else
    {
      v125 = 0x80000001D4090070;
      v107 = 0x6E6564646948;
      v108 = 0xD000000000000028;
      v109 = 0xE600000000000000;
    }

    v110.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v110.value._object = 0xEB00000000656C62;
    v111._countAndFlagsBits = 0;
    v111._object = 0xE000000000000000;
    v155 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v107, v110, isa, v111, *&v108);
    v112 = v134;
    ModifiedContent<>.accessibilityValue<A>(_:)();

    outlined destroy of StocksKitCurrencyCache.Provider?(v101, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMR);
    outlined init with copy of Date?(v112, v147, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    v106 = v104;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v112, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMR);
  }

  else
  {
    v105 = v147;
    *v147 = 0x403E000000000000;
    *(v105 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    v106 = v152;
    _ConditionalContent<>.init(storage:)();
  }

  v113 = v150;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _PaddingLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _ContentShapeKindModifier<Rectangle>>(v153, v150);
  v114 = v145;
  v115 = v146;
  v116 = *(v145 + 16);
  v117 = v143;
  v118 = v151;
  v116(v143, v151, v146);
  v119 = v148;
  outlined init with copy of Date?(v106, v148, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA6ButtonVyACyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_AEyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGAA6SpacerVGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA6ButtonVyACyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_AEyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGAA6SpacerVGMR);
  v120 = v149;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _PaddingLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _ContentShapeKindModifier<Rectangle>>(v113, v149);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGALGALGALGAA01_de4KindN0VyAA9RectangleVGG_AA6ButtonVyACyACyACy09CalculateB00r17ExpressionTypesetF0VALGALGARGGAA6SpacerVAA012_ConditionalD0VyACyACyACyACyA2_yA13_yAA0F0PAAE15dynamicTypeSizeyQrAA07DynamicxY0OFQOyAA5ImageV_Qo_ACyA21_AA022_EnvironmentKeyWritingN0VyAA03AnyE5StyleVSgGGGGAOGALGAA01_deN0VyAZGGARGA11_GtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGALGALGALGAA01_de4KindN0VyAA9RectangleVGG_AA6ButtonVyACyACyACy09CalculateB00r17ExpressionTypesetF0VALGALGARGGAA6SpacerVAA012_ConditionalD0VyACyACyACyACyA2_yA13_yAA0F0PAAE15dynamicTypeSizeyQrAA07DynamicxY0OFQOyAA5ImageV_Qo_ACyA21_AA022_EnvironmentKeyWritingN0VyAA03AnyE5StyleVSgGGGGAOGALGAA01_deN0VyAZGGARGA11_GtMR);
  v116((v120 + v121[12]), v117, v115);
  v122 = v120 + v121[16];
  *v122 = 0;
  *(v122 + 8) = 1;
  outlined init with copy of Date?(v119, v120 + v121[20], &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA6ButtonVyACyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_AEyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGAA6SpacerVGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA6ButtonVyACyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_AEyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGAA6SpacerVGMR);

  outlined destroy of StocksKitCurrencyCache.Provider?(v152, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA6ButtonVyACyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_AEyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGAA6SpacerVGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA6ButtonVyACyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_AEyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGAA6SpacerVGMR);
  v123 = *(v114 + 8);
  v123(v118, v115);
  outlined destroy of StocksKitCurrencyCache.Provider?(v153, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGALGALGALGAA01_de4KindN0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGALGALGALGAA01_de4KindN0VyAA9RectangleVGGMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v119, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA6ButtonVyACyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_AEyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGAA6SpacerVGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA6ButtonVyACyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_AEyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGAA6SpacerVGMR);
  v123(v117, v115);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v150, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGALGALGALGAA01_de4KindN0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGALGALGALGAA01_de4KindN0VyAA9RectangleVGGMR);
}

uint64_t closure #2 in closure #1 in GraphableExpressionView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v45 = type metadata accessor for AttributedString.CharacterView();
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedString();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGAHGMd, &_s7SwiftUI15ModifiedContentVyACy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGAHGMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGAHGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGAHGAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x1EEE9AC00](v41);
  v11 = &v37 - v10;
  v12 = *a1;
  v13 = a1[2];
  v39 = a1[1];
  v40 = v12;
  v48._countAndFlagsBits = v12;
  v48._object = v39;
  v38 = v13;
  v49 = v13;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMd, &_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMR);
  MEMORY[0x1DA6CA790](&v47);
  v14 = v47;
  swift_getKeyPath();
  v48._countAndFlagsBits = v14;
  _s8PaperKit24GraphableExpressionStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState, &protocol conformance descriptor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  CalculateExpressionTypesetView.init(expression:result:showResult:)();
  v15 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGMR) + 36)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v25 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v26 = &v9[*(v7 + 36)];
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v50._object = 0x80000001D4082FE0;
  v31.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v31.value._object = 0xEB00000000656C62;
  v32._countAndFlagsBits = 0x6E6F697461757145;
  v33._object = 0x80000001D4082FC0;
  v50._countAndFlagsBits = 0xD000000000000028;
  v33._countAndFlagsBits = 0xD000000000000018;
  v32._object = 0xE800000000000000;
  v48 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v31, paperKitBundle, v32, v50);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<CalculateExpressionTypesetView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGAHGMd, &_s7SwiftUI15ModifiedContentVyACy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGAHGMR, lazy protocol witness table accessor for type ModifiedContent<CalculateExpressionTypesetView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();

  outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s7SwiftUI15ModifiedContentVyACy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGAHGMd, &_s7SwiftUI15ModifiedContentVyACy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGAHGMR);
  v48._countAndFlagsBits = v40;
  v48._object = v39;
  v49 = v38;
  MEMORY[0x1DA6CA790](&v47, v37);
  v34 = v47;
  swift_getKeyPath();
  v48._countAndFlagsBits = v34;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  CalculateExpression.accessibilityMathEquationDescription.getter();

  AttributedString.characters.getter();
  (*(v42 + 8))(v6, v43);
  _s8PaperKit24GraphableExpressionStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
  v48._countAndFlagsBits = String.init<A>(_:)();
  v48._object = v35;
  ModifiedContent<>.accessibilityValue<A>(_:)();

  return outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s7SwiftUI15ModifiedContentVyACyACy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGAHGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGAHGAA31AccessibilityAttachmentModifierVGMR);
}