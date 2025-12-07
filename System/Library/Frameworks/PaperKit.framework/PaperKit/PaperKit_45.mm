uint64_t closure #1 in CanvasElementViewController.updateViewForPaper(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[7] = v7;
  *v7 = v5;
  v7[1] = closure #1 in CanvasElementViewController.updateViewForPaper(_:);

  return closure #1 in Image.imageSize(applyingCrop:)(a5);
}

uint64_t closure #1 in CanvasElementViewController.updateViewForPaper(_:)(double a1, double a2)
{
  v6 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {

    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v10 = closure #1 in CanvasElementViewController.updateViewForPaper(_:);
  }

  else
  {
    *(v6 + 72) = a2;
    *(v6 + 80) = a1;
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v11;
    v10 = closure #1 in CanvasElementViewController.updateViewForPaper(_:);
  }

  return MEMORY[0x1EEE6DFA0](v10, v7, v9);
}

uint64_t closure #1 in CanvasElementViewController.updateViewForPaper(_:)()
{
  v2 = v0[9];
  v1 = v0[10];
  v0[11] = v0[8];
  CanvasElementViewController._imageSize.setter(v1, v2);
  v3 = swift_task_alloc();
  *(v0 + 12) = v3;
  *v3 = v0;
  v3[1] = closure #1 in CanvasElementViewController.updateViewForPaper(_:);

  return Image.cgImageSource()();
}

{
  *(v0 + 88) = 0;
  CanvasElementViewController._imageSize.setter(0.0, 0.0);
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = closure #1 in CanvasElementViewController.updateViewForPaper(_:);

  return Image.cgImageSource()();
}

{
  v1 = *(v0 + 104);
  if (v1 && (v2 = specialized static ImageHDRInfo.info(for:)(*(v0 + 104)), v4 = v3, v1, v4))
  {
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 112) = v2;
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 120) = v6;
  *(v0 + 128) = v5;

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasElementViewController.updateViewForPaper(_:), v6, v5);
}

{
  v17 = v0;
  CanvasElementViewController._imageHeadroom.setter(*(v0 + 112));
  if (CanvasElementViewController._imageHeadroom.getter() <= 1.0)
  {
    v15 = swift_task_alloc();
    *(v0 + 136) = v15;
    *v15 = v0;
    v15[1] = closure #1 in CanvasElementViewController.updateViewForPaper(_:);

    return Image.supportsSavingAsHDR()();
  }

  else
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 24);
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, logger);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315650;
      if (CanvasElementViewController._imageHeadroom.getter() <= 1.0)
      {
        v8 = 5391443;
      }

      else
      {
        v8 = 5391432;
      }

      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, 0xE300000000000000, &v16);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2080;
      CanvasElementViewController._imageSize.getter();
      v10 = CGSize.debugDescription.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v16);

      *(v6 + 14) = v12;
      *(v6 + 22) = 2048;
      *(v6 + 24) = CanvasElementViewController._imageHeadroom.getter();
      _os_log_impl(&dword_1D38C4000, v4, v5, "Loaded %s image with size: %s, headroom: %f", v6, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA6D0660](v7, -1, -1);
      MEMORY[0x1DA6D0660](v6, -1, -1);
    }

    v13 = *(v0 + 8);

    return v13();
  }
}

{
  v22 = v0;
  if ((*(v0 + 144) & 1) != 0 || (v1 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView)) == 0)
  {
  }

  else
  {
    v2 = v1;
    v3 = OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR;
    if (*(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR))
    {
      swift_getKeyPath();
      v4 = swift_task_alloc();
      *(v4 + 16) = v2;
      *(v4 + 24) = 0;
      *(v0 + 16) = v2;
      _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
      v5 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      v20 = v1;

      *(v2 + v3) = 0;
    }
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 24);
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21[0] = v12;
    *v11 = 136315650;
    if (CanvasElementViewController._imageHeadroom.getter() <= 1.0)
    {
      v13 = 5391443;
    }

    else
    {
      v13 = 5391432;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, 0xE300000000000000, v21);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    CanvasElementViewController._imageSize.getter();
    v15 = CGSize.debugDescription.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v21);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2048;
    *(v11 + 24) = CanvasElementViewController._imageHeadroom.getter();
    _os_log_impl(&dword_1D38C4000, v9, v10, "Loaded %s image with size: %s, headroom: %f", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v12, -1, -1);
    MEMORY[0x1DA6D0660](v11, -1, -1);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t closure #1 in CanvasElementViewController.updateViewForPaper(_:)(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasElementViewController.updateViewForPaper(_:), 0, 0);
}

uint64_t closure #1 in CanvasElementViewController.updateViewForPaper(_:)(char a1)
{
  v2 = *v1;
  *(*v1 + 144) = a1;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasElementViewController.updateViewForPaper(_:), v4, v3);
}

Swift::Void __swiftcall CanvasElementViewController.createNavigationBack(tintColor:)(UIColor tintColor)
{
  v3 = [objc_opt_self() configurationWithPointSize:5 weight:2 scale:25.0];
  v4 = MEMORY[0x1DA6CCED0](0x2E6E6F7276656863, 0xEC0000007466656CLL);
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  v6 = [objc_opt_self() buttonWithType_];
  [v6 addTarget:v1 action:sel_close_ forControlEvents:64];
  [v6 setImage:v5 forState:0];
  v7 = MEMORY[0x1DA6CCED0](1801675074, 0xE400000000000000);
  [v6 setTitle:v7 forState:0];

  [v6 setTitleColor:tintColor.super.isa forState:0];
  v8 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (v8)
  {
    [v8 addSubview_];
  }

  v9 = v6;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = [v9 leftAnchor];
  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = [v11 leftAnchor];

  v14 = [v10 constraintEqualToAnchor:v13 constant:10.0];
  [v14 setActive_];

  v15 = [v9 topAnchor];
  v16 = [v1 view];
  if (!v16)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = [v16 safeAreaLayoutGuide];

  v19 = [v18 topAnchor];
  v20 = [v15 constraintEqualToAnchor_];

  [v20 setActive_];
}

uint64_t @objc CanvasElementViewController.close(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  CanvasElementViewController.close(_:)();

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

Swift::Bool __swiftcall CanvasElementViewController.isTouchInBannerView(_:)(UITouch a1)
{
  v2 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072FC0, &direct field offset for CanvasElementViewController._bannerView);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  [(objc_class *)a1.super.isa locationInView:v3];
  v4 = [v3 pointInside:0 withEvent:?];

  return v4;
}

void *CanvasElementViewController.viewAcceptSingleTouch(_:)(UITouch a1)
{
  result = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (result)
  {
    v3 = result;
    v4 = AnyCanvas.acceptSingleTouch(_:)(a1);

    return v4;
  }

  return result;
}

Swift::Bool __swiftcall CanvasElementViewController.acceptSingleTouch(_:)(UITouch a1)
{
  if (CanvasElementViewController.isTouchInBannerView(_:)(a1))
  {
    return 1;
  }

  v3.super.isa = a1.super.isa;

  return CanvasElementViewController.viewAcceptSingleTouch(_:)(v3);
}

uint64_t (*CanvasElementViewController.rootElement.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  type metadata accessor for Capsule();
  v6 = type metadata accessor for Optional();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  CanvasElementViewController.rootElement.getter();
  return CanvasElementViewController.rootElement.modify;
}

uint64_t CanvasElementViewController.rootElement.getter@<X0>(uint64_t a1@<X8>)
{
  if (specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView))
  {
    Canvas.updatablePaper2.getter(a1);
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = type metadata accessor for Capsule();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, v2, 1, v3);
}

uint64_t CanvasElementViewController.rootElement.setter(uint64_t a1, void (*a2)(void))
{
  a2();
  type metadata accessor for Capsule();
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

uint64_t (*CanvasElementViewController.paper.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  type metadata accessor for Capsule();
  v6 = type metadata accessor for Optional();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  CanvasElementViewController.rootElement.getter();
  return CanvasElementViewController.paper.modify;
}

void CanvasElementViewController.rootElement.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    CanvasElementViewController.updateViewForPaper(_:)(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    CanvasElementViewController.updateViewForPaper(_:)(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void CanvasElementViewController.merge<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v5 = type metadata accessor for Capsule();
  v6 = type metadata accessor for Optional();
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v29 = a3;
  v12 = type metadata accessor for Capsule();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  v19 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (v19)
  {
    v31 = 3;
    v20 = v19;
    AnyCanvas.merge<A>(_:from:)(v30, &v31, a2, v29);
  }

  else
  {
    v21 = v8;
    v22 = v27;
    (*(v13 + 16))(v15, v30, v12);
    v23 = swift_dynamicCast();
    v24 = v28;
    v25 = *(v28 + 56);
    if (v23)
    {
      v25(v11, 0, 1, v5);
      (*(v24 + 32))(v18, v11, v5);
      (*(v24 + 16))(v21, v18, v5);
      v25(v21, 0, 1, v5);
      CanvasElementViewController.updateViewForPaper(_:)(v21);
      (*(v22 + 8))(v21, v6);
      (*(v24 + 8))(v18, v5);
    }

    else
    {
      v25(v11, 1, 1, v5);
      (*(v22 + 8))(v11, v6);
    }
  }
}

uint64_t CanvasElementViewController.publisher.getter()
{
  type metadata accessor for Capsule();
  type metadata accessor for PassthroughSubject();

  swift_getWitnessTable();
  return AnyPublisher.init<A>(_:)();
}

Swift::Void __swiftcall CanvasElementViewController.updatePlusButton()()
{
  v1 = (*MEMORY[0x1E69E7D40] & *v0);
  CanvasElementViewController.editingMode.getter(&v15);
  v2 = *(v0 + direct field offset for CanvasElementViewController.plusButton);
  if (v15 == 1)
  {
    v3 = [*(v0 + direct field offset for CanvasElementViewController.plusButton) superview];
    if (v3)
    {

      [v2 removeFromSuperview];
    }

    v4 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
    if (v4)
    {
      [v4 addSubview_];
    }

    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      FormPlusButtonView.setConstraintsBasedOn(_:)(v5);

      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_allocObject();
      v9 = v1[15];
      v8[2] = v9;
      v10 = v1[16];
      v8[3] = v10;
      v11 = v1[17];
      v8[4] = v11;
      v8[5] = v7;
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      v13[2] = v9;
      v13[3] = v10;
      v13[4] = v11;
      v13[5] = v12;

      FormPlusButtonView.setMenuWithActions(addTextBoxHandler:addSignatureHandler:)(partial apply for closure #1 in CanvasElementViewController.updatePlusButton(), v8, partial apply for closure #2 in CanvasElementViewController.updatePlusButton(), v13);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v14 = *(v0 + direct field offset for CanvasElementViewController.plusButton);

    [v14 removeFromSuperview];
  }
}

void closure #1 in CanvasElementViewController.updatePlusButton()(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v242 = v196 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v259 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v243 = v196 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v196 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v251 = v196 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
  v240 = *(v11 - 8);
  v241 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v239 = v196 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v237 = *(v13 - 8);
  v238 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v236 = v196 - v14;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v15 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v234 = v196 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMR);
  v231 = *(v17 - 8);
  v232 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v230 = v196 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v228 = *(v19 - 8);
  v229 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v226 = v196 - v20;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  MEMORY[0x1EEE9AC00](v225);
  v224 = v196 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v223 = v196 - v23;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  MEMORY[0x1EEE9AC00](v222);
  v221 = v196 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v220 = v196 - v26;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v219);
  v248 = v196 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v247 = v196 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v227 = v196 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v253 = v196 - v33;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v246);
  v35 = v196 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = v196 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v252 = v196 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v258 = (v196 - v42);
  v250 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v250);
  v218 = v196 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v244 = v196 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v256 = v196 - v47;
  v245 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v245);
  v233 = v196 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v51 = v196 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v249 = v196 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v254 = *(v54 - 8);
  v255 = v54;
  MEMORY[0x1EEE9AC00](v54);
  v217 = v196 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v257 = v196 - v57;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v59 = Strong;
  if (!specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView) || (v210 = v15, v60 = Canvas.editingView.getter(), v61 = (*((*MEMORY[0x1E69E7D40] & *v60) + 0x90))(), v60, (v216 = v61) == 0))
  {

    return;
  }

  v215 = v8;
  v209 = v4;
  v62 = v59;
  v63 = [v62 view];
  if (!v63)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v64 = v63;
  [v63 center];
  v66 = v65;
  v68 = v67;

  v69 = *MEMORY[0x1E69E7D40] & *v216;
  v213 = *(v69 + 0x440);
  v214 = v69 + 1088;
  v70 = v213();
  v71 = [v62 view];
  v208 = v62;

  [v70 convertRect:v71 fromView:{v66 + -75.0, v68 + -12.5, 150.0, 25.0}];
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D405FD70;
  v81 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
  v82 = v81;
  specialized static FormFillingView.fontThatFits(frame:)(v73, v75, v77, v79);
  v83 = MEMORY[0x1E69DB688];
  *(inited + 40) = v84;
  v85 = *v83;
  *(inited + 72) = *v83;
  v86 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v87 = v85;
  v88 = [v86 init];
  [v88 setAlignment_];
  v89 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableParagraphStyle, 0x1E69DB7C8);
  *(inited + 80) = v88;
  v90 = *MEMORY[0x1E69DB660];
  *(inited + 104) = v89;
  *(inited + 112) = v90;
  *(inited + 144) = MEMORY[0x1E69E7DE0];
  *(inited + 120) = 0;
  v91 = v90;
  v92 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
  swift_arrayDestroy();
  v93 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v94 = MEMORY[0x1DA6CCED0](0, 0xE000000000000000);
  type metadata accessor for NSAttributedStringKey(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v93 initWithString:v94 attributes:isa];

  MEMORY[0x1EEE9AC00](v96);
  v97 = lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.init(_:transformAttributes:)();
  swift_storeEnumTagMultiPayload();
  v98 = type metadata accessor for Color(0);
  v99 = *(v98 + 20);
  v100 = type metadata accessor for UnknownValueProperties();
  (*(*(v100 - 8) + 56))(v258 + v99, 1, 1, v100);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  v101 = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F51320);
  if (!v101)
  {
    goto LABEL_23;
  }

  v102 = v101;
  v206 = v97;
  v207 = v92;
  v212 = v38;
  CGColorRef.calculateMinimumHeadroom.getter();
  v103 = CGColorCreateWithContentHeadroom();
  if (!v103)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v104 = v103;

  *v258 = v104;
  v105 = *(v98 - 8);
  v106 = *(v105 + 56);
  v107 = v105 + 56;
  v106();
  (v106)(v252, 1, 1, v98);
  v198 = v98;
  v199 = v107;
  v108 = v106;
  v204 = v106;
  v109 = v253;
  v110 = v254;
  v111 = v255;
  (*(v254 + 16))(v253, v257);
  (*(v110 + 56))(v109, 0, 1, v111);
  type metadata accessor for CGRect(0);
  v203 = v112;
  v202 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v260 = 0u;
  v261 = 0u;
  CRRegister.init(wrappedValue:)();
  v113 = v245;
  *&v260 = 0;
  v211 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(_:)();
  v205 = v113[6];
  v114 = v212;
  (v108)(v212, 1, 1, v98);
  outlined init with copy of Date?(v114, v35, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v200 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v114, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v201 = v113[7];
  (v204)(v114, 1, 1, v198);
  outlined init with copy of Date?(v114, v35, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v114, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v199 = v113[8];
  *&v260 = 0x4014000000000000;
  CRRegister.init(wrappedValue:)();
  v197 = v113[9];
  v115 = v244;
  swift_storeEnumTagMultiPayload();
  v198 = type metadata accessor for ShapeType;
  _s8PaperKit9ShapeTypeOWOcTm_2(v115, v218, type metadata accessor for ShapeType);
  v196[1] = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType, &protocol conformance descriptor for ShapeType);
  CRRegister.init(wrappedValue:)();
  _s8PaperKit5ImageVWOhTm_1(v115, type metadata accessor for ShapeType);
  *&v260 = 0x3FF0000000000000;
  CRRegister.init(wrappedValue:)();
  *&v260 = 0;
  BYTE8(v260) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMR, MEMORY[0x1E69950E8]);
  CRRegister.init(wrappedValue:)();
  *&v260 = 0;
  BYTE8(v260) = 0;
  CRRegister.init(wrappedValue:)();
  v196[0] = v113[13];
  CRAttributedString.init(_:)();
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v117 = *(v116 - 8);
  v118 = *(v117 + 56);
  v119 = v247;
  v218 = v116;
  v206 = v118;
  v204 = (v117 + 56);
  (v118)(v247, 1, 1);
  outlined init with copy of Date?(v119, v248, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v119, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  v120 = v113[15];
  *&v260 = 0;
  v121 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  v219 = v120;
  v196[2] = v121;
  CRRegister.init(wrappedValue:)();
  *&v260 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v122 = type metadata accessor for StrokeStyle(0);
  v123 = v220;
  (*(*(v122 - 8) + 56))(v220, 1, 1, v122);
  outlined init with copy of Date?(v123, v221, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v123, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  v124 = type metadata accessor for Shadow(0);
  v125 = v223;
  (*(*(v124 - 8) + 56))(v223, 1, 1, v124);
  outlined init with copy of Date?(v125, v224, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v125, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  v261 = 0u;
  v262 = 0u;
  v260 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd, &_s8PaperKit18ShapeAuxiliaryInfoVSgMR);
  lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  *&v260 = v73;
  *(&v260 + 1) = v75;
  *&v261 = v77;
  *(&v261 + 1) = v79;
  v126 = v226;
  CRRegister.init(_:)();
  (*(v228 + 40))(v51, v126, v229);
  _s8PaperKit9ShapeTypeOWOcTm_2(v256, v115, v198);
  v127 = v230;
  CRRegister.init(_:)();
  (*(v231 + 40))(&v51[v197], v127, v232);
  *&v260 = 0x4014000000000000;
  v128 = v234;
  CRRegister.init(_:)();
  (*(v210 + 40))(&v51[v199], v128, v235);
  v129 = v212;
  outlined init with copy of Date?(v258, v212, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v130 = v236;
  CRRegister.init(_:)();
  v131 = v238;
  v132 = *(v237 + 40);
  v132(&v51[v201], v130, v238);
  outlined init with copy of Date?(v252, v129, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v133 = v254;
  CRRegister.init(_:)();
  v132(&v51[v205], v130, v131);
  v134 = v255;
  v135 = v227;
  outlined init with copy of Date?(v253, v227, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  if ((*(v133 + 48))(v135, 1, v134) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v135, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  }

  else
  {
    v136 = v217;
    (*(v133 + 32))(v217, v135, v134);
    (*(v133 + 40))(&v51[v196[0]], v136, v134);
  }

  v137 = v259;
  v138 = v241;
  v139 = v239;
  v140 = v240;
  *&v260 = 2;
  CRRegister.init(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v253, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v252, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v258, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  _s8PaperKit5ImageVWOhTm_1(v256, type metadata accessor for ShapeType);
  (*(v140 + 40))(&v51[v219], v139, v138);
  v141 = v249;
  _s8PaperKit5ShapeVWObTm_2(v51, v249, type metadata accessor for Shape);
  LOBYTE(v260) = 1;
  Shape.formContentType.setter(&v260);
  v142 = v247;
  CRAttributedString.Attributes<>.init(nsAttributes:darkMode:)(v207, 0, v247);
  v206(v142, 0, 1, v218);
  outlined init with copy of Date?(v142, v248, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v142, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  _s8PaperKit9ShapeTypeOWOcTm_2(v141, v233, type metadata accessor for Shape);
  static CRKeyPath.unique.getter();
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
  v143 = v251;
  Capsule.init(_:id:)();
  v144 = *(v137 + 16);
  v145 = v215;
  v146 = v209;
  v144(v215, v143, v209);
  v147 = objc_allocWithZone(type metadata accessor for ShapeView(0));
  *(v147 + direct field offset for ShapeView.$__lazy_storage_$_shapeLayer) = 0;
  *(v147 + direct field offset for ShapeView.$__lazy_storage_$_endLineEndLayer) = 0;
  *(v147 + direct field offset for ShapeView.$__lazy_storage_$_startLineEndLayer) = 0;
  *(v147 + direct field offset for ShapeView.$__lazy_storage_$_groupLayer) = 0;
  v148 = direct field offset for ShapeView.showsSignaturePopover;
  *(v147 + direct field offset for ShapeView.showsSignaturePopover) = 0;
  v149 = direct field offset for ShapeView.analytics_inputSource;
  *(v147 + direct field offset for ShapeView.analytics_inputSource) = 68;
  v150 = direct field offset for ShapeView.analytics_documentType;
  *(v147 + direct field offset for ShapeView.analytics_documentType) = 68;
  *(v147 + direct field offset for ShapeView._textBoxView) = 0;
  *(v147 + direct field offset for ShapeView.appearanceStreamView) = 0;
  *(v147 + v148) = 0;
  *(v147 + v149) = 11;
  *(v147 + v150) = 5;
  v151 = v243;
  v144(v243, v145, v146);
  v152 = MEMORY[0x1E69E7D40];
  (*(v259 + 56))(v147 + *((*MEMORY[0x1E69E7D40] & *v147) + 0x3F8), 1, 1, v146);
  *(v147 + *((*v152 & *v147) + 0x400)) = 0;
  *(v147 + *((*v152 & *v147) + 0x408)) = 0;
  *(v147 + *((*v152 & *v147) + 0x410)) = 0;
  *(v147 + *((*v152 & *v147) + 0x418)) = 0;
  *(v147 + *((*v152 & *v147) + 0x420)) = 0;
  v144(v147 + *((*v152 & *v147) + 0x3F0), v151, v146);
  v153 = v216;
  v258 = v216;
  v154 = AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(v153, 0, 0.0, 0.0, 0.0, 0.0);
  specialized CanvasElementView.setupAccessibility()();
  (*((*v152 & *v154) + 0x520))();
  v155 = *(v259 + 8);
  v259 += 8;
  v155(v151, v146);
  v156 = v154;
  specialized AppearanceStreamViewSupport.setupAppearanceStreamIfNeeded()();
  v157 = *((*v152 & *v156) + 0x3F0);
  v158 = v251;
  swift_beginAccess();
  v144(v151, &v156[v157], v146);
  LOBYTE(v157) = specialized Capsule<>.isTextBox.getter();

  v155(v151, v146);
  if (v157)
  {
    goto LABEL_16;
  }

  v159 = v155;
  [v156 setIsAccessibilityElement_];
  v160 = 0x80000001D40850C0;
  if (one-time initialization token for paperKitBundle != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v263._object = v160;
    v161._countAndFlagsBits = 0x4025206570616853;
    v162.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v162.value._object = 0xEB00000000656C62;
    v161._object = 0xE800000000000000;
    v163._countAndFlagsBits = 0;
    v163._object = 0xE000000000000000;
    v263._countAndFlagsBits = 0xD00000000000005FLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v161, v162, paperKitBundle, v163, v263);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v164 = swift_allocObject();
    *(v164 + 16) = xmmword_1D4058CF0;
    swift_getKeyPath();
    v165 = v244;
    v166 = v209;
    Capsule.subscript.getter();

    ShapeType.any.getter(&v260);
    _s8PaperKit5ImageVWOhTm_1(v165, type metadata accessor for ShapeType);
    v167 = *(&v261 + 1);
    v168 = v262;
    __swift_project_boxed_opaque_existential_1(&v260, *(&v261 + 1));
    v169 = (*(v168 + 48))(v167, v168);
    v171 = v170;
    *(v164 + 56) = MEMORY[0x1E69E6158];
    *(v164 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v164 + 32) = v169;
    *(v164 + 40) = v171;
    __swift_destroy_boxed_opaque_existential_0(&v260);
    v172 = static String.localizedStringWithFormat(_:_:)();
    v174 = v173;
    v146 = v166;

    v175 = MEMORY[0x1DA6CCED0](v172, v174);

    [v156 setAccessibilityLabel_];

    v158 = v251;
    v155 = v159;
LABEL_16:
    v155(v215, v146);
    v155(v158, v146);
    _s8PaperKit5ImageVWOhTm_1(v249, type metadata accessor for Shape);
    v176 = (*(v254 + 8))(v257, v255);
    v156[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDetectedFormField] = 1;
    v156[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_startsNewAutofillContext] = 0;
    v177 = v258;
    v178 = (v213)(v176);
    v180 = v179;
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v182 = swift_initStackObject();
    *(v182 + 16) = xmmword_1D405CEB0;
    *(v182 + 32) = v156;
    v159 = *(v180 + 200);
    v183 = v156;
    (v159)(v182, 0, ObjectType, v180);

    swift_setDeallocating();
    swift_arrayDestroy();
    v156 = v183;
    v184 = specialized CanvasMembers.init(_:)(v156);
    AnyCanvas.selection.setter(v184, v186, v187, v185 & 1);
    v188 = v213();
    v190 = v189;
    v191 = swift_getObjectType();
    v160 = (*(v190 + 168))(v191, v190);

    if (!v160)
    {
      break;
    }

    v192 = *&v160[OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics];

    v193 = *(v192 + 48);
    v194 = __OFADD__(v193, 1);
    v195 = v193 + 1;
    if (!v194)
    {
      *(v192 + 48) = v195;

      return;
    }

    __break(1u);
LABEL_21:
    swift_once();
  }
}

void closure #2 in CanvasElementViewController.updatePlusButton()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + direct field offset for CanvasElementViewController.plusButton);
    v11 = v10;
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = a3;
    v21[3] = a4;
    v21[4] = a5;
    v21[5] = v20;
    v22 = one-time initialization token for SignatureLogger;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, SignatureLogger);
    v24 = v9;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138477827;
      *(v27 + 4) = v24;
      *v28 = v9;
      v29 = v24;
      _os_log_impl(&dword_1D38C4000, v25, v26, "show signature panel on viewController: %{private}@", v27, 0xCu);
      outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1DA6D0660](v28, -1, -1);
      MEMORY[0x1DA6D0660](v27, -1, -1);
    }

    v30 = specialized SignatureManager.signatureViewController(_:_:_:_:_:)(v9, 0, v10, partial apply for closure #1 in closure #2 in CanvasElementViewController.updatePlusButton(), v21, v13, v15, v17, v19);
    [v24 presentViewController:v30 animated:1 completion:0];
  }
}

void closure #1 in closure #2 in CanvasElementViewController.updatePlusButton()(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for Signature(0);
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd, &_s9Coherence7CapsuleVy8PaperKit9SignatureVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a1)
    {
      v11 = a1;
      if (specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView) && (v12 = Canvas.editingView.getter(), v13 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x90))(), v12, v13))
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v29 = v6;
        v14 = [v10 view];
        if (v14)
        {
          v15 = v14;
          [v14 center];
          v17 = v16;
          v19 = v18;

          v20 = SignatureItem.size.getter();
          v22 = 400.0 / v20;
          if (400.0 / v20 > 1.0)
          {
            v22 = 1.0;
          }

          v23 = v20 * v22;
          v24 = v21 * v22;
          v25 = 72.0 / v24;
          if (72.0 / v24 > 1.0)
          {
            v25 = 1.0;
          }

          v30[0] = v23 * v25;
          v30[1] = v24 * v25;
          Signature.init()();
          static CRKeyPath.unique.getter();
          v26 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature, &protocol conformance descriptor for Signature);
          v27 = Capsule.init(_:id:)();
          MEMORY[0x1EEE9AC00](v27);
          *(&v28 - 4) = v11;
          *(&v28 - 3) = v17;
          *(&v28 - 2) = v19;
          *(&v28 - 1) = v30;
          Capsule.callAsFunction<A>(_:)();
          (*((*MEMORY[0x1E69E7D40] & *v13) + 0x700))(v8, 1, 0, 0, v4, v26, &protocol witness table for Signature);

          (*(v29 + 8))(v8, v5);
        }

        else
        {
          __break(1u);
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

uint64_t CanvasElementViewController.isUpdatingBannerConfiguration.getter()
{
  KeyPath = swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)(KeyPath);

  return *(v0 + direct field offset for CanvasElementViewController._isUpdatingBannerConfiguration);
}

uint64_t key path getter for CanvasElementViewController.isUpdatingBannerConfiguration : <A>CanvasElementViewController<A>@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.isUpdatingBannerConfiguration.getter();
  *a1 = result & 1;
  return result;
}

void CanvasElementViewController._bannerViewConfiguration.didset()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  if (CanvasElementViewController.isUpdatingBannerConfiguration.getter())
  {
    return;
  }

  CanvasElementViewController.isUpdatingBannerConfiguration.setter(1);
  CanvasElementViewController.bannerViewConfiguration.getter(&aBlock);
  v2 = aBlock;
  v3 = v57;
  v4 = v58;
  v5 = v59;
  v6 = v60;
  v7 = v61;
  v8 = v62;
  v9 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072FC0, &direct field offset for CanvasElementViewController._bannerView);
  if (v2 == 1)
  {
    if (v9)
    {
      [v9 removeFromSuperview];
    }

    goto LABEL_8;
  }

  if (!v9 || (v10 = [v9 superview]) == 0)
  {
    v11 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072FC0, &direct field offset for CanvasElementViewController._bannerView);
    if (!v11)
    {
      outlined consume of BannerViewConfiguration?(v2, v3, v4, v5, v6, v7, v8);
      goto LABEL_25;
    }

    v12 = v11;
    v13 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
    if (v13)
    {
      [v13 addSubview_];
    }

    v51 = v4;
    if (v4)
    {
      v4 = MEMORY[0x1DA6CCED0](v3, v4);
    }

    v53 = v6;
    v50 = v3;
    if (v6)
    {
      v6 = MEMORY[0x1DA6CCED0](v5, v6);
    }

    v52 = v5;
    v54 = v7;
    v55 = v8;
    v14 = [objc_opt_self() configurationWithImage:v2 title:v4 subtitle:v6 primaryAction:v7 dismissAction:v8];

    [v12 populateWithConfiguration_];
    v15 = v12;
    [v15 setTranslatesAutoresizingMaskIntoConstraints_];
    v16 = [v15 bottomAnchor];
    v17 = [v0 view];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 safeAreaLayoutGuide];

      v20 = [v19 topAnchor];
      v21 = [v16 constraintEqualToAnchor_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1D405B630;
      *(v22 + 32) = v21;
      v49 = v21;
      v23 = [v15 leadingAnchor];
      v24 = [v0 view];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 leadingAnchor];

        v27 = [v23 constraintEqualToAnchor:v26 constant:8.0];
        *(v22 + 40) = v27;
        v28 = [v15 leadingAnchor];
        v29 = [v0 view];
        if (v29)
        {
          v30 = v29;
          v31 = [v29 safeAreaLayoutGuide];

          v32 = [v31 leadingAnchor];
          v33 = [v28 constraintGreaterThanOrEqualToAnchor:v32 constant:8.0];

          *(v22 + 48) = v33;
          v34 = [v15 trailingAnchor];

          v35 = [v0 view];
          if (v35)
          {
            v36 = v35;
            v37 = objc_opt_self();
            v38 = [v36 safeAreaLayoutGuide];

            v39 = [v38 trailingAnchor];
            v40 = [v34 constraintEqualToAnchor:v39 constant:-8.0];

            *(v22 + 56) = v40;
            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v37 activateConstraints_];

            v42 = [v0 view];
            if (v42)
            {
              v43 = v42;
              [v42 layoutIfNeeded];

              v44 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v45 = swift_allocObject();
              *(v45 + 16) = *(v1 + 120);
              *(v45 + 32) = *(v1 + 136);
              *(v45 + 40) = v44;
              *(v45 + 48) = v49;
              *(v45 + 56) = v15;
              v60 = partial apply for closure #1 in CanvasElementViewController._bannerViewConfiguration.didset;
              v61 = v45;
              aBlock = MEMORY[0x1E69E9820];
              v57 = 1107296256;
              v58 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
              v59 = &block_descriptor_274;
              v46 = _Block_copy(&aBlock);
              v47 = v15;
              v48 = v49;

              [v47 showWithAnimations_];
              outlined consume of BannerViewConfiguration?(v2, v50, v51, v52, v53, v54, v55);
              _Block_release(v46);

LABEL_25:
              CanvasElementViewController.isUpdatingBannerConfiguration.setter(0);
              return;
            }

LABEL_31:
            __break(1u);
            return;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  outlined consume of BannerViewConfiguration?(v2, v3, v4, v5, v6, v7, v8);
LABEL_8:

  CanvasElementViewController.isUpdatingBannerConfiguration.setter(0);
}

id CanvasElementViewController._bannerViewConfiguration.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + direct field offset for CanvasElementViewController._bannerViewConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  return outlined copy of BannerViewConfiguration?(v4, v5, v6, v7, v8, v9, v10);
}

void CanvasElementViewController._bannerViewConfiguration.setter(uint64_t a1)
{
  v13 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1 + direct field offset for CanvasElementViewController._bannerViewConfiguration;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 40);
  v11 = *(v4 + 48);
  v12 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v12;
  *(v4 + 32) = v13;
  *(v4 + 48) = v3;
  outlined consume of BannerViewConfiguration?(v5, v6, v7, v8, v9, v10, v11);
  CanvasElementViewController._bannerViewConfiguration.didset();
}

void (*CanvasElementViewController._bannerViewConfiguration.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CanvasElementViewController._bannerViewConfiguration.modify;
}

void CanvasElementViewController._liveStreamMessenger.modify(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v5 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    a3(v5);
  }
}

double key path getter for CanvasElementViewController.bannerViewConfiguration : <A>CanvasElementViewController<A>@<D0>(uint64_t a1@<X8>)
{
  CanvasElementViewController.bannerViewConfiguration.getter(v5);
  v2 = v7;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v2;
  return result;
}

double key path setter for CanvasElementViewController.bannerViewConfiguration : <A>CanvasElementViewController<A>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[0] = *a1;
  v8[1] = v1;
  v8[2] = v2;
  v8[3] = v3;
  v8[4] = v4;
  v8[5] = v5;
  v8[6] = v6;
  outlined copy of BannerViewConfiguration?(v8[0], v1, v2, v3, v4, v5, v6);
  return CanvasElementViewController.bannerViewConfiguration.setter(v8);
}

id CanvasElementViewController.bannerViewConfiguration.getter@<X0>(void *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)(KeyPath);

  return CanvasElementViewController._bannerViewConfiguration.getter(a1);
}

uint64_t (*CanvasElementViewController.bannerViewConfiguration.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  v7 = *((v6 & v5) + 0x78);
  v8 = *((v6 & v5) + 0x80);
  v9 = *((v6 & v5) + 0x88);
  KeyPath = swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v11);
  swift_getKeyPath();
  type metadata accessor for CanvasElementViewController(255, v7, v8, v9);
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[5] = CanvasElementViewController._bannerViewConfiguration.modify(v4);
  return CanvasElementViewController.bannerViewConfiguration.modify;
}

void CanvasElementViewController._bannerView.setter(uint64_t a1)
{
  v2 = *(v1 + direct field offset for CanvasElementViewController._bannerView);
  *(v1 + direct field offset for CanvasElementViewController._bannerView) = a1;
}

void *CanvasElementViewController.bannerView.getter()
{
  v0 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072FC0, &direct field offset for CanvasElementViewController._bannerView);
  v1 = v0;
  return v0;
}

void CanvasElementViewController.__rulerHostingDelegate.setter(uint64_t a1)
{
  v2 = *(v1 + direct field offset for CanvasElementViewController.__rulerHostingDelegate);
  *(v1 + direct field offset for CanvasElementViewController.__rulerHostingDelegate) = a1;
}

void *CanvasElementViewController._rulerHostingDelegate.getter()
{
  v0 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072F80, &direct field offset for CanvasElementViewController.__rulerHostingDelegate);
  v1 = v0;
  return v0;
}

id key path getter for CanvasElementViewController._rulerHostingDelegate : <A>CanvasElementViewController<A>@<X0>(void *a1@<X8>)
{
  v2 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072F80, &direct field offset for CanvasElementViewController.__rulerHostingDelegate);
  *a1 = v2;

  return v2;
}

void key path setter for CanvasElementViewController._rulerHostingDelegate : <A>CanvasElementViewController<A>(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CanvasElementViewController._rulerHostingDelegate.setter(v1);
}

void CanvasElementViewController._rulerHostView.didset(void *a1)
{
  v2 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072C60, &direct field offset for CanvasElementViewController._rulerHostView);
  v3 = v2;
  if (a1)
  {
    if (v2)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
      v4 = v3;
      v5 = a1;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        return;
      }
    }
  }

  else if (!v2)
  {
    return;
  }

  v7 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072C60, &direct field offset for CanvasElementViewController._rulerHostView);
  if (v7)
  {
    v8 = v7;
    v9 = type metadata accessor for RulerHostingDelegate();
    v10 = objc_allocWithZone(v9);
    swift_unknownObjectWeakInit();
    v10[OBJC_IVAR____TtC8PaperKit20RulerHostingDelegate_sharedRuler] = 1;
    swift_unknownObjectWeakAssign();
    v15.receiver = v10;
    v15.super_class = v9;
    v11 = v8;
    v12 = objc_msgSendSuper2(&v15, sel_init);
    CanvasElementViewController._rulerHostingDelegate.setter(v12);
  }

  else
  {
    CanvasElementViewController._rulerHostingDelegate.setter(0);
  }

  if (specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView))
  {
    v13 = specialized CanvasView.tiledView.getter();
    if (v13)
    {
      v14 = v13;
      [v14 setRulerHostingDelegate_];
    }
  }
}

void (*CanvasElementViewController._rulerHostView.modify(void *a1))(id *a1, char a2)
{
  v2 = *(v1 + direct field offset for CanvasElementViewController._rulerHostView);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return CanvasElementViewController._rulerHostView.modify;
}

void CanvasElementViewController._rulerHostView.modify(id *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    specialized CanvasElementViewController._rulerHostView.setter(v4);

    v3 = v2;
  }

  else
  {
    specialized CanvasElementViewController._rulerHostView.setter(*a1);
    v3 = v4;
  }
}

id key path getter for CanvasElementViewController.rulerHostView : <A>CanvasElementViewController<A>@<X0>(void *a1@<X8>)
{
  v2 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072C60, &direct field offset for CanvasElementViewController._rulerHostView);
  *a1 = v2;

  return v2;
}

void key path setter for CanvasElementViewController.rulerHostView : <A>CanvasElementViewController<A>(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CanvasElementViewController.rulerHostView.setter(v1);
}

void *CanvasElementViewController.rulerHostView.getter()
{
  v0 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072C60, &direct field offset for CanvasElementViewController._rulerHostView);
  v1 = v0;
  return v0;
}

uint64_t (*CanvasElementViewController.rulerHostView.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  v7 = *((v6 & v5) + 0x78);
  v8 = *((v6 & v5) + 0x80);
  v9 = *((v6 & v5) + 0x88);
  KeyPath = swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v11);
  swift_getKeyPath();
  type metadata accessor for CanvasElementViewController(255, v7, v8, v9);
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[5] = CanvasElementViewController._rulerHostView.modify(v4);
  return CanvasElementViewController.rulerHostView.modify;
}

void CanvasElementViewController.MediaAnalysisObserver.contextAnalysisDidChange(_:)(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    CanvasElementViewController.analysis.setter([a1 analysis]);
  }
}

void CanvasElementViewController.MediaAnalysisObserver.contextDidCompleteSubjectAnalysis(_:)(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (CanvasElementViewController.delegate.getter())
    {
      v4 = v3;
      ObjectType = swift_getObjectType();
      (*(v4 + 40))(v6, [a1 isSubjectHighlightAvailable], ObjectType, v4);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

double @objc CanvasElementViewController.MediaAnalysisObserver.contextAnalysisDidChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();

  a4(a3);
  swift_unknownObjectRelease();

  return result;
}

void (*CanvasElementViewController._formDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for CanvasElementViewController._formDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return PaperMarkupViewController._delegate.modify;
}

uint64_t key path getter for CanvasElementViewController.formDelegate : <A>CanvasElementViewController<A>@<X0>(uint64_t *a1@<X8>)
{
  result = CanvasElementViewController.formDelegate.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t key path setter for CanvasElementViewController.liveStreamMessenger : <A>CanvasElementViewController<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = a1[1];
  v7 = swift_unknownObjectRetain();
  return a5(v7, v6);
}

uint64_t CanvasElementViewController.participantDetailsDataSource.getter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  KeyPath = swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)(KeyPath);

  return a2(v4);
}

uint64_t (*CanvasElementViewController.formDelegate.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  v7 = *((v6 & v5) + 0x78);
  v8 = *((v6 & v5) + 0x80);
  v9 = *((v6 & v5) + 0x88);
  KeyPath = swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v11);
  swift_getKeyPath();
  type metadata accessor for CanvasElementViewController(255, v7, v8, v9);
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[5] = CanvasElementViewController._formDelegate.modify(v4);
  return CanvasElementViewController.formDelegate.modify;
}

double $defer #1 <A>() in CanvasElementViewController.liveStreamMessenger.modify(void *a1, uint64_t a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x78);
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x80);
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x88);
  swift_getKeyPath();
  type metadata accessor for CanvasElementViewController(255, v2, v3, v4);
  swift_getWitnessTable();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return result;
}

void CanvasElementViewController._analysis.didset(uint64_t a1)
{
  v2 = v1;
  v4 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072F38, &direct field offset for CanvasElementViewController._analysis);
  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return;
  }

  v50 = v4;
  v6 = CanvasElementViewController.delegate.getter();
  v8 = &selRef_hasSubstrokes;
  if (!v6)
  {
    v29 = v50;
    goto LABEL_47;
  }

  v9 = v7;
  v10 = v50;
  v11 = [v10 formRegions];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for VKCFormRegion, 0x1E69DF9D8);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    goto LABEL_33;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
  v49 = v13;

  v10 = [v10 v8[157]];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = MEMORY[0x1E69E7CC0];
  if (v14 >> 62)
  {
    v15 = __CocoaSet.count.getter();
    if (v15)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_12:
      v47 = v9;
      v48 = v2;
      v2 = 0;
      v51 = v14 & 0xC000000000000001;
      v16 = v14 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v51)
        {
          v17 = MEMORY[0x1DA6CE0C0](v2, v14);
        }

        else
        {
          if (v2 >= *(v16 + 16))
          {
            goto LABEL_32;
          }

          v17 = *(v14 + 8 * v2 + 32);
        }

        v18 = v17;
        v19 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v13 = __CocoaSet.count.getter();
          goto LABEL_10;
        }

        v20 = [v17 autoFillContentType];
        if (v20)
        {
          v10 = v20;
          v9 = v14;
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v8 = v25;
          if (v21 == v24 && v23 == v25)
          {

            v14 = v9;
LABEL_27:

            goto LABEL_14;
          }

          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v14 = v9;
          if (v27)
          {
            goto LABEL_27;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v10 = &v52;
        specialized ContiguousArray._endMutation()();
LABEL_14:
        ++v2;
        if (v19 == v15)
        {
          v28 = v52;
          v8 = &selRef_hasSubstrokes;
          v2 = v48;
          v9 = v47;
          goto LABEL_36;
        }
      }
    }
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_36:

  if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
  {
    v30 = __CocoaSet.count.getter();
  }

  else
  {
    v30 = *(v28 + 16);
  }

  ObjectType = swift_getObjectType();
  (*(v9 + 48))(v2, v49 > 0, v30 != 0, ObjectType, v9);
  if (v30)
  {
    v32 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
    v33 = v32;
    swift_unknownObjectRelease();
    if (!v32)
    {
      goto LABEL_47;
    }

    v34 = specialized CanvasView.formAnalytics.getter();

    v35 = 45;
LABEL_45:
    *(v34 + 18) = v35;

    goto LABEL_47;
  }

  if (v49 >= 1)
  {
    v36 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
    v37 = v36;
    swift_unknownObjectRelease();
    if (!v36)
    {
      goto LABEL_47;
    }

    v34 = specialized CanvasView.formAnalytics.getter();

    v35 = 44;
    goto LABEL_45;
  }

  swift_unknownObjectRelease();
LABEL_47:
  CanvasElementViewController.updateFormFillingIfNeeded()();
  if (specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView) && (v38 = Canvas.editingView.getter(), v40 = v39, v41 = swift_getObjectType(), v42 = (*(v40 + 168))(v41, v40), v38, v42))
  {
    v43 = [v50 v8[157]];
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for VKCFormRegion, 0x1E69DF9D8);
    v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *&v42[OBJC_IVAR____TtC8PaperKit15FormFillingView_vkcFormRegions] = v44;

    v45 = *&v42[OBJC_IVAR____TtC8PaperKit15FormFillingView_vkcAnalysis];
    *&v42[OBJC_IVAR____TtC8PaperKit15FormFillingView_vkcAnalysis] = v50;

    v46 = v45;
  }

  else
  {
    v46 = v50;
  }
}

void *CanvasElementViewController.analysis.getter()
{
  v0 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072F38, &direct field offset for CanvasElementViewController._analysis);
  v1 = v0;
  return v0;
}

id key path getter for CanvasElementViewController.analysis : <A>CanvasElementViewController<A>@<X0>(void *a1@<X8>)
{
  v2 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072F38, &direct field offset for CanvasElementViewController._analysis);
  *a1 = v2;

  return v2;
}

void key path setter for CanvasElementViewController.analysis : <A>CanvasElementViewController<A>(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CanvasElementViewController.analysis.setter(v1);
}

void CanvasElementViewController.clearFormFillingFields()()
{
  v0 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v59 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v42 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v42 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v60 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v42 - v12;
  if (!specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView))
  {
    return;
  }

  v66 = Canvas.editingView.getter();
  v14 = v13;
  ObjectType = swift_getObjectType();
  v16 = (*(v14 + 168))(ObjectType, v14);
  if (v16)
  {
    v17 = v16;
    v18 = FormFillingView.formFields.getter();
    v19 = v18;
    if (v18 >> 62)
    {
      v20 = __CocoaSet.count.getter();
      v21 = v66;
      if (v20)
      {
LABEL_5:
        v43 = v17;
        if (v20 < 1)
        {
          __break(1u);
        }

        else
        {
          v22 = 0;
          v63 = *(v14 + 96);
          v64 = v14 + 96;
          v61 = (v6 + 48);
          v62 = v19 & 0xC000000000000001;
          v50 = (v6 + 32);
          v49 = (v6 + 16);
          v48 = (v6 + 8);
          v47 = v60 + 32;
          v46 = v60 + 16;
          v45 = v60 + 8;
          v44 = xmmword_1D4058CF0;
          v52 = v4;
          v53 = v14;
          v51 = v19;
          v65 = v20;
          do
          {
            if (v62)
            {
              v24 = MEMORY[0x1DA6CE0C0](v22, v19);
            }

            else
            {
              v24 = *(v19 + 8 * v22 + 32);
            }

            v25 = *((*MEMORY[0x1E69E7D40] & *v24) + 0xF0);
            v26 = v24;
            v25();
            if ((*v61)(v4, 1, v5) == 1)
            {
              outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);

              v23 = MEMORY[0x1E69E7CD0];
            }

            else
            {
              v27 = v57;
              (*v50)(v57, v4, v5);
              v28 = v58;
              (*v49)(v58, v27, v5);
              WeakTagged_10.tag.getter();
              v67 = v69;
              v68 = v70;
              MEMORY[0x1DA6CB7A0](v5);
              lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
              v29 = v55;
              WeakTagged_10.init(_:id:)();
              v30 = *v48;
              (*v48)(v28, v5);
              v30(v27, v5);
              v31 = v60;
              v32 = ObjectType;
              v33 = v54;
              v34 = v29;
              v35 = v56;
              (*(v60 + 32))(v54, v34, v56);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence13WeakTagged_10Vy8PaperKit0F13CanvasElementVGGMd, &_ss23_ContiguousArrayStorageCy9Coherence13WeakTagged_10Vy8PaperKit0F13CanvasElementVGGMR);
              v36 = (*(v31 + 80) + 32) & ~*(v31 + 80);
              v37 = swift_allocObject();
              *(v37 + 16) = v44;
              (*(v31 + 16))(v37 + v36, v33, v35);
              v23 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9Coherence13WeakTagged_10Vy8PaperKit0G13CanvasElementVG_Tt0g5Tf4g_n(v37);
              swift_setDeallocating();
              v38 = *(v31 + 8);
              v38(v37 + v36, v35);
              swift_deallocClassInstance();

              v39 = v33;
              ObjectType = v32;
              v40 = v35;
              v19 = v51;
              v4 = v52;
              v38(v39, v40);
            }

            ++v22;
            v63(v23);
          }

          while (v65 != v22);
        }

        return;
      }
    }

    else
    {
      v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v21 = v66;
      if (v20)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    v41 = v66;
  }
}

void CanvasElementViewController.updateFormFillingIfNeeded()()
{
  v0 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v294 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v294 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v377 = &v294 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v375 = &v294 - v10;
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
  v398 = *(v364 - 8);
  MEMORY[0x1EEE9AC00](v364);
  v363 = &v294 - v11;
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  *&v397 = *(v362 - 8);
  MEMORY[0x1EEE9AC00](v362);
  v361 = &v294 - v12;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  *&v396 = *(v360 - 8);
  MEMORY[0x1EEE9AC00](v360);
  v359 = &v294 - v13;
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMR);
  v14 = *(v358 - 8);
  MEMORY[0x1EEE9AC00](v358);
  v357 = &v294 - v15;
  v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v16 = *(v356 - 8);
  MEMORY[0x1EEE9AC00](v356);
  v355 = &v294 - v17;
  v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  MEMORY[0x1EEE9AC00](v354);
  v353 = &v294 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v352 = &v294 - v20;
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  MEMORY[0x1EEE9AC00](v351);
  v350 = &v294 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v349 = &v294 - v23;
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v348);
  v374 = &v294 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v373 = &v294 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v347 = &v294 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v380 = &v294 - v30;
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v372);
  v346 = &v294 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v371 = &v294 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v379 = &v294 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v384 = (&v294 - v37);
  v383 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v383);
  v345 = &v294 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v376 = &v294 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v382 = &v294 - v42;
  v386 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v386);
  v344 = &v294 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v388 = &v294 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v370 = &v294 - v47;
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  a_low = *(v378 - 8);
  MEMORY[0x1EEE9AC00](v378);
  v343 = &v294 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v381 = &v294 - v51;
  v52 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (!v52)
  {
    return;
  }

  v53 = v52;
  v399 = v52;
  v54 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072F38, &direct field offset for CanvasElementViewController._analysis);
  if (!v54)
  {
    v254 = v399;

    return;
  }

  v55 = v54;
  v319 = v53;
  v366 = v6;
  v367 = v3;
  v56 = v399;
  v57 = v55;
  AnyCanvas.formFieldElements.getter();
  v59 = v58;
  v393 = v56;

  v402 = MEMORY[0x1E69E7CC0];
  v318 = v57;
  v60 = [v57 formRegions];
  v385 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for VKCFormRegion, 0x1E69DF9D8);
  v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v320 = v2;
  if (v61 >> 62)
  {
    goto LABEL_141;
  }

  v392 = v61 & 0xFFFFFFFFFFFFFF8;
  v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  if (v59 < 0)
  {
    v63 = v59;
  }

  else
  {
    v63 = v59 & 0xFFFFFFFFFFFFFF8;
  }

  v302 = v61;
  if (!v62)
  {
    v341 = MEMORY[0x1E69E7CC0];
    countAndFlagsBits = MEMORY[0x1E69E7CC0];
LABEL_107:

    v255 = v393;
    v256 = Canvas.editingView.getter();
    v258 = v257;
    ObjectType = swift_getObjectType();
    v59 = *(v258 + 192);
    v260 = v255;
    (v59)(countAndFlagsBits, ObjectType, v258);

    v261 = Canvas.editingView.getter();
    v263 = v262;
    v264 = swift_getObjectType();
    (*(v263 + 208))(v341, v264, v263);

    v265 = Canvas.editingView.getter();
    v266 = (*((*MEMORY[0x1E69E7D40] & *v265) + 0x90))();

    a_low = MEMORY[0x1E69E7CC0];
    if (v266)
    {
      if (one-time initialization token for manager != -1)
      {
        swift_once();
      }

      specialized FormAnalytics.recordLatencyEvent(timestamps:endToEnd:)(v267, 1);
    }

    v268 = Canvas.editingView.getter();
    v270 = v269;

    v271 = swift_getObjectType();
    v4 = (*(v270 + 168))(v271, v270);

    if (!v4)
    {

      return;
    }

    *&v396 = v260;
    v272 = [v318 formRegions];
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *&v401.a = a_low;
    *&v395 = v4;
    if (v16 >> 62)
    {
      v273 = __CocoaSet.count.getter();
      if (v273)
      {
        goto LABEL_114;
      }
    }

    else
    {
      v273 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v273)
      {
LABEL_114:
        v61 = 0;
        v399 = (v16 & 0xC000000000000001);
        v398 = (v16 & 0xFFFFFFFFFFFFFF8);
        *&v397 = *MEMORY[0x1E698E130];
        do
        {
          if (v399)
          {
            v274 = MEMORY[0x1DA6CE0C0](v61, v16);
          }

          else
          {
            if (v61 >= *(v398 + 2))
            {
              goto LABEL_138;
            }

            v274 = *(v16 + 8 * v61 + 32);
          }

          v275 = v274;
          v59 = v61 + 1;
          if (__OFADD__(v61, 1))
          {
            goto LABEL_137;
          }

          v276 = [v274 autoFillContentType];
          if (!v276)
          {
            goto LABEL_115;
          }

          v277 = v276;
          v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          a_low = v278;
          v279 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v280;
          if (v4 == v279 && a_low == v280)
          {

            goto LABEL_116;
          }

          v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v4)
          {
LABEL_115:
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v4 = *(*&v401.a + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

LABEL_116:
          ++v61;
        }

        while (v59 != v273);
      }
    }

    v282 = OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics;
    v283 = v395;
    v284 = *(v395 + OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics);
    if ((*&v401.a & 0x8000000000000000) != 0 || (*&v401.a & 0x4000000000000000) != 0)
    {
      v285 = __CocoaSet.count.getter();
    }

    else
    {
      v285 = *(*&v401.a + 16);
    }

    v286 = countAndFlagsBits;

    *(v284 + 32) = v285;

    v287 = *&v283[v282];
    if (v286 >> 62)
    {
      *(v287 + 24) = __CocoaSet.count.getter();
      v288 = v396;
      v293 = specialized CanvasView.formAnalytics.getter();
      v290 = __CocoaSet.count.getter();
      v289 = v293;
    }

    else
    {
      *(v287 + 24) = *((v286 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v288 = v396;
      v289 = specialized CanvasView.formAnalytics.getter();
      v290 = *((v286 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v291 = v289;

    if (v290)
    {
      v292 = 41;
    }

    else
    {
      v292 = 39;
    }

    *(v291 + 17) = v292;

    return;
  }

  v295 = v63;
  v64 = 0;
  v391 = v61 & 0xC000000000000001;
  v390 = v61 + 32;
  v61 = v59 & 0xC000000000000001;
  v316 = *MEMORY[0x1E69DB648];
  v312 = (a_low + 16);
  v311 = (a_low + 56);
  v315 = *MEMORY[0x1E69DB688];
  v309 = v14 + 5;
  v310 = (v16 + 40);
  v314 = *MEMORY[0x1E69DB660];
  v307 = (v397 + 40);
  v308 = (v396 + 40);
  v298 = (a_low + 40);
  v299 = (a_low + 32);
  v305 = (v398 + 40);
  v306 = (a_low + 48);
  v365 = (v4 + 16);
  v342 = (v4 + 8);
  v297 = 0x80000001D40850C0;
  v303 = (a_low + 8);
  v304 = (v4 + 56);
  v313 = xmmword_1D405FD70;
  v296 = xmmword_1D4058CF0;
  countAndFlagsBits = MEMORY[0x1E69E7CC0];
  v341 = MEMORY[0x1E69E7CC0];
  v389 = v62;
  while (1)
  {
    if (v391)
    {
      v66 = MEMORY[0x1DA6CE0C0](v64, v302);
      v67 = __OFADD__(v64, 1);
      v68 = v64 + 1;
      if (v67)
      {
        goto LABEL_135;
      }
    }

    else
    {
      if (v64 >= *(v392 + 16))
      {
        goto LABEL_136;
      }

      v66 = *(v390 + 8 * v64);
      v67 = __OFADD__(v64, 1);
      v68 = v64 + 1;
      if (v67)
      {
        goto LABEL_135;
      }
    }

    v394 = v68;
    v398 = v66;
    v69 = [v66 quad];
    if (!v69)
    {
      break;
    }

    v70 = v69;
    [v69 boundingBox];
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;

    v79 = v393;
    v80 = Canvas.editingView.getter();
    a_low = *((*MEMORY[0x1E69E7D40] & *v80) + 0x2A0);
    v399 = v79;
    (a_low)(v403);
    v396 = v403[1];
    v397 = v403[0];
    v395 = v403[2];

    *&v401.a = v397;
    *&v401.c = v396;
    *&v401.tx = v395;
    v407.origin.x = v72;
    v407.origin.y = v74;
    v407.size.width = v76;
    v407.size.height = v78;
    v408 = CGRectApplyAffineTransform(v407, &v401);
    x = v408.origin.x;
    y = v408.origin.y;
    width = v408.size.width;
    height = v408.size.height;
    if (v59 >> 62)
    {
      v85 = __CocoaSet.count.getter();
    }

    else
    {
      v85 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = 0;
    v16 = MEMORY[0x1E69E7D40];
    while (v85 != v4)
    {
      if (v61)
      {
        v86 = MEMORY[0x1DA6CE0C0](v4, v59);
      }

      else
      {
        if (v4 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_132;
        }

        v86 = *(v59 + 8 * v4 + 32);
      }

      v87 = v86;
      if (__OFADD__(v4, 1))
      {
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
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        v392 = v61 & 0xFFFFFFFFFFFFFF8;
        v62 = __CocoaSet.count.getter();
        goto LABEL_5;
      }

      v409.origin.x = (*((*v16 & *v86) + 0x170))();
      v414.origin.x = x;
      v414.origin.y = y;
      v414.size.width = width;
      v414.size.height = height;
      a_low = CGRectIntersectsRect(v409, v414);

      ++v4;
      if (a_low)
      {

        v65 = v389;
        goto LABEL_10;
      }
    }

    v88 = v398;
    v89 = [v398 autoFillContentType];
    if (v89)
    {
      v90 = v89;
      v91 = v88;
      if ([v88 regionType] == 4)
      {

        a_low = 50;
        goto LABEL_33;
      }

      v92 = v90;
    }

    else
    {
      v92 = [v88 autoFillContentType];
      if (!v92)
      {
        goto LABEL_158;
      }

      v91 = v88;
    }

    FormContentType.init(_:)(v92);
    a_low = LOBYTE(v401.a);
LABEL_33:
    [v91 suggestedLineHeight];
    *&v397 = v93;
    v94 = Canvas.editingView.getter();
    [v94 frame];
    v96 = v95;
    v98 = v97;
    v100 = v99;
    v102 = v101;

    v410.origin.x = v96;
    v410.origin.y = v98;
    v410.size.width = v100;
    v410.size.height = v102;
    v103 = CGRectGetHeight(v410);
    if (one-time initialization token for formFieldFont != -1)
    {
      v251 = v103;
      swift_once();
      v103 = v251;
    }

    v14 = [static UIConstants.formFieldFont fontWithSize_];
    v104 = [v91 children];
    if (!v104)
    {
      goto LABEL_156;
    }

    v105 = v104;
    v106 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v106 >> 62)
    {
      v107 = __CocoaSet.count.getter();
    }

    else
    {
      v107 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v107)
    {
      v400 = MEMORY[0x1E69E7CC0];
      v113 = [v398 children];
      if (!v113)
      {
        goto LABEL_162;
      }

      v114 = v113;
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v4 >> 62))
      {
        v340 = v4 & 0xFFFFFFFFFFFFFF8;
        v115 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v294 = v4;
        if (v115)
        {
          goto LABEL_47;
        }

        goto LABEL_97;
      }

      v340 = v4 & 0xFFFFFFFFFFFFFF8;
      v115 = __CocoaSet.count.getter();
      v294 = v4;
      if (!v115)
      {
LABEL_97:
        v16 = MEMORY[0x1E69E7CC0];
LABEL_98:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v341 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v341[2] + 1, 1, v341);
        }

        v65 = v389;
        v4 = v341[2];
        v252 = v341[3];
        if (v4 >= v252 >> 1)
        {
          v341 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v252 > 1), v4 + 1, 1, v341);
        }

        v253 = v341;
        v341[2] = v4 + 1;
        v253[v4 + 4] = v16;
        goto LABEL_10;
      }

LABEL_47:
      a_low = 0;
      v338 = v4 + 32;
      v339 = v4 & 0xC000000000000001;
      v16 = MEMORY[0x1E69E7CC0];
      v300 = v61;
      v301 = v14;
      v337 = v115;
      while (2)
      {
        if (v339)
        {
          v116 = MEMORY[0x1DA6CE0C0](a_low, v294);
          v67 = __OFADD__(a_low++, 1);
          if (v67)
          {
            goto LABEL_139;
          }
        }

        else
        {
          if (a_low >= *(v340 + 16))
          {
            goto LABEL_140;
          }

          v116 = *(v338 + 8 * a_low);
          v67 = __OFADD__(a_low++, 1);
          if (v67)
          {
            goto LABEL_139;
          }
        }

        v368 = a_low;
        *&v397 = v116;
        v117 = [v116 quad];
        if (!v117)
        {
          goto LABEL_157;
        }

        v118 = v117;
        [v117 boundingBox];
        v120 = v119;
        v122 = v121;
        v124 = v123;
        v126 = v125;

        v127 = Canvas.editingView.getter();
        (*((*MEMORY[0x1E69E7D40] & *v127) + 0x2A0))(v404);
        v395 = v404[1];
        v396 = v404[0];
        v369 = v404[2];

        *&v401.a = v396;
        *&v401.c = v395;
        *&v401.tx = v369;
        v411.origin.x = v120;
        v411.origin.y = v122;
        v411.size.width = v124;
        v411.size.height = v126;
        v412 = CGRectApplyAffineTransform(v411, &v401);
        v128 = v412.origin.x;
        v129 = v412.origin.y;
        v130 = v412.size.width;
        v131 = v412.size.height;
        v4 = 0;
        while (v85 != v4)
        {
          if (v61)
          {
            v132 = MEMORY[0x1DA6CE0C0](v4, v59);
          }

          else
          {
            if (v4 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_134;
            }

            v132 = *(v59 + 8 * v4 + 32);
          }

          v133 = v132;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_133;
          }

          v413.origin.x = (*((*MEMORY[0x1E69E7D40] & *v132) + 0x170))();
          v415.origin.x = v128;
          v415.origin.y = v129;
          v415.size.width = v130;
          v415.size.height = v131;
          a_low = CGRectIntersectsRect(v413, v415);

          ++v4;
          if (a_low)
          {

            goto LABEL_48;
          }
        }

        v134 = v397;
        v135 = [v397 autoFillContentType];
        if (v135)
        {
          v136 = v135;
          v137 = v134;
          if ([v134 regionType] == 4)
          {

            v138 = 50;
            goto LABEL_69;
          }

          v139 = v136;
        }

        else
        {
          v139 = [v134 autoFillContentType];
          if (!v139)
          {
            goto LABEL_161;
          }

          v137 = v134;
        }

        FormContentType.init(_:)(v139);
        v138 = LOBYTE(v401.a);
LABEL_69:
        LODWORD(countAndFlagsBits) = v138;
        v140 = v14;
        v336 = [v137 autofillNewContextStart];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
        inited = swift_initStackObject();
        *(inited + 16) = v313;
        v142 = v316;
        *(inited + 32) = v316;
        *&v396 = inited + 32;
        v143 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
        *(inited + 40) = v140;
        v144 = v315;
        *(inited + 64) = v143;
        *(inited + 72) = v144;
        v145 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
        v335 = v140;
        v146 = v142;
        v147 = v144;
        v148 = [v145 init];
        [v148 setAlignment_];
        v149 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableParagraphStyle, 0x1E69DB7C8);
        *(inited + 80) = v148;
        v150 = v314;
        *(inited + 104) = v149;
        *(inited + 112) = v150;
        *(inited + 144) = MEMORY[0x1E69E7DE0];
        *(inited + 120) = 0;
        v151 = v150;
        v152 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
        swift_arrayDestroy();
        v153 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v154 = MEMORY[0x1DA6CCED0](0, 0xE000000000000000);
        type metadata accessor for NSAttributedStringKey(0);
        _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        [v153 initWithString:v154 attributes:isa];

        MEMORY[0x1EEE9AC00](v156);
        v157 = lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
        CRAttributedString.init(_:transformAttributes:)();
        swift_storeEnumTagMultiPayload();
        v158 = type metadata accessor for Color(0);
        v159 = *(v158 + 20);
        v160 = type metadata accessor for UnknownValueProperties();
        (*(*(v160 - 8) + 56))(v384 + v159, 1, 1, v160);
        if (one-time initialization token for extendedSRGBColorSpace != -1)
        {
          swift_once();
        }

        v161 = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F51320);
        if (!v161)
        {
          goto LABEL_160;
        }

        v162 = v161;
        v333 = v157;
        object = v152;
        CGColorRef.calculateMinimumHeadroom.getter();
        v163 = CGColorCreateWithContentHeadroom();
        if (!v163)
        {
          goto LABEL_159;
        }

        v164 = v163;

        *v384 = v164;
        v165 = *(v158 - 8);
        v166 = *(v165 + 56);
        *&v369 = v165 + 56;
        v166();
        (v166)(v379, 1, 1, v158);
        v167 = v166;
        v331 = v166;
        v168 = v380;
        v169 = v378;
        (*v312)(v380, v381, v378);
        (*v311)(v168, 0, 1, v169);
        type metadata accessor for CGRect(0);
        v330 = v170;
        v329 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
        memset(&v401, 0, 32);
        CRRegister.init(wrappedValue:)();
        v171 = v386;
        v401.a = 0.0;
        *&v395 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        CRRegister.init(_:)();
        v327 = v158;
        v332 = *(v171 + 24);
        v172 = v371;
        (v167)(v371, 1, 1, v158);
        v173 = v172;
        v174 = v172;
        v175 = v346;
        outlined init with copy of Date?(v173, v346, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        *&v396 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v174, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        v328 = *(v386 + 28);
        (v331)(v174, 1, 1, v327);
        outlined init with copy of Date?(v174, v175, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v174, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        v176 = v386;
        v327 = *(v386 + 32);
        v401.a = 5.0;
        CRRegister.init(wrappedValue:)();
        v324 = *(v176 + 36);
        v177 = v376;
        swift_storeEnumTagMultiPayload();
        v325 = type metadata accessor for ShapeType;
        _s8PaperKit9ShapeTypeOWOcTm_2(v177, v345, type metadata accessor for ShapeType);
        v323 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType, &protocol conformance descriptor for ShapeType);
        CRRegister.init(wrappedValue:)();
        _s8PaperKit5ImageVWOhTm_1(v177, type metadata accessor for ShapeType);
        v178 = v386;
        v401.a = 1.0;
        CRRegister.init(wrappedValue:)();
        v179 = v178;
        v401.a = 0.0;
        LOBYTE(v401.b) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMR);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMR, MEMORY[0x1E69950E8]);
        CRRegister.init(wrappedValue:)();
        v401.a = 0.0;
        LOBYTE(v401.b) = 0;
        CRRegister.init(wrappedValue:)();
        v317 = v178[13];
        CRAttributedString.init(_:)();
        v326 = v178[14];
        v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
        v181 = *(v180 - 8);
        v182 = *(v181 + 56);
        v183 = v373;
        *&v369 = v180;
        v333 = v182;
        v331 = (v181 + 56);
        (v182)(v373, 1, 1);
        outlined init with copy of Date?(v183, v374, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
        lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
        v184 = v388;
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v183, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
        v185 = v184;
        v186 = v184 + v179[15];
        v401.a = 0.0;
        v187 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
        v326 = v186;
        v322 = v187;
        CRRegister.init(wrappedValue:)();
        v401.a = 0.0;
        lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
        CRRegister.init(wrappedValue:)();
        v321 = v179[17];
        v188 = type metadata accessor for StrokeStyle(0);
        v189 = v349;
        (*(*(v188 - 8) + 56))(v349, 1, 1, v188);
        outlined init with copy of Date?(v189, v350, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
        lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v189, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
        v321 = v179[18];
        v190 = type metadata accessor for Shadow(0);
        v191 = v352;
        (*(*(v190 - 8) + 56))(v352, 1, 1, v190);
        outlined init with copy of Date?(v191, v353, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
        lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v191, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
        memset(&v401, 0, sizeof(v401));
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd, &_s8PaperKit18ShapeAuxiliaryInfoVSgMR);
        lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        UnknownProperties.init()();
        v401.a = v128;
        v401.b = v129;
        v401.c = v130;
        v401.d = v131;
        v192 = v355;
        CRRegister.init(_:)();
        (*v310)(v185, v192, v356);
        _s8PaperKit9ShapeTypeOWOcTm_2(v382, v376, v325);
        v193 = v357;
        CRRegister.init(_:)();
        (*v309)(v185 + v324, v193, v358);
        v401.a = 5.0;
        v194 = v359;
        CRRegister.init(_:)();
        v195 = v185;
        (*v308)(v185 + v327, v194, v360);
        v196 = v371;
        outlined init with copy of Date?(v384, v371, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        v197 = v361;
        CRRegister.init(_:)();
        v198 = *v307;
        v199 = v195 + v328;
        v200 = v362;
        (*v307)(v199, v197, v362);
        outlined init with copy of Date?(v379, v196, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        CRRegister.init(_:)();
        v198(v388 + v332, v197, v200);
        v201 = v378;
        v202 = v347;
        outlined init with copy of Date?(v380, v347, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
        if ((*v306)(v202, 1, v201) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v202, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
        }

        else
        {
          v203 = v343;
          (*v299)(v343, v202, v201);
          (*v298)(v388 + v317, v203, v201);
        }

        *&v401.a = 2;
        v204 = v363;
        CRRegister.init(_:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v380, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
        outlined destroy of StocksKitCurrencyCache.Provider?(v379, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        outlined destroy of StocksKitCurrencyCache.Provider?(v384, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        _s8PaperKit5ImageVWOhTm_1(v382, type metadata accessor for ShapeType);
        (*v305)(v326, v204, v364);
        v205 = v370;
        _s8PaperKit5ShapeVWObTm_2(v388, v370, type metadata accessor for Shape);
        LOBYTE(v401.a) = countAndFlagsBits;
        Shape.formContentType.setter(&v401);
        v206 = v373;
        CRAttributedString.Attributes<>.init(nsAttributes:darkMode:)(object, 0, v373);
        v333(v206, 0, 1, v369);
        outlined init with copy of Date?(v206, v374, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
        CRRegister.wrappedValue.setter();
        outlined destroy of StocksKitCurrencyCache.Provider?(v206, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
        _s8PaperKit9ShapeTypeOWOcTm_2(v205, v344, type metadata accessor for Shape);
        static CRKeyPath.unique.getter();
        _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
        v207 = v375;
        Capsule.init(_:id:)();
        *&v396 = *v365;
        v208 = v377;
        v209 = v367;
        (v396)(v377, v207, v367);
        LOBYTE(v207) = countAndFlagsBits == 50;
        v210 = objc_allocWithZone(type metadata accessor for ShapeView(0));
        *(v210 + direct field offset for ShapeView.$__lazy_storage_$_shapeLayer) = 0;
        *(v210 + direct field offset for ShapeView.$__lazy_storage_$_endLineEndLayer) = 0;
        *(v210 + direct field offset for ShapeView.$__lazy_storage_$_startLineEndLayer) = 0;
        *(v210 + direct field offset for ShapeView.$__lazy_storage_$_groupLayer) = 0;
        v211 = direct field offset for ShapeView.showsSignaturePopover;
        *(v210 + direct field offset for ShapeView.showsSignaturePopover) = 0;
        v212 = direct field offset for ShapeView.analytics_inputSource;
        *(v210 + direct field offset for ShapeView.analytics_inputSource) = 68;
        v213 = direct field offset for ShapeView.analytics_documentType;
        *(v210 + direct field offset for ShapeView.analytics_documentType) = 68;
        *(v210 + direct field offset for ShapeView._textBoxView) = 0;
        *(v210 + direct field offset for ShapeView.appearanceStreamView) = 0;
        *(v210 + v211) = v207;
        *(v210 + v212) = 9;
        *(v210 + v213) = 5;
        v214 = v396;
        (v396)(v366, v208, v209);
        v215 = MEMORY[0x1E69E7D40];
        v216 = v209;
        (*v304)(v210 + *((*MEMORY[0x1E69E7D40] & *v210) + 0x3F8), 1, 1, v209);
        *(v210 + *((*v215 & *v210) + 0x400)) = 0;
        *(v210 + *((*v215 & *v210) + 0x408)) = 0;
        *(v210 + *((*v215 & *v210) + 0x410)) = 0;
        *(v210 + *((*v215 & *v210) + 0x418)) = 0;
        *(v210 + *((*v215 & *v210) + 0x420)) = 0;
        v217 = v366;
        v214(v210 + *((*v215 & *v210) + 0x3F0), v366, v216);
        *&v369 = v399;
        v218 = AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(v319, 0, 0.0, 0.0, 0.0, 0.0);
        specialized CanvasElementView.setupAccessibility()();
        v219 = MEMORY[0x1E69E7D40];
        (*((*MEMORY[0x1E69E7D40] & *v218) + 0x520))();
        *&v395 = *v342;
        v220 = v217;
        v221 = v367;
        (v395)(v220, v367);
        v222 = v218;
        specialized AppearanceStreamViewSupport.setupAppearanceStreamIfNeeded()();
        v223 = *((*v219 & *v222) + 0x3F0);
        v224 = v222;
        swift_beginAccess();
        v225 = v222 + v223;
        v226 = v366;
        v227 = v221;
        (v396)(v366, v225, v221);
        v228 = v226;
        LOBYTE(v226) = specialized Capsule<>.isTextBox.getter();

        v229 = v228;
        v230 = v395;
        (v395)(v229, v227);
        v61 = v300;
        if (v226)
        {
          v231 = v367;
          v232 = v336;
          v233 = v335;
        }

        else
        {
          [v224 setIsAccessibilityElement_];
          *&v396 = v224;
          if (one-time initialization token for paperKitBundle != -1)
          {
            swift_once();
          }

          v406._object = v297;
          v234._countAndFlagsBits = 0x4025206570616853;
          v234._object = 0xE800000000000000;
          v235.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v235.value._object = 0xEB00000000656C62;
          v236._countAndFlagsBits = 0;
          v236._object = 0xE000000000000000;
          v406._countAndFlagsBits = 0xD00000000000005FLL;
          v237 = NSLocalizedString(_:tableName:bundle:value:comment:)(v234, v235, paperKitBundle, v236, v406);
          countAndFlagsBits = v237._countAndFlagsBits;
          object = v237._object;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v238 = swift_allocObject();
          *(v238 + 16) = v296;
          swift_getKeyPath();
          v239 = v376;
          v231 = v367;
          Capsule.subscript.getter();

          ShapeType.any.getter(&v401);
          _s8PaperKit5ImageVWOhTm_1(v239, type metadata accessor for ShapeType);
          d = v401.d;
          tx = v401.tx;
          __swift_project_boxed_opaque_existential_1(&v401, *&v401.d);
          v242 = (*(*&tx + 48))(COERCE_CGFLOAT(*&d), COERCE_CGFLOAT(*&tx));
          v244 = v243;
          *(v238 + 56) = MEMORY[0x1E69E6158];
          *(v238 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v238 + 32) = v242;
          *(v238 + 40) = v244;
          __swift_destroy_boxed_opaque_existential_0(&v401);
          v245 = static String.localizedStringWithFormat(_:_:)();
          v247 = v246;

          v233 = MEMORY[0x1DA6CCED0](v245, v247);

          v224 = v396;
          [v396 setAccessibilityLabel_];

          v230 = v395;
          v232 = v336;
        }

        v230(v377, v231);
        v230(v375, v231);
        _s8PaperKit5ImageVWOhTm_1(v370, type metadata accessor for Shape);
        (*v303)(v381, v378);
        *(v224 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDetectedFormField) = 1;
        *(v224 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_startsNewAutofillContext) = v232;
        v248 = v224;
        MEMORY[0x1DA6CD190]();
        v14 = v301;
        if (*((v402 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v402 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        countAndFlagsBits = v402;
        v4 = v248;
        MEMORY[0x1DA6CD190]();
        if (*((v400 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v400 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v16 = v400;
        if (one-time initialization token for manager != -1)
        {
          swift_once();
        }

        v249 = Canvas.editingView.getter();
        v250 = (*((*MEMORY[0x1E69E7D40] & *v249) + 0x90))();

        specialized FormAnalytics.addFielde2eEvent(canvas:)(v250);
LABEL_48:
        a_low = v368;
        if (v368 == v337)
        {
          goto LABEL_98;
        }

        continue;
      }
    }

    LOBYTE(v401.a) = a_low;
    v4 = v14;
    v108 = v398;
    v109 = [v398 maxCharacterCount];
    v110 = [v108 autofillNewContextStart];
    v111 = specialized static FormFillingView.createFormFieldView(canvas:frame:text:font:alignment:textContentType:maxCharacterCount:detectedFormField:startsNewAutofillContext:analytics_inputSource:analytics_documentType:)(v399, 0, 0, v14, 0, 1, &v401, v109, x, y, width, height, 1u, v110, 9u, 5u);

    a_low = v111;
    MEMORY[0x1DA6CD190]();
    if (*((v402 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v402 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v16 = MEMORY[0x1E69E7D40];
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    countAndFlagsBits = v402;
    v65 = v389;
    if (one-time initialization token for manager != -1)
    {
      swift_once();
    }

    v14 = v399;
    v112 = Canvas.editingView.getter();

    v16 = (*((*v16 & *v112) + 0x90))();
    specialized FormAnalytics.addFielde2eEvent(canvas:)(v16);

LABEL_10:
    v64 = v394;
    if (v394 == v65)
    {
      goto LABEL_107;
    }
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
}

void @objc CanvasElementViewController.toolPickerSelectedToolDidChange(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CanvasElementViewController.toolPickerSelectedToolDidChange(_:)(v4);
}

void CanvasElementViewController.drawingPolicy.setter(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (v4)
  {
    v5 = v4;
    a2(a1);
  }
}

void @objc CanvasElementViewController.toolPickerSelectedToolItemDidChange(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CanvasElementViewController.toolPickerSelectedToolItemDidChange(_:)(v4);
}

void @objc CanvasElementViewController.toolPickerIsRulerActiveDidChange(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CanvasElementViewController.toolPickerIsRulerActiveDidChange(_:)(v4);
}

id CanvasElementViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1DA6CCED0](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void @objc CanvasElementViewController.init(nibName:bundle:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  specialized CanvasElementViewController.init(nibName:bundle:)();
}

void key path setter for CanvasView<>.alwaysUseMaxResolutionImage : CanvasView<Image>(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + direct field offset for Canvas.paperView);
  v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x668);
  v5 = v3;
  v4(v2);
}

void CanvasView<>.alwaysUseMaxResolutionImage.setter(uint64_t a1)
{
  v3 = *(v1 + direct field offset for Canvas.paperView);
  v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x668);
  v5 = v3;
  v4(a1);
}

void (*CanvasView<>.alwaysUseMaxResolutionImage.modify(uint64_t a1))(uint64_t a1)
{
  v2 = direct field offset for Canvas.paperView;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = (*((*MEMORY[0x1E69E7D40] & **(v1 + v2)) + 0x660))() & 1;
  return CanvasView<>.alwaysUseMaxResolutionImage.modify;
}

void CanvasView<>.alwaysUseMaxResolutionImage.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*a1 + *(a1 + 8));
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x668);
  v4 = v2;
  v3(v1);
}

uint64_t CanvasElementViewController<>.imageDescription.getter()
{
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + direct field offset for CanvasElementViewController._canvasView);
  if (v1)
  {
    v2 = *&v1[direct field offset for Canvas._canvasElementController];
    v3 = v2;
    if (v2)
    {
LABEL_3:
      v4 = &v3[OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 1);
        ObjectType = swift_getObjectType();
        v7 = *(v5 + 8);
        v8 = v2;
        v9 = v7(ObjectType, v5);
        v10 = swift_unknownObjectRelease();
        if (v9)
        {
          v11 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x5A0))(v10);

          return v11;
        }
      }

      else
      {
        v19 = v2;
      }

      return 0;
    }

    v13 = *&v1[direct field offset for CanvasView.canvasTiledView];
    if (v13)
    {
      v14 = swift_getObjectType();
      result = swift_conformsToProtocol2();
      if (!result)
      {
        return result;
      }

      v15 = *(result + 48);
      v16 = result;
      v17 = v1;
      v18 = v13;
      v3 = v15(v14, v16);

      goto LABEL_3;
    }
  }

  return 0;
}

double CanvasElementViewController<>.imageDescription.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v2 + direct field offset for CanvasElementViewController._canvasView);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = *&v5[direct field offset for Canvas._canvasElementController];
  v7 = v6;
  if (!v6)
  {
    v15 = *&v5[direct field offset for CanvasView.canvasTiledView];
    if (!v15)
    {
      goto LABEL_11;
    }

    ObjectType = swift_getObjectType();
    v17 = swift_conformsToProtocol2();
    if (!v17)
    {
      goto LABEL_11;
    }

    v18 = *(v17 + 48);
    v19 = v17;
    v20 = v5;
    v21 = v15;
    v7 = v18(ObjectType, v19);
  }

  v8 = &v7[OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    v10 = swift_getObjectType();
    v11 = *(v9 + 8);
    v12 = v6;
    v13 = v11(v10, v9);
    swift_unknownObjectRelease();
    if (v13)
    {
      (*((*MEMORY[0x1E69E7D40] & *v13) + 0x5A8))(a1, a2);

      return result;
    }
  }

  else
  {
    v22 = v6;
  }

LABEL_11:

  return result;
}

void (*CanvasElementViewController<>.imageDescription.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CanvasElementViewController<>.imageDescription.getter();
  a1[1] = v3;
  return CanvasElementViewController<>.imageDescription.modify;
}

uint64_t CanvasElementViewController<>.imageCaption.getter()
{
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + direct field offset for CanvasElementViewController._canvasView);
  if (v1)
  {
    v2 = *&v1[direct field offset for Canvas._canvasElementController];
    v3 = v2;
    if (v2)
    {
LABEL_3:
      v4 = &v3[OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 1);
        ObjectType = swift_getObjectType();
        v7 = *(v5 + 8);
        v8 = v2;
        v9 = v7(ObjectType, v5);
        v10 = swift_unknownObjectRelease();
        if (v9)
        {
          v11 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x5B8))(v10);

          return v11;
        }
      }

      else
      {
        v19 = v2;
      }

      return 0;
    }

    v13 = *&v1[direct field offset for CanvasView.canvasTiledView];
    if (v13)
    {
      v14 = swift_getObjectType();
      result = swift_conformsToProtocol2();
      if (!result)
      {
        return result;
      }

      v15 = *(result + 48);
      v16 = result;
      v17 = v1;
      v18 = v13;
      v3 = v15(v14, v16);

      goto LABEL_3;
    }
  }

  return 0;
}

double CanvasElementViewController<>.imageCaption.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v2 + direct field offset for CanvasElementViewController._canvasView);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = *&v5[direct field offset for Canvas._canvasElementController];
  v7 = v6;
  if (!v6)
  {
    v15 = *&v5[direct field offset for CanvasView.canvasTiledView];
    if (!v15)
    {
      goto LABEL_11;
    }

    ObjectType = swift_getObjectType();
    v17 = swift_conformsToProtocol2();
    if (!v17)
    {
      goto LABEL_11;
    }

    v18 = *(v17 + 48);
    v19 = v17;
    v20 = v5;
    v21 = v15;
    v7 = v18(ObjectType, v19);
  }

  v8 = &v7[OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    v10 = swift_getObjectType();
    v11 = *(v9 + 8);
    v12 = v6;
    v13 = v11(v10, v9);
    swift_unknownObjectRelease();
    if (v13)
    {
      (*((*MEMORY[0x1E69E7D40] & *v13) + 0x5C0))(a1, a2);

      return result;
    }
  }

  else
  {
    v22 = v6;
  }

LABEL_11:

  return result;
}

void (*CanvasElementViewController<>.imageCaption.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = CanvasElementViewController<>.imageCaption.getter();
  a1[1] = v3;
  return CanvasElementViewController<>.imageCaption.modify;
}

void CanvasElementViewController<>.imageDescription.modify(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {

    a3(v5, v4);
  }

  else
  {
    a3(*a1, v4);
  }
}

uint64_t CanvasElementViewController<>.imageSize()()
{
  v1[12] = v0;
  v2 = type metadata accessor for CRKeyPath();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = type metadata accessor for Image(0);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  v1[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGSgMd, &_s9Coherence3RefVy8PaperKit5ImageVGSgMR);
  v1[20] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGMd, &_s9Coherence3RefVy8PaperKit5ImageVGMR);
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[29] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[30] = v6;
  v1[31] = v5;

  return MEMORY[0x1EEE6DFA0](CanvasElementViewController<>.imageSize(), v6, v5);
}

{
  v1 = v0[16];
  v2 = v0[12];
  v3 = swift_task_alloc();
  *v3 = v1;
  v4 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  v3[1] = v4;
  v3[2] = &protocol witness table for Image;
  swift_getKeyPath();

  v0[8] = v2;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = (v2 + direct field offset for CanvasElementViewController.__imageSize);
  if (*(v2 + direct field offset for CanvasElementViewController.__imageSize) != 0.0 || v5[1] != 0.0)
  {
    v29 = v0[16];
    v30 = v0[12];

    v31 = swift_task_alloc();
    *v31 = v29;
    v31[1] = v4;
    v31[2] = &protocol witness table for Image;
    swift_getKeyPath();

    v0[9] = v30;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v32 = *v5;
    v33 = *(v5 + 1);
LABEL_13:

    v37 = v0[1];
    v38.n128_f64[0] = v32;
    v39.n128_u64[0] = v33;

    return v37(v38, v39);
  }

  v6 = v0[16];
  v7 = v0[12];
  v8 = swift_task_alloc();
  *v8 = v6;
  v8[1] = v4;
  v8[2] = &protocol witness table for Image;
  swift_getKeyPath();

  v0[10] = v7;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v55 = v7;
  v9 = *(v7 + direct field offset for CanvasElementViewController._canvasView);
  if (!v9)
  {

LABEL_12:
    v32 = 0.0;
    v33 = 0;
    goto LABEL_13;
  }

  v10 = v0[27];
  v12 = v0[24];
  v11 = v0[25];
  v48 = v0[28];
  v49 = v0[16];
  v50 = v0[12];
  v52 = direct field offset for CanvasElementViewController._canvasView;
  v13 = *(v9 + direct field offset for Canvas.paperView);
  v54 = v4;
  v14 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x3F0);
  swift_beginAccess();
  v47 = *(v11 + 16);
  v47(v10, &v13[v14], v12);
  (*(v11 + 32))(v48, v10, v12);
  v15 = swift_task_alloc();
  *v15 = v49;
  v15[1] = v54;
  v15[2] = &protocol witness table for Image;
  swift_getKeyPath();

  v0[11] = v50;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v55 + v52);
  if (!v16)
  {
    v34 = v0[28];
    v35 = v0[24];
    v36 = v0[25];

    (*(v36 + 8))(v34, v35);
    goto LABEL_10;
  }

  v17 = v0[25];
  v18 = v0[26];
  v19 = v0[24];
  v20 = v0[18];
  v56 = v0[19];
  v21 = v0[15];
  v22 = v0[14];
  v51 = v0[16];
  v53 = v0[13];
  v23 = *(v16 + direct field offset for Canvas.paperView);
  v24 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x3F0);
  swift_beginAccess();
  v47(v18, &v23[v24], v19);
  Capsule.root.getter();
  Capsule.rootID.getter();
  off_1F4F5EE70(v21, v51);
  (*(v22 + 8))(v21, v53);
  _s8PaperKit5ImageVWOhTm_1(v20, type metadata accessor for Image);
  v25 = *(v17 + 8);
  v0[32] = v25;
  v0[33] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v18, v19);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v56, 1, v26) == 1)
  {
    v28 = v0[19];
    v25(v0[28], v0[24]);

    outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
LABEL_10:
    (*(v0[22] + 56))(v0[20], 1, 1, v0[21]);
LABEL_11:
    outlined destroy of StocksKitCurrencyCache.Provider?(v0[20], &_s9Coherence3RefVy8PaperKit5ImageVGSgMd, &_s9Coherence3RefVy8PaperKit5ImageVGSgMR);
    goto LABEL_12;
  }

  v41 = v0[21];
  v42 = v0[22];
  v43 = v0[19];
  v44 = v0[20];
  SharedTagged_10.tagged2.getter();
  (*(v27 + 8))(v43, v26);
  if ((*(v42 + 48))(v44, 1, v41) == 1)
  {
    v25(v0[28], v0[24]);

    goto LABEL_11;
  }

  (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
  Ref.subscript.getter();
  v45 = swift_task_alloc();
  v0[34] = v45;
  *v45 = v0;
  v45[1] = CanvasElementViewController<>.imageSize();
  v46 = v0[17];

  return closure #1 in Image.imageSize(applyingCrop:)(v46);
}

{
  _s8PaperKit5ImageVWOhTm_1(v0[17], type metadata accessor for Image);
  v1 = v0[30];
  v2 = v0[31];

  return MEMORY[0x1EEE6DFA0](CanvasElementViewController<>.imageSize(), v1, v2);
}

{
  v1 = v0[32];
  v2 = v0[28];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v6 = v0[22];

  (*(v6 + 8))(v4, v5);
  v1(v2, v3);
  v8 = v0[35];
  v7 = v0[36];

  v9 = v0[1];
  v10.n128_u64[0] = v7;
  v11.n128_u64[0] = v8;

  return v9(v10, v11);
}

{
  v1 = v0[32];
  v2 = v0[28];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v6 = v0[22];

  (*(v6 + 8))(v4, v5);
  v1(v2, v3);

  v7 = v0[1];
  v8.n128_u64[0] = 0;
  v9.n128_u64[0] = 0;

  return v7(v8, v9);
}

uint64_t CanvasElementViewController<>.imageSize()(double a1, double a2)
{
  v6 = *v3;

  if (v2)
  {
    v7 = *(v6 + 136);

    _s8PaperKit5ImageVWOhTm_1(v7, type metadata accessor for Image);
    v8 = *(v6 + 240);
    v9 = *(v6 + 248);
    v10 = CanvasElementViewController<>.imageSize();
  }

  else
  {
    *(v6 + 280) = a2;
    *(v6 + 288) = a1;
    v10 = CanvasElementViewController<>.imageSize();
    v8 = 0;
    v9 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t CanvasElementViewController<>.alwaysUseMaxResolutionImage.getter()
{
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + direct field offset for CanvasElementViewController._canvasView);
  if (v2)
  {
    v3 = (*((*MEMORY[0x1E69E7D40] & **(v2 + direct field offset for Canvas.paperView)) + 0x660))(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void CanvasElementViewController<>.alwaysUseMaxResolutionImage.setter(char a1)
{
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + direct field offset for CanvasElementViewController._canvasView);
  if (v3)
  {
    v4 = *&v3[direct field offset for Canvas.paperView];
    v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x668);
    v6 = v3;
    v7 = v4;
    v5(a1 & 1);
  }
}

void (*CanvasElementViewController<>.alwaysUseMaxResolutionImage.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  MEMORY[0x1EEE9AC00](v3);
  *(v4 + 16) = type metadata accessor for Image(0);
  *(v4 + 24) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  swift_getKeyPath();
  *(v4 + 32) = direct field offset for CanvasElementViewController._$observationRegistrar;
  *v4 = v1;
  *(v4 + 40) = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = direct field offset for CanvasElementViewController._canvasView;
  *(v4 + 48) = direct field offset for CanvasElementViewController._canvasView;
  v7 = *(v1 + v6);
  if (v7)
  {
    v8 = (*((*MEMORY[0x1E69E7D40] & **(v7 + direct field offset for Canvas.paperView)) + 0x660))(v5);
  }

  else
  {
    v8 = 0;
  }

  *(v4 + 56) = v8 & 1;
  return CanvasElementViewController<>.alwaysUseMaxResolutionImage.modify;
}

void CanvasElementViewController<>.alwaysUseMaxResolutionImage.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  swift_getKeyPath();
  v3 = v1[6];
  v4 = v1[1];
  *v1 = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + v3);
  if (v5)
  {
    v6 = *&v5[direct field offset for Canvas.paperView];
    v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x668);
    v8 = v5;
    v9 = v6;
    v7(v2);
  }

  free(v1);
}

void CanvasElementViewController<>.updateImageZoomScale(in:animated:zoomable:)(char a1, char a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  type metadata accessor for MainActor();
  v13 = v4;
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = v13;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  *(v15 + 56) = a1;
  *(v15 + 57) = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in CanvasElementViewController<>.updateImageZoomScale(in:animated:zoomable:), v15);
}

uint64_t closure #1 in CanvasElementViewController<>.updateImageZoomScale(in:animated:zoomable:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v8[2] = type metadata accessor for MainActor();
  v8[3] = static MainActor.shared.getter();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = closure #2 in PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:);

  return CanvasElementViewController<>.updateImageZoomScale(in:animated:zoomable:)(a7, a8, a1, a2);
}

BOOL specialized closure #1 in CanvasElementView.setupAccessibility()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
  v5 = v4 != 0;
  if (v4)
  {
    v6 = v4;
    v7 = MEMORY[0x1EEE9AC00](v4);
    (*((*v3 & *v8) + 0x6E8))(0, 0, partial apply for specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility(), v7);
    v9 = *MEMORY[0x1E69DD888];
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v24._object = 0x80000001D408B0B0;
    v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v10.value._object = 0xEB00000000656C62;
    v11._object = 0x80000001D408B090;
    v24._countAndFlagsBits = 0xD000000000000040;
    v11._countAndFlagsBits = 0xD000000000000016;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, paperKitBundle, v12, v24);
    (*((*v3 & *v2) + 0x2A0))(v23, v13._countAndFlagsBits, v13._object);
    CGAffineTransform.decompose(initialRotation:)(v21, 0.0);
    v14 = v22 / 3.14159265 * 180.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D4058CF0;
    *(v15 + 56) = MEMORY[0x1E69E7DE0];
    *(v15 + 64) = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    *(v15 + 32) = v14;
    v16 = static String.localizedStringWithFormat(_:_:)();
    v18 = v17;

    v19 = MEMORY[0x1DA6CCED0](v16, v18);

    UIAccessibilityPostNotification(v9, v19);

    v2 = v6;
  }

  return v5;
}

BOOL specialized closure #1 in CanvasElementView.setupAccessibility()(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  v7 = MEMORY[0x1E69E7D40];
  v8 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
  v9 = v8 != 0;
  if (v8)
  {
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = *v7 & *v11;
    v13 = v11;
    (*(v12 + 1768))(0, 0, a2, v10);
    v14 = *MEMORY[0x1E69DD888];
    v15 = a3(0);
    v16 = MEMORY[0x1DA6CCED0](v15);

    UIAccessibilityPostNotification(v14, v16);

    v6 = v13;
  }

  return v9;
}

uint64_t specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()(char *a1, void *a2, double a3)
{
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v39 = v9;
  v10(v8, &a1[v9], v5);
  v38 = v6 + 16;
  v46 = type metadata accessor for TextBox(0);
  v11 = v46;
  v41 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox, &protocol conformance descriptor for TextBox);
  v47 = v41;
  v48 = &protocol witness table for TextBox;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v40 = *(v6 + 8);
  v40(v8, v5);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v52.origin.x = t1.a;
  v52.origin.y = t1.b;
  v52.size.width = t1.c;
  v52.size.height = t1.d;
  MidX = CGRectGetMidX(v52);
  v53.origin.x = a;
  v53.origin.y = b;
  v53.size.width = c;
  v53.size.height = d;
  MidY = CGRectGetMidY(v53);
  CGAffineTransformMakeRotation(&t1, a3 * 3.14159265 / 180.0);
  tx = t1.tx;
  ty = t1.ty;
  v37 = *&t1.a;
  v36 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v20 = t1.a;
  v21 = t1.b;
  v22 = t1.c;
  v23 = t1.d;
  v24 = t1.tx;
  v25 = t1.ty;
  *&t2.c = v36;
  *&t2.a = v37;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v26 = v49.tx;
  v27 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  t1.a = v20;
  t1.b = v21;
  t1.c = v22;
  t1.d = v23;
  t1.tx = v24;
  t1.ty = v25;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v37;
  *&t1.c = v36;
  t1.tx = v26;
  t1.ty = v27;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v28 = v49.tx;
  v29 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  v10(v8, &a1[v9], v5);
  v30 = v11;
  v43 = v11;
  v31 = v41;
  v44 = v41;
  v45 = &protocol witness table for TextBox;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v32 = v40;
  v40(v8, v5);
  t2 = t1;
  *&v49.c = v36;
  *&v49.a = v37;
  v49.tx = v28;
  v49.ty = v29;
  CGAffineTransformConcat(&t1, &t2, &v49);
  specialized CanvasElementView.modelCoordinateSpace.setter(&t1);
  v10(v8, &a1[v39], v5);
  LOBYTE(t2.a) = 3;
  v33 = v42;
  v34 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v42) + 0x7D8))(v8, &t2, v30, v31);
  LOBYTE(t2.a) = 3;
  (*((*v34 & *v33) + 0x7B0))(&t2);
  return v32(v8, v5);
}

{
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMd, _s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v39 = v9;
  v10(v8, &a1[v9], v5);
  v38 = v6 + 16;
  v46 = type metadata accessor for LoupeElement(0);
  v11 = v46;
  v41 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type LoupeElement and conformance LoupeElement, type metadata accessor for LoupeElement, &protocol conformance descriptor for LoupeElement);
  v47 = v41;
  v48 = &protocol witness table for LoupeElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v40 = *(v6 + 8);
  v40(v8, v5);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v52.origin.x = t1.a;
  v52.origin.y = t1.b;
  v52.size.width = t1.c;
  v52.size.height = t1.d;
  MidX = CGRectGetMidX(v52);
  v53.origin.x = a;
  v53.origin.y = b;
  v53.size.width = c;
  v53.size.height = d;
  MidY = CGRectGetMidY(v53);
  CGAffineTransformMakeRotation(&t1, a3 * 3.14159265 / 180.0);
  tx = t1.tx;
  ty = t1.ty;
  v37 = *&t1.a;
  v36 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v20 = t1.a;
  v21 = t1.b;
  v22 = t1.c;
  v23 = t1.d;
  v24 = t1.tx;
  v25 = t1.ty;
  *&t2.c = v36;
  *&t2.a = v37;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v26 = v49.tx;
  v27 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  t1.a = v20;
  t1.b = v21;
  t1.c = v22;
  t1.d = v23;
  t1.tx = v24;
  t1.ty = v25;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v37;
  *&t1.c = v36;
  t1.tx = v26;
  t1.ty = v27;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v28 = v49.tx;
  v29 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  v10(v8, &a1[v9], v5);
  v30 = v11;
  v43 = v11;
  v31 = v41;
  v44 = v41;
  v45 = &protocol witness table for LoupeElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v32 = v40;
  v40(v8, v5);
  t2 = t1;
  *&v49.c = v36;
  *&v49.a = v37;
  v49.tx = v28;
  v49.ty = v29;
  CGAffineTransformConcat(&t1, &t2, &v49);
  specialized CanvasElementView.modelCoordinateSpace.setter(&t1);
  v10(v8, &a1[v39], v5);
  LOBYTE(t2.a) = 3;
  v33 = v42;
  v34 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v42) + 0x7D8))(v8, &t2, v30, v31);
  LOBYTE(t2.a) = 3;
  (*((*v34 & *v33) + 0x7B0))(&t2);
  return v32(v8, v5);
}

{
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v39 = v9;
  v10(v8, &a1[v9], v5);
  v38 = v6 + 16;
  v46 = type metadata accessor for Image(0);
  v11 = v46;
  v41 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  v47 = v41;
  v48 = &protocol witness table for Image;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v40 = *(v6 + 8);
  v40(v8, v5);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v52.origin.x = t1.a;
  v52.origin.y = t1.b;
  v52.size.width = t1.c;
  v52.size.height = t1.d;
  MidX = CGRectGetMidX(v52);
  v53.origin.x = a;
  v53.origin.y = b;
  v53.size.width = c;
  v53.size.height = d;
  MidY = CGRectGetMidY(v53);
  CGAffineTransformMakeRotation(&t1, a3 * 3.14159265 / 180.0);
  tx = t1.tx;
  ty = t1.ty;
  v37 = *&t1.a;
  v36 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v20 = t1.a;
  v21 = t1.b;
  v22 = t1.c;
  v23 = t1.d;
  v24 = t1.tx;
  v25 = t1.ty;
  *&t2.c = v36;
  *&t2.a = v37;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v26 = v49.tx;
  v27 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  t1.a = v20;
  t1.b = v21;
  t1.c = v22;
  t1.d = v23;
  t1.tx = v24;
  t1.ty = v25;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v37;
  *&t1.c = v36;
  t1.tx = v26;
  t1.ty = v27;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v28 = v49.tx;
  v29 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  v10(v8, &a1[v9], v5);
  v30 = v11;
  v43 = v11;
  v31 = v41;
  v44 = v41;
  v45 = &protocol witness table for Image;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v32 = v40;
  v40(v8, v5);
  t2 = t1;
  *&v49.c = v36;
  *&v49.a = v37;
  v49.tx = v28;
  v49.ty = v29;
  CGAffineTransformConcat(&t1, &t2, &v49);
  specialized CanvasElementView.modelCoordinateSpace.setter(&t1);
  v10(v8, &a1[v39], v5);
  LOBYTE(t2.a) = 3;
  v33 = v42;
  v34 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v42) + 0x7D8))(v8, &t2, v30, v31);
  LOBYTE(t2.a) = 3;
  (*((*v34 & *v33) + 0x7B0))(&t2);
  return v32(v8, v5);
}

{
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd, &_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v39 = v9;
  v10(v8, &a1[v9], v5);
  v38 = v6 + 16;
  v46 = type metadata accessor for GraphElement(0);
  v11 = v46;
  v41 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement, &protocol conformance descriptor for GraphElement);
  v47 = v41;
  v48 = &protocol witness table for GraphElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v40 = *(v6 + 8);
  v40(v8, v5);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v52.origin.x = t1.a;
  v52.origin.y = t1.b;
  v52.size.width = t1.c;
  v52.size.height = t1.d;
  MidX = CGRectGetMidX(v52);
  v53.origin.x = a;
  v53.origin.y = b;
  v53.size.width = c;
  v53.size.height = d;
  MidY = CGRectGetMidY(v53);
  CGAffineTransformMakeRotation(&t1, a3 * 3.14159265 / 180.0);
  tx = t1.tx;
  ty = t1.ty;
  v37 = *&t1.a;
  v36 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v20 = t1.a;
  v21 = t1.b;
  v22 = t1.c;
  v23 = t1.d;
  v24 = t1.tx;
  v25 = t1.ty;
  *&t2.c = v36;
  *&t2.a = v37;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v26 = v49.tx;
  v27 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  t1.a = v20;
  t1.b = v21;
  t1.c = v22;
  t1.d = v23;
  t1.tx = v24;
  t1.ty = v25;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v37;
  *&t1.c = v36;
  t1.tx = v26;
  t1.ty = v27;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v28 = v49.tx;
  v29 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  v10(v8, &a1[v9], v5);
  v30 = v11;
  v43 = v11;
  v31 = v41;
  v44 = v41;
  v45 = &protocol witness table for GraphElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v32 = v40;
  v40(v8, v5);
  t2 = t1;
  *&v49.c = v36;
  *&v49.a = v37;
  v49.tx = v28;
  v49.ty = v29;
  CGAffineTransformConcat(&t1, &t2, &v49);
  specialized CanvasElementView.modelCoordinateSpace.setter(&t1);
  v10(v8, &a1[v39], v5);
  LOBYTE(t2.a) = 3;
  v33 = v42;
  v34 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v42) + 0x7D8))(v8, &t2, v30, v31);
  LOBYTE(t2.a) = 3;
  (*((*v34 & *v33) + 0x7B0))(&t2);
  return v32(v8, v5);
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - v8;
  v10 = MEMORY[0x1E69E7D40];
  v43 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  v11 = v43;
  swift_beginAccess();
  v42 = *(v7 + 16);
  v42(v9, &a1[v11], v6);
  v44 = type metadata accessor for Shape(0);
  v45 = v44;
  v41 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
  v46 = v41;
  v47 = &protocol witness table for Shape;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v40 = *(v7 + 8);
  v40(v9, v6);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v52.origin.x = t1.a;
  v52.origin.y = t1.b;
  v52.size.width = t1.c;
  v52.size.height = t1.d;
  MidX = CGRectGetMidX(v52);
  v53.origin.x = a;
  v53.origin.y = b;
  v53.size.width = c;
  v53.size.height = d;
  MidY = CGRectGetMidY(v53);
  CGAffineTransformMakeRotation(&t1, a3 * 3.14159265 / 180.0);
  tx = t1.tx;
  ty = t1.ty;
  v39 = *&t1.a;
  v38 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v20 = t1.a;
  v21 = t1.b;
  v22 = t1.c;
  v23 = t1.d;
  v24 = t1.tx;
  v25 = t1.ty;
  *&t2.c = v38;
  *&t2.a = v39;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v26 = v49.tx;
  v27 = v49.ty;
  v39 = *&v49.a;
  v38 = *&v49.c;
  t1.a = v20;
  t1.b = v21;
  t1.c = v22;
  t1.d = v23;
  t1.tx = v24;
  t1.ty = v25;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v39;
  *&t1.c = v38;
  t1.tx = v26;
  t1.ty = v27;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v28 = v49.tx;
  v29 = v49.ty;
  v39 = *&v49.a;
  v38 = *&v49.c;
  v30 = (*((*v10 & *a1) + 0x2B0))(v48);
  v32 = v31;
  v33 = v31[1];
  v34 = v31[2];
  *&t1.a = *v31;
  *&t1.c = v33;
  *&t1.tx = v34;
  *&t2.c = v38;
  *&t2.a = v39;
  t2.tx = v28;
  t2.ty = v29;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v35 = *&v49.c;
  v36 = *&v49.tx;
  *v32 = *&v49.a;
  v32[1] = v35;
  v32[2] = v36;
  v30(v48, 0);
  v42(v9, &a1[v43], v6);
  LOBYTE(t1.a) = 3;
  (*((*v10 & *a2) + 0x7D8))(v9, &t1, v44, v41);
  LOBYTE(t1.a) = 3;
  (*((*v10 & *a2) + 0x7B0))(&t1);
  return (v40)(v9, v6);
}

{
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd, &_s9Coherence7CapsuleVy8PaperKit4LinkVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v39 = v9;
  v10(v8, &a1[v9], v5);
  v38 = v6 + 16;
  v46 = type metadata accessor for Link(0);
  v11 = v46;
  v41 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Link and conformance Link, type metadata accessor for Link, &protocol conformance descriptor for Link);
  v47 = v41;
  v48 = &protocol witness table for Link;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v40 = *(v6 + 8);
  v40(v8, v5);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v52.origin.x = t1.a;
  v52.origin.y = t1.b;
  v52.size.width = t1.c;
  v52.size.height = t1.d;
  MidX = CGRectGetMidX(v52);
  v53.origin.x = a;
  v53.origin.y = b;
  v53.size.width = c;
  v53.size.height = d;
  MidY = CGRectGetMidY(v53);
  CGAffineTransformMakeRotation(&t1, a3 * 3.14159265 / 180.0);
  tx = t1.tx;
  ty = t1.ty;
  v37 = *&t1.a;
  v36 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v20 = t1.a;
  v21 = t1.b;
  v22 = t1.c;
  v23 = t1.d;
  v24 = t1.tx;
  v25 = t1.ty;
  *&t2.c = v36;
  *&t2.a = v37;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v26 = v49.tx;
  v27 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  t1.a = v20;
  t1.b = v21;
  t1.c = v22;
  t1.d = v23;
  t1.tx = v24;
  t1.ty = v25;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v37;
  *&t1.c = v36;
  t1.tx = v26;
  t1.ty = v27;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v28 = v49.tx;
  v29 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  v10(v8, &a1[v9], v5);
  v30 = v11;
  v43 = v11;
  v31 = v41;
  v44 = v41;
  v45 = &protocol witness table for Link;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v32 = v40;
  v40(v8, v5);
  t2 = t1;
  *&v49.c = v36;
  *&v49.a = v37;
  v49.tx = v28;
  v49.ty = v29;
  CGAffineTransformConcat(&t1, &t2, &v49);
  specialized CanvasElementView.modelCoordinateSpace.setter(&t1);
  v10(v8, &a1[v39], v5);
  LOBYTE(t2.a) = 3;
  v33 = v42;
  v34 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v42) + 0x7D8))(v8, &t2, v30, v31);
  LOBYTE(t2.a) = 3;
  (*((*v34 & *v33) + 0x7B0))(&t2);
  return v32(v8, v5);
}

{
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd, &_s9Coherence7CapsuleVy8PaperKit9SignatureVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v39 = v9;
  v10(v8, &a1[v9], v5);
  v38 = v6 + 16;
  v46 = type metadata accessor for Signature(0);
  v11 = v46;
  v41 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature, &protocol conformance descriptor for Signature);
  v47 = v41;
  v48 = &protocol witness table for Signature;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v40 = *(v6 + 8);
  v40(v8, v5);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v52.origin.x = t1.a;
  v52.origin.y = t1.b;
  v52.size.width = t1.c;
  v52.size.height = t1.d;
  MidX = CGRectGetMidX(v52);
  v53.origin.x = a;
  v53.origin.y = b;
  v53.size.width = c;
  v53.size.height = d;
  MidY = CGRectGetMidY(v53);
  CGAffineTransformMakeRotation(&t1, a3 * 3.14159265 / 180.0);
  tx = t1.tx;
  ty = t1.ty;
  v37 = *&t1.a;
  v36 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v20 = t1.a;
  v21 = t1.b;
  v22 = t1.c;
  v23 = t1.d;
  v24 = t1.tx;
  v25 = t1.ty;
  *&t2.c = v36;
  *&t2.a = v37;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v26 = v49.tx;
  v27 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  t1.a = v20;
  t1.b = v21;
  t1.c = v22;
  t1.d = v23;
  t1.tx = v24;
  t1.ty = v25;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v37;
  *&t1.c = v36;
  t1.tx = v26;
  t1.ty = v27;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v28 = v49.tx;
  v29 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  v10(v8, &a1[v9], v5);
  v30 = v11;
  v43 = v11;
  v31 = v41;
  v44 = v41;
  v45 = &protocol witness table for Signature;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v32 = v40;
  v40(v8, v5);
  t2 = t1;
  *&v49.c = v36;
  *&v49.a = v37;
  v49.tx = v28;
  v49.ty = v29;
  CGAffineTransformConcat(&t1, &t2, &v49);
  specialized CanvasElementView.modelCoordinateSpace.setter(&t1);
  v10(v8, &a1[v39], v5);
  LOBYTE(t2.a) = 3;
  v33 = v42;
  v34 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v42) + 0x7D8))(v8, &t2, v30, v31);
  LOBYTE(t2.a) = 3;
  (*((*v34 & *v33) + 0x7B0))(&t2);
  return v32(v8, v5);
}

{
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v39 = v9;
  v10(v8, &a1[v9], v5);
  v38 = v6 + 16;
  v46 = type metadata accessor for Paper(0);
  v11 = v46;
  v41 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
  v47 = v41;
  v48 = &protocol witness table for Paper;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v40 = *(v6 + 8);
  v40(v8, v5);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v52.origin.x = t1.a;
  v52.origin.y = t1.b;
  v52.size.width = t1.c;
  v52.size.height = t1.d;
  MidX = CGRectGetMidX(v52);
  v53.origin.x = a;
  v53.origin.y = b;
  v53.size.width = c;
  v53.size.height = d;
  MidY = CGRectGetMidY(v53);
  CGAffineTransformMakeRotation(&t1, a3 * 3.14159265 / 180.0);
  tx = t1.tx;
  ty = t1.ty;
  v37 = *&t1.a;
  v36 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v20 = t1.a;
  v21 = t1.b;
  v22 = t1.c;
  v23 = t1.d;
  v24 = t1.tx;
  v25 = t1.ty;
  *&t2.c = v36;
  *&t2.a = v37;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v26 = v49.tx;
  v27 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  t1.a = v20;
  t1.b = v21;
  t1.c = v22;
  t1.d = v23;
  t1.tx = v24;
  t1.ty = v25;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v37;
  *&t1.c = v36;
  t1.tx = v26;
  t1.ty = v27;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v28 = v49.tx;
  v29 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  v10(v8, &a1[v9], v5);
  v30 = v11;
  v43 = v11;
  v31 = v41;
  v44 = v41;
  v45 = &protocol witness table for Paper;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v32 = v40;
  v40(v8, v5);
  t2 = t1;
  *&v49.c = v36;
  *&v49.a = v37;
  v49.tx = v28;
  v49.ty = v29;
  CGAffineTransformConcat(&t1, &t2, &v49);
  specialized CanvasElementView.modelCoordinateSpace.setter(&t1);
  v10(v8, &a1[v39], v5);
  LOBYTE(t2.a) = 3;
  v33 = v42;
  v34 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v42) + 0x7D8))(v8, &t2, v30, v31);
  LOBYTE(t2.a) = 3;
  (*((*v34 & *v33) + 0x7B0))(&t2);
  return v32(v8, v5);
}

{
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C12DocumentPageVGMd, &_s9Coherence7CapsuleVy8PaperKit0C12DocumentPageVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v39 = v9;
  v10(v8, &a1[v9], v5);
  v38 = v6 + 16;
  v46 = type metadata accessor for PaperDocumentPage(0);
  v11 = v46;
  v41 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage, &protocol conformance descriptor for PaperDocumentPage);
  v47 = v41;
  v48 = &protocol witness table for PaperDocumentPage;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v40 = *(v6 + 8);
  v40(v8, v5);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v52.origin.x = t1.a;
  v52.origin.y = t1.b;
  v52.size.width = t1.c;
  v52.size.height = t1.d;
  MidX = CGRectGetMidX(v52);
  v53.origin.x = a;
  v53.origin.y = b;
  v53.size.width = c;
  v53.size.height = d;
  MidY = CGRectGetMidY(v53);
  CGAffineTransformMakeRotation(&t1, a3 * 3.14159265 / 180.0);
  tx = t1.tx;
  ty = t1.ty;
  v37 = *&t1.a;
  v36 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v20 = t1.a;
  v21 = t1.b;
  v22 = t1.c;
  v23 = t1.d;
  v24 = t1.tx;
  v25 = t1.ty;
  *&t2.c = v36;
  *&t2.a = v37;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v26 = v49.tx;
  v27 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  t1.a = v20;
  t1.b = v21;
  t1.c = v22;
  t1.d = v23;
  t1.tx = v24;
  t1.ty = v25;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v37;
  *&t1.c = v36;
  t1.tx = v26;
  t1.ty = v27;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v28 = v49.tx;
  v29 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  v10(v8, &a1[v9], v5);
  v30 = v11;
  v43 = v11;
  v31 = v41;
  v44 = v41;
  v45 = &protocol witness table for PaperDocumentPage;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v32 = v40;
  v40(v8, v5);
  t2 = t1;
  *&v49.c = v36;
  *&v49.a = v37;
  v49.tx = v28;
  v49.ty = v29;
  CGAffineTransformConcat(&t1, &t2, &v49);
  specialized CanvasElementView.modelCoordinateSpace.setter(&t1);
  v10(v8, &a1[v39], v5);
  LOBYTE(t2.a) = 3;
  v33 = v42;
  v34 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v42) + 0x7D8))(v8, &t2, v30, v31);
  LOBYTE(t2.a) = 3;
  (*((*v34 & *v33) + 0x7B0))(&t2);
  return v32(v8, v5);
}

{
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMd, &_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v39 = v9;
  v10(v8, &a1[v9], v5);
  v38 = v6 + 16;
  v46 = type metadata accessor for UnknownCanvasElement(0);
  v11 = v46;
  v41 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type UnknownCanvasElement and conformance UnknownCanvasElement, type metadata accessor for UnknownCanvasElement, &protocol conformance descriptor for UnknownCanvasElement);
  v47 = v41;
  v48 = &protocol witness table for UnknownCanvasElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v40 = *(v6 + 8);
  v40(v8, v5);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v52.origin.x = t1.a;
  v52.origin.y = t1.b;
  v52.size.width = t1.c;
  v52.size.height = t1.d;
  MidX = CGRectGetMidX(v52);
  v53.origin.x = a;
  v53.origin.y = b;
  v53.size.width = c;
  v53.size.height = d;
  MidY = CGRectGetMidY(v53);
  CGAffineTransformMakeRotation(&t1, a3 * 3.14159265 / 180.0);
  tx = t1.tx;
  ty = t1.ty;
  v37 = *&t1.a;
  v36 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  v20 = t1.a;
  v21 = t1.b;
  v22 = t1.c;
  v23 = t1.d;
  v24 = t1.tx;
  v25 = t1.ty;
  *&t2.c = v36;
  *&t2.a = v37;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v26 = v49.tx;
  v27 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  t1.a = v20;
  t1.b = v21;
  t1.c = v22;
  t1.d = v23;
  t1.tx = v24;
  t1.ty = v25;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v37;
  *&t1.c = v36;
  t1.tx = v26;
  t1.ty = v27;
  CGAffineTransformConcat(&v49, &t1, &t2);
  v28 = v49.tx;
  v29 = v49.ty;
  v37 = *&v49.a;
  v36 = *&v49.c;
  v10(v8, &a1[v9], v5);
  v30 = v11;
  v43 = v11;
  v31 = v41;
  v44 = v41;
  v45 = &protocol witness table for UnknownCanvasElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v32 = v40;
  v40(v8, v5);
  t2 = t1;
  *&v49.c = v36;
  *&v49.a = v37;
  v49.tx = v28;
  v49.ty = v29;
  CGAffineTransformConcat(&t1, &t2, &v49);
  specialized CanvasElementView.modelCoordinateSpace.setter(&t1);
  v10(v8, &a1[v39], v5);
  LOBYTE(t2.a) = 3;
  v33 = v42;
  v34 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v42) + 0x7D8))(v8, &t2, v30, v31);
  LOBYTE(t2.a) = 3;
  (*((*v34 & *v33) + 0x7B0))(&t2);
  return v32(v8, v5);
}

BOOL specialized closure #2 in CanvasElementView.setupAccessibility()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
  v5 = v4 != 0;
  if (v4)
  {
    v6 = v4;
    v7 = MEMORY[0x1EEE9AC00](v4);
    (*((*v3 & *v8) + 0x6E8))(0, 0, partial apply for specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility(), v7);
    v9 = *MEMORY[0x1E69DD888];
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v30._object = 0x80000001D408B050;
    v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v10.value._object = 0xEB00000000656C62;
    v11._object = 0x80000001D408B030;
    v30._countAndFlagsBits = 0xD00000000000003CLL;
    v11._countAndFlagsBits = 0xD000000000000012;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, paperKitBundle, v12, v30);
    (*((*v3 & *v2) + 0x2A0))(v29, v13._countAndFlagsBits, v13._object);
    CGAffineTransform.decompose(initialRotation:)(v28, 0.0);
    v14 = *v28;
    v15 = *&v28[1];
    v16 = *&v28[2];
    v17 = *&v28[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D405C990;
    v31.origin.x = v14;
    v31.origin.y = v15;
    v31.size.width = v16;
    v31.size.height = v17;
    Width = CGRectGetWidth(v31);
    v20 = MEMORY[0x1E69E7DE0];
    *(v18 + 56) = MEMORY[0x1E69E7DE0];
    v21 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    *(v18 + 64) = v21;
    *(v18 + 32) = Width;
    v32.origin.x = v14;
    v32.origin.y = v15;
    v32.size.width = v16;
    v32.size.height = v17;
    Height = CGRectGetHeight(v32);
    *(v18 + 96) = v20;
    *(v18 + 104) = v21;
    *(v18 + 72) = Height;
    v23 = static String.localizedStringWithFormat(_:_:)();
    v25 = v24;

    v26 = MEMORY[0x1DA6CCED0](v23, v25);

    UIAccessibilityPostNotification(v9, v26);

    v2 = v6;
  }

  return v5;
}

BOOL specialized closure #2 in CanvasElementView.setupAccessibility()(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  v7 = MEMORY[0x1E69E7D40];
  v8 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
  v9 = v8 != 0;
  if (v8)
  {
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = *v7 & *v11;
    v13 = v11;
    (*(v12 + 1768))(0, 0, a2, v10);
    v14 = *MEMORY[0x1E69DD888];
    v15 = a3(1);
    v16 = MEMORY[0x1DA6CCED0](v15);

    UIAccessibilityPostNotification(v14, v16);

    v6 = v13;
  }

  return v9;
}

uint64_t specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()(char *a1, void *a2, CGFloat a3)
{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd, &_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v28 = v9;
  v10(v8, &a1[v9], v5);
  v29 = v10;
  v36 = type metadata accessor for TextBox(0);
  v11 = v36;
  v31 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox, &protocol conformance descriptor for TextBox);
  v37 = v31;
  v38 = &protocol witness table for TextBox;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v30 = *(v6 + 8);
  v30(v8, v5);
  a = v41.a;
  b = v41.b;
  c = v41.c;
  d = v41.d;
  v42.origin.x = v41.a;
  v42.origin.y = v41.b;
  v42.size.width = v41.c;
  v42.size.height = v41.d;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = a;
  v43.origin.y = b;
  v43.size.width = c;
  v43.size.height = d;
  MidY = CGRectGetMidY(v43);
  v41.a = 1.0;
  v41.b = 0.0;
  v41.c = 0.0;
  v41.d = 1.0;
  v41.tx = 0.0;
  v41.ty = 0.0;
  CGAffineTransformScale(&t1, &v41, a3, a3);
  v41 = t1;
  CGAffineTransformTranslate(&t1, &v41, -(MidX * (a3 + -1.0)), -(MidY * (a3 + -1.0)));
  tx = t1.tx;
  ty = t1.ty;
  v27 = *&t1.a;
  v26 = *&t1.c;
  v10(v8, &a1[v9], v5);
  v20 = v11;
  v33 = v11;
  v21 = v31;
  v34 = v31;
  v35 = &protocol witness table for TextBox;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v22 = v30;
  v30(v8, v5);
  t1 = v41;
  *&t2.c = v26;
  *&t2.a = v27;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v41, &t1, &t2);
  specialized CanvasElementView.modelCoordinateSpace.setter(&v41);
  v29(v8, &a1[v28], v5);
  LOBYTE(t1.a) = 3;
  v23 = v32;
  v24 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v32) + 0x7D8))(v8, &t1, v20, v21);
  LOBYTE(t1.a) = 3;
  (*((*v24 & *v23) + 0x7B0))(&t1);
  return v22(v8, v5);
}

{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMd, _s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v28 = v9;
  v10(v8, &a1[v9], v5);
  v29 = v10;
  v36 = type metadata accessor for LoupeElement(0);
  v11 = v36;
  v31 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type LoupeElement and conformance LoupeElement, type metadata accessor for LoupeElement, &protocol conformance descriptor for LoupeElement);
  v37 = v31;
  v38 = &protocol witness table for LoupeElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v30 = *(v6 + 8);
  v30(v8, v5);
  a = v41.a;
  b = v41.b;
  c = v41.c;
  d = v41.d;
  v42.origin.x = v41.a;
  v42.origin.y = v41.b;
  v42.size.width = v41.c;
  v42.size.height = v41.d;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = a;
  v43.origin.y = b;
  v43.size.width = c;
  v43.size.height = d;
  MidY = CGRectGetMidY(v43);
  v41.a = 1.0;
  v41.b = 0.0;
  v41.c = 0.0;
  v41.d = 1.0;
  v41.tx = 0.0;
  v41.ty = 0.0;
  CGAffineTransformScale(&t1, &v41, a3, a3);
  v41 = t1;
  CGAffineTransformTranslate(&t1, &v41, -(MidX * (a3 + -1.0)), -(MidY * (a3 + -1.0)));
  tx = t1.tx;
  ty = t1.ty;
  v27 = *&t1.a;
  v26 = *&t1.c;
  v10(v8, &a1[v9], v5);
  v20 = v11;
  v33 = v11;
  v21 = v31;
  v34 = v31;
  v35 = &protocol witness table for LoupeElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v22 = v30;
  v30(v8, v5);
  t1 = v41;
  *&t2.c = v26;
  *&t2.a = v27;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v41, &t1, &t2);
  specialized CanvasElementView.modelCoordinateSpace.setter(&v41);
  v29(v8, &a1[v28], v5);
  LOBYTE(t1.a) = 3;
  v23 = v32;
  v24 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v32) + 0x7D8))(v8, &t1, v20, v21);
  LOBYTE(t1.a) = 3;
  (*((*v24 & *v23) + 0x7B0))(&t1);
  return v22(v8, v5);
}

{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v28 = v9;
  v10(v8, &a1[v9], v5);
  v29 = v10;
  v36 = type metadata accessor for Image(0);
  v11 = v36;
  v31 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  v37 = v31;
  v38 = &protocol witness table for Image;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v30 = *(v6 + 8);
  v30(v8, v5);
  a = v41.a;
  b = v41.b;
  c = v41.c;
  d = v41.d;
  v42.origin.x = v41.a;
  v42.origin.y = v41.b;
  v42.size.width = v41.c;
  v42.size.height = v41.d;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = a;
  v43.origin.y = b;
  v43.size.width = c;
  v43.size.height = d;
  MidY = CGRectGetMidY(v43);
  v41.a = 1.0;
  v41.b = 0.0;
  v41.c = 0.0;
  v41.d = 1.0;
  v41.tx = 0.0;
  v41.ty = 0.0;
  CGAffineTransformScale(&t1, &v41, a3, a3);
  v41 = t1;
  CGAffineTransformTranslate(&t1, &v41, -(MidX * (a3 + -1.0)), -(MidY * (a3 + -1.0)));
  tx = t1.tx;
  ty = t1.ty;
  v27 = *&t1.a;
  v26 = *&t1.c;
  v10(v8, &a1[v9], v5);
  v20 = v11;
  v33 = v11;
  v21 = v31;
  v34 = v31;
  v35 = &protocol witness table for Image;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v22 = v30;
  v30(v8, v5);
  t1 = v41;
  *&t2.c = v26;
  *&t2.a = v27;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v41, &t1, &t2);
  specialized CanvasElementView.modelCoordinateSpace.setter(&v41);
  v29(v8, &a1[v28], v5);
  LOBYTE(t1.a) = 3;
  v23 = v32;
  v24 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v32) + 0x7D8))(v8, &t1, v20, v21);
  LOBYTE(t1.a) = 3;
  (*((*v24 & *v23) + 0x7B0))(&t1);
  return v22(v8, v5);
}

{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd, &_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v28 = v9;
  v10(v8, &a1[v9], v5);
  v29 = v10;
  v36 = type metadata accessor for GraphElement(0);
  v11 = v36;
  v31 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement, &protocol conformance descriptor for GraphElement);
  v37 = v31;
  v38 = &protocol witness table for GraphElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v30 = *(v6 + 8);
  v30(v8, v5);
  a = v41.a;
  b = v41.b;
  c = v41.c;
  d = v41.d;
  v42.origin.x = v41.a;
  v42.origin.y = v41.b;
  v42.size.width = v41.c;
  v42.size.height = v41.d;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = a;
  v43.origin.y = b;
  v43.size.width = c;
  v43.size.height = d;
  MidY = CGRectGetMidY(v43);
  v41.a = 1.0;
  v41.b = 0.0;
  v41.c = 0.0;
  v41.d = 1.0;
  v41.tx = 0.0;
  v41.ty = 0.0;
  CGAffineTransformScale(&t1, &v41, a3, a3);
  v41 = t1;
  CGAffineTransformTranslate(&t1, &v41, -(MidX * (a3 + -1.0)), -(MidY * (a3 + -1.0)));
  tx = t1.tx;
  ty = t1.ty;
  v27 = *&t1.a;
  v26 = *&t1.c;
  v10(v8, &a1[v9], v5);
  v20 = v11;
  v33 = v11;
  v21 = v31;
  v34 = v31;
  v35 = &protocol witness table for GraphElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v22 = v30;
  v30(v8, v5);
  t1 = v41;
  *&t2.c = v26;
  *&t2.a = v27;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v41, &t1, &t2);
  specialized CanvasElementView.modelCoordinateSpace.setter(&v41);
  v29(v8, &a1[v28], v5);
  LOBYTE(t1.a) = 3;
  v23 = v32;
  v24 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v32) + 0x7D8))(v8, &t1, v20, v21);
  LOBYTE(t1.a) = 3;
  (*((*v24 & *v23) + 0x7B0))(&t1);
  return v22(v8, v5);
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  v10 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v33 = *(v7 + 16);
  v33(v9, &a1[v11], v6);
  v34 = type metadata accessor for Shape(0);
  v35 = v34;
  v32 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
  v36 = v32;
  v37 = &protocol witness table for Shape;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v31 = *(v7 + 8);
  v31(v9, v6);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v42.origin.x = t1.a;
  v42.origin.y = t1.b;
  v42.size.width = t1.c;
  v42.size.height = t1.d;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = a;
  v43.origin.y = b;
  v43.size.width = c;
  v43.size.height = d;
  MidY = CGRectGetMidY(v43);
  t1.a = 1.0;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = 1.0;
  t1.tx = 0.0;
  t1.ty = 0.0;
  CGAffineTransformScale(&t2, &t1, a3, a3);
  t1 = t2;
  CGAffineTransformTranslate(&t2, &t1, -(MidX * (a3 + -1.0)), -(MidY * (a3 + -1.0)));
  tx = t2.tx;
  ty = t2.ty;
  v30 = *&t2.a;
  v29 = *&t2.c;
  v20 = (*((*v10 & *a1) + 0x2B0))(v39);
  v22 = v21;
  v23 = v21[1];
  v24 = v21[2];
  *&t1.a = *v21;
  *&t1.c = v23;
  *&t1.tx = v24;
  *&t2.a = v30;
  *&t2.c = v29;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v38, &t1, &t2);
  v25 = *&v38.c;
  v26 = *&v38.tx;
  *v22 = *&v38.a;
  v22[1] = v25;
  v22[2] = v26;
  v20(v39, 0);
  v33(v9, &a1[v11], v6);
  LOBYTE(t1.a) = 3;
  v27 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x7D8))(v9, &t1, v34, v32);
  LOBYTE(t1.a) = 3;
  (*((*v27 & *a2) + 0x7B0))(&t1);
  return (v31)(v9, v6);
}

{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd, &_s9Coherence7CapsuleVy8PaperKit4LinkVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v28 = v9;
  v10(v8, &a1[v9], v5);
  v29 = v10;
  v36 = type metadata accessor for Link(0);
  v11 = v36;
  v31 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Link and conformance Link, type metadata accessor for Link, &protocol conformance descriptor for Link);
  v37 = v31;
  v38 = &protocol witness table for Link;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v30 = *(v6 + 8);
  v30(v8, v5);
  a = v41.a;
  b = v41.b;
  c = v41.c;
  d = v41.d;
  v42.origin.x = v41.a;
  v42.origin.y = v41.b;
  v42.size.width = v41.c;
  v42.size.height = v41.d;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = a;
  v43.origin.y = b;
  v43.size.width = c;
  v43.size.height = d;
  MidY = CGRectGetMidY(v43);
  v41.a = 1.0;
  v41.b = 0.0;
  v41.c = 0.0;
  v41.d = 1.0;
  v41.tx = 0.0;
  v41.ty = 0.0;
  CGAffineTransformScale(&t1, &v41, a3, a3);
  v41 = t1;
  CGAffineTransformTranslate(&t1, &v41, -(MidX * (a3 + -1.0)), -(MidY * (a3 + -1.0)));
  tx = t1.tx;
  ty = t1.ty;
  v27 = *&t1.a;
  v26 = *&t1.c;
  v10(v8, &a1[v9], v5);
  v20 = v11;
  v33 = v11;
  v21 = v31;
  v34 = v31;
  v35 = &protocol witness table for Link;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v22 = v30;
  v30(v8, v5);
  t1 = v41;
  *&t2.c = v26;
  *&t2.a = v27;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v41, &t1, &t2);
  specialized CanvasElementView.modelCoordinateSpace.setter(&v41);
  v29(v8, &a1[v28], v5);
  LOBYTE(t1.a) = 3;
  v23 = v32;
  v24 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v32) + 0x7D8))(v8, &t1, v20, v21);
  LOBYTE(t1.a) = 3;
  (*((*v24 & *v23) + 0x7B0))(&t1);
  return v22(v8, v5);
}

{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd, &_s9Coherence7CapsuleVy8PaperKit9SignatureVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v28 = v9;
  v10(v8, &a1[v9], v5);
  v29 = v10;
  v36 = type metadata accessor for Signature(0);
  v11 = v36;
  v31 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature, &protocol conformance descriptor for Signature);
  v37 = v31;
  v38 = &protocol witness table for Signature;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v30 = *(v6 + 8);
  v30(v8, v5);
  a = v41.a;
  b = v41.b;
  c = v41.c;
  d = v41.d;
  v42.origin.x = v41.a;
  v42.origin.y = v41.b;
  v42.size.width = v41.c;
  v42.size.height = v41.d;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = a;
  v43.origin.y = b;
  v43.size.width = c;
  v43.size.height = d;
  MidY = CGRectGetMidY(v43);
  v41.a = 1.0;
  v41.b = 0.0;
  v41.c = 0.0;
  v41.d = 1.0;
  v41.tx = 0.0;
  v41.ty = 0.0;
  CGAffineTransformScale(&t1, &v41, a3, a3);
  v41 = t1;
  CGAffineTransformTranslate(&t1, &v41, -(MidX * (a3 + -1.0)), -(MidY * (a3 + -1.0)));
  tx = t1.tx;
  ty = t1.ty;
  v27 = *&t1.a;
  v26 = *&t1.c;
  v10(v8, &a1[v9], v5);
  v20 = v11;
  v33 = v11;
  v21 = v31;
  v34 = v31;
  v35 = &protocol witness table for Signature;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v22 = v30;
  v30(v8, v5);
  t1 = v41;
  *&t2.c = v26;
  *&t2.a = v27;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v41, &t1, &t2);
  specialized CanvasElementView.modelCoordinateSpace.setter(&v41);
  v29(v8, &a1[v28], v5);
  LOBYTE(t1.a) = 3;
  v23 = v32;
  v24 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v32) + 0x7D8))(v8, &t1, v20, v21);
  LOBYTE(t1.a) = 3;
  (*((*v24 & *v23) + 0x7B0))(&t1);
  return v22(v8, v5);
}

{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v28 = v9;
  v10(v8, &a1[v9], v5);
  v29 = v10;
  v36 = type metadata accessor for Paper(0);
  v11 = v36;
  v31 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
  v37 = v31;
  v38 = &protocol witness table for Paper;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v30 = *(v6 + 8);
  v30(v8, v5);
  a = v41.a;
  b = v41.b;
  c = v41.c;
  d = v41.d;
  v42.origin.x = v41.a;
  v42.origin.y = v41.b;
  v42.size.width = v41.c;
  v42.size.height = v41.d;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = a;
  v43.origin.y = b;
  v43.size.width = c;
  v43.size.height = d;
  MidY = CGRectGetMidY(v43);
  v41.a = 1.0;
  v41.b = 0.0;
  v41.c = 0.0;
  v41.d = 1.0;
  v41.tx = 0.0;
  v41.ty = 0.0;
  CGAffineTransformScale(&t1, &v41, a3, a3);
  v41 = t1;
  CGAffineTransformTranslate(&t1, &v41, -(MidX * (a3 + -1.0)), -(MidY * (a3 + -1.0)));
  tx = t1.tx;
  ty = t1.ty;
  v27 = *&t1.a;
  v26 = *&t1.c;
  v10(v8, &a1[v9], v5);
  v20 = v11;
  v33 = v11;
  v21 = v31;
  v34 = v31;
  v35 = &protocol witness table for Paper;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v22 = v30;
  v30(v8, v5);
  t1 = v41;
  *&t2.c = v26;
  *&t2.a = v27;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v41, &t1, &t2);
  specialized CanvasElementView.modelCoordinateSpace.setter(&v41);
  v29(v8, &a1[v28], v5);
  LOBYTE(t1.a) = 3;
  v23 = v32;
  v24 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v32) + 0x7D8))(v8, &t1, v20, v21);
  LOBYTE(t1.a) = 3;
  (*((*v24 & *v23) + 0x7B0))(&t1);
  return v22(v8, v5);
}

{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C12DocumentPageVGMd, &_s9Coherence7CapsuleVy8PaperKit0C12DocumentPageVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v28 = v9;
  v10(v8, &a1[v9], v5);
  v29 = v10;
  v36 = type metadata accessor for PaperDocumentPage(0);
  v11 = v36;
  v31 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage, &protocol conformance descriptor for PaperDocumentPage);
  v37 = v31;
  v38 = &protocol witness table for PaperDocumentPage;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v30 = *(v6 + 8);
  v30(v8, v5);
  a = v41.a;
  b = v41.b;
  c = v41.c;
  d = v41.d;
  v42.origin.x = v41.a;
  v42.origin.y = v41.b;
  v42.size.width = v41.c;
  v42.size.height = v41.d;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = a;
  v43.origin.y = b;
  v43.size.width = c;
  v43.size.height = d;
  MidY = CGRectGetMidY(v43);
  v41.a = 1.0;
  v41.b = 0.0;
  v41.c = 0.0;
  v41.d = 1.0;
  v41.tx = 0.0;
  v41.ty = 0.0;
  CGAffineTransformScale(&t1, &v41, a3, a3);
  v41 = t1;
  CGAffineTransformTranslate(&t1, &v41, -(MidX * (a3 + -1.0)), -(MidY * (a3 + -1.0)));
  tx = t1.tx;
  ty = t1.ty;
  v27 = *&t1.a;
  v26 = *&t1.c;
  v10(v8, &a1[v9], v5);
  v20 = v11;
  v33 = v11;
  v21 = v31;
  v34 = v31;
  v35 = &protocol witness table for PaperDocumentPage;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v22 = v30;
  v30(v8, v5);
  t1 = v41;
  *&t2.c = v26;
  *&t2.a = v27;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v41, &t1, &t2);
  specialized CanvasElementView.modelCoordinateSpace.setter(&v41);
  v29(v8, &a1[v28], v5);
  LOBYTE(t1.a) = 3;
  v23 = v32;
  v24 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v32) + 0x7D8))(v8, &t1, v20, v21);
  LOBYTE(t1.a) = 3;
  (*((*v24 & *v23) + 0x7B0))(&t1);
  return v22(v8, v5);
}

{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMd, &_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v28 = v9;
  v10(v8, &a1[v9], v5);
  v29 = v10;
  v36 = type metadata accessor for UnknownCanvasElement(0);
  v11 = v36;
  v31 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type UnknownCanvasElement and conformance UnknownCanvasElement, type metadata accessor for UnknownCanvasElement, &protocol conformance descriptor for UnknownCanvasElement);
  v37 = v31;
  v38 = &protocol witness table for UnknownCanvasElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v30 = *(v6 + 8);
  v30(v8, v5);
  a = v41.a;
  b = v41.b;
  c = v41.c;
  d = v41.d;
  v42.origin.x = v41.a;
  v42.origin.y = v41.b;
  v42.size.width = v41.c;
  v42.size.height = v41.d;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = a;
  v43.origin.y = b;
  v43.size.width = c;
  v43.size.height = d;
  MidY = CGRectGetMidY(v43);
  v41.a = 1.0;
  v41.b = 0.0;
  v41.c = 0.0;
  v41.d = 1.0;
  v41.tx = 0.0;
  v41.ty = 0.0;
  CGAffineTransformScale(&t1, &v41, a3, a3);
  v41 = t1;
  CGAffineTransformTranslate(&t1, &v41, -(MidX * (a3 + -1.0)), -(MidY * (a3 + -1.0)));
  tx = t1.tx;
  ty = t1.ty;
  v27 = *&t1.a;
  v26 = *&t1.c;
  v10(v8, &a1[v9], v5);
  v20 = v11;
  v33 = v11;
  v21 = v31;
  v34 = v31;
  v35 = &protocol witness table for UnknownCanvasElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v22 = v30;
  v30(v8, v5);
  t1 = v41;
  *&t2.c = v26;
  *&t2.a = v27;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v41, &t1, &t2);
  specialized CanvasElementView.modelCoordinateSpace.setter(&v41);
  v29(v8, &a1[v28], v5);
  LOBYTE(t1.a) = 3;
  v23 = v32;
  v24 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v32) + 0x7D8))(v8, &t1, v20, v21);
  LOBYTE(t1.a) = 3;
  (*((*v24 & *v23) + 0x7B0))(&t1);
  return v22(v8, v5);
}

BOOL specialized closure #7 in CanvasElementView.setupAccessibility()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    v4 = *MEMORY[0x1E69DD888];
    v5 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x538))();
    if (v6)
    {
      v7 = MEMORY[0x1DA6CCED0](v5);
    }

    else
    {
      v7 = 0;
    }

    UIAccessibilityPostNotification(v4, v7);
    swift_unknownObjectRelease();
  }

  return v3 != 0;
}

BOOL specialized closure #7 in CanvasElementView.setupAccessibility()(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *MEMORY[0x1E69DD888];
    v6 = a3(2);
    v8 = v7;
    v9 = a3(1);
    v11 = v10;
    v12 = a3(0);
    v14 = v13;
    MEMORY[0x1DA6CD010](8236, 0xE200000000000000);
    MEMORY[0x1DA6CD010](v9, v11);

    MEMORY[0x1DA6CD010](8236, 0xE200000000000000);
    MEMORY[0x1DA6CD010](v12, v14);

    v15 = MEMORY[0x1DA6CCED0](v6, v8);

    UIAccessibilityPostNotification(v5, v15);
  }

  return Strong != 0;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t specialized CanvasElementViewController.contentViewController.getter()
{
  KeyPath = swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)(KeyPath);

  v2 = direct field offset for CanvasElementViewController._contentViewController;
  swift_beginAccess();
  return *(v0 + v2);
}

void specialized CanvasElementViewController._canvasView.setter(void *a1)
{
  v2 = *(v1 + direct field offset for CanvasElementViewController._canvasView);
  *(v1 + direct field offset for CanvasElementViewController._canvasView) = a1;
  v3 = a1;

  CanvasElementViewController._canvasView.didset();
}

uint64_t specialized CanvasElementViewController.liveStreamMessenger.getter()
{
  KeyPath = swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)(KeyPath);

  v2 = v0 + direct field offset for CanvasElementViewController._liveStreamMessenger;
  swift_beginAccess();
  return *v2;
}

void partial apply for closure #1 in CanvasElementViewController.liveStreamMessenger.setter(void (*a1)(uint64_t, uint64_t))
{
  v3 = *(v1 + 32);
  v4 = swift_unknownObjectRetain();
  a1(v4, v3);
  swift_unknownObjectRelease();
}

uint64_t _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type UIViewController? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UIViewController? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UIViewController? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo16UIViewControllerCSgMd, &_sSo16UIViewControllerCSgMR);
    lazy protocol witness table accessor for type PPKQuickLookBannerView and conformance NSObject(&lazy protocol witness table cache variable for type UIViewController and conformance NSObject, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIViewController? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PPKQuickLookBannerView and conformance NSObject(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized CanvasElementViewController.MediaAnalysisObserver.__allocating_init(viewController:)()
{
  type metadata accessor for CanvasElementViewController.MediaAnalysisObserver(0, v0[10], v0[11], v0[12]);
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  return v1;
}

void specialized CanvasElementViewController._analysis.setter(void *a1)
{
  v3 = *(v1 + direct field offset for CanvasElementViewController._analysis);
  *(v1 + direct field offset for CanvasElementViewController._analysis) = a1;
  v2 = a1;
  CanvasElementViewController._analysis.didset(v3);
}

double specialized CanvasElementViewController._liveStreamMessenger.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for CanvasElementViewController._liveStreamMessenger);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return CanvasElementViewController._liveStreamMessenger.didset();
}

double specialized CanvasElementViewController._participantDetailsDataSource.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + direct field offset for CanvasElementViewController._participantDetailsDataSource;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return CanvasElementViewController._participantDetailsDataSource.didset();
}

void specialized CanvasElementViewController._contentViewController.setter(void *a1)
{
  v3 = direct field offset for CanvasElementViewController._contentViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  CanvasElementViewController._contentViewController.didset();
}

void partial apply for closure #1 in CanvasElementViewController.contentViewController.setter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  specialized CanvasElementViewController._contentViewController.setter(v1);
}

unint64_t lazy protocol witness table accessor for type CanvasEditingMode and conformance CanvasEditingMode()
{
  result = lazy protocol witness table cache variable for type CanvasEditingMode and conformance CanvasEditingMode;
  if (!lazy protocol witness table cache variable for type CanvasEditingMode and conformance CanvasEditingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasEditingMode and conformance CanvasEditingMode);
  }

  return result;
}

void partial apply for closure #1 in CanvasElementViewController.editingMode.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + direct field offset for CanvasElementViewController._editingMode);
  *(v1 + direct field offset for CanvasElementViewController._editingMode) = *(v0 + 24);
  v3 = v2;
  CanvasElementViewController._editingMode.didset(&v3);
}

uint64_t partial apply for closure #1 in CanvasElementViewController.allowsContentSnapping.setter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = *a1;
  swift_beginAccess();
  *(v8 + v10) = v9;
  return a4(a2, a3);
}

uint64_t partial apply for closure #1 in CanvasElementViewController.showParticipantCursors.setter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *a1;
  v7 = swift_beginAccess();
  *(v4 + v6) = v5;
  return a2(v7);
}

void partial apply for closure #1 in CanvasElementViewController.canEditVellumOpacity.setter(uint64_t *a1, uint64_t (*a2)(void), void *a3, void *a4)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = *a1;
  swift_beginAccess();
  *(v8 + v10) = v9;
  CanvasElementViewController._canEditVellumOpacity.didset(a2, a3, a4);
}

void partial apply for closure #1 in CanvasElementViewController.bannerViewConfiguration.setter()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v4[0] = *v1;
  v4[1] = v2;
  v4[2] = *(v1 + 32);
  v5 = *(v1 + 48);
  outlined init with copy of Date?(v1, v3, &_s8PaperKit23BannerViewConfigurationVSgMd, &_s8PaperKit23BannerViewConfigurationVSgMR);
  CanvasElementViewController._bannerViewConfiguration.setter(v4);
}

unint64_t lazy protocol witness table accessor for type UIView? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UIView? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UIView? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo6UIViewCSgMd, &_sSo6UIViewCSgMR);
    lazy protocol witness table accessor for type PPKQuickLookBannerView and conformance NSObject(&lazy protocol witness table cache variable for type UIView and conformance NSObject, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIView? and conformance <A> A?);
  }

  return result;
}

uint64_t specialized CanvasElementViewController.canvasView.getter(uint64_t a1, void *a2)
{
  KeyPath = swift_getKeyPath();
  CanvasElementViewController.access<A>(keyPath:)(KeyPath);

  return *(v2 + *a2);
}

void specialized CanvasElementViewController._rulerHostView.setter(void *a1)
{
  v3 = *(v1 + direct field offset for CanvasElementViewController._rulerHostView);
  *(v1 + direct field offset for CanvasElementViewController._rulerHostView) = a1;
  v2 = a1;
  CanvasElementViewController._rulerHostView.didset(v3);
}

void partial apply for closure #1 in CanvasElementViewController.rulerHostView.setter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  specialized CanvasElementViewController._rulerHostView.setter(v1);
}

uint64_t partial apply for closure #1 in CanvasElementViewController.formDelegate.setter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + direct field offset for CanvasElementViewController._formDelegate;
  swift_beginAccess();
  *(v2 + 8) = v1;
  return swift_unknownObjectWeakAssign();
}

void specialized CanvasElementViewController.init(coder:)()
{
  v1 = v0;
  *(v0 + direct field offset for CanvasElementViewController._canvasView) = 0;
  v2 = (v0 + direct field offset for CanvasElementViewController._liveStreamMessenger);
  *v2 = 0;
  v2[1] = 0;
  v3 = v0 + direct field offset for CanvasElementViewController._participantDetailsDataSource;
  CanvasElementViewController.participantDetailsDataSource.init(0, v3);
  *(v3 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + direct field offset for CanvasElementViewController._showParticipantCursors) = 0;
  *(v1 + direct field offset for CanvasElementViewController._mediaAnalysisObserver) = 0;
  *(v1 + direct field offset for CanvasElementViewController._allowsContentSnapping) = 0;
  *(v1 + direct field offset for CanvasElementViewController._contentViewController) = 0;
  *(v1 + direct field offset for CanvasElementViewController._canvasSubscribeCancellable) = 0;
  v4 = direct field offset for CanvasElementViewController.passThroughSubject;
  type metadata accessor for Capsule();
  type metadata accessor for PassthroughSubject();
  *(v1 + v4) = PassthroughSubject.__allocating_init()();
  v5 = (v1 + direct field offset for CanvasElementViewController.__imageSize);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + direct field offset for CanvasElementViewController.__imageHeadroom) = 0;
  *(v1 + direct field offset for CanvasElementViewController._liveStreamDrawings) = 0;
  *(v1 + direct field offset for CanvasElementViewController._isSixChannelBlendingEnabled) = 1;
  *(v1 + direct field offset for CanvasElementViewController._sixChannelBlendingDisableSnapshotting) = 0;
  *(v1 + direct field offset for CanvasElementViewController._sixChannelBlendingRendersTransparent) = 0;
  *(v1 + direct field offset for CanvasElementViewController._canEditVellumOpacity) = 0;
  *(v1 + direct field offset for CanvasElementViewController._isImageAnalysisEnabled) = 1;
  *(v1 + direct field offset for CanvasElementViewController._canEditDescription) = 1;
  v6 = direct field offset for CanvasElementViewController.plusButton;
  type metadata accessor for FormPlusButtonView();
  *(v1 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + direct field offset for CanvasElementViewController._isUpdatingBannerConfiguration) = 0;
  v7 = v1 + direct field offset for CanvasElementViewController._bannerViewConfiguration;
  *v7 = 1;
  *(v7 + 40) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 8) = 0u;
  v8 = [objc_allocWithZone(PPKQuickLookBannerView) init];
  *(v1 + direct field offset for CanvasElementViewController._bannerView) = v8;
  *(v1 + direct field offset for CanvasElementViewController.__rulerHostingDelegate) = 0;
  *(v1 + direct field offset for CanvasElementViewController._rulerHostView) = 0;
  v9 = v1 + direct field offset for CanvasElementViewController._formDelegate;
  CanvasElementViewController.participantDetailsDataSource.init(0, v1 + direct field offset for CanvasElementViewController._formDelegate);
  *(v9 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + direct field offset for CanvasElementViewController._analysis) = 0;
  ObservationRegistrar.init()();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized CanvasElementViewController.scrollView.getter()
{
  result = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  if (!result)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = *(result + direct field offset for CanvasView.canvasScrollView);
  if (!result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #1 in CanvasElementViewController<>.updateImageZoomScale(in:animated:zoomable:)(uint64_t a1)
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

  return closure #1 in CanvasElementViewController<>.updateImageZoomScale(in:animated:zoomable:)(v7, v8, a1, v4, v5, v6, v9, v10);
}

uint64_t keypath_set_195Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t type metadata completion function for CanvasElementViewController(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v3 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t _s8PaperKit5ImageVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL partial apply for specialized closure #1 in CanvasElementView.setupAccessibility()()
{
  return specialized closure #1 in CanvasElementView.setupAccessibility()(v0);
}

{
  return specialized closure #1 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #1 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #1 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #1 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #1 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #1 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #1 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #1 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #1 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

BOOL partial apply for specialized closure #2 in CanvasElementView.setupAccessibility()()
{
  return specialized closure #2 in CanvasElementView.setupAccessibility()(v0);
}

{
  return specialized closure #2 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #2 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #2 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #2 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #2 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #2 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #2 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #2 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #2 in CanvasElementView.setupAccessibility()(v0, partial apply for specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility(), specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

double block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

BOOL partial apply for specialized closure #7 in CanvasElementView.setupAccessibility()(uint64_t a1)
{
  return specialized closure #7 in CanvasElementView.setupAccessibility()(a1, v1);
}

{
  return specialized closure #7 in CanvasElementView.setupAccessibility()(a1, v1, specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #7 in CanvasElementView.setupAccessibility()(a1, v1, specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #7 in CanvasElementView.setupAccessibility()(a1, v1, specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #7 in CanvasElementView.setupAccessibility()(a1, v1, specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #7 in CanvasElementView.setupAccessibility()(a1, v1, specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #7 in CanvasElementView.setupAccessibility()(a1, v1, specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #7 in CanvasElementView.setupAccessibility()(a1, v1, specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #7 in CanvasElementView.setupAccessibility()(a1, v1, specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

{
  return specialized closure #7 in CanvasElementView.setupAccessibility()(a1, v1, specialized CanvasElementView.accessibilityDescriptionForAttribute(_:));
}

uint64_t partial apply for specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()()
{
  return specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()(*(v0 + 16), *(v0 + 32), *(v0 + 24));
}

{
  return specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()(*(v0 + 16), *(v0 + 32), *(v0 + 24));
}

{
  return specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()(*(v0 + 16), *(v0 + 32), *(v0 + 24));
}

{
  return specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()(*(v0 + 16), *(v0 + 32), *(v0 + 24));
}

{
  return specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()(*(v0 + 16), *(v0 + 32), *(v0 + 24));
}

{
  return specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()(*(v0 + 16), *(v0 + 32), *(v0 + 24));
}

{
  return specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()(*(v0 + 16), *(v0 + 32), *(v0 + 24));
}

{
  return specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()(*(v0 + 16), *(v0 + 32), *(v0 + 24));
}

{
  return specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()(*(v0 + 16), *(v0 + 32), *(v0 + 24));
}

{
  return specialized closure #1 in closure #2 in CanvasElementView.setupAccessibility()(*(v0 + 16), *(v0 + 32), *(v0 + 24));
}

uint64_t partial apply for specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()()
{
  return specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()(*(v0 + 24), *(v0 + 32), *(v0 + 16));
}

{
  return specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()(*(v0 + 24), *(v0 + 32), *(v0 + 16));
}

{
  return specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()(*(v0 + 24), *(v0 + 32), *(v0 + 16));
}

{
  return specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()(*(v0 + 24), *(v0 + 32), *(v0 + 16));
}

{
  return specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()(*(v0 + 24), *(v0 + 32), *(v0 + 16));
}

{
  return specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()(*(v0 + 24), *(v0 + 32), *(v0 + 16));
}

{
  return specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()(*(v0 + 24), *(v0 + 32), *(v0 + 16));
}

{
  return specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()(*(v0 + 24), *(v0 + 32), *(v0 + 16));
}

{
  return specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()(*(v0 + 24), *(v0 + 32), *(v0 + 16));
}

{
  return specialized closure #1 in closure #1 in CanvasElementView.setupAccessibility()(*(v0 + 24), *(v0 + 32), *(v0 + 16));
}

unint64_t lazy protocol witness table accessor for type VKCImageAnalysis? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type VKCImageAnalysis? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type VKCImageAnalysis? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo16VKCImageAnalysisCSgMd, &_sSo16VKCImageAnalysisCSgMR);
    lazy protocol witness table accessor for type PPKQuickLookBannerView and conformance NSObject(&lazy protocol witness table cache variable for type VKCImageAnalysis and conformance NSObject, &lazy cache variable for type metadata for VKCImageAnalysis, 0x1E69DF9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VKCImageAnalysis? and conformance <A> A?);
  }

  return result;
}

void partial apply for closure #1 in CanvasElementViewController.analysis.setter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  specialized CanvasElementViewController._analysis.setter(v1);
}

unint64_t lazy protocol witness table accessor for type RulerHostingDelegate? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type RulerHostingDelegate? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type RulerHostingDelegate? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit20RulerHostingDelegateCSgMd, &_s8PaperKit20RulerHostingDelegateCSgMR);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type RulerHostingDelegate and conformance NSObject, type metadata accessor for RulerHostingDelegate, MEMORY[0x1E69E81C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RulerHostingDelegate? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PPKQuickLookBannerView? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type PPKQuickLookBannerView? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type PPKQuickLookBannerView? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo22PPKQuickLookBannerViewCSgMd, &_sSo22PPKQuickLookBannerViewCSgMR);
    lazy protocol witness table accessor for type PPKQuickLookBannerView and conformance NSObject(&lazy protocol witness table cache variable for type PPKQuickLookBannerView and conformance NSObject, &lazy cache variable for type metadata for PPKQuickLookBannerView, off_1E8459B20);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PPKQuickLookBannerView? and conformance <A> A?);
  }

  return result;
}

void partial apply for closure #1 in CanvasElementViewController.bannerView.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + direct field offset for CanvasElementViewController._bannerView);
  *(v1 + direct field offset for CanvasElementViewController._bannerView) = v2;
  v4 = v2;
}

uint64_t _s8PaperKit9ShapeTypeOWOcTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8PaperKit5ShapeVWObTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in CanvasElementViewController.updateViewForPaper(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Image(0) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[7];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in CanvasElementViewController.updateViewForPaper(_:)(a1, v6, v7, v8, v1 + v5);
}

double partial apply for closure #1 in CanvasElementViewController._imageHeadroom.setter()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + direct field offset for CanvasElementViewController.__imageHeadroom) = result;
  return result;
}

__n128 partial apply for closure #1 in CanvasElementViewController._imageSize.setter()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + direct field offset for CanvasElementViewController.__imageSize) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnyCancellable? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type AnyCancellable? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type AnyCancellable? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine14AnyCancellableCSgMd, &_s7Combine14AnyCancellableCSgMR);
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyCancellable? and conformance <A> A?);
  }

  return result;
}

double keypath_get_309Tm@<D0>(uint64_t a1@<X3>, void *a2@<X4>, uint64_t *a3@<X8>)
{
  *a3 = specialized CanvasElementViewController.canvasView.getter(a1, a2);

  return result;
}

void partial apply for closure #1 in CanvasElementViewController.canvasSubscribeCancellable.setter(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

void partial apply for closure #1 in CanvasElementViewController.canvasView.setter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  specialized CanvasElementViewController._canvasView.setter(v1);
}

uint64_t partial apply for closure #1 in CanvasElementViewController.updateToolPickerVisibility()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in CanvasElementViewController.updateToolPickerVisibility()(a1, v4, v5, v6);
}

uint64_t closure #1 in AnyCanvas.delegate.setterpartial apply()
{
  return partial apply for closure #1 in AnyCanvas.delegate.setter();
}

{
  return _s8PaperKit9AnyCanvasC8delegateAA0D8Delegate_pSgvsyyXEfU_TA_0();
}

uint64_t one-time initialization function for dynamicRangeLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, dynamicRangeLogger);
  __swift_project_value_buffer(v0, dynamicRangeLogger);
  return Logger.init(subsystem:category:)();
}

void CGImageSourceRef.dynamicRangeComponents.getter(uint64_t a1@<X8>)
{
  v3 = CGImageSourceRef.decodedHDRComponent.getter();
  if (!v1)
  {
    if (v3)
    {
      v6 = v4;
      v7 = v5;
      v8 = v3;
      v9 = specialized closure #1 in CGImageSourceRef.dynamicRangeComponents.getter(v3);
      CGImageSourceRef.decodedSDRComponent.getter();
      if (v10)
      {
        v14 = v10;

        if (v9)
        {
          *a1 = v14;
          *(a1 + 8) = v8;
          *(a1 + 16) = v6;
          *(a1 + 24) = v7;
          *(a1 + 32) = 2;
          return;
        }
      }

      *a1 = v8;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      *(a1 + 24) = 0;
      *(a1 + 32) = 1;
    }

    else
    {
      CGImageSourceRef.decodedSDRComponent.getter();
      if (v12)
      {
        *a1 = v12;
        *(a1 + 8) = v13;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
      }

      else
      {
        if (one-time initialization token for dynamicRangeLogger != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, dynamicRangeLogger);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_1D38C4000, v16, v17, "Image source is missing both SDR and HDR components", v18, 2u);
          MEMORY[0x1DA6D0660](v18, -1, -1);
        }

        lazy protocol witness table accessor for type CGImageSourceRef.DynamicRangeComponents.Errors and conformance CGImageSourceRef.DynamicRangeComponents.Errors();
        swift_allocError();
        *v19 = 1;
        swift_willThrow();
      }
    }
  }
}

void CGImageSourceRef.decodedSDRComponent.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_ADtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_ADtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4058CF0;
  v2 = *MEMORY[0x1E696E018];
  *(inited + 32) = *MEMORY[0x1E696E018];
  v3 = *MEMORY[0x1E696E030];
  *(inited + 40) = *MEMORY[0x1E696E030];
  v4 = v2;
  v5 = v3;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ADTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo11CFStringRefa_ABtMd, &_sSo11CFStringRefa_ABtMR);
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v0, 0, v6.super.isa);
  if (ImageAtIndex && (v8 = ImageAtIndex, !CGImageGetColorSpace(ImageAtIndex)))
  {
    if (one-time initialization token for dynamicRangeLogger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, dynamicRangeLogger);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D38C4000, v10, v11, "SDR image does not have a color space", v12, 2u);
      MEMORY[0x1DA6D0660](v12, -1, -1);
    }

    lazy protocol witness table accessor for type CGImageSourceRef.DynamicRangeComponents.Errors and conformance CGImageSourceRef.DynamicRangeComponents.Errors();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  else
  {
  }
}

CGImage *CGImageSourceRef.decodedHDRComponent.getter()
{
  v1 = v0;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v2 = *MEMORY[0x1E696E020];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SbtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SbtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4058CF0;
  v4 = *MEMORY[0x1E696D208];
  *(inited + 32) = *MEMORY[0x1E696D208];
  *(inited + 40) = 1;
  v5 = v4;
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SbTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo11CFStringRefa_SbtMd, &_sSo11CFStringRefa_SbtMR);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaSbGMd, &_sSDySo11CFStringRefaSbGMR);
  *&v27 = v6;
  outlined init with take of Any(&v27, v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v2, isUniquelyReferenced_nonNull_native);
  v8 = *MEMORY[0x1E696E018];
  v9 = *MEMORY[0x1E696E028];
  type metadata accessor for CFStringRef(0);
  v28 = v10;
  *&v27 = v9;
  outlined init with take of Any(&v27, v26);
  v11 = v9;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v8, v12);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v1, 0, isa);

  if (!ImageAtIndex)
  {

    return ImageAtIndex;
  }

  v15 = CGImageGetColorSpace(ImageAtIndex);
  if (v15)
  {
    v16 = v15;
    if (MEMORY[0x1DA6CEC30]())
    {
    }

    else
    {
      v22 = CGColorSpaceUsesExtendedRange(v16);

      if (!v22)
      {
        goto LABEL_16;
      }
    }

    CGImageGetContentHeadroom();
    v24 = v23;
    if (v23 == 0.0 && CGImageGetBitsPerComponent(ImageAtIndex) > 15 || v24 > 1.0)
    {
      return ImageAtIndex;
    }

LABEL_16:

    return 0;
  }

  if (one-time initialization token for dynamicRangeLogger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, dynamicRangeLogger);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1D38C4000, v18, v19, "HDR image does not have a color space", v20, 2u);
    MEMORY[0x1DA6D0660](v20, -1, -1);
  }

  lazy protocol witness table accessor for type CGImageSourceRef.DynamicRangeComponents.Errors and conformance CGImageSourceRef.DynamicRangeComponents.Errors();
  swift_allocError();
  *v21 = 0;
  swift_willThrow();

  return ImageAtIndex;
}

unint64_t lazy protocol witness table accessor for type CGImageSourceRef.DynamicRangeComponents.Errors and conformance CGImageSourceRef.DynamicRangeComponents.Errors()
{
  result = lazy protocol witness table cache variable for type CGImageSourceRef.DynamicRangeComponents.Errors and conformance CGImageSourceRef.DynamicRangeComponents.Errors;
  if (!lazy protocol witness table cache variable for type CGImageSourceRef.DynamicRangeComponents.Errors and conformance CGImageSourceRef.DynamicRangeComponents.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGImageSourceRef.DynamicRangeComponents.Errors and conformance CGImageSourceRef.DynamicRangeComponents.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGImageSourceRef.DynamicRangeComponents.Errors and conformance CGImageSourceRef.DynamicRangeComponents.Errors;
  if (!lazy protocol witness table cache variable for type CGImageSourceRef.DynamicRangeComponents.Errors and conformance CGImageSourceRef.DynamicRangeComponents.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGImageSourceRef.DynamicRangeComponents.Errors and conformance CGImageSourceRef.DynamicRangeComponents.Errors);
  }

  return result;
}

uint64_t specialized closure #1 in CGImageSourceRef.dynamicRangeComponents.getter(CGImage *a1)
{
  v1 = CGImageGetUTType(a1);
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  return 0;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CGImageSourceRef.DynamicRangeComponents(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CGImageSourceRef.DynamicRangeComponents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void CanvasElementResizeViewMoreButton.init()()
{
  *&v0[OBJC_IVAR____TtC8PaperKit33CanvasElementResizeViewMoreButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = MEMORY[0x1DA6CCED0](0xD000000000000014, 0x80000001D408E410);
  v2 = [objc_opt_self() systemImageNamed_];

  if (v2)
  {
    v3 = OBJC_IVAR____TtC8PaperKit33CanvasElementResizeViewMoreButton_imageView;
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

    *&v0[v3] = v4;
    v22.receiver = v0;
    v22.super_class = type metadata accessor for CanvasElementResizeViewMoreButton();
    v5 = objc_msgSendSuper2(&v22, sel_initWithFrame_, 0.0, 0.0, 22.0, 22.0);
    v6 = OBJC_IVAR____TtC8PaperKit33CanvasElementResizeViewMoreButton_imageView;
    v7 = *&v5[OBJC_IVAR____TtC8PaperKit33CanvasElementResizeViewMoreButton_imageView];
    v8 = v5;
    v9 = v7;
    [v8 bounds];
    [v9 setFrame_];

    v10 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    v11 = v8;
    [v11 frame];
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    MidX = CGRectGetMidX(v23);
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    [v10 setCenter_];
    v17 = [objc_opt_self() systemBackgroundColor];
    [v10 setBackgroundColor_];

    [v11 addSubview_];
    [v11 addSubview_];
    [v11 setIsAccessibilityElement_];
    [v11 setAccessibilityTraits_];
    v18 = MEMORY[0x1DA6CCED0](0xD000000000000031, 0x80000001D408E470);
    [v11 setAccessibilityIdentifier_];

    v19 = v11;
    v20 = MEMORY[0x1DA6CCED0](0xD000000000000011, 0x80000001D408E4B0);
    [v19 setAccessibilityLabel_];

    [v19 setContextMenuInteractionEnabled_];
    [v19 setShowsMenuAsPrimaryAction_];
    v21 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];

    [v19 addInteraction_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CanvasElementResizeViewMoreButton.didMoveToWindow()()
{
  v1 = [v0 window];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC8PaperKit33CanvasElementResizeViewMoreButton_imageView];
    v3 = v1;
    v4 = [v3 tintColor];
    if (!v4)
    {
      if (one-time initialization token for resizeHandleColor != -1)
      {
        swift_once();
      }

      v4 = static UIConstants.resizeHandleColor;
    }

    v5 = v4;

    [v2 setTintColor_];
  }
}

id CanvasElementResizeViewMoreButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasElementResizeViewMoreButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized CanvasElementResizeViewMoreButton.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC8PaperKit33CanvasElementResizeViewMoreButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = MEMORY[0x1DA6CCED0](0xD000000000000014, 0x80000001D408E410);
  v2 = [objc_opt_self() systemImageNamed_];

  if (!v2)
  {
    __break(1u);
  }

  v3 = OBJC_IVAR____TtC8PaperKit33CanvasElementResizeViewMoreButton_imageView;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  *(v0 + v3) = v4;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id specialized CanvasElementResizeViewMoreButton.pointerInteraction(_:styleFor:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit14UIPointerShapeOSgMd, &_s5UIKit14UIPointerShapeOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for UIPointerEffect();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [a1 view];
  if (result)
  {
    v11 = result;
    v12 = [result window];
    if (v12)
    {

      v13 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
      type metadata accessor for UIPointerStyle();
      *v9 = v13;
      (*(v6 + 104))(v9, *MEMORY[0x1E69DBF70], v5);
      v14 = type metadata accessor for UIPointerShape();
      (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
      v15 = v13;
      v16 = UIPointerStyle.init(effect:shape:)();

      return v16;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for UIPointerStyle()
{
  result = lazy cache variable for type metadata for UIPointerStyle;
  if (!lazy cache variable for type metadata for UIPointerStyle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIPointerStyle);
  }

  return result;
}

id PPKPDFThumbnailView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PPKPDFThumbnailView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

PaperKit::TouchMode_Internal_optional __swiftcall TouchMode_Internal.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 5)
  {
    v2 = 1;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int CanvasEditingMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TouchMode_Internal and conformance TouchMode_Internal()
{
  result = lazy protocol witness table cache variable for type TouchMode_Internal and conformance TouchMode_Internal;
  if (!lazy protocol witness table cache variable for type TouchMode_Internal and conformance TouchMode_Internal)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TouchMode_Internal and conformance TouchMode_Internal);
  }

  return result;
}

void specialized Sequence.allSatisfy(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v21);
  v19 = v4;
  v20 = v18 - v5;
  v6 = *(a3 + 56);
  v18[0] = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  v18[1] = v4 + 8;
  v18[2] = v4 + 16;
  v23 = a3;

  v11 = 0;
  while (v9)
  {
LABEL_9:
    v13 = v19;
    v14 = v20;
    v15 = v21;
    (*(v19 + 16))(v20, *(v23 + 48) + *(v19 + 72) * (__clz(__rbit64(v9)) | (v11 << 6)), v21);
    v16 = v24;
    v17 = v22(v14);
    (*(v13 + 8))(v14, v15);
    v24 = v16;
    if (!v16)
    {
      v9 &= v9 - 1;
      if (v17)
      {
        continue;
      }
    }

LABEL_11:

    return;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      goto LABEL_11;
    }

    v9 = *(v18[0] + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t specialized CRAttributedString<>.updateAttribute<A>(in:newValue:keypath:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v76 = a5;
  v79 = a3;
  v80 = a4;
  v74 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v75 = &v55 - v7;
  v8 = type metadata accessor for UnknownValueProperties();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22UnknownValuePropertiesVSgMd, &_s9Coherence22UnknownValuePropertiesVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v55 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22UnknownValuePropertiesVSg_ADtMd, &_s9Coherence22UnknownValuePropertiesVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v55 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v70 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v55 - v15;
  v86 = type metadata accessor for Color(0);
  v67 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v55 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v83 = &v55 - v22;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMR);
  v23 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v25 = &v55 - v24;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
  v26 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v55 - v27;
  result = NSNotFound.getter();
  if (result == a1)
  {
    goto LABEL_35;
  }

  v63 = v8;
  if (__OFADD__(a1, v74))
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v56 = v26;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  CRAttributedString.subscript.getter();
  v29 = v82;
  CRAttributedString.Substring.runs.getter();
  (*(v23 + 8))(v25, v29);
  v30 = v83;
  CRAttributedString.Runs.next()();
  v72 = *(v19 + 48);
  v73 = v19 + 48;
  if (v72(v30, 1, v18) != 1)
  {
    v33 = *(v19 + 32);
    v32 = v19 + 32;
    v71 = v33;
    ++v70;
    v62 = (v9 + 48);
    v57 = (v9 + 32);
    v60 = (v9 + 8);
    v67 += 7;
    v66 = (v32 - 24);
    v31 = MEMORY[0x1E69E7CC0];
    v34 = v81;
    v61 = v13;
    v69 = v18;
    v68 = v32;
    while (1)
    {
      v71(v34, v30, v18);
      v35 = v77;
      CRAttributedString.Runs.Run.attributes.getter();
      v79(v35);
      (*v70)(v35, v78);
      result = CRAttributedString.Runs.Run.range.getter();
      v37 = v36 - result;
      if (__OFSUB__(v36, result))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v38 = result;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v39 = __swift_project_value_buffer(v86, static TextAttributeScope.ColorAttribute.defaultValue);
      type metadata accessor for CGColorRef(0);
      v40 = v17;
      _sSo10CGColorRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef, &protocol conformance descriptor for CGColorRef);
      result = static _CFObject.== infix(_:_:)();
      if ((result & 1) == 0)
      {
        goto LABEL_17;
      }

      v41 = *(v86 + 20);
      v42 = *(v65 + 48);
      v43 = v64;
      outlined init with copy of Date?(&v17[v41], v64, &_s9Coherence22UnknownValuePropertiesVSgMd, &_s9Coherence22UnknownValuePropertiesVSgMR);
      outlined init with copy of Date?(v39 + v41, v43 + v42, &_s9Coherence22UnknownValuePropertiesVSgMd, &_s9Coherence22UnknownValuePropertiesVSgMR);
      v44 = *v62;
      v45 = v63;
      if ((*v62)(v43, 1, v63) == 1)
      {
        break;
      }

      v46 = v61;
      outlined init with copy of Date?(v43, v61, &_s9Coherence22UnknownValuePropertiesVSgMd, &_s9Coherence22UnknownValuePropertiesVSgMR);
      if (v44(v43 + v42, 1, v45) == 1)
      {
        (*v60)(v46, v45);
LABEL_16:
        result = outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence22UnknownValuePropertiesVSg_ADtMd, &_s9Coherence22UnknownValuePropertiesVSg_ADtMR);
        goto LABEL_17;
      }

      v53 = v58;
      (*v57)(v58, v43 + v42, v45);
      _sSo10CGColorRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type UnknownValueProperties and conformance UnknownValueProperties, MEMORY[0x1E6995350], MEMORY[0x1E6995360]);
      v59 = dispatch thunk of static Equatable.== infix(_:_:)();
      v54 = *v60;
      (*v60)(v53, v45);
      v54(v46, v45);
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence22UnknownValuePropertiesVSgMd, &_s9Coherence22UnknownValuePropertiesVSgMR);
      if (v59)
      {
        goto LABEL_27;
      }

LABEL_17:
      if (__OFADD__(v38, v37))
      {
        goto LABEL_31;
      }

      if (v38 + v37 < v38)
      {
        goto LABEL_32;
      }

      v47 = v75;
      _s8PaperKit5ColorVWOcTm_0(v40, v75, type metadata accessor for Color);
      (*v67)(v47, 0, 1, v86);
LABEL_20:

      v48 = CRAttributedString.subscript.modify();
      lazy protocol witness table accessor for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute();
      CRAttributedString.Substring.subscript.setter();
      v48(v87, 0);
      outlined destroy of Shape(v40, type metadata accessor for Color);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v40;
      v18 = v69;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
      }

      v51 = *(v31 + 2);
      v50 = *(v31 + 3);
      v34 = v81;
      if (v51 >= v50 >> 1)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v31);
        v34 = v81;
      }

      (*v66)(v34, v18);
      *(v31 + 2) = v51 + 1;
      v52 = &v31[16 * v51];
      *(v52 + 4) = v38;
      *(v52 + 5) = v37;
      v30 = v83;
      CRAttributedString.Runs.next()();
      if (v72(v30, 1, v18) == 1)
      {
        goto LABEL_5;
      }
    }

    if (v44(v43 + v42, 1, v45) == 1)
    {
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence22UnknownValuePropertiesVSgMd, &_s9Coherence22UnknownValuePropertiesVSgMR);
LABEL_27:
      if (__OFADD__(v38, v37))
      {
        goto LABEL_33;
      }

      if (v38 + v37 < v38)
      {
        goto LABEL_34;
      }

      (*v67)(v75, 1, 1, v86);
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v31 = MEMORY[0x1E69E7CC0];
LABEL_5:
  (*(v56 + 8))(v84, v85);
  return v31;
}

uint64_t CanvasFormattingProxy.supportsFillColor.getter(void *a1)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(v1 + 8);
  if (!*(v6 + 16) || (specialized Set.contains(_:)() & 1) == 0)
  {
    return 0;
  }

  v22 = v1;
  v23 = v2;
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 56);
  v10 = (v7 + 63) >> 6;
  v20 = v3 + 16;
  v21 = (v3 + 8);

  v11 = 0;
  while (v9)
  {
LABEL_11:
    v13 = *(v6 + 48) + *(v3 + 72) * (__clz(__rbit64(v9)) | (v11 << 6));
    v14 = v3;
    v15 = *(v3 + 16);
    v16 = v23;
    v15(v5, v13, v23);
    v17 = closure #1 in CanvasFormattingProxy.supportsFillColor.getter(v5, v22, v24[2], v24[3]);
    v9 &= v9 - 1;
    (*v21)(v5, v16);
    v3 = v14;
    if (!v17)
    {
      v18 = 0;
LABEL_15:

      return v18;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      v18 = 1;
      goto LABEL_15;
    }

    v9 = *(v6 + 56 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);

  result = (*v21)(v5, v3);
  __break(1u);
  return result;
}

BOOL closure #1 in CanvasFormattingProxy.supportsFillColor.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a2;
  v31 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v29 - v8;
  v36 = a3;
  v37 = a4;
  v9 = type metadata accessor for Capsule();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v29 - v16;
  v18 = type metadata accessor for Shape(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  WeakTagged_10.tagged6.getter();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v14, 1, v22) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
    (*(v19 + 56))(v17, 1, 1, v18);
LABEL_4:
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
    return 0;
  }

  Canvas.updatablePaper2.getter(v11);
  WeakRef.subscript.getter();
  (*(v33 + 8))(v11, v34);
  (*(v23 + 8))(v14, v22);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    goto LABEL_4;
  }

  _s8PaperKit5ShapeVWObTm_3(v17, v21, type metadata accessor for Shape);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMR);
  v25 = v30;
  CRRegister.wrappedValue.getter();
  v26 = v25;
  v27 = v32;
  _s8PaperKit5ShapeVWObTm_3(v26, v32, type metadata accessor for ShapeType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined destroy of Shape(v21, type metadata accessor for Shape);
    return 0;
  }

  outlined destroy of Shape(v27, type metadata accessor for ShapeType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
  CRRegister.wrappedValue.getter();
  v28 = v38;
  outlined destroy of Shape(v21, type metadata accessor for Shape);
  return v28 == 0;
}

uint64_t CanvasFormattingProxy.supportsStrokeColor.getter(void *a1)
{
  v20 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - v4;
  v6 = *(v1 + 8);
  v7 = *(*(v1 + 16) + 16);
  if (!*(v6 + 16))
  {
    return v7 != 0;
  }

  if (v7)
  {
    return 1;
  }

  v18 = specialized Set.contains(_:)();
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 56);
  v11 = (v8 + 63) >> 6;
  v19 = v3;
  v16 = v3 + 16;
  v17 = (v3 + 8);

  v12 = 0;
  while (v10)
  {
LABEL_11:
    (*(v19 + 16))(v5, *(v6 + 48) + *(v19 + 72) * (__clz(__rbit64(v10)) | (v12 << 6)), v2);
    v14 = closure #1 in CanvasFormattingProxy.supportsStrokeColor.getter(v5, v18 & 1, v1, v20[2], v20[3]);
    v10 &= v10 - 1;
    (*v17)(v5, v2);
    if (!v14)
    {

      return 0;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return 1;
    }

    v10 = *(v6 + 56 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);

  result = (*v17)(v5, v2);
  __break(1u);
  return result;
}

BOOL closure #1 in CanvasFormattingProxy.supportsStrokeColor.getter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v42 = a2;
  v37 = a4;
  v38 = a5;
  v5 = type metadata accessor for Capsule();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v41 = &v32 - v11;
  v12 = type metadata accessor for Shape(0);
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v32 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v32 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  WeakTagged_10.tagged7.getter();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGMd, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGMR);
  v21 = 1;
  v22 = (*(*(v20 - 8) + 48))(v19, 1, v20);
  outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMR);
  if (v22 == 1)
  {
    WeakTagged_10.tagged10.getter();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGMd, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGMR);
    v24 = (*(*(v23 - 8) + 48))(v16, 1, v23);
    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMR);
    v21 = v24 != 1;
    if (v24 == 1 && (v42 & 1) != 0)
    {
      WeakTagged_10.tagged6.getter();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v9, 1, v25) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
        v27 = v41;
        (*(v39 + 56))(v41, 1, 1, v40);
      }

      else
      {
        v28 = v33;
        Canvas.updatablePaper2.getter(v33);
        v27 = v41;
        WeakRef.subscript.getter();
        (*(v35 + 8))(v28, v36);
        (*(v26 + 8))(v9, v25);
        if ((*(v39 + 48))(v27, 1, v40) != 1)
        {
          v29 = v32;
          _s8PaperKit5ShapeVWObTm_3(v27, v32, type metadata accessor for Shape);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
          CRRegister.wrappedValue.getter();
          v30 = v43;
          outlined destroy of Shape(v29, type metadata accessor for Shape);
          return v30 == 0;
        }
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
      return 0;
    }
  }

  return v21;
}

BOOL closure #1 in CanvasFormattingProxy.supportsFontColor.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = a4;
  v22[1] = a2;
  v4 = type metadata accessor for Capsule();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v22 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  WeakTagged_10.tagged6.getter();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    v16 = &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd;
    v17 = &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR;
    v18 = v10;
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v18, v16, v17);
    return 0;
  }

  Canvas.updatablePaper2.getter(v7);
  WeakRef.subscript.getter();
  (*(v5 + 8))(v7, v4);
  (*(v15 + 8))(v10, v14);
  v19 = type metadata accessor for Shape(0);
  if ((*(*(v19 - 8) + 48))(v13, 1, v19) == 1)
  {
    v16 = &_s8PaperKit5ShapeVSgMd;
    v17 = &_s8PaperKit5ShapeVSgMR;
    v18 = v13;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
  CRRegister.wrappedValue.getter();
  v21 = v22[5] != 0;
  outlined destroy of Shape(v13, type metadata accessor for Shape);
  return v21;
}

uint64_t closure #1 in CanvasFormattingProxy.supportsTextStyle.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v30 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v28 - v8;
  v34 = a3;
  v35 = a4;
  v9 = type metadata accessor for Capsule();
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v28 - v16;
  v18 = type metadata accessor for Shape(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  WeakTagged_10.tagged6.getter();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v14, 1, v22) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
    (*(v19 + 56))(v17, 1, 1, v18);
LABEL_4:
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
    return 0;
  }

  Canvas.updatablePaper2.getter(v11);
  WeakRef.subscript.getter();
  (*(v31 + 8))(v11, v32);
  (*(v23 + 8))(v14, v22);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    goto LABEL_4;
  }

  _s8PaperKit5ShapeVWObTm_3(v17, v21, type metadata accessor for Shape);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMR);
  v25 = v28;
  CRRegister.wrappedValue.getter();
  outlined destroy of Shape(v21, type metadata accessor for Shape);
  v26 = v25;
  v27 = v29;
  _s8PaperKit5ShapeVWObTm_3(v26, v29, type metadata accessor for ShapeType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    return 0;
  }

  outlined destroy of Shape(v27, type metadata accessor for ShapeType);
  return 1;
}

BOOL closure #1 in CanvasFormattingProxy.supportsOpacity.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v30 = a3;
  v31 = a4;
  v9 = type metadata accessor for Capsule();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for Shape(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v26 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v25 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  WeakTagged_10.tagged6.getter();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
    return 0;
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    Canvas.updatablePaper2.getter(v11);
    WeakRef.subscript.getter();
    (*(v27 + 8))(v11, v28);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {
      (*(v19 + 8))(v21, v18);
      outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
      return 1;
    }

    else
    {
      v23 = v8;
      v24 = v26;
      _s8PaperKit5ShapeVWObTm_3(v23, v26, type metadata accessor for Shape);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
      CRRegister.wrappedValue.getter();
      outlined destroy of Shape(v24, type metadata accessor for Shape);
      (*(v19 + 8))(v21, v18);
      return v32 == 0;
    }
  }
}

uint64_t CanvasFormattingProxy.supportsFontColor.getter(void *a1, uint64_t (*a2)(char *, uint64_t, void, void, void))
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - v7;
  v27 = v2;
  v9 = *(v2 + 8);
  if (*(v9 + 16))
  {
    v25 = v6;
    v26 = v5;
    v10 = v9 + 56;
    v11 = 1 << *(v9 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v9 + 56);
    v14 = (v11 + 63) >> 6;
    v23[1] = v6 + 16;
    v24 = (v6 + 8);

    v15 = 0;
    while (v13)
    {
LABEL_10:
      v17 = v9;
      v18 = *(v9 + 48);
      v19 = v26;
      (*(v25 + 16))(v8, v18 + *(v25 + 72) * (__clz(__rbit64(v13)) | (v15 << 6)), v26);
      v20 = v28(v8, v27, a1[2], a1[3], a1[4]);
      v13 &= v13 - 1;
      (*v24)(v8, v19);
      v9 = v17;
      if ((v20 & 1) == 0)
      {
        v21 = 0;
LABEL_13:

        return v21;
      }
    }

    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
        v21 = 1;
        goto LABEL_13;
      }

      v13 = *(v10 + 8 * v16);
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_10;
      }
    }

    __break(1u);

    result = (*v24)(v8, v9);
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t closure #1 in CanvasFormattingProxy.supportsLineEnds.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v30 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v28 - v8;
  v34 = a3;
  v35 = a4;
  v9 = type metadata accessor for Capsule();
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v28 - v16;
  v18 = type metadata accessor for Shape(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  WeakTagged_10.tagged6.getter();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v14, 1, v22) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
    (*(v19 + 56))(v17, 1, 1, v18);
LABEL_4:
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
    return 0;
  }

  Canvas.updatablePaper2.getter(v11);
  WeakRef.subscript.getter();
  (*(v31 + 8))(v11, v32);
  (*(v23 + 8))(v14, v22);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    goto LABEL_4;
  }

  _s8PaperKit5ShapeVWObTm_3(v17, v21, type metadata accessor for Shape);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMR);
  v25 = v28;
  CRRegister.wrappedValue.getter();
  outlined destroy of Shape(v21, type metadata accessor for Shape);
  v26 = v25;
  v27 = v29;
  _s8PaperKit5ShapeVWObTm_3(v26, v29, type metadata accessor for ShapeType);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of Shape(v27, type metadata accessor for ShapeType);
    return 0;
  }

  return 1;
}

uint64_t CanvasFormattingProxy.supportsImages.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(v0 + 8);
  if (*(v7 + 16) == 1)
  {
    specialized Collection.first.getter(v7, v3);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v3, 1, v8) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd, &_s9Coherence7WeakRefVy8PaperKit5ImageVGMR);
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    }

    else
    {
      WeakTagged_10.tagged2.getter();
      (*(v9 + 8))(v3, v8);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd, &_s9Coherence7WeakRefVy8PaperKit5ImageVGMR);
      v11 = 1;
      if ((*(*(v12 - 8) + 48))(v6, 1, v12) != 1)
      {
LABEL_7:
        outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMR);
        return v11;
      }
    }

    v11 = 0;
    goto LABEL_7;
  }

  return 0;
}

uint64_t CanvasFormattingProxy.supportsImageRegeneration.getter(void *a1)
{
  v2 = v1;
  v4 = a1[2];
  v5 = type metadata accessor for Capsule();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ImageVSgMd, &_s8PaperKit5ImageVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v29 - v16;
  if (!CanvasFormattingProxy.supportsImageGeneration.getter(a1))
  {
    return 0;
  }

  v29[0] = v6;
  v29[1] = v4;
  specialized Collection.first.getter(*(v2 + 8), v11);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    v20 = &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd;
    v21 = &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMR;
    v22 = v11;
LABEL_8:
    outlined destroy of StocksKitCurrencyCache.Provider?(v22, v20, v21);
    return 0;
  }

  WeakTagged_10.tagged2.getter();
  (*(v19 + 8))(v11, v18);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd, &_s9Coherence7WeakRefVy8PaperKit5ImageVGMR);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v14, 1, v23) == 1)
  {
    v20 = &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd;
    v21 = &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMR;
    v22 = v14;
    goto LABEL_8;
  }

  Canvas.updatablePaper2.getter(v8);
  WeakRef.subscript.getter();
  (*(v29[0] + 8))(v8, v5);
  (*(v24 + 8))(v14, v23);
  v25 = type metadata accessor for Image(0);
  if ((*(*(v25 - 8) + 48))(v17, 1, v25) == 1)
  {
    v20 = &_s8PaperKit5ImageVSgMd;
    v21 = &_s8PaperKit5ImageVSgMR;
    v22 = v17;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  CRRegister.wrappedValue.getter();
  v27 = v29[2];
  v28 = v29[3];
  outlined destroy of Shape(v17, type metadata accessor for Image);
  if (v28 >> 60 != 15)
  {
    outlined consume of Data?(v27, v28);
    return 1;
  }

  return 0;
}

BOOL CanvasFormattingProxy.supportsImageGeneration.getter(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  if ((CanvasFormattingProxy.supportsMagicGenerativePlaygroundForSelection.getter(a1) & 1) == 0)
  {
    return 0;
  }

  CanvasMembers.singleImageSelected()(*(v1 + 8), *(v1 + 16), v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd, &_s9Coherence7WeakRefVy8PaperKit5ImageVGMR);
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6) != 1;
  outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMR);
  return v7;
}

uint64_t CanvasFormattingProxy.supportsMagicGenerativePlaygroundForSelection.getter(void *a1)
{
  v2 = v1;
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v30 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - v5;
  v7 = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x468))(v4);
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  type metadata accessor for TiledTextView();
  if (!swift_dynamicCastClass())
  {

LABEL_5:
    v12 = 1;
    goto LABEL_6;
  }

  v9 = TiledTextView.canvasGenerationToolOverlayController.getter();
  v10 = CanvasGenerationToolOverlayController.imageGenerationController.getter();
  v11 = [v10 shouldShowImageGenerationUI];

  v12 = v11 ^ 1;
LABEL_6:
  v13 = MGCopyAnswer();
  v14 = [v13 BOOLValue];

  v15 = 0;
  if (v14 & 1) != 0 || (v12)
  {
    return v15;
  }

  v16 = *(v2 + 8);
  if (!*(v16 + 16) && !*(*(v2 + 16) + 16) && (*(v2 + 32) & 1) == 0)
  {
    return 0;
  }

  v27 = v2;
  v28 = v3;
  v17 = 1 << *(v16 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v16 + 56);
  v20 = (v17 + 63) >> 6;
  v26 = v30 + 16;
  v21 = (v30 + 8);

  v22 = 0;
  while (v19)
  {
LABEL_19:
    v2 = v28;
    (*(v30 + 16))(v6, *(v16 + 48) + *(v30 + 72) * (__clz(__rbit64(v19)) | (v22 << 6)), v28);
    v24 = closure #1 in implicit closure #3 in CanvasFormattingProxy.supportsMagicGenerativePlaygroundForSelection.getter(v6, v27, v29[2], v29[3]);
    v19 &= v19 - 1;
    (*v21)(v6, v2);
    if ((v24 & 1) == 0)
    {
      v15 = 0;
LABEL_22:

      return v15;
    }
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      v15 = 1;
      goto LABEL_22;
    }

    v19 = *(v16 + 56 + 8 * v23);
    ++v22;
    if (v19)
    {
      v22 = v23;
      goto LABEL_19;
    }
  }

  __break(1u);

  result = (*v21)(v6, v2);
  __break(1u);
  return result;
}

uint64_t closure #1 in implicit closure #3 in CanvasFormattingProxy.supportsMagicGenerativePlaygroundForSelection.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v46 = &v45 - v9;
  v51 = a3;
  v52 = a4;
  v49 = type metadata accessor for Capsule();
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v45 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit7TextBoxVGSgMd, &_s9Coherence7WeakRefVy8PaperKit7TextBoxVGSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit7TextBoxVSgMd, &_s8PaperKit7TextBoxVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12GraphElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit12GraphElementVGSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v45 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  WeakTagged_10.tagged3.getter();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12GraphElementVGMd, &_s9Coherence7WeakRefVy8PaperKit12GraphElementVGMR);
  LODWORD(a3) = (*(*(v23 - 8) + 48))(v22, 1, v23);
  outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence7WeakRefVy8PaperKit12GraphElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit12GraphElementVGSgMR);
  if (a3 != 1)
  {
    v29 = 0;
    return v29 & 1;
  }

  WeakTagged_10.tagged4.getter();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit7TextBoxVGMd, &_s9Coherence7WeakRefVy8PaperKit7TextBoxVGMR);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v16, 1, v24) == 1)
  {
    v26 = &_s9Coherence7WeakRefVy8PaperKit7TextBoxVGSgMd;
    v27 = &_s9Coherence7WeakRefVy8PaperKit7TextBoxVGSgMR;
    v28 = v16;
  }

  else
  {
    Canvas.updatablePaper2.getter(v13);
    WeakRef.subscript.getter();
    (*(v48 + 8))(v13, v49);
    (*(v25 + 8))(v16, v24);
    v30 = type metadata accessor for TextBox(0);
    if ((*(*(v30 - 8) + 48))(v19, 1, v30) != 1)
    {
      *(&v54 + 1) = v30;
      v55 = &protocol witness table for TextBox;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v53);
      _s8PaperKit5ShapeVWObTm_3(v19, boxed_opaque_existential_1, type metadata accessor for TextBox);
      outlined init with take of PaperKitHashable(&v53, &v56);
      goto LABEL_16;
    }

    v26 = &_s8PaperKit7TextBoxVSgMd;
    v27 = &_s8PaperKit7TextBoxVSgMR;
    v28 = v19;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v28, v26, v27);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v31 = v47;
  WeakTagged_10.tagged6.getter();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    v34 = &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd;
    v35 = &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR;
    v36 = v31;
  }

  else
  {
    v37 = v45;
    Canvas.updatablePaper2.getter(v45);
    v38 = v46;
    WeakRef.subscript.getter();
    (*(v48 + 8))(v37, v49);
    (*(v33 + 8))(v31, v32);
    v39 = type metadata accessor for Shape(0);
    if ((*(*(v39 - 8) + 48))(v38, 1, v39) != 1)
    {
      *(&v57 + 1) = v39;
      v58 = &protocol witness table for Shape;
      v41 = __swift_allocate_boxed_opaque_existential_1(&v56);
      _s8PaperKit5ShapeVWObTm_3(v38, v41, type metadata accessor for Shape);
      if (!*(&v54 + 1))
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v34 = &_s8PaperKit5ShapeVSgMd;
    v35 = &_s8PaperKit5ShapeVSgMR;
    v36 = v38;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v36, v34, v35);
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  if (*(&v54 + 1))
  {
LABEL_15:
    outlined destroy of StocksKitCurrencyCache.Provider?(&v53, &_s8PaperKit12ShapeTextBox_pSgMd, &_s8PaperKit12ShapeTextBox_pSgMR);
  }

LABEL_16:
  if (*(&v57 + 1))
  {
    outlined init with take of PaperKitHashable(&v56, v59);
    v42 = v60;
    v43 = v61;
    __swift_project_boxed_opaque_existential_1(v59, v60);
    v29 = (*(v43 + 72))(v42, v43) ^ 1;
    __swift_destroy_boxed_opaque_existential_0(v59);
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(&v56, &_s8PaperKit12ShapeTextBox_pSgMd, &_s8PaperKit12ShapeTextBox_pSgMR);
    v29 = 1;
  }

  return v29 & 1;
}

uint64_t CanvasFormattingProxy.fillColor.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v64 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v56 - v6;
  v7 = *(a1 + 16);
  v75 = *(a1 + 24);
  v76 = v7;
  v74 = type metadata accessor for Capsule();
  v8 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v58 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v59 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v56 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v56 - v17;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v19 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v21 = &v56 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v80 = &v56 - v27;
  v72 = v2;
  v28 = v2[1];
  v29 = v18;
  v30 = v28 + 56;
  v31 = 1 << *(v28 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v28 + 56);
  v34 = (v31 + 63) >> 6;
  v78 = v26 + 32;
  v79 = v26 + 16;
  v77 = (v19 + 48);
  v73 = (v8 + 8);
  v66 = (v19 + 32);
  v67 = (v19 + 8);
  v35 = v21;
  v81 = v26;
  v82 = (v26 + 8);
  v83 = v28;

  v36 = 0;
  v69 = v22;
  v70 = v21;
  v68 = v24;
  if (!v33)
  {
LABEL_6:
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v34)
      {

        goto LABEL_20;
      }

      v33 = *(v30 + 8 * v37);
      ++v36;
      if (v33)
      {
        v36 = v37;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  while (1)
  {
LABEL_10:
    while (1)
    {
      v38 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v40 = v80;
      v39 = v81;
      (*(v81 + 16))(v80, *(v83 + 48) + *(v81 + 72) * (v38 | (v36 << 6)), v22);
      (*(v39 + 32))(v24, v40, v22);
      v41 = v29;
      WeakTagged_10.tagged6.getter();
      if ((*v77)(v29, 1, v85) != 1)
      {
        break;
      }

      (*v82)(v24, v22);
      outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
      if (!v33)
      {
        goto LABEL_6;
      }
    }

    (*v66)(v35, v29, v85);
    v42 = v84;
    v43 = v71;
    v65 = *v72;
    Canvas.updatablePaper2.getter(v71);
    WeakRef.subscript.getter();
    v44 = *v73;
    (*v73)(v43, v74);
    v45 = type metadata accessor for Shape(0);
    v46 = *(v45 - 8);
    v47 = *(v46 + 48);
    v48 = v46 + 48;
    if (v47(v42, 1, v45) != 1)
    {
      break;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v84, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
LABEL_15:
    v24 = v68;
    v22 = v69;
LABEL_17:
    v35 = v70;
    (*v67)(v70, v85);
    (*v82)(v24, v22);
    v29 = v41;
    if (!v33)
    {
      goto LABEL_6;
    }
  }

  v60 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMR);
  v49 = v62;
  CRRegister.wrappedValue.getter();
  v50 = v63;
  _s8PaperKit5ShapeVWObTm_3(v49, v63, type metadata accessor for ShapeType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined destroy of Shape(v84, type metadata accessor for Shape);
    goto LABEL_15;
  }

  v57 = v47;
  outlined destroy of Shape(v50, type metadata accessor for ShapeType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
  v51 = v84;
  CRRegister.wrappedValue.getter();
  v52 = v86;
  outlined destroy of Shape(v51, type metadata accessor for Shape);
  v24 = v68;
  v22 = v69;
  if (v52)
  {
    goto LABEL_17;
  }

  v55 = v58;
  Canvas.updatablePaper2.getter(v58);
  v34 = v59;
  v33 = v70;
  WeakRef.subscript.getter();
  v44(v55, v74);
  if (v57(v34, 1, v45) != 1)
  {
LABEL_24:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
    CRRegister.wrappedValue.getter();

    (*v67)(v33, v85);
    (*v82)(v24, v22);
    return outlined destroy of Shape(v34, type metadata accessor for Shape);
  }

  (*v67)(v33, v85);
  (*v82)(v24, v22);
  outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
LABEL_20:
  v53 = type metadata accessor for Color(0);
  return (*(*(v53 - 8) + 56))(v61, 1, 1, v53);
}

void closure #1 in closure #1 in CanvasFormattingProxy.fillColor.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v63 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v46 - v7;
  v55 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v46 - v10;
  v64 = type metadata accessor for Shape(0);
  v11 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v56 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v60 = &v46 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v46 - v16;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v18 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v70 = &v46 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v69 = &v46 - v25;
  v26 = *(a2 + 8);
  v27 = v26 + 56;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 56);
  v31 = (v28 + 63) >> 6;
  v67 = v21 + 32;
  v68 = v21 + 16;
  v62 = (v11 + 48);
  v57 = (v18 + 8);
  v58 = (v18 + 32);
  v65 = (v21 + 8);
  v66 = (v18 + 48);
  v71 = v26;

  v32 = 0;
  v61 = v17;
  v59 = v23;
  while (v30)
  {
LABEL_10:
    while (1)
    {
      v34 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v35 = v69;
      (*(v21 + 16))(v69, *(v71 + 48) + *(v21 + 72) * (v34 | (v32 << 6)), v20);
      (*(v21 + 32))(v23, v35, v20);
      WeakTagged_10.tagged6.getter();
      v36 = v73;
      if ((*v66)(v17, 1, v73) != 1)
      {
        break;
      }

      (*v65)(v23, v20);
      outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
      if (!v30)
      {
        goto LABEL_6;
      }
    }

    (*v58)(v70, v17, v36);
    v37 = v60;
    WeakRef.subscript.getter();
    v38 = *v62;
    if ((*v62)(v37, 1, v64))
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
      v17 = v61;
      v23 = v59;
    }

    else
    {
      v52 = v21;
      _s8PaperKit5ColorVWOcTm_0(v37, v56, type metadata accessor for Shape);
      outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMR);
      v39 = v53;
      CRRegister.wrappedValue.getter();
      v40 = v54;
      _s8PaperKit5ShapeVWObTm_3(v39, v54, type metadata accessor for ShapeType);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        outlined destroy of Shape(v56, type metadata accessor for Shape);
        v17 = v61;
        v23 = v59;
        v21 = v52;
      }

      else
      {
        v48 = v38;
        outlined destroy of Shape(v40, type metadata accessor for ShapeType);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
        v41 = v56;
        CRRegister.wrappedValue.getter();
        v42 = v72[0];
        outlined destroy of Shape(v41, type metadata accessor for Shape);
        v17 = v61;
        v23 = v59;
        v21 = v52;
        if (!v42)
        {
          v47 = WeakRef.subscript.modify();
          if (!v48(v43, 1, v64))
          {
            v44 = v49;
            outlined init with copy of Date?(v50, v49, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
            outlined init with copy of Date?(v44, v51, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
            v48 = *(v64 + 24);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
            CRRegister.wrappedValue.setter();
            v45 = v44;
            v17 = v61;
            outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
          }

          v47(v72, 0);
        }
      }
    }

    (*v57)(v70, v73);
    (*v65)(v23, v20);
  }

LABEL_6:
  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v31)
    {

      return;
    }

    v30 = *(v27 + 8 * v33);
    ++v32;
    if (v30)
    {
      v32 = v33;
      goto LABEL_10;
    }
  }

  __break(1u);
}

double CanvasFormattingProxy.strokeColor.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v180 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v179 = &v160 - v6;
  v178 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v178);
  v185 = &v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v177 = &v160 - v9;
  v10 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v192 = &v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v184);
  v191 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v183 = &v160 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v213 = &v160 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v182 = &v160 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR);
  v173 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v176 = &v160 - v20;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v210 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v196 = &v160 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit12LoupeElementVSgMd, &_s8PaperKit12LoupeElementVSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v167 = &v160 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v201 = &v160 - v25;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGMd, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGMR);
  v26 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v165 = &v160 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9SignatureVSgMd, &_s8PaperKit9SignatureVSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v171 = &v160 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMR);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v200 = &v160 - v31;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGMd, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGMR);
  v32 = *(v208 - 1);
  MEMORY[0x1EEE9AC00](v208);
  v169 = &v160 - v33;
  v34 = *(a1 + 24);
  v217 = *(a1 + 16);
  v218 = v34;
  v216 = type metadata accessor for Capsule();
  v35 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v175 = &v160 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v221 = &v160 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v174 = &v160 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v195 = &v160 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v164 = &v160 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v168 = &v160 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v162 = &v160 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v190 = &v160 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v163 = &v160 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v189 = &v160 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v57 = &v160 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v206 = &v160 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v61);
  v220 = &v160 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v205 = &v160 - v66;
  v68 = v3[1];
  v67 = v3[2];
  v215 = v3;
  v212 = v67;
  v69 = v68 + 56;
  v70 = 1 << *(v68 + 32);
  v71 = -1;
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  v72 = v71 & *(v68 + 56);
  v73 = (v70 + 63) >> 6;
  v203 = v65 + 32;
  v204 = v65 + 16;
  v202 = (v59 + 48);
  v187 = (v59 + 32);
  v74 = (v35 + 8);
  v75 = v57;
  v219 = v74;
  v188 = (v59 + 8);
  v76 = v64;
  v170 = v32;
  v199 = (v32 + 48);
  v166 = v26;
  v194 = (v26 + 48);
  v77 = v65;
  v207 = (v65 + 8);
  v211 = v68;

  v79 = 0;
  v214 = v58;
  v193 = v75;
  v209 = v76;
  v186 = v77;
  if (!v72)
  {
LABEL_5:
    v82 = v220;
    while (1)
    {
      v81 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        __break(1u);
        goto LABEL_57;
      }

      if (v81 >= v73)
      {
        break;
      }

      v72 = *(v69 + 8 * v81);
      ++v79;
      if (v72)
      {
        v80 = v75;
        goto LABEL_10;
      }
    }

    v98 = *(v212 + 56);
    v206 = (v212 + 56);
    v99 = 1 << *(v212 + 32);
    v100 = -1;
    if (v99 < 64)
    {
      v100 = ~(-1 << v99);
    }

    v101 = v100 & v98;
    v205 = ((v99 + 63) >> 6);
    v211 = v210 + 16;
    v209 = v210 + 8;
    v102 = (v173 + 48);
    v103 = (v173 + 8);
    v220 = (v173 + 32);

    v104 = 0;
    v181 = v19;
    v207 = v102;
    while (v101)
    {
LABEL_29:
      v106 = __clz(__rbit64(v101));
      v101 &= v101 - 1;
      v107 = v210;
      v108 = v196;
      v109 = v197;
      (*(v210 + 16))(v196, *(v212 + 48) + *(v210 + 72) * (v106 | (v104 << 6)), v197);
      v110 = *v215;
      v111 = v195;
      Canvas.updatablePaper2.getter(v195);
      v112 = v213;
      WeakRef.subscript.getter();
      v113 = v112;
      (*(v107 + 8))(v108, v109);
      v114 = *v219;
      (*v219)(v111, v216);
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
      v115 = *(v77 - 8);
      if ((*(v115 + 48))(v113, 1, v77) == 1)
      {
        v78 = outlined destroy of StocksKitCurrencyCache.Provider?(v113, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMR);
      }

      else
      {
        v208 = v114;
        v214 = v110;
        v116 = v183;
        CRRegister.value.getter();
        v117 = v191;
        _s8PaperKit5ShapeVWObTm_3(v116, v191, type metadata accessor for TaggedStroke);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v119 = v181;
        v120 = v207;
        if (EnumCaseMultiPayload)
        {
          outlined destroy of Shape(v117, type metadata accessor for TaggedStroke);
          v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
          v122 = v182;
          (*(*(v121 - 8) + 56))(v182, 1, 1, v121);
        }

        else
        {
          v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
          v123 = *(v204 - 8);
          v124 = v182;
          (*(v123 + 32))(v182, v191, v204);
          (*(v123 + 56))(v124, 0, 1, v204);
          v122 = v124;
        }

        (*(v115 + 8))(v213, v77);
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
        v125 = *(v77 - 8);
        if ((*(v125 + 48))(v122, 1, v77) == 1)
        {
          v78 = outlined destroy of StocksKitCurrencyCache.Provider?(v122, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMR);
        }

        else
        {
          v126 = v174;
          v127 = v122;
          Canvas.updatablePaper2.getter(v174);
          Ref.subscript.getter();
          v128 = v216;
          v208(v126, v216);
          (*(v125 + 8))(v127, v77);
          Canvas.updatablePaper2.getter(v221);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
          v129 = v176;
          CRRegister.wrappedValue.getter();
          v130 = v179;
          v131 = v177;
          while (1)
          {
            swift_getWitnessTable();
            Ref.subscript.getter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
            CRRegister.wrappedValue.getter();
            outlined destroy of Shape(v131, type metadata accessor for PKStrokeInheritedProperties);
            if ((*v120)(v130, 1, v119) == 1)
            {
              break;
            }

            (*v103)(v129, v119);
            (*v220)(v129, v130, v119);
          }

          outlined destroy of StocksKitCurrencyCache.Provider?(v130, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
          outlined destroy of Shape(v192, type metadata accessor for PKStrokeStruct);
          v132 = v208;
          v208(v221, v128);
          v133 = v175;
          Canvas.updatablePaper2.getter(v175);
          Ref.subscript.getter();
          v132(v133, v128);
          (*v103)(v129, v119);
          v77 = *(v178 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
          v134 = v185;
          CRRegister.wrappedValue.getter();
          v78 = outlined destroy of Shape(v134, type metadata accessor for PKStrokeInheritedProperties);
          v135 = v222;
          if (v222)
          {
            v77 = [v222 color];

            if (v77)
            {
              v78 = [v77 CGColor];
              if (v78)
              {
                goto LABEL_58;
              }
            }
          }
        }
      }
    }

    while (1)
    {
      v105 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        break;
      }

      if (v105 >= v205)
      {

        goto LABEL_43;
      }

      v101 = *&v206[8 * v105];
      ++v104;
      if (v101)
      {
        v104 = v105;
        goto LABEL_29;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    v158 = v78;
    v159 = v78;
    Color.init(cgColor:)(v158, v180);

    return result;
  }

  while (1)
  {
    v80 = v75;
    v81 = v79;
    v82 = v220;
LABEL_10:
    v83 = v205;
    (*(v77 + 16))(v205, *(v211 + 48) + *(v77 + 72) * (__clz(__rbit64(v72)) | (v81 << 6)), v76);
    (*(v77 + 32))(v82, v83, v76);
    WeakTagged_10.tagged6.getter();
    v84 = v77;
    v85 = v214;
    if ((*v202)(v80, 1, v214) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v80, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
      v86 = v201;
      v77 = v84;
      goto LABEL_16;
    }

    (*v187)(v206, v80, v85);
    v87 = v190;
    v172 = *v215;
    Canvas.updatablePaper2.getter(v190);
    v88 = v189;
    WeakRef.subscript.getter();
    v89 = v88;
    v90 = *v219;
    (*v219)(v87, v216);
    v91 = type metadata accessor for Shape(0);
    v92 = *(*(v91 - 8) + 48);
    if (v92(v89, 1, v91) != 1)
    {
      break;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v89, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
LABEL_15:
    (*v188)(v206, v214);
    v86 = v201;
    v77 = v186;
LABEL_16:
    v95 = v200;
    v96 = v209;
    v97 = v220;
    WeakTagged_10.tagged7.getter();
    if ((*v199)(v95, 1, v208) != 1)
    {
      v138 = v170;
      v139 = v169;
      v140 = v208;
      (*(v170 + 32))(v169, v95, v208);
      v141 = v168;
      Canvas.updatablePaper2.getter(v168);
      v142 = v171;
      WeakRef.subscript.getter();
      (*v219)(v141, v216);
      v143 = type metadata accessor for Signature(0);
      if ((*(*(v143 - 8) + 48))(v142, 1, v143) == 1)
      {

        (*(v138 + 8))(v139, v140);
        (*v207)(v220, v209);
        v144 = &_s8PaperKit9SignatureVSgMd;
        v145 = &_s8PaperKit9SignatureVSgMR;
        goto LABEL_48;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
      CRRegister.wrappedValue.getter();

      (*(v138 + 8))(v139, v140);
      (*v207)(v220, v209);
      v152 = type metadata accessor for Signature;
      goto LABEL_52;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v95, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMR);
    WeakTagged_10.tagged10.getter();
    if ((*v194)(v86, 1, v198) != 1)
    {
      v146 = v166;
      v147 = v165;
      v148 = v198;
      (*(v166 + 32))(v165, v86, v198);
      v149 = v164;
      Canvas.updatablePaper2.getter(v164);
      v142 = v167;
      WeakRef.subscript.getter();
      (*v219)(v149, v216);
      v150 = type metadata accessor for LoupeElement(0);
      if ((*(*(v150 - 8) + 48))(v142, 1, v150) == 1)
      {

        (*(v146 + 8))(v147, v148);
        (*v207)(v220, v209);
        v144 = &_s8PaperKit12LoupeElementVSgMd;
        v145 = &_s8PaperKit12LoupeElementVSgMR;
LABEL_48:
        v151 = v142;
LABEL_49:
        outlined destroy of StocksKitCurrencyCache.Provider?(v151, v144, v145);
LABEL_43:
        v136 = type metadata accessor for Color(0);
        (*(*(v136 - 8) + 56))(v180, 1, 1, v136);
        return result;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
      CRRegister.wrappedValue.getter();

      (*(v146 + 8))(v147, v148);
      (*v207)(v220, v209);
      v152 = type metadata accessor for LoupeElement;
LABEL_52:
      outlined destroy of Shape(v142, v152);
      return result;
    }

    v72 &= v72 - 1;
    (*v207)(v97, v96);
    v78 = outlined destroy of StocksKitCurrencyCache.Provider?(v86, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMR);
    v79 = v81;
    v76 = v96;
    v75 = v193;
    if (!v72)
    {
      goto LABEL_5;
    }
  }

  v161 = v92;
  v93 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
  CRRegister.wrappedValue.getter();
  v94 = v222;
  outlined destroy of Shape(v93, type metadata accessor for Shape);
  if (v94)
  {
    goto LABEL_15;
  }

  v153 = v90;
  v154 = v162;
  Canvas.updatablePaper2.getter(v162);
  v155 = v163;
  v156 = v214;
  v157 = v206;
  WeakRef.subscript.getter();
  v153(v154, v216);
  if (v161(v155, 1, v91) == 1)
  {

    (*v188)(v157, v156);
    (*v207)(v220, v209);
    v144 = &_s8PaperKit5ShapeVSgMd;
    v145 = &_s8PaperKit5ShapeVSgMR;
    v151 = v155;
    goto LABEL_49;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  CRRegister.wrappedValue.getter();

  (*v188)(v157, v156);
  (*v207)(v220, v209);
  outlined destroy of Shape(v155, type metadata accessor for Shape);
  return result;
}

void closure #1 in closure #1 in CanvasFormattingProxy.strokeColor.setter(void *a1, uint64_t a2, uint64_t a3)
{
  v193 = a3;
  v166 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v166);
  v159 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR);
  v163 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v154 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v158 = &v151 - v8;
  v9 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v153 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v157 = &v151 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit5PKInkVSgMd, &_s9PencilKit5PKInkVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v155 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v156 = &v151 - v16;
  v164 = type metadata accessor for PKInk();
  v162 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v152 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v171);
  v170 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v169 = &v151 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
  v161 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v168 = &v151 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v189 = &v151 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v188 = &v151 - v26;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
  v160 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v167 = &v151 - v27;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v196 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v186 = &v151 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMR);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v185 = &v151 - v30;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGMd, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGMR);
  v31 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v184 = &v151 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMR);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v203 = (&v151 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit9SignatureVGMd, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGMR);
  v217 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v202 = &v151 - v36;
  v195 = type metadata accessor for Shape(0);
  v213 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v172 = &v151 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v192 = &v151 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v180 = &v151 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v179 = &v151 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v177 = &v151 - v45;
  v176 = type metadata accessor for Color(0);
  v175 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v178 = (&v151 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v214 = &v151 - v48;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ShapeVGMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGMR);
  v49 = *(v216 - 1);
  MEMORY[0x1EEE9AC00](v216);
  v211 = &v151 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v151 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v209 = &v151 - v56;
  v57 = *(a2 + 8);
  v200 = *(a2 + 16);
  v58 = v57 + 56;
  v59 = 1 << *(v57 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & *(v57 + 56);
  v62 = (v59 + 63) >> 6;
  v207 = (v55 + 32);
  v208 = (v55 + 16);
  v206 = (v49 + 48);
  v191 = (v49 + 32);
  v194 = (v213 + 48);
  v190 = (v49 + 8);
  v210 = v55;
  v204 = (v55 + 8);
  v201 = (v217 + 48);
  v183 = (v217 + 32);
  v182 = (v217 + 8);
  v181 = (v31 + 48);
  v174 = (v31 + 32);
  v173 = (v31 + 8);
  v213 = v57;

  v63 = 0;
  v212 = a1;
  v198 = v21;
  v64 = v51;
  v217 = v53;
  v218 = v51;
  v205 = v62;
  v215 = v35;
  while (v61)
  {
    v65 = v214;
LABEL_11:
    v67 = __clz(__rbit64(v61));
    v61 &= v61 - 1;
    v69 = v209;
    v68 = v210;
    (*(v210 + 16))(v209, *(v213 + 48) + *(v210 + 72) * (v67 | (v63 << 6)), v64);
    (*(v68 + 32))(v53, v69, v64);
    WeakTagged_10.tagged6.getter();
    v70 = v216;
    if ((*v206)(v65, 1, v216) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMd, &_s9Coherence7WeakRefVy8PaperKit5ShapeVGSgMR);
      goto LABEL_17;
    }

    (*v191)(v211, v65, v70);
    v71 = v192;
    WeakRef.subscript.getter();
    v72 = *v194;
    if ((*v194)(v71, 1, v195))
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v71, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
LABEL_16:
      (*v190)(v211, v216);
LABEL_17:
      v76 = v203;
      v53 = v217;
      v77 = v218;
      WeakTagged_10.tagged7.getter();
      v78 = v76;
      v79 = v215;
      if ((*v201)(v76, 1, v215) != 1)
      {
        (*v183)(v202, v76, v79);
        v85 = WeakRef.subscript.modify();
        v87 = v86;
        v88 = type metadata accessor for Signature(0);
        if (!(*(*(v88 - 8) + 48))(v87, 1, v88))
        {
          v89 = v179;
          outlined init with copy of Date?(v193, v179, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
          outlined init with copy of Date?(v89, v180, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
          CRRegister.wrappedValue.setter();
          outlined destroy of StocksKitCurrencyCache.Provider?(v89, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        }

        v85(v219, 0);
        v62 = v205;
        (*v182)(v202, v215);
        goto LABEL_26;
      }

      v80 = a1;
      outlined destroy of StocksKitCurrencyCache.Provider?(v78, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMd, &_s9Coherence7WeakRefVy8PaperKit9SignatureVGSgMR);
      v81 = v185;
      WeakTagged_10.tagged10.getter();
      v82 = v81;
      v83 = v81;
      v84 = v199;
      if ((*v181)(v83, 1, v199) != 1)
      {
        (*v174)(v184, v82, v84);
        v90 = WeakRef.subscript.modify();
        v92 = v91;
        v93 = type metadata accessor for LoupeElement(0);
        if (!(*(*(v93 - 8) + 48))(v92, 1, v93))
        {
          v94 = v179;
          outlined init with copy of Date?(v193, v179, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
          outlined init with copy of Date?(v94, v180, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
          CRRegister.wrappedValue.setter();
          outlined destroy of StocksKitCurrencyCache.Provider?(v94, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        }

        v90(v219, 0);
        v62 = v205;
        (*v173)(v184, v199);
LABEL_26:
        v95 = *v204;
        v53 = v217;
        goto LABEL_27;
      }

      (*v204)(v53, v77);
      outlined destroy of StocksKitCurrencyCache.Provider?(v82, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMR);
      a1 = v80;
      v64 = v77;
      v62 = v205;
    }

    else
    {
      v73 = v172;
      _s8PaperKit5ColorVWOcTm_0(v71, v172, type metadata accessor for Shape);
      outlined destroy of StocksKitCurrencyCache.Provider?(v71, &_s8PaperKit5ShapeVSgMd, &_s8PaperKit5ShapeVSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
      CRRegister.wrappedValue.getter();
      v74 = v219[0];
      v75 = v73;
      a1 = v212;
      outlined destroy of Shape(v75, type metadata accessor for Shape);
      if (v74)
      {
        goto LABEL_16;
      }

      v96 = WeakRef.subscript.modify();
      if (!v72(v97, 1, v195))
      {
        v98 = v179;
        outlined init with copy of Date?(v193, v179, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        outlined init with copy of Date?(v98, v180, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
        CRRegister.wrappedValue.setter();
        outlined destroy of StocksKitCurrencyCache.Provider?(v98, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      }

      v96(v219, 0);
      v62 = v205;
      (*v190)(v211, v216);
      v95 = *v204;
LABEL_27:
      v64 = v218;
      v95(v53, v218);
      a1 = v212;
    }
  }

  v65 = v214;
  while (1)
  {
    v66 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      __break(1u);
      goto LABEL_59;
    }

    if (v66 >= v62)
    {
      break;
    }

    v61 = *(v58 + 8 * v66);
    ++v63;
    if (v61)
    {
      v63 = v66;
      goto LABEL_11;
    }
  }

  v99 = v177;
  outlined init with copy of Date?(v193, v177, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  if ((*(v175 + 48))(v99, 1, v176) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v99, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    return;
  }

  _s8PaperKit5ShapeVWObTm_3(v99, v178, type metadata accessor for Color);
  v100 = v200 + 56;
  v101 = 1 << *(v200 + 32);
  v102 = -1;
  if (v101 < 64)
  {
    v102 = ~(-1 << v101);
  }

  v103 = v102 & *(v200 + 56);
  v104 = (v101 + 63) >> 6;
  v217 = (v196 + 8);
  v218 = v196 + 16;
  v216 = (v161 + 48);
  v215 = (v160 + 56);
  v213 = v161 + 16;
  v209 = (v160 + 32);
  v210 = v160 + 48;
  v211 = (v161 + 8);
  v207 = (v163 + 8);
  v208 = (v162 + 56);
  v203 = (v162 + 8);
  v204 = (v162 + 32);
  v205 = (v160 + 8);
  v206 = (v162 + 48);

  v105 = 0;
  v214 = v104;
  while (v103)
  {
    v106 = v198;
    v107 = a1;
LABEL_42:
    v109 = __clz(__rbit64(v103));
    v103 &= v103 - 1;
    v110 = v196;
    v111 = v186;
    v112 = v187;
    (*(v196 + 16))(v186, *(v200 + 48) + *(v196 + 72) * (v109 | (v105 << 6)), v187);
    v113 = v189;
    WeakRef.subscript.getter();
    (*(v110 + 8))(v111, v112);
    if ((*v216)(v113, 1, v106))
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v113, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMR);
      v114 = v188;
      (*v215)(v188, 1, 1, v197);
      a1 = v107;
LABEL_48:
      outlined destroy of StocksKitCurrencyCache.Provider?(v114, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMR);
      v104 = v214;
      continue;
    }

    v115 = v168;
    v116 = v198;
    (*v213)(v168, v113, v198);
    outlined destroy of StocksKitCurrencyCache.Provider?(v113, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMR);
    v117 = v169;
    CRRegister.value.getter();
    (*v211)(v115, v116);
    v118 = v117;
    v119 = v170;
    _s8PaperKit5ShapeVWObTm_3(v118, v170, type metadata accessor for TaggedStroke);
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of Shape(v119, type metadata accessor for TaggedStroke);
      v120 = 1;
      v114 = v188;
      v121 = v197;
    }

    else
    {
      v114 = v188;
      v122 = v119;
      v121 = v197;
      (*v209)(v188, v122, v197);
      v120 = 0;
    }

    a1 = v107;
    (*v215)(v114, v120, 1, v121);
    if ((*v210)(v114, 1, v121) == 1)
    {
      goto LABEL_48;
    }

    v123 = v167;
    v124 = v197;
    (*v209)(v167, v114, v197);
    v125 = Ref.subscript.modify();
    PKStrokeStruct.uniqueInheritedPropertiesIfNeeded<A>(in:)(a1);
    v125(v219, 0);
    v126 = v157;
    v127 = v124;
    v128 = v123;
    Ref.subscript.getter();
    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
    v130 = v158;
    v201 = v129;
    CRRegister.wrappedValue.getter();
    outlined destroy of Shape(v126, type metadata accessor for PKStrokeStruct);
    v131 = v159;
    v132 = v165;
    Ref.subscript.getter();
    v202 = *v207;
    (v202)(v130, v132);
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
    CRRegister.wrappedValue.getter();
    outlined destroy of Shape(v131, type metadata accessor for PKStrokeInheritedProperties);
    v134 = v219[0];
    if (!v219[0])
    {
      (*v205)(v128, v127);
      v142 = v156;
      (*v208)(v156, 1, 1, v164);
      a1 = v212;
      goto LABEL_55;
    }

    v199 = v133;
    v135 = *v208;
    v136 = 1;
    v137 = v155;
    v138 = v164;
    (*v208)(v155, 1, 1, v164);
    _sSo10CGColorRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type PKInk and conformance PKInk, MEMORY[0x1E69783B0], MEMORY[0x1E69783B8]);
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    v139 = v138;
    v140 = *v206;
    v141 = (*v206)(v137, 1, v139);
    v142 = v156;
    if (v141 != 1)
    {
      (*v204)(v156, v155, v139);
      v136 = 0;
    }

    v135(v142, v136, 1, v139);
    v143 = v140(v142, 1, v139);
    v144 = v139;
    a1 = v212;
    if (v143 == 1)
    {
      (*v205)(v167, v197);
LABEL_55:
      v104 = v214;
      outlined destroy of StocksKitCurrencyCache.Provider?(v142, &_s9PencilKit5PKInkVSgMd, &_s9PencilKit5PKInkVSgMR);
      continue;
    }

    v145 = v152;
    (*v204)(v152, v142, v144);
    [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
    PKInk.color.setter();
    v146 = v153;
    Ref.subscript.getter();
    v147 = v154;
    CRRegister.wrappedValue.getter();
    outlined destroy of Shape(v146, type metadata accessor for PKStrokeStruct);
    isa = PKInk._bridgeToObjectiveC()().super.isa;
    v149 = v165;
    v150 = Ref.subscript.modify();
    v219[6] = isa;
    CRRegister.wrappedValue.setter();
    v150(v219, 0);
    a1 = v212;
    (v202)(v147, v149);
    (*v203)(v145, v164);
    (*v205)(v167, v197);
    v104 = v214;
  }

  while (1)
  {
    v108 = v105 + 1;
    if (__OFADD__(v105, 1))
    {
      break;
    }

    if (v108 >= v104)
    {

      outlined destroy of Shape(v178, type metadata accessor for Color);
      return;
    }

    v103 = *(v100 + 8 * v108);
    ++v105;
    if (v103)
    {
      v106 = v198;
      v107 = a1;
      v105 = v108;
      goto LABEL_42;
    }
  }

LABEL_59:
  __break(1u);
}