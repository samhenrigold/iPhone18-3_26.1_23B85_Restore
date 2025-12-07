void Canvas.paper.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    specialized Canvas.paper.setter(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    specialized Canvas.paper.setter(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t (*Canvas.paper2.modify(uint64_t *a1))()
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
  v5 = *(v1 + direct field offset for Canvas.paperView);
  *(v3 + 32) = v5;
  v6 = v5;
  *(v4 + 40) = CanvasElementView.canvasElement.modify(v4);
  return Canvas.paper2.modify;
}

void Canvas.rootElement.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

void Canvas.finalizeTimer.setter(uint64_t a1)
{
  v2 = *(v1 + direct field offset for Canvas.finalizeTimer);
  *(v1 + direct field offset for Canvas.finalizeTimer) = a1;
}

Swift::Void __swiftcall Canvas.scheduleFinalizeTask()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  [*(v0 + direct field offset for Canvas.finalizeTimer) invalidate];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = *(v3 + 2896);
  *(v6 + 32) = *((v2 & v1) + 0xB60);
  *(v6 + 40) = v5;
  v10[4] = partial apply for closure #1 in Canvas.scheduleFinalizeTask();
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction) -> ();
  v10[3] = &block_descriptor_175_0;
  v7 = _Block_copy(v10);

  v8 = [v4 scheduledTimerWithTimeInterval:0 repeats:v7 block:5.0];
  _Block_release(v7);
  v9 = *(v0 + direct field offset for Canvas.finalizeTimer);
  *(v0 + direct field offset for Canvas.finalizeTimer) = v8;
}

double Canvas.xpcMulticast.getter()
{
  specialized Canvas.xpcMulticast.getter();

  return result;
}

double Canvas.xpcMulticast.setter(uint64_t a1)
{
  v3 = direct field offset for Canvas.xpcMulticast;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void Canvas._editingView.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + direct field offset for Canvas._editingView);
  v4 = *(v2 + direct field offset for Canvas._editingView);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t Canvas.canvasElementController.getter()
{
  v1 = *(v0 + direct field offset for Canvas._canvasElementController);
  v2 = v1;
  if (!v1)
  {
    v5 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x468))();
    if (v5)
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      v8 = swift_conformsToProtocol2();
      if (v8)
      {
        v2 = (*(v8 + 48))(ObjectType, v8);
      }

      else
      {

        v2 = 0;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  v3 = v1;
  return v2;
}

void Canvas.canvasElementController.setter(uint64_t a1)
{
  v2 = *(v1 + direct field offset for Canvas._canvasElementController);
  *(v1 + direct field offset for Canvas._canvasElementController) = a1;
}

BOOL Canvas.allowsDropInteraction.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3C8);
  v2 = v1((&v4 + 1));
  if (BYTE1(v4) == 3)
  {
    return 1;
  }

  (v1)(&v4, v2);
  return v4 == 2;
}

Swift::Void __swiftcall Canvas.updateAfterChangeInSuperviewOrWindow()()
{
  v1 = [v0 window];
  if (v1)
  {

    v2 = [v0 window];
    if (v2 && (v3 = v2, v4 = [v2 screen], v3, v4))
    {

      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    v6 = [v0 window];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 screen];

      [v8 potentialEDRHeadroom];
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v12 = v0;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109632;
      v16 = 0;
      if (AnyCanvas.isHDRActive.getter())
      {
        swift_getKeyPath();
        _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v12 + OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR))
        {
          v16 = 1;
        }
      }

      *(v15 + 4) = v16;

      *(v15 + 8) = 1024;
      *(v15 + 10) = v5;
      *(v15 + 14) = 2048;
      *(v15 + 16) = v10;
      _os_log_impl(&dword_1D38C4000, v13, v14, "updateAfterChange: %{BOOL}d, %{BOOL}d, %f", v15, 0x18u);
      MEMORY[0x1DA6D0660](v15, -1, -1);
    }

    else
    {
    }

    v17 = Canvas.editingView.getter();
    v19 = v18;
    ObjectType = swift_getObjectType();
    (*(v19 + 24))(ObjectType, v19);

    v21 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x468);
    v22 = v21();
    if (v22)
    {
      v23 = v22;
      if (AnyCanvas.isHDRActive.getter())
      {
        swift_getKeyPath();
        _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v24 = *(v12 + OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR);
      }

      else
      {
        v24 = 0;
      }

      [v23 setWantsExtendedDynamicRangeContent_];
    }

    v25 = v21();
    [v25 _layoutSubviews];

    v26 = v21();
    [v26 _didAddDrawingAttachmentView];

    v27 = v21();
    [v27 updateTilesForVisibleRect];
  }
}

double Canvas.insertionPosition.getter()
{
  v1 = [v0 window];
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  v3 = v0;
  v4 = Canvas.editingView.getter();
  [v2 bounds];
  x = v56.origin.x;
  y = v56.origin.y;
  width = v56.size.width;
  height = v56.size.height;
  MidX = CGRectGetMidX(v56);
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  [v4 convertPoint:v2 fromCoordinateSpace:{MidX, CGRectGetMidY(v57)}];
  v11 = v10;
  v13 = v12;

  v14 = Canvas.editingView.getter();
  v15 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v14) + 0x2C0))(v50);
  v44 = v50[1];
  v46 = v50[0];
  v16 = v51;
  v17 = v52;

  (*((*v15 & *v3) + 0x858))(v53);
  if (v54)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19 = vdupq_n_s64(v18);
  *&t1.a = v46;
  *&t1.c = v44;
  t1.tx = v16;
  t1.ty = v17;
  *&t2.a = vbslq_s8(v19, xmmword_1D4059320, v53[0]);
  *&t2.c = vbslq_s8(v19, xmmword_1D4059310, v53[1]);
  *&t2.tx = vbicq_s8(v53[2], v19);
  CGAffineTransformConcat(&v47, &t1, &t2);
  t1 = v47;
  CGAffineTransformInvert(&t2, &t1);
  a = t2.a;
  b = t2.b;
  c = t2.c;
  d = t2.d;
  tx = t2.tx;
  ty = t2.ty;
  t1 = t2;
  v55.x = v11;
  v55.y = v13;
  v45 = CGPointApplyAffineTransform(v55, &t1).x;
  v26 = Canvas.editingView.getter();
  [v26 bounds];
  v42 = v28;
  v43 = v27;
  v30 = v29;
  v32 = v31;

  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = tx;
  t1.ty = ty;
  v58.origin.y = v42;
  v58.origin.x = v43;
  v58.size.width = v30;
  v58.size.height = v32;
  v59 = CGRectApplyAffineTransform(v58, &t1);
  v33 = v59.origin.x;
  v34 = v59.origin.y;
  v35 = v59.size.width;
  v36 = v59.size.height;
  MinX = CGRectGetMinX(v59);
  v60.origin.x = v33;
  v60.origin.y = v34;
  v60.size.width = v35;
  v60.size.height = v36;
  MaxX = CGRectGetMaxX(v60);
  v39 = v45;
  if (MinX > v45)
  {
    v39 = MinX;
  }

  if (v39 >= MaxX)
  {
    v40 = MaxX;
  }

  else
  {
    v40 = v39;
  }

  v61.origin.x = v33;
  v61.origin.y = v34;
  v61.size.width = v35;
  v61.size.height = v36;
  CGRectGetMinY(v61);
  v62.origin.x = v33;
  v62.origin.y = v34;
  v62.size.width = v35;
  v62.size.height = v36;
  CGRectGetMaxY(v62);

  return v40;
}

CGFloat Canvas.modelCanvasWidth.getter()
{
  v1 = v0;
  v2 = Canvas.editingView.getter();
  v3 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2C0))(v27);
  v20 = v27[1];
  v22 = v27[0];
  v4 = v28;
  v5 = v29;

  (*((*v3 & *v1) + 0x858))(v30);
  if (v31)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  v7 = vdupq_n_s64(v6);
  *&t1.a = v22;
  *&t1.c = v20;
  t1.tx = v4;
  t1.ty = v5;
  *&t2.a = vbslq_s8(v7, xmmword_1D4059320, v30[0]);
  *&t2.c = vbslq_s8(v7, xmmword_1D4059310, v30[1]);
  *&t2.tx = vbicq_s8(v30[2], v7);
  CGAffineTransformConcat(&v24, &t1, &t2);
  t1 = v24;
  CGAffineTransformInvert(&t2, &t1);
  tx = t2.tx;
  ty = t2.ty;
  v21 = *&t2.c;
  v23 = *&t2.a;
  v10 = Canvas.editingView.getter();
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  *&t1.a = v23;
  *&t1.c = v21;
  t1.tx = tx;
  t1.ty = ty;
  v32.origin.x = v12;
  v32.origin.y = v14;
  v32.size.width = v16;
  v32.size.height = v18;
  v33 = CGRectApplyAffineTransform(v32, &t1);
  return v33.size.width;
}

Swift::Bool __swiftcall Canvas.canvasElementOrFormFieldExistsAtPoint(_:)(CGPoint a1)
{
  v2 = v1;
  y = a1.y;
  x = a1.x;
  v5 = *(v1 + direct field offset for Canvas.paperView);
  v6 = ContainerCanvasElementView.subelementViews.getter();

  if (v6 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA6CE0C0](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v15 = v9;
      v12 = closure #1 in Canvas.canvasElementOrFormFieldExistsAtPoint(_:)(&v15, v2, x, y);

      if (v12)
      {

        goto LABEL_19;
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v13 = specialized ContainerCanvasElementView.formFillingView.getter();
  if (v13)
  {
    v13 = [v13 hitTest:0 withEvent:{x, y}];
    if (v13)
    {

LABEL_19:
      LOBYTE(v13) = 1;
    }
  }

  return v13;
}

__n128 Canvas.visibleBoundsOverride.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + direct field offset for Canvas.visibleBoundsOverride;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 Canvas.visibleBoundsOverride.setter(uint64_t a1)
{
  v3 = v1 + direct field offset for Canvas.visibleBoundsOverride;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

void Canvas.selectedTextRange.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v6)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = CanvasElementResizeView.resizingCanvasElements.getter();

  v36 = v5;
  v37 = a1;
  if (v8 >> 62)
  {
LABEL_22:
    v9 = __CocoaSet.count.getter();
    if (v9)
    {
LABEL_4:
      v10 = 0;
      v38 = v8 & 0xFFFFFFFFFFFFFF8;
      v39 = v8 & 0xC000000000000001;
      while (1)
      {
        if (v39)
        {
          v11 = MEMORY[0x1DA6CE0C0](v10, v8);
        }

        else
        {
          if (v10 >= *(v38 + 16))
          {
            goto LABEL_21;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v14 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x318);
        v15 = v14();
        if (v15)
        {
          v16 = *(v15 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView);
          v17 = v8;
          v18 = v15;
          v19 = v16;

          v8 = v17;
          if (v16)
          {
            break;
          }
        }

        ++v10;
        if (v13 == v9)
        {
          goto LABEL_23;
        }
      }

      v20 = v14();
      if (!v20 || (v21 = *(v20 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView), v22 = v20, v23 = v21, v22, !v21))
      {

        goto LABEL_24;
      }

      v24 = [v23 selectedRange];
      v26 = v25;

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit7TextBoxVG_SnySiGtMd, &_s9Coherence7WeakRefVy8PaperKit7TextBoxVG_SnySiGtMR);
      v28 = *(v27 + 48);
      (*((*MEMORY[0x1E69E7D40] & *v12) + 0xE8))();
      type metadata accessor for TextBox(0);
      _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox, &protocol conformance descriptor for TextBox);
      v29 = v37;
      WeakRef.init(id:)();

      v30 = &v24[v26];
      if (__OFADD__(v24, v26))
      {
        __break(1u);
      }

      else if (v30 >= v24)
      {
        v31 = (v29 + v28);
        *v31 = v24;
        v31[1] = v30;
        (*(*(v27 - 8) + 56))(v29, 0, 1, v27);
        return;
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_4;
    }
  }

LABEL_23:

LABEL_24:
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit7TextBoxVG_SnySiGtMd, &_s9Coherence7WeakRefVy8PaperKit7TextBoxVG_SnySiGtMR);
  v33 = *(*(v32 - 8) + 56);
  v34 = v32;
  v35 = v37;

  v33(v35, 1, 1, v34);
}

void Canvas.presentSubelement<A>(_:presentationViewController:)(void *a1, void *a2, uint64_t a3)
{
  v36 = a2;
  v5 = (*MEMORY[0x1E69E7D40] & *v3);
  v6 = *((*a1 & *MEMORY[0x1E69E7D40]) + 0x3D8);
  v7 = *((*a1 & *MEMORY[0x1E69E7D40]) + 0x3E0);
  v8 = type metadata accessor for Capsule();
  v37 = type metadata accessor for Optional();
  v9 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v11 = &v32 - v10;
  v32 = v6;
  v33 = v7;
  v34 = a3;
  type metadata accessor for CanvasElementViewController(0, v6, v7, a3);
  v12 = v5[121];
  v13 = *(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_context);
  v35 = v3;
  v12(aBlock);
  v14 = v36;
  v15 = CanvasElementViewController.__allocating_init(context:editingMode:allowMediaCanvasElements:transparentBackground:isImageAnalysisEnabled:)(v13, aBlock, 1, 0, 1);
  CanvasElementView.canvasElement.getter(v11);
  (*(*(v8 - 8) + 56))(v11, 0, 1, v8);
  specialized CanvasElementViewController.paper.setter(v11);
  (*(v9 + 8))(v11, v37);
  [v15 setModalPresentationStyle_];
  v16 = [v14 view];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 tintColor];

    if (v18)
    {
      CanvasElementViewController.createNavigationBack(tintColor:)(v18);

      v19 = swift_allocObject();
      v20 = v5[362];
      v19[2] = v20;
      v21 = v5[363];
      v19[3] = v21;
      v22 = v5[364];
      v19[4] = v22;
      v19[5] = v15;
      aBlock[4] = partial apply for closure #1 in Canvas.presentSubelement<A>(_:presentationViewController:);
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_162;
      v23 = _Block_copy(aBlock);
      v24 = v15;

      [v14 presentViewController:v24 animated:1 completion:v23];
      _Block_release(v23);
      aBlock[0] = CanvasElementViewController.publisher.getter();
      v25 = swift_allocObject();
      v26 = v35;
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      v28 = v32;
      v29 = v33;
      v27[2] = v20;
      v27[3] = v28;
      v27[4] = v21;
      v27[5] = v22;
      v30 = v34;
      v27[6] = v29;
      v27[7] = v30;
      v27[8] = v25;
      type metadata accessor for AnyPublisher();
      swift_getWitnessTable();
      v31 = Publisher<>.sink(receiveValue:)();

      *(v26 + direct field offset for Canvas.childViewControllerCancellable) = v31;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

char *Canvas.selectableElements.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v68 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v63 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v49 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v50 = &v49 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMR);
  v53 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v54 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  v64 = v2;
  v65 = v3;
  v20 = *((v3 & v2) + 0xB50);
  v21 = *((v3 & v2) + 0xB58);
  v22 = type metadata accessor for Capsule();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v49 - v24;
  CanvasElementView.canvasElement.getter(&v49 - v24);
  v71 = v20;
  v72 = v21;
  v73 = *((v65 & v64) + 0xB60);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v23 + 8))(v25, v22);
  v26 = *(v54 + 16);
  v51 = v19;
  v26(v66, v19, v15);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR, MEMORY[0x1E6995150]);
  v52 = v15;
  v27 = v63;
  dispatch thunk of Sequence.makeIterator()();
  v28 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMR, MEMORY[0x1E6995120]);
  v29 = v50;
  v66 = v28;
  dispatch thunk of IteratorProtocol.next()();
  v30 = v29;
  v64 = v27[6];
  v65 = v27 + 6;
  if ((v64)(v29, 1, v10) == 1)
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v34 = v27[4];
    v33 = v27 + 4;
    v62 = v34;
    v63 = v33 - 3;
    v35 = v59;
    v60 = (v58 + 32);
    v61 = (v58 + 48);
    v31 = MEMORY[0x1E69E7CC0];
    v55 = v1;
    v36 = v57;
    do
    {
      v39 = v30;
      (v62)(v36, v30, v10);
      v40 = v68;
      closure #1 in Canvas.selectableElements.getter(v36, v68);
      (*v63)(v36, v10);
      if ((*v61)(v40, 1, v35) == 1)
      {
        v37 = v10;
        v38 = v33;
        outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
      }

      else
      {
        v41 = v33;
        v42 = v10;
        v43 = v35;
        v44 = *v60;
        v45 = v56;
        (*v60)(v56, v40, v43);
        v44(v67, v45, v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
        }

        v47 = *(v31 + 2);
        v46 = *(v31 + 3);
        v37 = v42;
        if (v47 >= v46 >> 1)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v31);
        }

        v38 = v41;
        *(v31 + 2) = v47 + 1;
        v48 = v59;
        v44(&v31[((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v47], v67, v59);
        v35 = v48;
        v36 = v57;
      }

      dispatch thunk of IteratorProtocol.next()();
      v30 = v39;
      v33 = v38;
      v10 = v37;
    }

    while ((v64)(v39, 1, v37) != 1);
  }

  (*(v53 + 8))(v69, v70);
  (*(v54 + 8))(v51, v52);
  return v31;
}

uint64_t Canvas.selectableStrokes.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *((v2 & v1) + 0xB50);
  v6 = *((v2 & v1) + 0xB58);
  v7 = type metadata accessor for Capsule();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v31 = &v30 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v30 - v16;
  CanvasElementView.canvasElement.getter(v14);
  v34 = v6;
  v35 = v5;
  v38 = v5;
  v39 = v6;
  v40 = *((v2 & v1) + 0xB60);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v18 = *(v8 + 8);
  v37 = v7;
  v33 = v8 + 8;
  v18(v14, v7);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v22 = v31;
    CanvasElementView.canvasElement.getter(v31);
    v24 = v35;
    v23 = v36;
    v25 = v34;
    Ref.subscript.getter();
    v18(v22, v37);
    (*(v20 + 8))(v17, v19);
    v26 = v32;
    CanvasElementView.canvasElement.getter(v32);
    v27 = PKDrawingStruct.allStrokes<A>(in:)(v26, v24, v25);
    v18(v26, v37);
    _s8PaperKit0A6MarkupVWOhTm_1(v23, type metadata accessor for PKDrawingStruct);
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence3RefVyAF10CRRegisterVy8PaperKit12TaggedStrokeOGGG_AF04WeakE0VyANGs5NeverOTg503_s8g81Kit6CanvasC17selectableStrokes33_A4518BE304181191DE73703BAA1E0F8FLLSay9Coherence7ke6VyAF10fz4AA12ij12OGGGvgAnF0N0Z8AMGXEfU_Tf1cn_n(v27);
    v29 = v28;

    return v29;
  }
}

BOOL Canvas.hasSelectableContent.getter()
{
  v0 = *(Canvas.selectableElements.getter() + 2);

  if (v0)
  {
    return 1;
  }

  v2 = *(Canvas.selectableStrokes.getter() + 16);

  return v2 != 0;
}

Swift::Void __swiftcall Canvas.selectAll()()
{
  v0 = Canvas.selectableElements.getter();
  v1 = Canvas.selectableStrokes.getter();
  v2 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v0);

  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v1);

  AnyCanvas.selection.setter(v2, v3, 6, 0);
}

Swift::Void __swiftcall Canvas._copyAll()()
{
  Canvas.selectAll()();
  [v0 copy_];
  v1 = MEMORY[0x1E69E7CD0];
  v2 = MEMORY[0x1E69E7CD0];

  AnyCanvas.selection.setter(v1, v2, 6, 0);
}

id Canvas.isRulerActive.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x468))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 rulerEnabled];

  return v3;
}

void Canvas.isRulerActive.setter(char a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x468))();
  [v3 setRulerEnabled_];
}

void (*Canvas.isRulerActive.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = Canvas.isRulerActive.getter() & 1;
  return Canvas.isRulerActive.modify;
}

void Canvas.isRulerActive.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x468))();
  [v2 setRulerEnabled_];
}

uint64_t Canvas.tool.getter@<X0>(uint64_t *a1@<X8>)
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

uint64_t Canvas.tool.setter(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PKInk();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v51 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  Canvas.tool.getter(v56);
  v15 = v57;
  __swift_project_boxed_opaque_existential_1(v56, v57);
  PKTool.ink.getter(v15, v14);
  isa = PKInk._bridgeToObjectiveC()().super.isa;
  v17 = *(v5 + 8);
  v17(v14, v4);
  v18 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  PKTool.ink.getter(v18, v11);
  v19 = PKInk._bridgeToObjectiveC()().super.isa;
  v53 = v4;
  v17(v11, v4);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKInk, 0x1E6978458);
  LOBYTE(v18) = static NSObject.== infix(_:_:)();

  v20 = __swift_destroy_boxed_opaque_existential_0(v56);
  if ((v18 & 1) == 0)
  {
    v21 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x468);
    v22 = (v21)(v20);
    if (v22)
    {
      v23 = v22;
      v24 = v55[3];
      __swift_project_boxed_opaque_existential_1(v55, v24);
      PKTool.ink.getter(v24, v14);
      v25 = PKInk._bridgeToObjectiveC()().super.isa;
      v17(v14, v53);
      [v23 setInk_];
    }

    v26 = v21();
    v27 = v54;
    if (v26)
    {
      v28 = v26;
      v29 = [v26 allowsFingerDrawing];

      if (v29)
      {
        v51 = v2;
        Canvas.tool.getter(v56);
        v30 = v57;
        __swift_project_boxed_opaque_existential_1(v56, v57);
        v31 = v52;
        PKTool.ink.getter(v30, v52);
        v32 = PKInk._bridgeToObjectiveC()().super.isa;
        v33 = [(objc_class *)v32 identifier];

        if (!v33)
        {
          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = MEMORY[0x1DA6CCED0](v34);
        }

        v35 = v31;
        v36 = v53;
        v17(v35, v53);
        v37 = v55[3];
        __swift_project_boxed_opaque_existential_1(v55, v37);
        v38 = v33;
        PKTool.ink.getter(v37, v27);
        v39 = PKInk._bridgeToObjectiveC()().super.isa;
        v40 = [(objc_class *)v39 identifier];

        if (!v40)
        {
          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v40 = MEMORY[0x1DA6CCED0](v41);
        }

        v17(v27, v36);
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;
        v45 = v40;

        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        if (v42 == v46 && v44 == v48)
        {

          __swift_destroy_boxed_opaque_existential_0(v56);
        }

        else
        {
          v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

          __swift_destroy_boxed_opaque_existential_0(v56);
          if ((v49 & 1) == 0)
          {
            AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
          }
        }
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v55);
}

void (*Canvas.tool.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v3[10] = v1;
  Canvas.tool.getter(v3);
  return Canvas.tool.modify;
}

void Canvas.tool.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of FindResult(*a1, (v2 + 5));
    Canvas.tool.setter(v2 + 5);
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    Canvas.tool.setter(*a1);
  }

  free(v2);
}

uint64_t Canvas.publisher.getter(char a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB50);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB58);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB60);
  v5 = v1;
  swift_unknownObjectWeakInit();

  type metadata accessor for Capsule();
  type metadata accessor for Canvas.PaperViewCanvasPublisher(0, v2, v3, v4);
  swift_getWitnessTable();
  return AnyPublisher.init<A>(_:)();
}

id Canvas.mergeCanvasState(_:)(uint64_t a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit11CanvasStateVGMd, &_s9Coherence7CapsuleVy8PaperKit11CanvasStateVGMR);
  type metadata accessor for CanvasState(0);
  _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type CanvasState and conformance CanvasState, type metadata accessor for CanvasState, &protocol conformance descriptor for CanvasState);
  Capsule.merge<A>(_:)();
  swift_endAccess();
  return [*(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView) setNeedsLayout];
}

Swift::Void __swiftcall Canvas.stopCheckingForOldEraserStrokes(index:)(Swift::Int index)
{
  if (*(v1 + direct field offset for Canvas.eraserCheckingIndex) == index)
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

    [*(v2 + direct field offset for Canvas.removeOldEraserStrokesTimer) invalidate];
    v7 = *(v2 + direct field offset for Canvas.removeOldEraserStrokesTimer);
    *(v2 + direct field offset for Canvas.removeOldEraserStrokesTimer) = 0;
  }
}

Swift::Void __swiftcall Canvas.removeOldEraserStrokes()()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v7 = *(v1 + 8);
  v7(v3, v0);
  Canvas.removeEraserStrokesCreatedBefore(_:)(v6);
  v7(v6, v0);
}

uint64_t Canvas.removeEraserStrokesCreatedBefore(_:)(uint64_t a1)
{
  v40 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = type metadata accessor for Date();
  v34 = *(v4 - 8);
  v37 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v6;
  v38 = v2;
  v39 = v3;
  v36 = *((v3 & v2) + 0xB50);
  v35 = *((v3 & v2) + 0xB58);
  v33 = type metadata accessor for Capsule();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29 - v13;
  v32 = &v29 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  CanvasElementView.canvasElement.getter(v11);
  v17 = *(v7 + 32);
  v18 = v33;
  v17(&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v33);
  v19 = v34;
  v20 = v6;
  v21 = v4;
  (*(v34 + 16))(v20, v40, v4);
  v22 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v23 = v19;
  v24 = (v8 + *(v19 + 80) + v22) & ~*(v19 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  v26 = v35;
  *(v25 + 4) = v36;
  *(v25 + 5) = v26;
  *(v25 + 6) = *((v39 & v38) + 0xB60);
  *(v25 + 7) = v16;
  v17(&v25[v22], v30, v18);
  (*(v23 + 32))(&v25[v24], v31, v21);
  v27 = v32;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v32, &async function pointer to partial apply for closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), v25);

  return outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_sScPSgMd, &_sScPSgMR);
}

uint64_t Canvas.dropSessionFromCurrentCanvas(session:)(void *a1)
{
  swift_getObjectType();
  v3 = (*MEMORY[0x1E69E7D40] & *v1);
  v4 = [a1 localDragSession];
  if (!v4)
  {
    v11 = 0u;
    v12 = 0u;
LABEL_9:
    outlined destroy of StocksKitCurrencyCache.Provider?(&v11, &_sypSgMd, &_sypSgMR);
    goto LABEL_10;
  }

  v5 = [v4 localContext];
  swift_unknownObjectRelease();
  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v7 = 0;
    return v7 & 1;
  }

  type metadata accessor for Canvas(0, v3[362], v3[363], v3[364]);
  v6 = v1;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

void Canvas.dropFrame(session:)(void *a1@<X0>, double *a2@<X8>)
{
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v55 = *MEMORY[0x1E69E7D40] & *v2;
  v7 = *((v6 & v5) + 0xB50);
  v8 = *((v6 & v5) + 0xB58);
  v9 = type metadata accessor for Capsule();
  v56 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = type metadata accessor for UTType();
  v54 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0.0;
  if (Canvas.dropSessionFromCurrentCanvas(session:)(a1))
  {
    goto LABEL_36;
  }

  v16 = Canvas.editingView.getter();
  [a1 locationInView_];
  v18 = v17;
  v20 = v19;

  v21 = Canvas.editingView.getter();
  AnyCanvasElementView.paperBoundsTransform()(&v59);
  v58 = v59;
  CGAffineTransformInvert(&v57, &v58);
  v58 = v57;
  v60.x = v18;
  v60.y = v20;
  v22 = CGPointApplyAffineTransform(v60, &v58);

  v23 = [a1 items];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v24 >> 62))
  {
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_35;
  }

  if (!__CocoaSet.count.getter())
  {
LABEL_35:

LABEL_36:
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    goto LABEL_37;
  }

LABEL_4:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x1DA6CE0C0](0, v24);
  }

  else
  {
    if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_40;
    }

    v25 = *(v24 + 32);
  }

  v26 = v25;

  v27 = [v26 itemProvider];

  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  v31 = 0.0;
  if (v27)
  {
    [v27 preferredPresentationSize];
    if (v33 != 0.0 || v32 != 0.0)
    {
      [v27 preferredPresentationSize];
      if (v34 >= 64.0)
      {
        if (v34 > v35)
        {
          v37 = v34;
        }

        else
        {
          v37 = v35;
        }

        v38 = 480.0 / v37;
        v36 = 1.0;
        if (v38 < 1.0)
        {
          v36 = v38;
        }
      }

      else
      {
        v36 = 1.0;
        v35 = 240.0;
        v34 = 240.0;
      }

      v29 = v36 * v34;
      v30 = v36 * v35;
    }

    v53 = v27;
    if (v29 != 0.0 || v30 != 0.0)
    {
      goto LABEL_33;
    }

    v52 = v7;
    static UTType.utf8PlainText.getter();
    v39 = UTType.identifier.getter();
    v41 = v40;
    v54 = *(v54 + 8);
    (v54)(v14, v12);
    v42 = MEMORY[0x1DA6CCED0](v39, v41);

    LODWORD(v41) = [v53 hasItemConformingToTypeIdentifier_];

    if (!v41)
    {
      static UTType.image.getter();
      v44 = UTType.identifier.getter();
      v46 = v45;
      (v54)(v14, v12);
      v47 = MEMORY[0x1DA6CCED0](v44, v46);

      v48 = v53;
      LODWORD(v46) = [v53 hasItemConformingToTypeIdentifier_];

      if (v46 && ![v48 hasItemConformingToTypeIdentifier_])
      {
        v29 = 240.0;
        v30 = 240.0;
      }

      else
      {
        v49 = specialized static LinkLayout.canHandle(itemProvider:)(v48);
        if (v49)
        {
          v29 = 327.0;
        }

        else
        {
          v29 = 240.0;
        }

        if (v49)
        {
          v30 = 72.0;
        }

        else
        {
          v30 = 240.0;
        }
      }

      goto LABEL_32;
    }

    if (one-time initialization token for textBoxDefaultPointSize == -1)
    {
LABEL_22:
      UnknownCanvasElementView.flags.modify();
      v30 = v43;
      v29 = 2.0;
LABEL_32:
      v7 = v52;
LABEL_33:
      v15 = v22.x - v29 * 0.5;
      v28 = v22.y - v30 * 0.5;
      v50 = CanvasElementView.canvasElement.getter(v11);
      MEMORY[0x1EEE9AC00](v50);
      *(&v51 - 4) = v7;
      *(&v51 - 3) = v8;
      *(&v51 - 2) = *(v55 + 2912);
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v56 + 8))(v11, v9);
      v31 = -v58.a;
      goto LABEL_37;
    }

LABEL_40:
    swift_once();
    goto LABEL_22;
  }

LABEL_37:
  *a2 = v15;
  a2[1] = v28;
  a2[2] = v29;
  a2[3] = v30;
  a2[4] = v31;
}

uint64_t Canvas.isValidDropPoint(dropLocation:)(double a1, double a2)
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x468))();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  [v2 convertPoint:v5 toCoordinateSpace:{a1, a2}];
  v8 = v7;
  v10 = v9;
  v11 = [v6 hitAttachment_];
  if (v11)
  {
    v12 = v11;

    v13 = 1;
    v6 = v12;
  }

  else
  {
    v13 = [v6 insertAttachmentIfInBlankSpace_];
  }

  return v13;
}

id Canvas.updateScribbleIteractions(for:)(id result)
{
  if (!*(v1 + direct field offset for Canvas.scribbleInteraction))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  result = [result addInteraction_];
  if (!*(v1 + direct field offset for Canvas.indirectScribbleInteraction))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return [v2 addInteraction_];
}

double Canvas.harmonizeCanvasElement<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v58 = a1;
  v51 = *MEMORY[0x1E69E7D40] & *v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v56 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - v13;
  v55 = type metadata accessor for CRAssetOrData(0);
  v57 = *(v55 - 8);
  v15 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v47 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v47 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v47 - v19;
  v52 = a2;
  v53 = a3;
  v21 = type metadata accessor for Capsule();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - v23;
  v25 = swift_allocBox();
  v27 = v26;
  (*(v22 + 16))(v24, v58, v21);
  if (swift_dynamicCast())
  {
    v58 = v25;
    (*(v12 + 56))(v20, 0, 1, v11);
    (*(v12 + 32))(v27, v20, v11);
    (*(v12 + 16))(v14, v27, v11);
    swift_getKeyPath();
    v28 = v56;
    Capsule.subscript.getter();

    (*(v12 + 8))(v14, v11);
    v29 = v57;
    if ((*(v57 + 48))(v28, 1, v55) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
    }

    else
    {
      v31 = v48;
      _s8PaperKit13CRAssetOrDataOWObTm_0(v28, v48, type metadata accessor for CRAssetOrData);
      v32 = type metadata accessor for TaskPriority();
      v33 = v50;
      (*(*(v32 - 8) + 56))(v50, 1, 1, v32);
      v34 = v47;
      _s8PaperKit0A6MarkupVWOcTm_1(v31, v47, type metadata accessor for CRAssetOrData);
      type metadata accessor for MainActor();
      v35 = v49;
      v36 = v58;

      v37 = static MainActor.shared.getter();
      v38 = (*(v29 + 80) + 88) & ~*(v29 + 80);
      v39 = (v15 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
      v40 = swift_allocObject();
      v41 = MEMORY[0x1E69E85E0];
      v40[2] = v37;
      v40[3] = v41;
      v42 = v51;
      v43 = v52;
      v40[4] = *(v51 + 2896);
      v40[5] = v43;
      v40[6] = *(v42 + 2904);
      v44 = *(v42 + 2912);
      v46 = v53;
      v45 = v54;
      v40[7] = v44;
      v40[8] = v46;
      v40[9] = v45;
      v40[10] = v35;
      _s8PaperKit13CRAssetOrDataOWObTm_0(v34, v40 + v38, type metadata accessor for CRAssetOrData);
      *(v40 + v39) = v36;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v33, &async function pointer to partial apply for closure #1 in Canvas.harmonizeCanvasElement<A>(_:), v40);

      _s8PaperKit0A6MarkupVWOhTm_1(v31, type metadata accessor for CRAssetOrData);
    }
  }

  else
  {
    (*(v12 + 56))(v20, 1, 1, v11);
    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
    swift_deallocBox();
  }

  return result;
}

uint64_t Canvas.harmonizeImage(_:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = *MEMORY[0x1E69E7D40] & *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  v3[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for CRAssetOrData(0);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[19] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[20] = v7;
  v3[21] = v6;

  return MEMORY[0x1EEE6DFA0](Canvas.harmonizeImage(_:), v7, v6);
}

void Canvas.harmonizeImage(_:)()
{
  v1 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit10CanvasViewCyAA5ImageVGMd, &_s8PaperKit10CanvasViewCyAA5ImageVGMR);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {

    goto LABEL_5;
  }

  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v2 + direct field offset for Canvas.paperView);
  v10 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x3F0);
  swift_beginAccess();
  (*(v6 + 16))(v5, &v9[v10], v7);
  swift_getKeyPath();
  v11 = v1;
  Capsule.subscript.getter();

  (*(v6 + 8))(v5, v7);
  v12 = (*(v4 + 48))(v8, 1, v3);
  v13 = *(v0 + 96);
  v14 = *(v0 + 72);
  if (v12 == 1)
  {

    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
LABEL_5:
    type metadata accessor for Canvas.CanvasHarmonizationError(0, *(*(v0 + 80) + 2896), *(*(v0 + 80) + 2904), *(*(v0 + 80) + 2912));
    swift_getWitnessTable();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();

    v16 = *(v0 + 8);

    v16();
    return;
  }

  _s8PaperKit13CRAssetOrDataOWObTm_0(*(v0 + 96), *(v0 + 144), type metadata accessor for CRAssetOrData);
  [v14 bounds];
  Width = CGRectGetWidth(v29);
  *(v0 + 176) = Width;
  [v14 bounds];
  Height = CGRectGetHeight(v30);
  *(v0 + 184) = Height;
  if (Width > Height)
  {
    v19 = Width;
  }

  else
  {
    v19 = Height;
  }

  v20 = [v14 window];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 screen];

    [v22 scale];
    v24 = v23;
  }

  else
  {
    v24 = 1.0;
  }

  *(v0 + 192) = v24;
  v25 = v19 * v24;
  if (COERCE__INT64(fabs(v19 * v24)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = swift_task_alloc();
  *(v0 + 200) = v27;
  *v27 = v0;
  v27[1] = Canvas.harmonizeImage(_:);

  CRAssetOrData.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:)(v26, 1, 1);
}

uint64_t Canvas.harmonizeImage(_:)(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 208) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return MEMORY[0x1EEE6DFA0](Canvas.harmonizeImage(_:), v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 224) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return MEMORY[0x1EEE6DFA0](Canvas.harmonizeImage(_:), v4, v3);
}

{
  v2 = *(v1 + 224);
  if (v2)
  {
    v3 = *(v1 + 208);
    v5 = *(v1 + 80);
    v4 = *(v1 + 88);
    static TaskPriority.userInitiated.getter();
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = *(v5 + 2896);
    *(v7 + 48) = *(v5 + 2912);
    *(v7 + 56) = v2;
    *(v7 + 64) = v3;
    v8 = v2;
    v9 = v3;
    v10 = _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZ10Foundation4DataVSg_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in Canvas.harmonizeImage(_:), v7);
    *(v1 + 232) = v10;
    outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_sScPSgMd, &_sScPSgMR);
    v11 = swift_task_alloc();
    *(v1 + 240) = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v11 = v1;
    v11[1] = Canvas.harmonizeImage(_:);
    v14 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v1 + 40, v10, v12, v13, v14);
  }

  else
  {

    v15 = *(v1 + 144);
    v17 = *(v1 + 72);
    v16 = *(v1 + 80);

    type metadata accessor for Canvas.CanvasHarmonizationError(0, v16[362], v16[363], v16[364]);
    swift_getWitnessTable();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();

    _s8PaperKit0A6MarkupVWOhTm_1(v15, type metadata accessor for CRAssetOrData);

    v19 = *(v1 + 8);

    return v19();
  }
}

uint64_t Canvas.harmonizeImage(_:)()
{
  if (*(v0 + 208))
  {
    v2 = *(v0 + 184);
    v1 = *(v0 + 192);
    v3 = *(v0 + 176);
    v4 = swift_task_alloc();
    *(v0 + 216) = v4;
    *v4 = v0;
    v4[1] = Canvas.harmonizeImage(_:);
    if (v3 > v2)
    {
      v5 = v3;
    }

    else
    {
      v5 = v2;
    }

    return CRAssetOrData.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:)((v1 * v5), 1, 1);
  }

  else
  {
    v7 = *(v0 + 144);
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);

    type metadata accessor for Canvas.CanvasHarmonizationError(0, v8[362], v8[363], v8[364]);
    swift_getWitnessTable();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();

    _s8PaperKit0A6MarkupVWOhTm_1(v7, type metadata accessor for CRAssetOrData);

    v11 = *(v0 + 8);

    return v11();
  }
}

{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = Canvas.harmonizeImage(_:);
  }

  else
  {
    v5 = Canvas.harmonizeImage(_:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{

  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[18];
  v4 = v0[9];
  if (v0[6] >> 60 == 15)
  {
    _s8PaperKit0A6MarkupVWOhTm_1(v0[18], type metadata accessor for CRAssetOrData);

    v5 = 1;
  }

  else
  {
    CRContext.assetManager.getter();
    CRAsset.init(data:assetManager:)();

    _s8PaperKit0A6MarkupVWOhTm_1(v3, type metadata accessor for CRAssetOrData);
    v5 = 0;
  }

  v6 = v0[7];
  v7 = type metadata accessor for CRAsset();
  (*(*(v7 - 8) + 56))(v6, v5, 1, v7);

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[18];
  v4 = v0[9];

  _s8PaperKit0A6MarkupVWOhTm_1(v3, type metadata accessor for CRAssetOrData);

  v5 = v0[1];

  return v5();
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence3RefVyAF10CRRegisterVy8PaperKit12TaggedStrokeOGGG_AF04WeakE0VyANGs5NeverOTg503_s8g81Kit6CanvasC17selectableStrokes33_A4518BE304181191DE73703BAA1E0F8FLLSay9Coherence7ke6VyAF10fz4AA12ij12OGGGvgAnF0N0Z8AMGXEfU_Tf1cn_n(uint64_t a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v3 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v44 = v32 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v7 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v9 = v32 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v40 = v9;
    v32[1] = v1;
    v51 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v51;
    v12 = a1 + 56;
    v13 = _HashTable.startBucket.getter();
    v14 = 0;
    v41 = v7;
    v42 = v3;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v35 = a1;
    v36 = v7 + 32;
    v33 = a1 + 64;
    v34 = v10;
    v39 = a1 + 56;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      if ((*(v12 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_21;
      }

      v49 = 1 << v13;
      v50 = v13 >> 6;
      v16 = *(a1 + 36);
      v47 = v14;
      v48 = v16;
      v17 = *(a1 + 48);
      v18 = v42;
      v19 = *(v42 + 16);
      v20 = v44;
      v21 = v46;
      v19(v44, v17 + *(v42 + 72) * v13, v46);
      v19(v45, v20, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953B8]);
      v22 = v40;
      WeakRef.init<A>(_:)();
      (*(v18 + 8))(v20, v21);
      v51 = v11;
      v24 = *(v11 + 16);
      v23 = *(v11 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v11 = v51;
      }

      *(v11 + 16) = v24 + 1;
      (*(v41 + 32))(v11 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v24, v22, v43);
      a1 = v35;
      v15 = 1 << *(v35 + 32);
      v12 = v39;
      if (v13 >= v15)
      {
        goto LABEL_22;
      }

      v25 = *(v39 + 8 * v50);
      if ((v25 & v49) == 0)
      {
        goto LABEL_23;
      }

      if (v48 != *(v35 + 36))
      {
        goto LABEL_24;
      }

      v26 = v25 & (-2 << (v13 & 0x3F));
      if (v26)
      {
        v15 = __clz(__rbit64(v26)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v50 << 6;
        v28 = v50 + 1;
        v29 = (v33 + 8 * v50);
        while (v28 < (v15 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v13, v48, 0);
            v15 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v13, v48, 0);
      }

LABEL_4:
      v14 = v47 + 1;
      v13 = v15;
      if (v47 + 1 == v34)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

double Canvas.visibleBoundsInModelSpace.getter()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x450))();
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = Canvas.editingView.getter();
  (*((*v2 & *v5) + 0x2C0))(v55);
  v48 = v55[1];
  v50 = v55[0];
  v6 = v56;
  v7 = v57;

  (*((*v2 & *v1) + 0x858))(v58);
  if (v59)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  v9 = vdupq_n_s64(v8);
  *&t1.a = v50;
  *&t1.c = v48;
  t1.tx = v6;
  t1.ty = v7;
  *&t2.a = vbslq_s8(v9, xmmword_1D4059320, v58[0]);
  *&t2.c = vbslq_s8(v9, xmmword_1D4059310, v58[1]);
  *&t2.tx = vbicq_s8(v58[2], v9);
  CGAffineTransformConcat(&v52, &t1, &t2);
  t1 = v52;
  CGAffineTransformInvert(&t2, &t1);
  a = t2.a;
  c = t2.c;
  b = t2.b;
  tx = t2.tx;
  d = t2.d;
  ty = t2.ty;
  v10 = *((*v2 & *v1) + 0x490);
  v11 = v4;
  v10();
  [v11 convertRect:v1 toCoordinateSpace:?];
  v42 = v13;
  v43 = v12;
  v40 = v15;
  v41 = v14;
  v16 = Canvas.editingView.getter();
  [v16 bounds];
  v18 = v17;
  v36 = v20;
  v38 = v19;
  v22 = v21;

  if ((*((*v2 & *v1) + 0x810))())
  {
    [v11 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = v18;
    v31 = v30;

    v60.origin.x = v24;
    v60.origin.y = v26;
    v60.size.width = v28;
    v60.size.height = v31;
    v18 = v29;
    v22 = v22 + CGRectGetHeight(v60);
  }

  else
  {
  }

  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = tx;
  t1.ty = ty;
  v61.origin.x = v18;
  v61.size.width = v36;
  v61.origin.y = v38;
  v61.size.height = v22;
  v62 = CGRectApplyAffineTransform(v61, &t1);
  y = v62.origin.y;
  x = v62.origin.x;
  width = v62.size.width;
  height = v62.size.height;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = tx;
  t1.ty = ty;
  v62.origin.y = v42;
  v62.origin.x = v43;
  v62.size.height = v40;
  v62.size.width = v41;
  v64 = CGRectApplyAffineTransform(v62, &t1);
  v63.origin.y = y;
  v63.origin.x = x;
  v63.size.width = width;
  v63.size.height = height;
  *&v32 = CGRectIntersection(v63, v64);

  return v32;
}

uint64_t _s8PaperKit13CanvasMembersV5allInAC9Coherence7CapsuleVyxG_tcAE4CRDTRzAA09ContainerC7ElementRzlufCAA0A0V_Tt0g5(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v43 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v56 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMR);
  v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v55 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v55);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v43 - v13;
  v15 = type metadata accessor for Paper(0);
  v57 = v15;
  v16 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
  v58 = v16;
  v59 = &protocol witness table for Paper;
  swift_getKeyPath();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  Capsule.subscript.getter();

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v14, 1, v17);
  v49 = v16;
  v50 = v15;
  if (v19 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
    v20 = MEMORY[0x1E69E7CD0];
    v21 = v54;
    v22 = a1;
  }

  else
  {
    Ref.subscript.getter();
    (*(v18 + 8))(v14, v17);
    v20 = MEMORY[0x1E69E7CD0];
    v60[0] = MEMORY[0x1E69E7CD0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
    CROrderedSet.makeIterator()();
    v23 = v46;
    CROrderedSet.Iterator.next()();
    v24 = *(v56 + 48);
    v25 = v47;
    v26 = v24(v23, 1, v47) == 1;
    v27 = v9;
    v21 = v54;
    v22 = a1;
    if (!v26)
    {
      v44 = v11;
      v28 = v56 + 32;
      v55 = *(v56 + 32);
      v56 = v7;
      v29 = v45;
      v30 = v23;
      v31 = v24;
      v32 = v27;
      v33 = (v28 - 24);
      do
      {
        v55(v29, v30, v25);
        specialized Ref<>.getAllStrokes<A>(_:in:)(v60, a1);
        (*v33)(v29, v25);
        CROrderedSet.Iterator.next()();
      }

      while (v31(v30, 1, v25) != 1);
      v20 = v60[0];
      v22 = a1;
      v21 = v54;
      v7 = v56;
      v27 = v32;
      v11 = v44;
    }

    (*(v48 + 8))(v27, v7);
    _s8PaperKit0A6MarkupVWOhTm_1(v11, type metadata accessor for PKDrawingStruct);
  }

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence3RefVyAF10CRRegisterVy8PaperKit12TaggedStrokeOGGG_AF04WeakE0VyANGs5NeverOTg503_s8g76Kit13CanvasMembersV5allInAC9Coherence7CapsuleVyxG_tcAE4CRDTRzAA09ContainerC7b9RzlufcAE7ke6VyAE10f6VyAA12iJ18OGGAE0M0VyAQGXEfU_Tf1cn_n(v20);
  v35 = v34;

  MEMORY[0x1EEE9AC00](v36);
  v37 = v49;
  *(&v43 - 4) = v50;
  *(&v43 - 3) = v37;
  *(&v43 - 2) = &protocol witness table for Paper;
  swift_getKeyPath();
  v39 = v51;
  v38 = v52;
  Capsule.subscript.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v40 = CROrderedSet.map<A>(_:)();
  (*(v53 + 8))(v38, v21);
  v41 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v40);

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v35);

  (*(*(v39 - 8) + 8))(v22, v39);
  return v41;
}

void *specialized Sequence.first(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA6CE0C0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1DA6CE0C0](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

void specialized Sequence.first(where:)(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v39 = a2;
  v40 = a1;
  v37 = a4;
  v7 = &_s9Coherence9CRKeyPathV3key_8PaperKit20AnyCanvasElementViewC5valuetMd;
  v8 = &_s9Coherence9CRKeyPathV3key_8PaperKit20AnyCanvasElementViewC5valuetMR;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV3key_8PaperKit20AnyCanvasElementViewC5valuetMd, &_s9Coherence9CRKeyPathV3key_8PaperKit20AnyCanvasElementViewC5valuetMR);
  v36 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v36 - v11;
  v12 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 64);
  v16 = (v13 + 63) >> 6;
  v42 = a3;

  v17 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v8;
      v19 = v7;
      v43 = v5;
      v20 = v17;
LABEL_9:
      v21 = __clz(__rbit64(v15)) | (v20 << 6);
      v22 = v42;
      v23 = *(v42 + 48);
      v24 = type metadata accessor for CRKeyPath();
      v25 = *(v24 - 8);
      v26 = v23 + *(v25 + 72) * v21;
      v27 = v38;
      (*(v25 + 16))(v38, v26, v24);
      v28 = *(*(v22 + 56) + 8 * v21);
      *&v27[*(v41 + 48)] = v28;
      v29 = v27;
      v30 = v44;
      v7 = v19;
      v31 = v19;
      v8 = v18;
      outlined init with take of Range<AttributedString.Index>(v29, v44, v31, v18);
      v32 = v28;
      v33 = v43;
      v34 = v40(v30);
      v5 = v33;
      if (v33)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s9Coherence9CRKeyPathV3key_8PaperKit20AnyCanvasElementViewC5valuetMd, &_s9Coherence9CRKeyPathV3key_8PaperKit20AnyCanvasElementViewC5valuetMR);

        return;
      }

      if (v34)
      {
        break;
      }

      v15 &= v15 - 1;
      outlined destroy of StocksKitCurrencyCache.Provider?(v44, v7, v18);
      v17 = v20;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v35 = v37;
    outlined init with take of Range<AttributedString.Index>(v44, v37, &_s9Coherence9CRKeyPathV3key_8PaperKit20AnyCanvasElementViewC5valuetMd, &_s9Coherence9CRKeyPathV3key_8PaperKit20AnyCanvasElementViewC5valuetMR);
    (*(v36 + 56))(v35, 0, 1, v41);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v16)
      {

        (*(v36 + 56))(v37, 1, 1, v41);
        return;
      }

      v15 = *(v12 + 8 * v20);
      ++v17;
      if (v15)
      {
        v18 = v8;
        v19 = v7;
        v43 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v32 = a1;
  v33 = a2;
  v27 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMR);
  v28 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  (*(v11 + 16))(v13, v35, v10, v15);
  v18 = v29;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR, MEMORY[0x1E6995150]);
  dispatch thunk of Sequence.makeIterator()();
  v19 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMR, MEMORY[0x1E6995120]);
  v34 = v17;
  v35 = v14;
  v30 = v19;
  dispatch thunk of IteratorProtocol.next()();
  v20 = *(v18 + 48);
  if (v20(v9, 1, v4) == 1)
  {
LABEL_6:
    (*(v28 + 8))(v34, v35);
    v23 = 1;
    v24 = v27;
  }

  else
  {
    v31 = *(v18 + 32);
    v21 = (v18 + 8);
    while (1)
    {
      v31(v6, v9, v4);
      v22 = v32(v6);
      if (v3)
      {
        (*v21)(v6, v4);
        return (*(v28 + 8))(v34, v35);
      }

      if (v22)
      {
        break;
      }

      (*v21)(v6, v4);
      dispatch thunk of IteratorProtocol.next()();
      if (v20(v9, 1, v4) == 1)
      {
        goto LABEL_6;
      }
    }

    (*(v28 + 8))(v34, v35);
    v26 = v27;
    v31(v27, v6, v4);
    v24 = v26;
    v23 = 0;
  }

  return (*(v29 + 56))(v24, v23, 1, v4);
}

void specialized Sequence.first(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v11 << 6);
      v13 = *(a3 + 56);
      v18 = *(*(a3 + 48) + 8 * v12);
      v19 = *(v13 + 16 * v12);
      v17 = v19;
      v14 = v18;
      v15 = v17;
      v16 = v20(&v18);
      if (v3)
      {
        break;
      }

      if (v16)
      {
        goto LABEL_12;
      }

      v8 &= v8 - 1;

      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
LABEL_12:

        return;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v15 = *(*(a3 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));
      v13 = v15;
      v14 = a1(&v15);
      if (v3)
      {
        break;
      }

      if (v14)
      {
        goto LABEL_12;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
LABEL_12:

        return;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Color(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      _s8PaperKit0A6MarkupVWOcTm_1(v12, v10, type metadata accessor for Color);
      v14 = a1(v10);
      if (v3)
      {
        return _s8PaperKit0A6MarkupVWOhTm_1(v10, type metadata accessor for Color);
      }

      if (v14)
      {
        break;
      }

      _s8PaperKit0A6MarkupVWOhTm_1(v10, type metadata accessor for Color);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    _s8PaperKit13CRAssetOrDataOWObTm_0(v10, v18, type metadata accessor for Color);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t specialized ContainerCanvasElement.ensureHasDrawing<A>(in:)(uint64_t a1)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v28 - v3;
  v4 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = off_1F4F62930;
  v16 = type metadata accessor for Paper(0);
  v33 = v1;
  v29 = v16;
  v15();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v14, 1, v17);
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  if (v19 == 1)
  {
    v21 = *(MEMORY[0x1E695F050] + 16);
    v34 = *MEMORY[0x1E695F050];
    v35 = v21;
    type metadata accessor for CGRect(0);
    _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
    CRRegister.init(wrappedValue:)();
    v22 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953B0]);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953C8]);
    CROrderedSet.init()();
    UnknownProperties.init()();
    v23 = v30;
    _s8PaperKit0A6MarkupVWOcTm_1(v8, v30, type metadata accessor for PKDrawingStruct);
    v24 = type metadata accessor for CRKeyPath();
    v25 = v32;
    (*(*(v24 - 8) + 56))(v32, 1, 1, v24);
    v26 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct, &protocol conformance descriptor for PKDrawingStruct);

    MEMORY[0x1DA6CC020](v27, v23, v25, v22, v26);
    (*(v18 + 56))(v11, 0, 1, v17);
    off_1F4F62938(v11, v29);
    return _s8PaperKit0A6MarkupVWOhTm_1(v8, type metadata accessor for PKDrawingStruct);
  }

  return result;
}

double protocol witness for PaperKitStreamableAttachment.liveStreamMessenger.getter in conformance Canvas<A>()
{
  specialized Canvas.liveStreamMessenger.getter();
  swift_unknownObjectRetain();
  return result;
}

double protocol witness for PaperKitStreamableAttachment.liveStreamMessenger.setter in conformance Canvas<A>(uint64_t a1, __n128 a2, uint64_t a3)
{
  specialized Canvas.liveStreamMessenger.setter(a1, a3);

  swift_unknownObjectRelease();
  return result;
}

void (*protocol witness for PaperKitStreamableAttachment.liveStreamMessenger.modify in conformance Canvas<A>(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Canvas.liveStreamMessenger.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocument.modify in conformance PaperTextAttachmentView;
}

void specialized CanvasElementViewController._canvasView.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v18 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  type metadata accessor for MainActor();
  v5 = v0;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for specialized closure #1 in CanvasElementViewController.updateToolPickerVisibility(), v7);

  specialized CanvasElementViewController.updateActionInfoViewVisibility()();
  v9 = type metadata accessor for Image(0);
  v18[0] = v9;
  v10 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  v18[1] = v10;
  v18[2] = &protocol witness table for Image;
  swift_getKeyPath();
  v19 = v5;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *&v5[direct field offset for CanvasElementViewController._canvasView];
  if (v12)
  {
    MEMORY[0x1EEE9AC00](v11);
    v18[-4] = v9;
    v18[-3] = v10;
    v18[-2] = &protocol witness table for Image;
    swift_getKeyPath();
    v19 = v5;
    v13 = v12;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = direct field offset for CanvasElementViewController._contentViewController;
    swift_beginAccess();
    v15 = [*&v5[v14] view];
    v16 = *&v13[direct field offset for CanvasView.contentView];
    *&v13[direct field offset for CanvasView.contentView] = v15;
    v17 = v15;
    specialized CanvasView.contentView.didset(v16);
  }
}

void specialized CanvasElementViewController.canvasView.setter(void *a1)
{
  v3 = direct field offset for CanvasElementViewController._canvasView;
  v4 = *(v1 + direct field offset for CanvasElementViewController._canvasView);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Image(0);
    _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit10CanvasViewCyAA5ImageVGMd, &_s8PaperKit10CanvasViewCyAA5ImageVGMR);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v10 = v6;

  specialized CanvasElementViewController._canvasView.didset();
}

void specialized CanvasElementViewController.updateActionInfoViewVisibility()()
{
  v1 = specialized CanvasElementViewController.imageView.getter();
  if (v1)
  {
    v2 = v1;
    MEMORY[0x1EEE9AC00](v1);
    type metadata accessor for Image(0);
    _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    swift_getKeyPath();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = direct field offset for CanvasElementViewController._editingMode;
    if (*(v0 + direct field offset for CanvasElementViewController._editingMode) == 3)
    {
      v5 = 1;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v3);
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = *(v0 + v4) == 1;
    }

    v6 = direct field offset for ImageElementView.mediaView;
    v7 = *&v2[direct field offset for ImageElementView.mediaView];
    if (v7)
    {
      v8 = [v7 imageAnalysisContext];
      if (v8)
      {
        [v8 setActionInfoViewHidden:v5 animated:0];
        swift_unknownObjectRelease();
      }
    }

    if (v5)
    {
      v9 = *&v2[v6];
      if (v9)
      {
        v10 = [v9 imageAnalysisContext];
        if (v10)
        {
          [v10 setHighlightSelectableItemsEnabled_];
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

double specialized CanvasElementViewController.canvasSubscribeCancellable.setter(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = direct field offset for CanvasElementViewController._canvasSubscribeCancellable;
  if (*(v1 + direct field offset for CanvasElementViewController._canvasSubscribeCancellable))
  {
    if (a1)
    {
      type metadata accessor for AnyCancellable();
      _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);

      v5 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v5)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Image(0);
    _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + v4) = v3;

  return result;
}

void specialized CanvasElementViewController.analysis.setter(void *a1)
{
  v3 = direct field offset for CanvasElementViewController._analysis;
  v4 = *(v1 + direct field offset for CanvasElementViewController._analysis);
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
    _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
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

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for VKCImageAnalysis, 0x1E69DF9E0);
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
  specialized CanvasElementViewController._analysis.didset(v10);
}

uint64_t specialized closure #1 in CanvasElementViewController.updateToolPickerVisibility()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 32) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in CanvasElementViewController.updateToolPickerVisibility(), v6, v5);
}

uint64_t specialized closure #1 in CanvasElementViewController.updateToolPickerVisibility()()
{
  v1 = v0[3];

  v2 = [v1 pencilKitResponderState];
  v3 = [v2 _currentActiveToolPicker];

  if (v3)
  {
LABEL_2:

    goto LABEL_3;
  }

  v6 = v0[3];
  v7 = swift_task_alloc();
  v8 = type metadata accessor for Image(0);
  *v7 = v8;
  v9 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  v7[1] = v9;
  v7[2] = &protocol witness table for Image;
  swift_getKeyPath();

  v0[2] = v6;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v6 + direct field offset for CanvasElementViewController._canvasView);
  if (v10)
  {
    v3 = v10;
    v11 = specialized CanvasView._activeToolPicker.getter();
    if (v11)
    {
      v12 = v11;
      v13 = v0[3];
      v14 = swift_task_alloc();
      *v14 = v8;
      v14[1] = v9;
      v14[2] = &protocol witness table for Image;
      swift_getKeyPath();

      v0[2] = v13;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v15 = *(v13 + direct field offset for CanvasElementViewController._editingMode) == 3;
      [v12 setVisible:v15 forFirstResponder:v3];
      [v12 setVisible:v15 forFirstResponder:v13];
    }

    goto LABEL_2;
  }

LABEL_3:
  v4 = v0[1];

  return v4();
}

void specialized CanvasElementViewController.updateViewForPaper(_:)(uint64_t a1)
{
  v2 = v1;
  v350 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v334 = &v325[-v5];
  v6 = type metadata accessor for Image(0);
  v330 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v331 = v7;
  v332 = &v325[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v338 = &v325[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v337 = &v325[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGSgMd, &_s9Coherence3RefVy8PaperKit5ImageVGSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v325[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGMd, &_s9Coherence3RefVy8PaperKit5ImageVGMR);
  v339 = *(v15 - 8);
  v340 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v333 = &v325[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  *&v353 = &v325[-v18];
  v19 = type metadata accessor for CRKeyPath();
  v342 = *(v19 - 8);
  v343 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v325[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v341 = &v325[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v325[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v336 = &v325[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v359 = &v325[-v31];
  MEMORY[0x1EEE9AC00](v32);
  v344 = &v325[-v33];
  v354 = v6;
  v360 = v6;
  v355 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  v361 = v355;
  v362 = &protocol witness table for Image;
  swift_getKeyPath();
  v34 = direct field offset for CanvasElementViewController._$observationRegistrar;
  v363 = v2;
  v35 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  v356 = v34;
  v357 = v35;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = direct field offset for CanvasElementViewController._canvasView;
  v358 = v2;
  if (!*&v2[direct field offset for CanvasElementViewController._canvasView] || (*(v28 + 48))(a1, 1, v27) != 1)
  {
    outlined init with copy of Date?(a1, v26, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
      return;
    }

    v327 = v14;
    v328 = v21;
    v42 = v344;
    v43 = (*(v28 + 32))();
    v44 = v28;
    MEMORY[0x1EEE9AC00](v43);
    v46 = v354;
    v45 = v355;
    *&v325[-32] = v354;
    *&v325[-24] = v45;
    *&v325[-16] = &protocol witness table for Image;
    swift_getKeyPath();
    v47 = v358;
    v363 = v358;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v329 = v36;
    v49 = *&v47[v36];
    v335 = v44;
    if (v49)
    {
      v349 = direct field offset for Canvas.paperView;
      v50 = *&v49[direct field offset for Canvas.paperView];
      v51 = *((*MEMORY[0x1E69E7D40] & *v50) + 0x3F0);
      swift_beginAccess();
      v52 = v50 + v51;
      v53 = v359;
      v345 = *(v44 + 16);
      v346 = (v44 + 16);
      v345(v359, v52, v27);
      v352 = v49;
      v54 = v341;
      Capsule.rootID.getter();
      v347 = *(v44 + 8);
      v348 = (v44 + 8);
      v347(v53, v27);
      v55 = v328;
      Capsule.rootID.getter();
      v56 = CRKeyPath.rawValue.getter();
      v351 = v49;
      v58 = v57;
      v59 = CRKeyPath.rawValue.getter();
      v61 = v60;
      v62 = specialized static Data.== infix(_:_:)(v56, v58, v59, v60);
      v63 = v343;
      v326 = v62;
      outlined consume of Data._Representation(v59, v61);
      outlined consume of Data._Representation(v56, v58);
      v64 = *(v342 + 8);
      v64(v55, v63);
      v65 = (v64)(v54, v63);
      v66 = v352;
      if (v326)
      {
        v67 = v349;
        v68 = *&v351[v349];
        swift_beginAccess();
        v69 = v68;
        v70 = v354;
        v71 = v355;
        Capsule.merge<A>(_:)();
        swift_endAccess();

        v328 = direct field offset for CanvasView.canvasScrollView;
        v72 = *&v66[direct field offset for CanvasView.canvasScrollView];
        v73 = MEMORY[0x1E69E7D40];
        if (!v72)
        {
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        [v72 contentOffset];
        v75 = v74;
        v77 = v76;
        v78 = *&v351[v67];
        v79 = *((*v73 & *v78) + 0x3F0);
        swift_beginAccess();
        v80 = v359;
        v81 = (v345)(v359, v78 + v79, v27);
        MEMORY[0x1EEE9AC00](v81);
        v82 = v70;
        *&v325[-32] = v70;
        *&v325[-24] = v71;
        *&v325[-16] = &protocol witness table for Image;
        swift_getKeyPath();
        Capsule.subscript.getter();

        v347(v80, v27);
        v83 = *&v363;
        v84 = v364;
        specialized Canvas.mergeToCanvasElements()();
        v85 = direct field offset for Canvas.subscriptions;
        swift_beginAccess();
        v86 = *&v66[v85];
        v87 = v66;
        if (v86 >> 62)
        {
          v88 = __CocoaSet.count.getter();
        }

        else
        {
          v88 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v89 = v344;
        v90 = v82;
        if (v88)
        {
          if (v88 < 1)
          {
            __break(1u);
            goto LABEL_123;
          }

          v350 = v86 & 0xC000000000000001;

          v91 = 0;
          v92 = *&v353;
          do
          {
            if (v350)
            {
              v99 = MEMORY[0x1DA6CE0C0](v91, v86);
            }

            else
            {
              v99 = *(v86 + 8 * v91 + 32);
            }

            v100 = AnyCanvas.isLiveEditing()();
            v101 = *v99;
            if (!v100 || (*(v99 + *(v101 + 136)) & 1) != 0)
            {
              outlined init with copy of Date?(v99 + *(v101 + 120), v92, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMR);
              v93 = *&v351[v349];
              v94 = v27;
              v95 = *((*MEMORY[0x1E69E7D40] & *v93) + 0x3F0);
              swift_beginAccess();
              v96 = v93 + v95;
              v27 = v94;
              v97 = v359;
              v345(v359, v96, v27);
              dispatch thunk of AnySubscriberBase.receive(_:)();

              v98 = v97;
              v87 = v352;
              v347(v98, v27);
              outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMR);
            }

            else
            {
            }

            ++v91;
          }

          while (v88 != v91);

          v90 = v354;
          v89 = v344;
        }

        if (*&v87[direct field offset for Canvas.multipeerConnection])
        {
          v113 = *&v351[v349];
          v114 = *((*MEMORY[0x1E69E7D40] & *v113) + 0x3F0);
          swift_beginAccess();
          v115 = v113 + v114;
          v87 = v352;
          v116 = v359;
          v345(v359, v115, v27);

          CRMulticastSyncManager.sync(_:sendDelta:)();

          v347(v116, v27);
        }

        specialized Canvas.scheduleFinalizeTask()();
        v117 = direct field offset for Canvas.xpcMulticast;
        swift_beginAccess();
        v102 = v358;
        if (*&v87[v117])
        {
          v118 = *&v351[v349];
          v119 = *((*MEMORY[0x1E69E7D40] & *v118) + 0x3F0);
          swift_beginAccess();
          v120 = v118 + v119;
          v87 = v352;
          v121 = v359;
          v345(v359, v120, v27);

          CRMulticastSyncManager.sync(_:sendDelta:)();

          v347(v121, v27);
        }

        v122 = v328;
        v123 = *&v87[v328];
        if (!v123)
        {
          goto LABEL_126;
        }

        specialized CanvasView.updateAfterDidScroll(_:)(v123);
        v124 = *&v351[v349];
        v125 = *((*MEMORY[0x1E69E7D40] & *v124) + 0x3F0);
        swift_beginAccess();
        v126 = v359;
        v127 = (v345)(v359, v124 + v125, v27);
        MEMORY[0x1EEE9AC00](v127);
        v128 = v355;
        *&v325[-32] = v90;
        *&v325[-24] = v128;
        *&v325[-16] = &protocol witness table for Image;
        swift_getKeyPath();
        Capsule.subscript.getter();

        v129 = v352;
        v347(v126, v27);
        v130 = *&v129[v122];
        if (!v130)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        [v130 setContentOffset_];
        v131 = *&v129[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
        if (!v131)
        {
LABEL_128:
          __break(1u);
          return;
        }

        v132 = *(v131 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController);
        if (v132)
        {
          *(v132 + direct field offset for MiniMenuController.needsStateUpdate) = 1;
        }

        v350 = 0;
      }

      else
      {
        MEMORY[0x1EEE9AC00](v65);
        v106 = v355;
        v107 = v354;
        *&v325[-32] = v354;
        *&v325[-24] = v106;
        *&v325[-16] = &protocol witness table for Image;
        swift_getKeyPath();
        v102 = v358;
        v363 = v358;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v108 = v329;
        v109 = *&v102[v329];
        if (v109 && (v110 = [v109 removeFromSuperview], *&v102[v108]))
        {
          MEMORY[0x1EEE9AC00](v110);
          *&v325[-32] = v107;
          *&v325[-24] = v106;
          *&v325[-16] = &protocol witness table for Image;
          KeyPath = swift_getKeyPath();
          v353 = COERCE_DOUBLE(v325);
          MEMORY[0x1EEE9AC00](KeyPath);
          *&v325[-16] = *&v102;
          *&v325[-8] = 0;
          v363 = v102;
          v90 = v107;
          v112 = v350;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          v350 = v112;
        }

        else
        {
          *&v102[v108] = 0;
          specialized CanvasElementViewController._canvasView.didset();

          v90 = v107;
        }

        v89 = v344;
      }
    }

    else
    {
      v89 = v42;
      v102 = v358;
      v90 = v46;
    }

    MEMORY[0x1EEE9AC00](v48);
    v133 = v355;
    *&v325[-32] = v90;
    *&v325[-24] = v133;
    *&v325[-16] = &protocol witness table for Image;
    swift_getKeyPath();
    v363 = v102;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*&v102[v329])
    {
      (*(v335 + 8))(v89, v27);
      return;
    }

    v353 = COERCE_DOUBLE(*&v102[direct field offset for CanvasElementViewController.context]);
    v134 = [v102 view];
    if (v134)
    {
      v135 = v134;
      [v134 bounds];
      v137 = v136;
      v139 = v138;
      v141 = v140;
      v143 = v142;

      v144 = v359;
      v348 = *(v335 + 16);
      v349 = v27;
      v347 = (v335 + 16);
      v145 = v348(v359, v344, v27);
      MEMORY[0x1EEE9AC00](v145);
      v146 = v355;
      *&v325[-32] = v90;
      *&v325[-24] = v146;
      *&v325[-16] = &protocol witness table for Image;
      swift_getKeyPath();
      v363 = v102;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      LODWORD(v135) = v102[direct field offset for CanvasElementViewController.allowMediaCanvasElements];
      v147 = v102[direct field offset for CanvasElementViewController.transparentBackground];
      v148 = v358[direct field offset for CanvasElementViewController._editingMode];
      v149 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit10CanvasViewCyAA5ImageVGMd, &_s8PaperKit10CanvasViewCyAA5ImageVGMR));
      v150 = COERCE_DOUBLE(v358);
      specialized CanvasView.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:paperViewController:)(*&v353, v144, v148, v135, v147, v358, v137, v139, v141, v143);
      v152 = v151;
      MEMORY[0x1EEE9AC00](v151);
      v153 = v355;
      *&v325[-32] = v90;
      *&v325[-24] = v153;
      *&v325[-16] = &protocol witness table for Image;
      swift_getKeyPath();
      *&v363 = v150;
      v154 = v152;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v155 = direct field offset for CanvasElementViewController._liveStreamDrawings;
      swift_beginAccess();
      v353 = v150;
      AnyCanvas.liveStreamDrawings.setter(*(*&v150 + v155));
      v156 = specialized CanvasView._activeToolPicker.getter();
      if (v156)
      {
        v157 = v156;
        [v156 addObserver_];
        v158 = specialized CanvasView.toolPickerObserver.getter();
        [v157 addObserver_];

        v159 = *&v154[direct field offset for CanvasView.$__lazy_storage_$_toolPickerObserver];
        specialized CanvasViewToolPickerObserver.updateUI(toolPicker:)(v157);
      }

      MEMORY[0x1EEE9AC00](v156);
      v161 = v354;
      v160 = v355;
      *&v325[-32] = v354;
      *&v325[-24] = v160;
      *&v325[-16] = &protocol witness table for Image;
      swift_getKeyPath();
      v162 = *&v353;
      v371 = *&v353;
      v163 = v154;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v164 = &v162[direct field offset for CanvasElementViewController._liveStreamMessenger];
      swift_beginAccess();
      v165 = *v164;
      v166 = *(v164 + 1);
      v167 = v163 + direct field offset for Canvas.liveStreamMessenger;
      swift_beginAccess();
      *v167 = v165;
      v167[1] = v166;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRelease();
      specialized Canvas.liveStreamMessenger.didset();
      v168 = swift_unknownObjectRelease();
      MEMORY[0x1EEE9AC00](v168);
      v169 = v355;
      *&v325[-32] = v161;
      *&v325[-24] = v169;
      *&v325[-16] = &protocol witness table for Image;
      swift_getKeyPath();
      v370 = v162;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v170 = &v162[direct field offset for CanvasElementViewController._participantDetailsDataSource];
      swift_beginAccess();
      swift_unknownObjectWeakLoadStrong();
      v171 = *(v170 + 1);
      v172 = v163 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_participantDetailsDataSource;
      swift_beginAccess();
      *(v172 + 1) = v171;
      swift_unknownObjectWeakAssign();
      v173 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView;
      [*(v163 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView) setNeedsLayout];
      v174 = swift_unknownObjectRelease();
      MEMORY[0x1EEE9AC00](v174);
      *&v325[-32] = v161;
      *&v325[-24] = v169;
      *&v325[-16] = &protocol witness table for Image;
      swift_getKeyPath();
      v369 = v162;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v175 = direct field offset for CanvasElementViewController._showParticipantCursors;
      swift_beginAccess();
      v176 = v162[v175];
      v177 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__showParticipantCursors;
      swift_beginAccess();
      if (v176 == *(v163 + v177))
      {
        *(v163 + v177) = v176;
        [*(v163 + v173) setNeedsLayout];
      }

      else
      {
        v178 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v178);
        *&v325[-16] = v163;
        v325[-8] = v176;
        v368 = v163;
        _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
        v179 = v350;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        v350 = v179;
        v162 = *&v353;
      }

      v180 = &v162[OBJC_IVAR____TtC8PaperKit30AnyCanvasElementViewController_delegate];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v346 = v180;
      if (Strong)
      {
        v182 = *(*(v180 + 1) + 8);
        v183 = Strong;
      }

      else
      {
        v183 = 0;
        v182 = 0;
      }

      v184 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v184);
      *&v325[-32] = v163;
      *&v325[-24] = v183;
      *&v325[-16] = v182;
      v367 = v163;
      _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
      v185 = v350;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      v350 = v185;

      v186 = swift_unknownObjectRelease();
      v352 = direct field offset for CanvasView.canvasTiledView;
      v187 = *(v163 + direct field offset for CanvasView.canvasTiledView);
      v188 = v354;
      v189 = v355;
      if (v187)
      {
        MEMORY[0x1EEE9AC00](v186);
        *&v325[-32] = v188;
        *&v325[-24] = v189;
        *&v325[-16] = &protocol witness table for Image;
        swift_getKeyPath();
        v190 = *&v353;
        v367 = *&v353;
        v191 = v187;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v192 = direct field offset for CanvasElementViewController._isSixChannelBlendingEnabled;
        swift_beginAccess();
        if (v190[v192] == 1)
        {
          v193 = [objc_opt_self() standardUserDefaults];
          v194 = MEMORY[0x1DA6CCED0](0xD000000000000036, 0x80000001D4088200);
          v195 = [v193 BOOLForKey_];

          v196 = v195 ^ 1;
        }

        else
        {
          v196 = 0;
        }

        [v191 setSixChannelBlending_];

        v197 = *&v352[v163];
        if (v197)
        {
          MEMORY[0x1EEE9AC00](v186);
          *&v325[-32] = v188;
          *&v325[-24] = v189;
          *&v325[-16] = &protocol witness table for Image;
          swift_getKeyPath();
          v198 = *&v353;
          v367 = *&v353;
          v199 = v197;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v200 = direct field offset for CanvasElementViewController._sixChannelBlendingDisableSnapshotting;
          swift_beginAccess();
          [v199 setSixChannelBlendingDisableSnapshotting_];

          v201 = *&v352[v163];
          if (v201)
          {
            MEMORY[0x1EEE9AC00](v186);
            *&v325[-32] = v188;
            *&v325[-24] = v189;
            *&v325[-16] = &protocol witness table for Image;
            swift_getKeyPath();
            v202 = *&v353;
            v367 = *&v353;
            v203 = v201;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v204 = direct field offset for CanvasElementViewController._sixChannelBlendingRendersTransparent;
            swift_beginAccess();
            [v203 setSixChannelBlendingRendersTransparent_];
          }
        }
      }

      v205 = direct field offset for Canvas._canvasElementController;
      v206 = *(v163 + direct field offset for Canvas._canvasElementController);
      v207 = &lazy cache variable for type metadata for CROrderedSet<SharedTagged_3<TaggedPaperPage>>.ObservableDifference?;
      v208 = v206;
      if (!v206)
      {
        v229 = *&v352[v163];
        if (!v229)
        {
          goto LABEL_77;
        }

        ObjectType = swift_getObjectType();
        v186 = swift_conformsToProtocol2();
        v211 = *&v353;
        if (!v186)
        {
LABEL_65:
          v218 = *(v163 + v205);
          v219 = v218;
          if (v218)
          {
            goto LABEL_66;
          }

          v236 = *&v352[v163];
          if (v236)
          {
            v237 = swift_getObjectType();
            v186 = swift_conformsToProtocol2();
            if (!v186)
            {
LABEL_69:
              v226 = *&v352[v163];
              if (v226)
              {
                MEMORY[0x1EEE9AC00](v186);
                *&v325[-32] = v354;
                *&v325[-24] = v189;
                *&v325[-16] = &protocol witness table for Image;
                swift_getKeyPath();
                v227 = *&v353;
                v367 = *&v353;
                v228 = v226;
                ObservationRegistrar.access<A, B>(_:keyPath:)();

                [v228 setRulerHostingDelegate_];
              }

              goto LABEL_77;
            }

            v238 = *(v186 + 48);
            v239 = v189;
            v240 = v207;
            v241 = v186;
            v242 = v236;
            v243 = v241;
            v207 = v240;
            v189 = v239;
            v219 = v238(v237, v243);

            v211 = *&v353;
LABEL_66:
            MEMORY[0x1EEE9AC00](v186);
            *&v325[-32] = v354;
            *&v325[-24] = v189;
            *&v325[-16] = &protocol witness table for Image;
            swift_getKeyPath();
            v367 = v211;
            v220 = v218;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v221 = direct field offset for CanvasElementViewController._canEditVellumOpacity;
            swift_beginAccess();
            v222 = v211[v221];
            v219[OBJC_IVAR____TtC8PaperKit23CanvasElementController_canEditVellumOpacity] = v222;
            v223 = *&v219[v207[122]];
            if (v223)
            {
              v224 = v223;
              v225 = ToolPickerController.textToolListViewController.getter();
              v225[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_opacityItemVisible] = v222;
              MarkupEditViewController.updateUI()();
            }

            goto LABEL_69;
          }

LABEL_77:
          MEMORY[0x1EEE9AC00](v186);
          *&v325[-32] = v354;
          *&v325[-24] = v189;
          *&v325[-16] = &protocol witness table for Image;
          swift_getKeyPath();
          v244 = *&v353;
          v367 = *&v353;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v245 = direct field offset for CanvasElementViewController._allowsContentSnapping;
          swift_beginAccess();
          *(v163 + direct field offset for CanvasView.allowsContentSnapping) = v244[v245];
          v246 = *(v163 + direct field offset for CanvasView.trackingPanGestureRecognizer);
          if (v246)
          {
            [v246 setEnabled_];
          }

          v247 = objc_opt_self();
          v248 = [v247 mainBundle];
          v249 = [v248 bundleIdentifier];

          if (!v249)
          {
            goto LABEL_83;
          }

          v250 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v252 = v251;

          if (v250 == 0xD000000000000011 && 0x80000001D408E2E0 == v252)
          {
LABEL_86:

            goto LABEL_87;
          }

          v253 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v253 & 1) == 0)
          {
LABEL_83:
            v254 = [v247 mainBundle];
            v255 = [v254 bundleIdentifier];

            if (!v255)
            {
              goto LABEL_88;
            }

            v257 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v259 = v258;

            if (v257 == 0xD000000000000019 && 0x80000001D408E2C0 == v259)
            {
              goto LABEL_86;
            }

            v324 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v324 & 1) == 0)
            {
LABEL_88:
              v263 = *&v353;
              if ([*&v353 isFirstResponder])
              {
                [v163 becomeFirstResponder];
              }

              v264 = v163;
              [v264 setAutoresizingMask_];
              [v264 setTranslatesAutoresizingMaskIntoConstraints_];

              v265 = [v263 view];
              v266 = v354;
              if (v265)
              {
                v267 = v265;
                [v265 addSubview_];

                v351 = v264;
                specialized CanvasElementViewController.canvasView.setter(v264);
                v268 = specialized CanvasElementViewController.imageView.getter();
                if (v268)
                {
                  v269 = v268[direct field offset for ImageElementView.shouldShowMissingImagePlaceholder];
                  v268[direct field offset for ImageElementView.shouldShowMissingImagePlaceholder] = 0;
                  if (v269 == 1)
                  {
                    v270 = direct field offset for ImageElementView.missingImageView;
                    v271 = v268;
                    [*&v268[direct field offset for ImageElementView.missingImageView] removeFromSuperview];
                    v272 = *&v271[v270];
                    *&v271[v270] = 0;

                    v263 = *&v353;
                    v268 = v272;
                  }
                }

                v273 = specialized CanvasElementViewController.imageView.getter();
                if (v273)
                {
                  v274 = v273;
                  MEMORY[0x1EEE9AC00](v273);
                  *&v325[-32] = v266;
                  *&v325[-24] = v189;
                  *&v325[-16] = &protocol witness table for Image;
                  swift_getKeyPath();
                  v365 = v263;
                  ObservationRegistrar.access<A, B>(_:keyPath:)();

                  v275 = direct field offset for CanvasElementViewController._isImageAnalysisEnabled;
                  swift_beginAccess();
                  v274[direct field offset for ImageElementView.isImageAnalysisEnabled] = v263[v275];
                  ImageElementView.updateMediaViewImageAnalysis()();
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit27CanvasElementViewControllerC21MediaAnalysisObserverCyAA5ImageV_GMd, &_s8PaperKit27CanvasElementViewControllerC21MediaAnalysisObserverCyAA5ImageV_GMR);
                v276 = swift_allocObject();
                swift_unknownObjectWeakInit();
                swift_unknownObjectWeakAssign();
                v277 = specialized CanvasElementViewController.imageView.getter();
                v352 = v276;
                if (!v277)
                {
LABEL_104:
                  MEMORY[0x1EEE9AC00](v277);
                  *&v325[-32] = v266;
                  *&v325[-24] = v189;
                  *&v325[-16] = &protocol witness table for Image;
                  v282 = swift_getKeyPath();
                  MEMORY[0x1EEE9AC00](v282);
                  v283 = v352;
                  *&v325[-16] = v263;
                  *&v325[-8] = v283;
                  v365 = v263;

                  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
                  v284 = *&v353;

                  v285 = specialized CanvasElementViewController.imageView.getter();
                  if (v285)
                  {
                    v286 = *&v285[direct field offset for ImageElementView.mediaView];
                    v287 = v285;
                    v288 = v286;

                    if (v286 && (v289 = [v288 imageAnalysisContext], v288, v289))
                    {
                      v290 = [v289 analysis];
                      swift_unknownObjectRelease();
                      v285 = v290;
                    }

                    else
                    {
                      v285 = 0;
                    }

                    v284 = *&v353;
                  }

                  specialized CanvasElementViewController.analysis.setter(v285);
                  swift_unknownObjectWeakInit();
                  v366 = 0;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCy8PaperKit6CanvasC0d4ViewfB0VyAD5ImageV_GGMd, &_s7Combine12PublisherBoxCy8PaperKit6CanvasC0d4ViewfB0VyAD5ImageV_GGMR);
                  v291 = v284;
                  v292 = swift_allocObject();
                  outlined init with take of Range<AttributedString.Index>(&v365, v292 + 16, &_s8PaperKit6CanvasC0a4ViewC9PublisherVyAA5ImageV_GMd, &_s8PaperKit6CanvasC0a4ViewC9PublisherVyAA5ImageV_GMR);
                  v365 = v292;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMR);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd, &_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMR);
                  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type AnyPublisher<Capsule<Image>, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMR, MEMORY[0x1E695BED8]);
                  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type PassthroughSubject<Capsule<Image>, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd, &_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMR, MEMORY[0x1E695BF80]);
                  v293 = Publisher.subscribe<A>(_:)();

                  specialized CanvasElementViewController.canvasSubscribeCancellable.setter(v293);
                  v294 = v346;
                  if (swift_unknownObjectWeakLoadStrong())
                  {
                    v295 = *(v294 + 1);
                    v296 = swift_getObjectType();
                    (*(v295 + 16))(v291, v296, v295);
                    swift_unknownObjectRelease();
                  }

                  v297 = direct field offset for Canvas.paperView;
                  v298 = *&v351[direct field offset for Canvas.paperView];
                  v299 = *((*MEMORY[0x1E69E7D40] & *v298) + 0x3F0);
                  swift_beginAccess();
                  v300 = v298 + v299;
                  v301 = v336;
                  v302 = v349;
                  v348(v336, v300, v349);
                  v303 = v338;
                  Capsule.root.getter();
                  v304 = v341;
                  Capsule.rootID.getter();
                  v305 = v337;
                  off_1F4F5EE70(v304, v354);
                  (*(v342 + 8))(v304, v343);
                  _s8PaperKit0A6MarkupVWOhTm_1(v303, type metadata accessor for Image);
                  v306 = *(v335 + 8);
                  v335 += 8;
                  v306(v301, v302);
                  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
                  v308 = *(v307 - 8);
                  if ((*(v308 + 48))(v305, 1, v307) == 1)
                  {
                    outlined destroy of StocksKitCurrencyCache.Provider?(v305, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
                    v309 = v327;
                    (*(v339 + 56))(v327, 1, 1, v340);
                  }

                  else
                  {
                    v309 = v327;
                    SharedTagged_10.tagged2.getter();
                    (*(v308 + 8))(v305, v307);
                    v310 = v339;
                    if ((*(v339 + 48))(v309, 1, v340) != 1)
                    {
                      (*(v310 + 32))();
                      Ref.subscript.getter();
                      v311 = type metadata accessor for TaskPriority();
                      (*(*(v311 - 8) + 56))(v334, 1, 1, v311);
                      v312 = v332;
                      _s8PaperKit0A6MarkupVWOcTm_1(v303, v332, type metadata accessor for Image);
                      type metadata accessor for MainActor();
                      v313 = *&v353;
                      v314 = static MainActor.shared.getter();
                      v315 = (*(v330 + 80) + 40) & ~*(v330 + 80);
                      v316 = swift_allocObject();
                      v317 = MEMORY[0x1E69E85E0];
                      v316[2] = v314;
                      v316[3] = v317;
                      v316[4] = v313;
                      _s8PaperKit13CRAssetOrDataOWObTm_0(v312, v316 + v315, type metadata accessor for Image);
                      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v334, &async function pointer to partial apply for specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:), v316);

                      _s8PaperKit0A6MarkupVWOhTm_1(v303, type metadata accessor for Image);
                      (*(v310 + 8))(v333, v340);
                      goto LABEL_117;
                    }
                  }

                  outlined destroy of StocksKitCurrencyCache.Provider?(v309, &_s9Coherence3RefVy8PaperKit5ImageVGSgMd, &_s9Coherence3RefVy8PaperKit5ImageVGSgMR);
LABEL_117:
                  v318 = v351;
                  v319 = *&v351[v297];
                  v320 = *((*MEMORY[0x1E69E7D40] & *v319) + 0x3F0);
                  swift_beginAccess();
                  v321 = v319 + v320;
                  v322 = v359;
                  v323 = v349;
                  v348(v359, v321, v349);

                  specialized Capsule<>.logSubelementHeadroomsOnInternalBuilds()();

                  v306(v322, v323);
                  v306(v344, v323);
                  return;
                }

                v278 = v277;
                v279 = *(v277 + direct field offset for ImageElementView.mediaView);
                if (v279)
                {

                  v280 = v279;
                  v281 = [v280 imageAnalysisContext];
                  if (v281)
                  {
                    [v281 addAnalysisObserver_];

                    v277 = swift_unknownObjectRelease();
LABEL_103:
                    v263 = *&v353;
                    goto LABEL_104;
                  }
                }

                else
                {

                  v280 = ImageElementView.pendingImageAnalysisObservers.getter();
                  [v280 addObject_];
                }

                goto LABEL_103;
              }

              goto LABEL_124;
            }
          }

LABEL_87:
          type metadata accessor for CanvasCalculateDocumentProxy();
          v260 = swift_allocObject();
          *(v260 + 16) = 0;
          v261 = MEMORY[0x1E69E7CC0];
          *(v260 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          v262 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(v261);
          *(v260 + 40) = 0;
          *(v260 + 48) = 0;
          *(v260 + 32) = v262;
          *(v260 + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVTt0g5Tf4g_n(v261);
          *(v260 + 64) = 0;
          v256 = specialized CanvasView.calculateDocumentForTesting.setter(v260, &protocol witness table for CanvasCalculateDocumentProxy);
          goto LABEL_88;
        }

        v231 = *(v186 + 48);
        v232 = v186;
        v233 = v229;
        v234 = v232;
        v207 = &lazy cache variable for type metadata for CROrderedSet<SharedTagged_3<TaggedPaperPage>>.ObservableDifference?;
        v235 = v231(ObjectType, v234);
        v189 = v355;
        v208 = v235;
      }

      MEMORY[0x1EEE9AC00](v186);
      *&v325[-32] = v354;
      *&v325[-24] = v189;
      v209 = v189;
      *&v325[-16] = &protocol witness table for Image;
      swift_getKeyPath();
      v210 = v207;
      v211 = *&v353;
      v367 = *&v353;
      v212 = v206;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v213 = direct field offset for CanvasElementViewController._canEditDescription;
      swift_beginAccess();
      v214 = v211[v213];
      v208[OBJC_IVAR____TtC8PaperKit23CanvasElementController_canEditDescription] = v214;
      v215 = *&v208[v207[122]];
      if (v215)
      {
        v216 = v215;
        v217 = ToolPickerController.textToolListViewController.getter();
        v217[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_descriptionItemVisible] = v214;
        MarkupEditViewController.updateUI()();

        v207 = v210;
      }

      v189 = v209;
      goto LABEL_65;
    }

LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v37 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v38 = v358;
  [v358 setView_];

  if (*&v38[v36])
  {
    MEMORY[0x1EEE9AC00](v39);
    v40 = v355;
    *&v325[-32] = v354;
    *&v325[-24] = v40;
    *&v325[-16] = &protocol witness table for Image;
    v41 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v41);
    *&v325[-16] = *&v38;
    *&v325[-8] = 0;
    v363 = v38;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    specialized CanvasElementViewController._canvasView.didset();
  }

  v103 = &v38[OBJC_IVAR____TtC8PaperKit30AnyCanvasElementViewController_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v104 = *(v103 + 1);
    v105 = swift_getObjectType();
    (*(v104 + 16))(v38, v105, v104);
    swift_unknownObjectRelease();
  }
}

uint64_t specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[12] = type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[14] = v7;
  *v7 = v5;
  v7[1] = specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:);

  return closure #1 in Image.imageSize(applyingCrop:)(a5);
}

uint64_t specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:)(double a1, double a2)
{
  v6 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {

    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v10 = specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:);
  }

  else
  {
    *(v6 + 128) = a2;
    *(v6 + 136) = a1;
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v11;
    v10 = specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:);
  }

  return MEMORY[0x1EEE6DFA0](v10, v7, v9);
}

uint64_t specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:)()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 80);
  v5 = direct field offset for CanvasElementViewController.__imageSize;
  *(v0 + 144) = direct field offset for CanvasElementViewController.__imageSize;
  v6 = (v4 + v5);
  if (*v6 == v2 && v6[1] == v1)
  {
    *v6 = v2;
    v6[1] = v1;
  }

  else
  {
    v8 = swift_task_alloc();
    *v8 = type metadata accessor for Image(0);
    v8[1] = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    v8[2] = &protocol witness table for Image;
    swift_getKeyPath();

    v9 = swift_task_alloc();
    *(v9 + 16) = v4;
    *(v9 + 24) = v2;
    *(v9 + 32) = v1;
    *(v0 + 16) = v4;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  *(v0 + 152) = v3;
  v10 = swift_task_alloc();
  *(v0 + 160) = v10;
  *v10 = v0;
  v10[1] = specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:);

  return Image.cgImageSource()();
}

{
  v1 = v0[10];
  v2 = direct field offset for CanvasElementViewController.__imageSize;
  v0[18] = direct field offset for CanvasElementViewController.__imageSize;
  v3 = (v1 + v2);
  if (*v3 == 0.0 && v3[1] == 0.0)
  {
    *v3 = 0.0;
    v3[1] = 0.0;
  }

  else
  {
    v4 = swift_task_alloc();
    *v4 = type metadata accessor for Image(0);
    v4[1] = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    v4[2] = &protocol witness table for Image;
    swift_getKeyPath();

    v5 = swift_task_alloc();
    v5[3] = 0;
    v5[4] = 0;
    v5[2] = v1;
    v0[2] = v1;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v0[19] = 0;
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:);

  return Image.cgImageSource()();
}

{
  v1 = *(v0 + 168);
  if (v1 && (v2 = specialized static ImageHDRInfo.info(for:)(*(v0 + 168)), v4 = v3, v1, v4))
  {
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 176) = v2;
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 184) = v6;
  *(v0 + 192) = v5;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:), v6, v5);
}

{
  v36 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 80);
  v3 = direct field offset for CanvasElementViewController.__imageHeadroom;
  *(v0 + 200) = direct field offset for CanvasElementViewController.__imageHeadroom;
  if (*(v2 + v3) == v1)
  {
    *(v2 + v3) = v1;
    v4 = *(v0 + 152);
  }

  else
  {
    v4 = *(v0 + 152);
    v5 = swift_task_alloc();
    *v5 = type metadata accessor for Image(0);
    v5[1] = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    v5[2] = &protocol witness table for Image;
    swift_getKeyPath();

    v6 = swift_task_alloc();
    *(v6 + 16) = v2;
    *(v6 + 24) = v1;
    *(v0 + 24) = v2;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  *(v0 + 208) = v4;
  v7 = *(v0 + 80);
  v8 = swift_task_alloc();
  v9 = type metadata accessor for Image(0);
  *(v0 + 216) = v9;
  *v8 = v9;
  v10 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  *(v0 + 224) = v10;
  v8[1] = v10;
  v8[2] = &protocol witness table for Image;
  swift_getKeyPath();

  *(v0 + 232) = direct field offset for CanvasElementViewController._$observationRegistrar;
  *(v0 + 32) = v7;
  *(v0 + 240) = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + v3) <= 1.0)
  {
    v31 = swift_task_alloc();
    *(v0 + 248) = v31;
    *v31 = v0;
    v31[1] = specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:);

    return Image.supportsSavingAsHDR()();
  }

  else
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 80);
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, logger);
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v32 = v14;
      v16 = *(v0 + 216);
      v17 = *(v0 + 224);
      v18 = *(v0 + 200);
      v19 = *(v0 + 80);
      v20 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35[0] = v34;
      *v20 = 136315650;
      v21 = swift_task_alloc();
      v33 = v15;
      *v21 = v16;
      v21[1] = v17;
      v21[2] = &protocol witness table for Image;
      swift_getKeyPath();

      *(v0 + 40) = v19;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v19 + v18) <= 1.0)
      {
        v22 = 5391443;
      }

      else
      {
        v22 = 5391432;
      }

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, 0xE300000000000000, v35);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v24 = swift_task_alloc();
      *v24 = v16;
      v24[1] = v17;
      v24[2] = &protocol witness table for Image;
      swift_getKeyPath();

      *(v0 + 48) = v19;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v25 = CGSize.debugDescription.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v35);

      *(v20 + 14) = v27;
      *(v20 + 22) = 2048;
      v28 = swift_task_alloc();
      *v28 = v16;
      v28[1] = v17;
      v28[2] = &protocol witness table for Image;
      swift_getKeyPath();

      *(v0 + 56) = v19;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v14 = v32;
      *(v20 + 24) = *(v19 + v18);
      _os_log_impl(&dword_1D38C4000, v32, v33, "Loaded %s image with size: %s, headroom: %f", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA6D0660](v34, -1, -1);
      MEMORY[0x1DA6D0660](v20, -1, -1);
    }

    v29 = *(v0 + 8);

    return v29();
  }
}

{
  v32 = v0;
  if ((*(v0 + 256) & 1) != 0 || (v1 = *(v0 + 80), v2 = swift_task_alloc(), *v2 = *(v0 + 216), *(v2 + 16) = &protocol witness table for Image, swift_getKeyPath(), , *(v0 + 64) = v1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , (v3 = *(v1 + direct field offset for CanvasElementViewController._canvasView)) == 0))
  {
  }

  else
  {
    v4 = OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR;
    if (*(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR))
    {
      swift_getKeyPath();
      v5 = swift_task_alloc();
      *(v5 + 16) = v3;
      *(v5 + 24) = 0;
      *(v0 + 72) = v3;
      _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
      v6 = v3;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      v27 = v3;

      *(v3 + v4) = 0;
    }
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 80);
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v28 = v10;
    v12 = *(v0 + 216);
    v13 = *(v0 + 224);
    v14 = *(v0 + 200);
    v15 = *(v0 + 80);
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31[0] = v30;
    *v16 = 136315650;
    v17 = swift_task_alloc();
    v29 = v11;
    *v17 = v12;
    v17[1] = v13;
    v17[2] = &protocol witness table for Image;
    swift_getKeyPath();

    *(v0 + 40) = v15;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v15 + v14) <= 1.0)
    {
      v18 = 5391443;
    }

    else
    {
      v18 = 5391432;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, 0xE300000000000000, v31);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = swift_task_alloc();
    *v20 = v12;
    v20[1] = v13;
    v20[2] = &protocol witness table for Image;
    swift_getKeyPath();

    *(v0 + 48) = v15;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = CGSize.debugDescription.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v31);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2048;
    v24 = swift_task_alloc();
    *v24 = v12;
    v24[1] = v13;
    v24[2] = &protocol witness table for Image;
    swift_getKeyPath();

    *(v0 + 56) = v15;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = v28;
    *(v16 + 24) = *(v15 + v14);
    _os_log_impl(&dword_1D38C4000, v28, v29, "Loaded %s image with size: %s, headroom: %f", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v30, -1, -1);
    MEMORY[0x1DA6D0660](v16, -1, -1);
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:)(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:), 0, 0);
}

uint64_t specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:)(char a1)
{
  v2 = *v1;
  *(*v1 + 256) = a1;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in CanvasElementViewController.updateViewForPaper(_:), v4, v3);
}

void (*specialized CanvasElementViewController.rootElement.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR) - 8) + 64);
  if (v4)
  {
    v6[5] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v6[5] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[6] = v8;
  MEMORY[0x1EEE9AC00](v8);
  type metadata accessor for Image(0);
  _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  swift_getKeyPath();
  v6[3] = v2;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v2 + direct field offset for CanvasElementViewController._canvasView);
  if (v10)
  {
    v11 = *(v10 + direct field offset for Canvas.paperView);
    v12 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x3F0);
    swift_beginAccess();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
    v14 = *(v13 - 8);
    (*(v14 + 16))(v9, &v11[v12], v13);
    (*(v14 + 56))(v9, 0, 1, v13);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  }

  return CanvasElementViewController.rootElement.modifyspecialized ;
}

void CanvasElementViewController.rootElement.modifyspecialized (uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  if (a2)
  {
    outlined init with copy of Date?(*(*a1 + 48), v3, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
    specialized CanvasElementViewController.updateViewForPaper(_:)(v3);
    outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  }

  else
  {
    specialized CanvasElementViewController.updateViewForPaper(_:)(*(*a1 + 48));
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  free(v4);
  free(v3);

  free(v2);
}

void specialized CanvasElementViewController._analysis.didset(void *a1)
{
  v2 = v1;
  type metadata accessor for Image(0);
  _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v1 + direct field offset for CanvasElementViewController._analysis);
  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v1 + OBJC_IVAR____TtC8PaperKit30AnyCanvasElementViewController_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = *(v6 + 8);
    v9 = v4;
    v10 = v9;
    v11 = &dword_1EDCAF000;
    v12 = &selRef_hasSubstrokes;
    if (Strong)
    {
      v50 = v8;
      v13 = [v9 formRegions];
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for VKCFormRegion, 0x1E69DF9D8);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v14 >> 62)
      {
        goto LABEL_30;
      }

      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

      v16 = [v10 v12[157]];
      v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v53 = MEMORY[0x1E69E7CC0];
      v51 = v17;
      if (v17 >> 62)
      {
        v12 = __CocoaSet.count.getter();
        if (v12)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v12 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12)
        {
LABEL_10:
          v47 = v10;
          v48 = v2;
          v49 = v4;
          v10 = 0;
          v2 = v17;
          v52 = v17 & 0xC000000000000001;
          v18 = v17 & 0xFFFFFFFFFFFFFF8;
          v19 = v15;
          while (1)
          {
            if (v52)
            {
              v20 = MEMORY[0x1DA6CE0C0](v10, v2);
            }

            else
            {
              if (v10 >= *(v18 + 16))
              {
                goto LABEL_29;
              }

              v20 = *(v2 + 8 * v10 + 32);
            }

            v4 = v20;
            v21 = (v10 + 1);
            if (__OFADD__(v10, 1))
            {
              __break(1u);
LABEL_29:
              __break(1u);
LABEL_30:
              v15 = __CocoaSet.count.getter();
              goto LABEL_8;
            }

            v22 = [v20 autoFillContentType];
            if (v22)
            {
              v23 = v22;
              v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v26 = v25;
              if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
              {

                v2 = v51;
LABEL_25:

                goto LABEL_12;
              }

              v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v2 = v51;
              if (v29)
              {
                goto LABEL_25;
              }
            }

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
LABEL_12:
            ++v10;
            if (v21 == v12)
            {
              v15 = v19;
              v30 = v53;
              v2 = v48;
              v4 = v49;
              v10 = v47;
              goto LABEL_33;
            }
          }
        }
      }

      v30 = MEMORY[0x1E69E7CC0];
LABEL_33:

      if (v30 < 0 || (v30 & 0x4000000000000000) != 0)
      {
        v31 = __CocoaSet.count.getter();
      }

      else
      {
        v31 = *(v30 + 16);
      }

      ObjectType = swift_getObjectType();
      v33 = (*(v50 + 48))(v2, v15 > 0, v31 != 0, ObjectType);
      if (v31)
      {
        MEMORY[0x1EEE9AC00](v33);
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_unknownObjectRelease();
        v11 = &dword_1EDCAF000;
        v34 = *(v2 + direct field offset for CanvasElementViewController._canvasView);
        if (v34)
        {
          *(*(v34 + direct field offset for CanvasView.formAnalytics) + 18) = 45;
        }
      }

      else
      {
        v11 = &dword_1EDCAF000;
        if (v15 <= 0)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          MEMORY[0x1EEE9AC00](v33);
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_unknownObjectRelease();
          v35 = *(v2 + direct field offset for CanvasElementViewController._canvasView);
          if (v35)
          {
            *(*(v35 + direct field offset for CanvasView.formAnalytics) + 18) = 44;
          }
        }
      }
    }

    specialized CanvasElementViewController.updateFormFillingIfNeeded()();
    MEMORY[0x1EEE9AC00](v36);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v37 = *(v2 + *(v11 + 187));
    if (v37)
    {
      v38 = *(v37 + direct field offset for Canvas._editingView);
      if (v38)
      {
        v39 = *(v37 + direct field offset for Canvas._editingView + 8);
        v40 = *(v37 + direct field offset for Canvas._editingView);
      }

      else
      {
        v40 = *(v37 + direct field offset for Canvas.paperView);
        v39 = &protocol witness table for ContainerCanvasElementView<A>;
      }

      v41 = swift_getObjectType();
      v42 = v39[21];
      v43 = v38;
      v44 = v42(v41, v39);

      if (v44)
      {
        v45 = [v10 formRegions];
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for VKCFormRegion, 0x1E69DF9D8);
        v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        *&v44[OBJC_IVAR____TtC8PaperKit15FormFillingView_vkcFormRegions] = v46;

        v10 = *&v44[OBJC_IVAR____TtC8PaperKit15FormFillingView_vkcAnalysis];
        *&v44[OBJC_IVAR____TtC8PaperKit15FormFillingView_vkcAnalysis] = v4;
      }
    }
  }
}

void specialized CanvasElementViewController.updateFormFillingIfNeeded()()
{
  v1 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v383 = &v310 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v417 = *(v392 - 8);
  MEMORY[0x1EEE9AC00](v392);
  v400 = &v310 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v394 = &v310 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v391 = &v310 - v7;
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
  v416 = *(v382 - 8);
  MEMORY[0x1EEE9AC00](v382);
  v381 = &v310 - v8;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v415 = *(v380 - 8);
  MEMORY[0x1EEE9AC00](v380);
  v379 = &v310 - v9;
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v414 = *(v378 - 8);
  MEMORY[0x1EEE9AC00](v378);
  v377 = &v310 - v10;
  v376 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMR);
  v413 = *(v376 - 8);
  MEMORY[0x1EEE9AC00](v376);
  v375 = &v310 - v11;
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v408 = *(v374 - 8);
  MEMORY[0x1EEE9AC00](v374);
  v373 = &v310 - v12;
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  MEMORY[0x1EEE9AC00](v372);
  v371 = &v310 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v370 = &v310 - v15;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  MEMORY[0x1EEE9AC00](v369);
  v368 = &v310 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v367 = &v310 - v18;
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v366);
  v390 = &v310 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v389 = &v310 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v365 = &v310 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v399 = &v310 - v25;
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v388);
  v364 = &v310 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v387 = &v310 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v398 = &v310 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v404 = (&v310 - v32);
  v403 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v403);
  v363 = &v310 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v393 = &v310 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v402 = &v310 - v37;
  v406 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v406);
  v362 = &v310 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v397 = &v310 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v386 = &v310 - v42;
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v43 = *(v396 - 8);
  MEMORY[0x1EEE9AC00](v396);
  v358 = &v310 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v401 = &v310 - v46;
  v47 = type metadata accessor for Image(0);
  v418 = v47;
  v48 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  v419 = v48;
  v420 = &protocol witness table for Image;
  swift_getKeyPath();
  v425.a = v0;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v50 = *(*&v0 + direct field offset for CanvasElementViewController._canvasView);
  if (!v50)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](v49);
  *(&v310 - 4) = v47;
  *(&v310 - 3) = v48;
  v426._object = &protocol witness table for Image;
  swift_getKeyPath();
  v425.a = v0;
  v51 = v50;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = *(*&v0 + direct field offset for CanvasElementViewController._analysis);
  if (!v52)
  {

    return;
  }

  v336 = v50;
  v53 = COERCE_DOUBLE(v51);
  v54 = v52;
  AnyCanvas.formFieldElements.getter();
  v56 = v55;

  v423 = MEMORY[0x1E69E7CC0];
  v335 = v54;
  v57 = [v54 formRegions];
  v405 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for VKCFormRegion, 0x1E69DF9D8);
  v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v58 >> 62)
  {
    goto LABEL_169;
  }

  v412 = v58 & 0xFFFFFFFFFFFFFF8;
  v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v60 = *&v56 & 0xFFFFFFFFFFFFFF8;
  if (v56 < 0.0)
  {
    v61 = *&v56;
  }

  else
  {
    v61 = *&v56 & 0xFFFFFFFFFFFFFF8;
  }

  v319 = v58;
  if (!v59)
  {
    v356 = MEMORY[0x1E69E7CC0];
    v407 = MEMORY[0x1E69E7CC0];
    goto LABEL_123;
  }

  v311 = v61;
  v62 = 0;
  v411 = v58 & 0xC000000000000001;
  v410 = v58 + 32;
  v63 = *&v56 & 0xC000000000000001;
  v333 = *MEMORY[0x1E69DB648];
  v328 = (v43 + 56);
  v329 = (v43 + 16);
  v327 = (v408 + 40);
  v332 = *MEMORY[0x1E69DB688];
  v325 = (*&v414 + 40);
  v326 = (v413 + 40);
  v331 = *MEMORY[0x1E69DB660];
  v323 = (v43 + 48);
  v324 = (v415 + 40);
  v314 = (v43 + 40);
  v315 = (v43 + 32);
  v384 = v417 + 16;
  v321 = (v417 + 56);
  v322 = (v416 + 40);
  v357 = v417 + 8;
  v313 = 0x80000001D40850C0;
  v320 = (v43 + 8);
  v330 = xmmword_1D405FD70;
  v312 = xmmword_1D4058CF0;
  v407 = MEMORY[0x1E69E7CC0];
  v356 = MEMORY[0x1E69E7CC0];
  v408 = v59;
  v409 = v53;
  do
  {
    v43 = MEMORY[0x1E69E7D40];
LABEL_11:
    if (v411)
    {
      v64 = MEMORY[0x1DA6CE0C0](v62, v319);
      v65 = __OFADD__(v62, 1);
      v66 = v62 + 1;
      if (v65)
      {
        goto LABEL_163;
      }
    }

    else
    {
      if (v62 >= *(v412 + 16))
      {
        goto LABEL_164;
      }

      v64 = *(v410 + 8 * v62);
      v65 = __OFADD__(v62, 1);
      v66 = v62 + 1;
      if (v65)
      {
        goto LABEL_163;
      }
    }

    v415 = v66;
    v416 = v64;
    v67 = [v64 quad];
    if (!v67)
    {
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    v68 = v67;
    [v67 boundingBox];
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;

    v77 = *&direct field offset for Canvas._editingView;
    v78 = *(*&v53 + direct field offset for Canvas._editingView);
    if (v78)
    {
      v79 = *(*&v53 + direct field offset for Canvas._editingView);
    }

    else
    {
      v79 = *(*&v53 + direct field offset for Canvas.paperView);
    }

    v80 = *((*v43 & *v79) + 0x2A0);
    v417 = *&v53;
    v80(&v424, v78);

    v422 = v424;
    v427.origin.x = v70;
    v427.origin.y = v72;
    v427.size.width = v74;
    v427.size.height = v76;
    v428 = CGRectApplyAffineTransform(v427, &v422);
    x = v428.origin.x;
    y = v428.origin.y;
    width = v428.size.width;
    height = v428.size.height;
    if (*&v56 >> 62)
    {
      v53 = COERCE_DOUBLE(__CocoaSet.count.getter());
    }

    else
    {
      v53 = *(v60 + 16);
    }

    v58 = 0;
    v43 = MEMORY[0x1E69E7D40];
    while (*&v53 != v58)
    {
      if (v63)
      {
        v85 = MEMORY[0x1DA6CE0C0](v58, *&v56);
      }

      else
      {
        if (v58 >= *(v60 + 16))
        {
          goto LABEL_160;
        }

        v85 = *(*&v56 + 8 * v58 + 32);
      }

      v86 = v85;
      if (__OFADD__(v58, 1))
      {
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        v412 = v58 & 0xFFFFFFFFFFFFFF8;
        v59 = __CocoaSet.count.getter();
        goto LABEL_5;
      }

      v429.origin.x = (*((*v43 & *v85) + 0x170))();
      v434.origin.x = x;
      v434.origin.y = y;
      v434.size.width = width;
      v434.size.height = height;
      v87 = CGRectIntersectsRect(v429, v434);

      ++v58;
      if (v87)
      {

        v62 = v415;
        v53 = v409;
        if (v415 == v408)
        {
          goto LABEL_123;
        }

        goto LABEL_11;
      }
    }

    v88 = v416;
    v89 = [v416 autoFillContentType];
    if (!v89)
    {
      v93 = [v88 autoFillContentType];
      if (v93)
      {
        v91 = v88;
        goto LABEL_41;
      }

LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
      return;
    }

    v90 = v89;
    v91 = v88;
    if ([v88 regionType] == 4)
    {

      a_low = 50;
      goto LABEL_42;
    }

    v93 = v90;
LABEL_41:
    FormContentType.init(_:)(v93);
    a_low = LOBYTE(v422.a);
LABEL_42:
    [v91 suggestedLineHeight];
    v94 = *&v417[*&v77];
    v414 = v95;
    if (v94)
    {
      v96 = v94;
    }

    else
    {
      v96 = *&v417[direct field offset for Canvas.paperView];
      v94 = 0;
    }

    v97 = v94;
    [v96 frame];
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v105 = v104;

    v430.origin.x = v99;
    v430.origin.y = v101;
    v430.size.width = v103;
    v430.size.height = v105;
    v106 = CGRectGetHeight(v430);
    if (one-time initialization token for formFieldFont != -1)
    {
      v263 = v106;
      swift_once();
      v106 = v263;
    }

    v413 = [static UIConstants.formFieldFont fontWithSize_];
    v107 = [v91 children];
    if (!v107)
    {
      goto LABEL_184;
    }

    v108 = v107;
    v109 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v109 >> 62)
    {
      v110 = __CocoaSet.count.getter();
    }

    else
    {
      v110 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v414 = v77;
    if (!v110)
    {
      LOBYTE(v422.a) = a_low;
      v111 = v413;
      v58 = v413;
      v112 = v416;
      v113 = [v416 maxCharacterCount];
      v114 = [v112 autofillNewContextStart];
      v115 = specialized static FormFillingView.createFormFieldView(canvas:frame:text:font:alignment:textContentType:maxCharacterCount:detectedFormField:startsNewAutofillContext:analytics_inputSource:analytics_documentType:)(v417, 0, 0, v111, 0, 1, &v422, v113, x, y, width, height, 1u, v114, 9u, 5u);

      v116 = v115;
      MEMORY[0x1DA6CD190]();
      if (*((v423 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v423 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v43 = MEMORY[0x1E69E7D40];
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v117 = v423;
      v53 = v409;
      if (one-time initialization token for manager != -1)
      {
        v264 = v423;
        swift_once();
        v117 = v264;
      }

      v118 = v417;
      v119 = *&v417[*&v414];
      v407 = v117;
      if (!v119)
      {
        v119 = *&v417[direct field offset for Canvas.paperView];
      }

      v120 = v119;

      v121 = (*((*v43 & *v120) + 0x90))();
      specialized FormAnalytics.addFielde2eEvent(canvas:)(v121);

      goto LABEL_58;
    }

    v421 = MEMORY[0x1E69E7CC0];
    v122 = [v416 children];
    if (!v122)
    {
      goto LABEL_190;
    }

    v123 = v122;
    v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v58 >> 62)
    {
      v355 = v58 & 0xFFFFFFFFFFFFFF8;
      v124 = __CocoaSet.count.getter();
      v310 = v58;
      if (!v124)
      {
        goto LABEL_115;
      }

LABEL_63:
      v125 = 0;
      v318 = direct field offset for Canvas.paperView;
      v353 = v58 + 32;
      v354 = v58 & 0xC000000000000001;
      v43 = MEMORY[0x1E69E7CC0];
      v352 = v124;
      v316 = v56;
      v317 = v63;
LABEL_65:
      while (2)
      {
        if (v354)
        {
          v126 = MEMORY[0x1DA6CE0C0](v125, v310);
        }

        else
        {
          if (v125 >= *(v355 + 16))
          {
            goto LABEL_168;
          }

          v126 = *(v353 + 8 * v125);
        }

        v58 = v126;
        v65 = __OFADD__(v125, 1);
        v127 = v125 + 1;
        if (v65)
        {
          goto LABEL_167;
        }

        v128 = [v126 quad];
        if (!v128)
        {
          goto LABEL_185;
        }

        v129 = v128;
        [v128 boundingBox];
        v131 = v130;
        v133 = v132;
        v135 = v134;
        v137 = v136;

        v138 = *&v417[*&v77];
        v395 = v58;
        v385 = v127;
        if (v138)
        {
          v139 = v138;
        }

        else
        {
          v139 = *&v417[v318];
          v138 = 0;
        }

        (*((*MEMORY[0x1E69E7D40] & *v139) + 0x2A0))(&v425, v138);

        v422 = v425;
        v431.origin.x = v131;
        v431.origin.y = v133;
        v431.size.width = v135;
        v431.size.height = v137;
        v432 = CGRectApplyAffineTransform(v431, &v422);
        v140 = v432.origin.x;
        v141 = v432.origin.y;
        v142 = v432.size.width;
        v143 = v432.size.height;
        v58 = 0;
        while (*&v53 != v58)
        {
          if (v63)
          {
            v144 = MEMORY[0x1DA6CE0C0](v58, *&v56);
          }

          else
          {
            if (v58 >= *(v60 + 16))
            {
              goto LABEL_162;
            }

            v144 = *(*&v56 + 8 * v58 + 32);
          }

          v145 = v144;
          if (__OFADD__(v58, 1))
          {
            goto LABEL_161;
          }

          v433.origin.x = (*((*MEMORY[0x1E69E7D40] & *v144) + 0x170))();
          v435.origin.x = v140;
          v435.origin.y = v141;
          v435.size.width = v142;
          v435.size.height = v143;
          v146 = CGRectIntersectsRect(v433, v435);

          ++v58;
          if (v146)
          {

            v125 = v385;
            if (v385 == v352)
            {
              goto LABEL_116;
            }

            goto LABEL_65;
          }
        }

        v147 = v395;
        v148 = [v395 autoFillContentType];
        if (v148)
        {
          v149 = v148;
          v150 = v147;
          if ([v147 regionType] == 4)
          {

            v151 = 50;
            goto LABEL_89;
          }

          v152 = v149;
        }

        else
        {
          v152 = [v147 autoFillContentType];
          if (!v152)
          {
            goto LABEL_189;
          }

          v150 = v147;
        }

        FormContentType.init(_:)(v152);
        v151 = LOBYTE(v422.a);
LABEL_89:
        LODWORD(v361) = v151;
        v153 = v413;
        v351 = [v150 autofillNewContextStart];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
        inited = swift_initStackObject();
        *(inited + 16) = v330;
        v155 = v333;
        *(inited + 32) = v333;
        v407 = inited + 32;
        v156 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
        *(inited + 40) = v153;
        v157 = v332;
        *(inited + 64) = v156;
        *(inited + 72) = v157;
        v158 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
        v350 = v153;
        v159 = v155;
        v160 = v157;
        v161 = [v158 init];
        [v161 setAlignment_];
        v162 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableParagraphStyle, 0x1E69DB7C8);
        *(inited + 80) = v161;
        v163 = v331;
        *(inited + 104) = v162;
        *(inited + 112) = v163;
        *(inited + 144) = MEMORY[0x1E69E7DE0];
        *(inited + 120) = 0;
        v164 = v163;
        v165 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
        swift_arrayDestroy();
        v166 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v167 = MEMORY[0x1DA6CCED0](0, 0xE000000000000000);
        type metadata accessor for NSAttributedStringKey(0);
        _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        [v166 initWithString:v167 attributes:isa];

        MEMORY[0x1EEE9AC00](v169);
        v426._object = 0x3FF0000000000000;
        v170 = lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
        CRAttributedString.init(_:transformAttributes:)();
        swift_storeEnumTagMultiPayload();
        v171 = type metadata accessor for Color(0);
        v172 = *(v171 + 20);
        v173 = type metadata accessor for UnknownValueProperties();
        (*(*(v173 - 8) + 56))(v404 + v172, 1, 1, v173);
        if (one-time initialization token for extendedSRGBColorSpace != -1)
        {
          swift_once();
        }

        v174 = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F51320);
        if (!v174)
        {
          goto LABEL_188;
        }

        v175 = v174;
        v348 = v170;
        v349 = v165;
        CGColorRef.calculateMinimumHeadroom.getter();
        v176 = CGColorCreateWithContentHeadroom();
        if (!v176)
        {
          goto LABEL_187;
        }

        v177 = v176;

        *v404 = v177;
        v178 = *(v171 - 8);
        v179 = *(v178 + 56);
        v359 = v178 + 56;
        v179();
        (v179)(v398, 1, 1, v171);
        v180 = v179;
        v342 = v179;
        v181 = v399;
        v182 = v396;
        (*v329)(v399, v401, v396);
        (*v328)(v181, 0, 1, v182);
        type metadata accessor for CGRect(0);
        v345 = v183;
        v344 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
        memset(&v422, 0, 32);
        CRRegister.init(wrappedValue:)();
        v184 = v406;
        v422.a = 0.0;
        v407 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        CRRegister.init(_:)();
        v346 = v171;
        v347 = *(v184 + 24);
        v185 = v387;
        (v180)(v387, 1, 1, v171);
        v186 = v364;
        outlined init with copy of Date?(v185, v364, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        countAndFlagsBits = lazy protocol witness table accessor for type Color? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v185, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        v343 = *(v406 + 28);
        (v342)(v185, 1, 1, v346);
        outlined init with copy of Date?(v185, v186, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v185, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        v187 = v406;
        v342 = *(v406 + 32);
        v422.a = 5.0;
        CRRegister.init(wrappedValue:)();
        v339 = *(v187 + 36);
        v188 = v393;
        swift_storeEnumTagMultiPayload();
        v340 = type metadata accessor for ShapeType;
        _s8PaperKit0A6MarkupVWOcTm_1(v188, v363, type metadata accessor for ShapeType);
        v338 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType, &protocol conformance descriptor for ShapeType);
        CRRegister.init(wrappedValue:)();
        _s8PaperKit0A6MarkupVWOhTm_1(v188, type metadata accessor for ShapeType);
        v189 = v406;
        v422.a = 1.0;
        CRRegister.init(wrappedValue:)();
        v422.a = 0.0;
        LOBYTE(v422.b) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMR);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMR, MEMORY[0x1E69950E8]);
        CRRegister.init(wrappedValue:)();
        v422.a = 0.0;
        LOBYTE(v422.b) = 0;
        CRRegister.init(wrappedValue:)();
        v334 = *(v189 + 52);
        CRAttributedString.init(_:)();
        v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
        v191 = *(v190 - 8);
        v192 = *(v191 + 56);
        v193 = v389;
        v359 = v190;
        v348 = v192;
        v346 = v191 + 56;
        (v192)(v389, 1, 1);
        outlined init with copy of Date?(v193, v390, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
        lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
        v194 = v397;
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v193, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
        v195 = &v194[*(v189 + 60)];
        v422.a = 0.0;
        v196 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
        v341 = v195;
        v337 = v196;
        CRRegister.init(wrappedValue:)();
        v422.a = 0.0;
        lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
        v197 = v194;
        CRRegister.init(wrappedValue:)();
        v198 = type metadata accessor for StrokeStyle(0);
        v199 = v367;
        (*(*(v198 - 8) + 56))(v367, 1, 1, v198);
        outlined init with copy of Date?(v199, v368, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
        lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v199, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
        v200 = type metadata accessor for Shadow(0);
        v201 = v370;
        (*(*(v200 - 8) + 56))(v370, 1, 1, v200);
        outlined init with copy of Date?(v201, v371, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
        lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        v202 = v201;
        v203 = v197;
        outlined destroy of StocksKitCurrencyCache.Provider?(v202, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
        memset(&v422, 0, sizeof(v422));
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd, &_s8PaperKit18ShapeAuxiliaryInfoVSgMR);
        lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        UnknownProperties.init()();
        v422.a = v140;
        v422.b = v141;
        v422.c = v142;
        v422.d = v143;
        v204 = v373;
        CRRegister.init(_:)();
        (*v327)(v203, v204, v374);
        _s8PaperKit0A6MarkupVWOcTm_1(v402, v393, v340);
        v205 = v375;
        CRRegister.init(_:)();
        (*v326)(v203 + v339, v205, v376);
        v422.a = 5.0;
        v206 = v377;
        CRRegister.init(_:)();
        (*v325)(v342 + v203, v206, v378);
        v207 = v387;
        outlined init with copy of Date?(v404, v387, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        v208 = v379;
        CRRegister.init(_:)();
        v209 = *v324;
        v210 = v380;
        (*v324)(v203 + v343, v208, v380);
        outlined init with copy of Date?(v398, v207, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        CRRegister.init(_:)();
        v209(v203 + v347, v208, v210);
        v211 = v396;
        v212 = v365;
        outlined init with copy of Date?(v399, v365, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
        if ((*v323)(v212, 1, v211) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v212, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
        }

        else
        {
          v213 = v358;
          (*v315)(v358, v212, v211);
          (*v314)(v203 + v334, v213, v211);
        }

        *&v422.a = 2;
        v214 = v381;
        CRRegister.init(_:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v399, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
        outlined destroy of StocksKitCurrencyCache.Provider?(v398, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        outlined destroy of StocksKitCurrencyCache.Provider?(v404, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        _s8PaperKit0A6MarkupVWOhTm_1(v402, type metadata accessor for ShapeType);
        (*v322)(v341, v214, v382);
        v215 = v386;
        _s8PaperKit13CRAssetOrDataOWObTm_0(v203, v386, type metadata accessor for Shape);
        LOBYTE(v422.a) = v361;
        Shape.formContentType.setter(&v422);
        v216 = v389;
        CRAttributedString.Attributes<>.init(nsAttributes:darkMode:)(v349, 0, v389);
        v348(v216, 0, 1, v359);
        outlined init with copy of Date?(v216, v390, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
        CRRegister.wrappedValue.setter();
        outlined destroy of StocksKitCurrencyCache.Provider?(v216, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
        _s8PaperKit0A6MarkupVWOcTm_1(v215, v362, type metadata accessor for Shape);
        static CRKeyPath.unique.getter();
        _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
        v217 = v391;
        Capsule.init(_:id:)();
        v218 = *v384;
        v219 = v394;
        v220 = v392;
        (*v384)(v394, v217, v392);
        LOBYTE(v217) = v361 == 50;
        v221 = objc_allocWithZone(type metadata accessor for ShapeView(0));
        *(v221 + direct field offset for ShapeView.$__lazy_storage_$_shapeLayer) = 0;
        *(v221 + direct field offset for ShapeView.$__lazy_storage_$_endLineEndLayer) = 0;
        *(v221 + direct field offset for ShapeView.$__lazy_storage_$_startLineEndLayer) = 0;
        *(v221 + direct field offset for ShapeView.$__lazy_storage_$_groupLayer) = 0;
        v222 = direct field offset for ShapeView.showsSignaturePopover;
        *(v221 + direct field offset for ShapeView.showsSignaturePopover) = 0;
        v223 = direct field offset for ShapeView.analytics_inputSource;
        *(v221 + direct field offset for ShapeView.analytics_inputSource) = 68;
        v224 = direct field offset for ShapeView.analytics_documentType;
        *(v221 + direct field offset for ShapeView.analytics_documentType) = 68;
        *(v221 + direct field offset for ShapeView._textBoxView) = 0;
        *(v221 + direct field offset for ShapeView.appearanceStreamView) = 0;
        *(v221 + v222) = v217;
        *(v221 + v223) = 9;
        *(v221 + v224) = 5;
        v225 = v218;
        v407 = v218;
        v218(v400, v219, v220);
        v226 = MEMORY[0x1E69E7D40];
        (*v321)(v221 + *((*MEMORY[0x1E69E7D40] & *v221) + 0x3F8), 1, 1, v220);
        *(v221 + *((*v226 & *v221) + 0x400)) = 0;
        *(v221 + *((*v226 & *v221) + 0x408)) = 0;
        *(v221 + *((*v226 & *v221) + 0x410)) = 0;
        *(v221 + *((*v226 & *v221) + 0x418)) = 0;
        *(v221 + *((*v226 & *v221) + 0x420)) = 0;
        v227 = v221 + *((*v226 & *v221) + 0x3F0);
        v228 = v400;
        v225(v227, v400, v220);
        v229 = v417;
        v230 = AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(v336, 0, 0.0, 0.0, 0.0, 0.0);
        specialized CanvasElementView.setupAccessibility()();
        (*((*MEMORY[0x1E69E7D40] & *v230) + 0x520))();
        v231 = *v357;
        (*v357)(v228, v220);
        v232 = v230;
        specialized AppearanceStreamViewSupport.setupAppearanceStreamIfNeeded()();
        v233 = *((*MEMORY[0x1E69E7D40] & *v232) + 0x3F0);
        v234 = v232;
        swift_beginAccess();
        v235 = v232 + v233;
        v236 = v231;
        v237 = v400;
        v238 = v220;
        (v407)(v400, v235, v220);
        v239 = v237;
        LOBYTE(v237) = specialized Capsule<>.isTextBox.getter();

        v240 = v239;
        v241 = v238;
        v231(v240, v238);
        v56 = v316;
        v63 = v317;
        if (v237)
        {
          v242 = v351;
          v243 = v350;
        }

        else
        {
          v407 = v236;
          [v234 setIsAccessibilityElement_];
          v361 = v234;
          if (one-time initialization token for paperKitBundle != -1)
          {
            swift_once();
          }

          v426._object = v313;
          v244._countAndFlagsBits = 0x4025206570616853;
          v244._object = 0xE800000000000000;
          v245.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v245.value._object = 0xEB00000000656C62;
          v246._countAndFlagsBits = 0;
          v246._object = 0xE000000000000000;
          v426._countAndFlagsBits = 0xD00000000000005FLL;
          countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v244, v245, paperKitBundle, v246, v426)._countAndFlagsBits;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v247 = swift_allocObject();
          *(v247 + 16) = v312;
          swift_getKeyPath();
          v248 = v393;
          Capsule.subscript.getter();

          ShapeType.any.getter(&v422);
          _s8PaperKit0A6MarkupVWOhTm_1(v248, type metadata accessor for ShapeType);
          d = v422.d;
          tx = v422.tx;
          __swift_project_boxed_opaque_existential_1(&v422, *&v422.d);
          v251 = (*(*&tx + 48))(COERCE_CGFLOAT(*&d), COERCE_CGFLOAT(*&tx));
          v253 = v252;
          *(v247 + 56) = MEMORY[0x1E69E6158];
          *(v247 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v247 + 32) = v251;
          *(v247 + 40) = v253;
          __swift_destroy_boxed_opaque_existential_0(&v422);
          v254 = static String.localizedStringWithFormat(_:_:)();
          v256 = v255;
          v241 = v392;

          v243 = MEMORY[0x1DA6CCED0](v254, v256);

          v234 = v361;
          [v361 setAccessibilityLabel_];

          v236 = v407;
          v242 = v351;
        }

        v236(v394, v241);
        v236(v391, v241);
        _s8PaperKit0A6MarkupVWOhTm_1(v386, type metadata accessor for Shape);
        (*v320)(v401, v396);
        *(v234 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDetectedFormField) = 1;
        *(v234 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_startsNewAutofillContext) = v242;
        v257 = v234;
        MEMORY[0x1DA6CD190]();
        v258 = v414;
        if (*((v423 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v423 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v407 = v423;
        v58 = v257;
        MEMORY[0x1DA6CD190]();
        if (*((v421 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v421 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v43 = v421;
        if (one-time initialization token for manager != -1)
        {
          swift_once();
        }

        v259 = *&v417[*&v258];
        if (v259)
        {
          v260 = v259;
        }

        else
        {
          v260 = *&v417[v318];
        }

        v261 = (*((*MEMORY[0x1E69E7D40] & *v260) + 0x90))();
        v262 = v259;

        specialized FormAnalytics.addFielde2eEvent(canvas:)(v261);
        v125 = v385;
        v77 = v414;
        if (v385 == v352)
        {
          goto LABEL_116;
        }

        continue;
      }
    }

    v355 = v58 & 0xFFFFFFFFFFFFFF8;
    v124 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v310 = v58;
    if (v124)
    {
      goto LABEL_63;
    }

LABEL_115:
    v43 = MEMORY[0x1E69E7CC0];
LABEL_116:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v356 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v356[2] + 1, 1, v356);
    }

    v53 = v409;
    v58 = v356[2];
    v265 = v356[3];
    if (v58 >= v265 >> 1)
    {
      v356 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v265 > 1), v58 + 1, 1, v356);
    }

    v266 = v356;
    v356[2] = v58 + 1;
    v266[v58 + 4] = v43;
LABEL_58:
    v62 = v415;
  }

  while (v415 != v408);
LABEL_123:

  v267 = (*&v53 + direct field offset for Canvas._editingView);
  v268 = *(*&v53 + direct field offset for Canvas._editingView);
  if (v268)
  {
    v269 = *(v267 + 1);
    v270 = *(*&v53 + direct field offset for Canvas._editingView);
  }

  else
  {
    v270 = *(*&v53 + direct field offset for Canvas.paperView);
    v269 = &protocol witness table for ContainerCanvasElementView<A>;
  }

  ObjectType = swift_getObjectType();
  v272 = v269[24];
  v53 = COERCE_DOUBLE(*&v53);
  v273 = v268;
  v272(v407, ObjectType, v269);

  v274 = *v267;
  v414 = v53;
  if (v274)
  {
    v275 = *(v267 + 1);
    v276 = v274;
  }

  else
  {
    v276 = *(*&v53 + direct field offset for Canvas.paperView);
    v275 = &protocol witness table for ContainerCanvasElementView<A>;
  }

  v277 = swift_getObjectType();
  v278 = v275[26];
  v279 = v274;
  v278(v356, v277, v275);

  v280 = *v267;
  if (*v267)
  {
    v281 = *v267;
    v56 = MEMORY[0x1E69E7CC0];
    v282 = v414;
  }

  else
  {
    v282 = v414;
    v281 = *(*&v414 + direct field offset for Canvas.paperView);
    v56 = MEMORY[0x1E69E7CC0];
  }

  v283 = (*((*MEMORY[0x1E69E7D40] & *v281) + 0x90))();
  v284 = v280;

  if (v283)
  {
    if (one-time initialization token for manager != -1)
    {
      swift_once();
    }

    specialized FormAnalytics.recordLatencyEvent(timestamps:endToEnd:)(v285, 1);
  }

  v286 = *v267;
  if (*v267)
  {
    v287 = *(v267 + 1);
  }

  else
  {
    v286 = *(*&v282 + direct field offset for Canvas.paperView);
    v287 = &protocol witness table for ContainerCanvasElementView<A>;
  }

  v288 = v286;

  v289 = swift_getObjectType();
  v58 = (v287[21])(v289, v287);

  if (!v58)
  {

    return;
  }

  v290 = [v335 formRegions];
  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v422.a = v56;
  v413 = v58;
  if (v43 >> 62)
  {
    v291 = __CocoaSet.count.getter();
    if (!v291)
    {
      goto LABEL_171;
    }

LABEL_142:
    v292 = 0;
    v417 = (v43 & 0xC000000000000001);
    v416 = (v43 & 0xFFFFFFFFFFFFFF8);
    v415 = *MEMORY[0x1E698E130];
    while (1)
    {
      if (v417)
      {
        v293 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v292, v43));
      }

      else
      {
        if (v292 >= *(v416 + 2))
        {
          goto LABEL_166;
        }

        *&v293 = *(v43 + 8 * v292 + 32);
      }

      v53 = v293;
      *&v56 = v292 + 1;
      if (__OFADD__(v292, 1))
      {
        goto LABEL_165;
      }

      v294 = [*&v293 autoFillContentType];
      if (!v294)
      {
        goto LABEL_143;
      }

      v295 = v294;
      v296 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v297;
      if (v296 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v58 == v298)
      {

        goto LABEL_144;
      }

      v300 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v300)
      {
LABEL_143:
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v58 = *(*&v422.a + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

LABEL_144:
      ++v292;
      if (*&v56 == v291)
      {
        goto LABEL_171;
      }
    }
  }

  v291 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v291)
  {
    goto LABEL_142;
  }

LABEL_171:

  v301 = OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics;
  v302 = v413;
  v303 = *&v413[OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics];
  if ((*&v422.a & 0x8000000000000000) != 0 || (*&v422.a & 0x4000000000000000) != 0)
  {
    v304 = __CocoaSet.count.getter();
  }

  else
  {
    v304 = *(*&v422.a + 16);
  }

  v305 = v414;

  *(v303 + 32) = v304;

  v306 = *&v302[v301];
  if (v407 >> 62)
  {
    *(v306 + 24) = __CocoaSet.count.getter();
    v308 = *(*&v305 + direct field offset for CanvasView.formAnalytics);
    v307 = __CocoaSet.count.getter();
  }

  else
  {
    v307 = *((v407 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v306 + 24) = v307;
    v308 = *(*&v305 + direct field offset for CanvasView.formAnalytics);
  }

  if (v307)
  {
    v309 = 41;
  }

  else
  {
    v309 = 39;
  }

  *(v308 + 17) = v309;
}

double key path setter for Canvas.liveStreamMessenger : <A>Canvas<A>(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  specialized Canvas.liveStreamMessenger.setter(v2, v1);

  swift_unknownObjectRelease();
  return result;
}

uint64_t Canvas.liveStreamMessenger.didset()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & v2;
  v58 = type metadata accessor for CRMulticastSyncManagerCatchupBehavior();
  v5 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v63 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((v3 & v2) + 0xB50);
  v8 = *((v3 & v2) + 0xB58);
  v9 = type metadata accessor for Capsule();
  v62 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v51 - v10;
  v61 = type metadata accessor for CRKeyPath();
  v11 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v1 + direct field offset for Canvas.liveStreamMessenger);
  swift_beginAccess();
  v65 = v13;
  if (*v13)
  {
    v55 = v8;
    v57 = v4;
    v64 = v65[1];
    v14 = one-time initialization token for multipeerLogger;
    swift_unknownObjectRetain();
    if (v14 != -1)
    {
      swift_once();
    }

    v53 = v11;
    v54 = v9;
    v56 = v7;
    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, multipeerLogger);
    swift_unknownObjectRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v66 = v19;
      *v18 = 136315138;
      v20 = ObjectIdentifier.debugDescription.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v66);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1D38C4000, v16, v17, "New session for %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1DA6D0660](v19, -1, -1);
      MEMORY[0x1DA6D0660](v18, -1, -1);
    }

    ObjectType = swift_getObjectType();
    v52 = ObjectType;
    v24 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_context);
    v25 = v59;
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0xCD0))();
    v26 = v60;
    CanvasElementView.canvasElement.getter(v60);
    v27 = v63;
    v28 = v58;
    (*(v5 + 104))(v63, *MEMORY[0x1E6995390], v58);
    v29 = v55;
    v30 = ObjectType;
    v31 = v56;
    v51 = PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:)(v24, v25, v26, v27, 0x7265706150, 0xE500000000000000, v30, v56, v64, v55);
    (*(v5 + 8))(v27, v28);
    (*(v62 + 8))(v26, v54);
    (*(v53 + 8))(v25, v61);
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v33[2] = v31;
    v33[3] = v29;
    v34 = *(v57 + 2912);
    v33[4] = v34;
    v33[5] = v32;
    v35 = type metadata accessor for Canvas(0, v31, v29, v34);

    v36 = v51;
    PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:)(v51, v1, 0x7265706150, 0xE500000000000000, partial apply for closure #1 in Canvas.liveStreamMessenger.didset, v33, v52, v35, v64, &protocol witness table for AnyCanvas);

    *(v1 + direct field offset for Canvas.multipeerConnection) = v36;
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for multipeerLogger != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, multipeerLogger);
    v38 = v1;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v66 = v42;
      *v41 = 136315138;
      v43 = ObjectIdentifier.debugDescription.getter();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v66);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1D38C4000, v39, v40, "Ended session for %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x1DA6D0660](v42, -1, -1);
      MEMORY[0x1DA6D0660](v41, -1, -1);
    }

    *(v38 + direct field offset for Canvas.multipeerConnection) = 0;
  }

  v46 = v65;
  AnyCanvas.liveStreamDrawings.setter(*v65 != 0);
  v47 = v46[1];
  v48 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0);
  v49 = swift_unknownObjectRetain();
  return v48(v49, v47);
}

void closure #1 in Canvas.liveStreamMessenger.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = 3;
    AnyCanvas.merge<A>(_:from:)(a1, &v9, a3, a4);
  }
}

double Canvas.canvasStateLiveStreamMessenger.didset(__n128 a1)
{
  v2 = v1;
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = type metadata accessor for CRMulticastSyncManagerCatchupBehavior();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit11CanvasStateVGMd, &_s9Coherence7CapsuleVy8PaperKit11CanvasStateVGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for CRKeyPath();
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*(v3 + 696))(v13);
  if (v16)
  {
    v38 = v16;
    v34 = v3;
    v18 = v17;
    ObjectType = swift_getObjectType();
    v32 = v8;
    v37 = ObjectType;
    v33 = *(v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_context);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0xCD0))();
    v20 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_canvasState;
    swift_beginAccess();
    (*(v9 + 16))(v11, v2 + v20, v8);
    (*(v5 + 104))(v7, *MEMORY[0x1E6995388], v4);
    v21 = type metadata accessor for CanvasState(0);
    v22 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type CanvasState and conformance CanvasState, type metadata accessor for CanvasState, &protocol conformance descriptor for CanvasState);
    v23 = PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:)(v33, v15, v11, v7, 0x74537361766E6143, 0xEB00000000657461, v37, v21, v18, v22);
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v32);
    (*(v35 + 8))(v15, v36);
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v26 = v34;
    v27 = *(v34 + 2896);
    v25[2] = v27;
    v28 = *(v26 + 2904);
    v25[3] = v28;
    v29 = *(v26 + 2912);
    v25[4] = v29;
    v25[5] = v24;
    v30 = type metadata accessor for Canvas(0, v27, v28, v29);
    PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:)(v23, v2, 0x74537361766E6143, 0xEB00000000657461, partial apply for closure #1 in Canvas.canvasStateLiveStreamMessenger.didset, v25, v37, v30, v18, &protocol witness table for AnyCanvas);

    *(v2 + direct field offset for Canvas.multipeerCanvasStateConnection) = v23;
    swift_unknownObjectRelease();
  }

  else
  {
    *(v1 + direct field offset for Canvas.multipeerCanvasStateConnection) = 0;
  }

  return result;
}

void closure #1 in Canvas.canvasStateLiveStreamMessenger.didset(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    Canvas.mergeCanvasState(_:)(a1);
  }
}

uint64_t key path setter for Canvas.updatablePaper : <A>Canvas<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Capsule();
  v5 = type metadata accessor for Optional();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return Canvas.updatablePaper.setter(v8);
}

uint64_t closure #1 in Canvas.mergeToCanvasElements()(uint64_t a1, uint64_t *a2)
{
  v33 = a1;
  v2 = *a2;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v24 = &v22 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v25 = &v22 - v7;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v29 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v23 = &v22 - v8;
  v9 = *((v3 & v2) + 0xB50);
  v10 = *((v3 & v2) + 0xB58);
  v11 = type metadata accessor for Capsule();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  CanvasElementView.canvasElement.getter(&v22 - v13);
  v34 = v9;
  v35 = v10;
  v36 = *((v3 & v2) + 0xB60);
  swift_getKeyPath();
  v15 = v23;
  Capsule.subscript.getter();

  (*(v12 + 8))(v14, v11);
  v16 = v26;
  v17 = v24;
  v18 = v28;
  (*(v26 + 16))(v24, v33, v28);
  WeakTagged_10.tag.getter();
  v37 = v39;
  v38 = v40;
  MEMORY[0x1DA6CB5C0](v18);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  v19 = v25;
  SharedTagged_10.init(_:id:)();
  (*(v16 + 8))(v17, v18);
  v20 = v27;
  LOBYTE(v18) = CROrderedSet.contains(_:)();
  (*(v30 + 8))(v19, v32);
  (*(v29 + 8))(v15, v20);
  return v18 & 1;
}

void closure #1 in Canvas.scheduleFinalizeTask()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC8PaperKit9AnyCanvas_context);
    v6 = *(Strong + direct field offset for Canvas.paperView);
    v7 = MEMORY[0x1E69E7D40];
    v8 = Strong;
    swift_beginAccess();
    type metadata accessor for Capsule();
    v9 = v6;
    v10 = v5;
    Capsule.finalizeTimestamps(_:)();
    swift_endAccess();

    (*((*v7 & *v8) + 0x7E0))();
  }
}

BOOL closure #1 in Canvas.editingContainerElementId.setter(uint64_t a1)
{
  v1 = CRKeyPath.rawValue.getter();
  v3 = v2;
  v4 = CRKeyPath.rawValue.getter();
  v6 = v5;
  v7 = specialized static Data.== infix(_:_:)(v1, v3, v4, v5);
  outlined consume of Data._Representation(v4, v6);
  outlined consume of Data._Representation(v1, v3);
  return v7;
}

void Canvas.editingMode.didset(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3C8);
  v5((&v18 + 2));
  if (BYTE2(v18) != v3)
  {
    v6 = *(v1 + direct field offset for Canvas.dropInteraction);
    if (v6)
    {
      v7 = *((*v4 & *v1) + 0xED8);
      v17 = v6;
      v8 = v7();
      v9 = &selRef_addInteraction_;
      if ((v8 & 1) == 0)
      {
        v9 = &selRef_removeInteraction_;
      }

      (v5)((&v18 + 1), [v1 *v9]);
      if (v3 == 1 || BYTE1(v18) == 1)
      {
        v10 = Canvas.editingView.getter();
        v12 = v11;
        ObjectType = swift_getObjectType();
        (*(v12 + 24))(ObjectType, v12);
      }

      v5(&v18);
      if (!v18)
      {
        v14 = *(v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
        if (!v14)
        {
          __break(1u);
          return;
        }

        v15 = v14 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
        if (*(*v15 + 16) || (!*(*(v15 + 8) + 16) ? (v16 = *(v15 + 24) == 0) : (v16 = 0), !v16))
        {
          AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
        }
      }
    }
  }
}

Swift::Void __swiftcall Canvas.didMoveToSuperview()()
{
  v1 = type metadata accessor for Canvas(0, *((*MEMORY[0x1E69E7D40] & *v0) + 0xB50), *((*MEMORY[0x1E69E7D40] & *v0) + 0xB58), *((*MEMORY[0x1E69E7D40] & *v0) + 0xB60));
  v3.receiver = v0;
  v3.super_class = v1;
  objc_msgSendSuper2(&v3, sel_didMoveToSuperview);
  v2 = [v0 superview];
  if (v2)
  {

    Canvas.updateAfterChangeInSuperviewOrWindow()();
  }
}

void @objc Canvas.didMoveToSuperview()(void *a1)
{
  v1 = a1;
  Canvas.didMoveToSuperview()();
}

Swift::Void __swiftcall Canvas.didMoveToWindow()()
{
  v1 = type metadata accessor for Canvas(0, *((*MEMORY[0x1E69E7D40] & *v0) + 0xB50), *((*MEMORY[0x1E69E7D40] & *v0) + 0xB58), *((*MEMORY[0x1E69E7D40] & *v0) + 0xB60));
  v5.receiver = v0;
  v5.super_class = v1;
  objc_msgSendSuper2(&v5, sel_didMoveToWindow);
  v2 = [v0 window];
  if (v2)
  {

    Canvas.updateAfterChangeInSuperviewOrWindow()();
    v3 = v0;
    v4 = [v3 traitOverrides];
    [v4 setNSIntegerValue:1 forTrait:objc_opt_class()];
  }
}

void @objc Canvas.didMoveToWindow()(void *a1)
{
  v1 = a1;
  Canvas.didMoveToWindow()();
}

Class @objc Canvas.keyCommands.getter()
{
  if (specialized Canvas.keyCommands.getter())
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIKeyCommand, 0x1E69DCBA0);
    v0.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v0.super.isa = 0;
  }

  return v0.super.isa;
}

void @objc Canvas.selectAllKeyCommand()(void *a1)
{
  v1 = a1;
  Canvas.selectAllKeyCommand()();
}

void @objc Canvas.deselectAllKeyCommand()(void *a1)
{
  v1 = a1;
  Canvas.deselectAll()();
}

uint64_t closure #1 in Canvas.canvasElementOrFormFieldExistsAtPoint(_:)(void **a1, uint64_t a2, double a3, double a4)
{
  v7 = *a1;
  if ((*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F0))())
  {
    return 0;
  }

  [v7 convertPoint:*(a2 + direct field offset for Canvas.paperView) fromCoordinateSpace:{a3, a4}];
  result = [v7 hitTest:0 withEvent:?];
  if (result)
  {

    return 1;
  }

  return result;
}

uint64_t closure #1 in Canvas.showOrHideContent(below:)(uint64_t *a1, char *a2, char *a3, double a4, double a5)
{
  v57 = a2;
  v62 = *a1;
  v9 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v49 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v52 = &v48 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v48 = &v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v58 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v48 - v18;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v20 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v22 = &v48 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMR);
  v56 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v48 - v24;
  v26 = (v62 + *MEMORY[0x1E6995440]);
  v51 = *v26;
  v63 = v51;
  v50 = v26[1];
  v64 = v50;
  v65 = a3;
  v55 = a3;
  swift_getKeyPath();
  v60 = a1;
  Capsule.Ref.subscript.getter();

  v27 = v61;
  CROrderedSet.makeIterator()();
  (*(v20 + 8))(v22, v27);
  v61 = v25;
  v62 = v23;
  CROrderedSet.Iterator.next()();
  v28 = v58;
  v59 = *(v58 + 48);
  if (v59(v19, 1, v14) != 1)
  {
    v58 = *(v28 + 32);
    v37 = (v28 + 8);
    (v58)(v16, v19, v14);
    while (1)
    {
      SharedTagged_10.subscript.getter();
      v39 = v67;
      v38 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      (*(*(v38 + 8) + 8))(v39);
      v41 = v40;
      __swift_destroy_boxed_opaque_existential_0(v66);
      if (v41 <= a5)
      {
        (*v37)(v16, v14);
      }

      else
      {
        SharedTagged_10.subscript.getter();
        v43 = v67;
        v42 = v68;
        __swift_project_boxed_opaque_existential_1(v66, v67);
        v44 = (*(*(v42 + 8) + 8))(v43);
        (*v37)(v16, v14);
        __swift_destroy_boxed_opaque_existential_0(v66);
        if (v44 > 5000.0)
        {
          result = (*(v56 + 8))(v61, v62);
          *v57 = 0;
          return result;
        }
      }

      CROrderedSet.Iterator.next()();
      if (v59(v19, 1, v14) == 1)
      {
        break;
      }

      (v58)(v16, v19, v14);
    }
  }

  result = (*(v56 + 8))(v61, v62);
  v30 = v57;
  if (*v57 == 1)
  {
    MEMORY[0x1EEE9AC00](result);
    v31 = v50;
    *(&v48 - 4) = v51;
    *(&v48 - 3) = v31;
    v32 = v55;
    *(&v48 - 2) = v55;
    swift_getKeyPath();
    v33 = v52;
    v34 = v60;
    Capsule.Ref.subscript.getter();

    v35 = v53;
    v36 = v54;
    if ((*(v53 + 48))(v33, 1, v54) == 1)
    {
      return outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
    }

    else
    {
      v45 = v48;
      (*(v35 + 32))(v48, v33, v36);
      v46 = v49;
      v47 = Ref.subscript.getter();
      MEMORY[0x1EEE9AC00](v47);
      *(&v48 - 6) = v32;
      *(&v48 - 5) = v34;
      *(&v48 - 4) = a4;
      *(&v48 - 3) = a5;
      *(&v48 - 2) = v30;
      PKDrawingStruct.visitStrokes<A>(in:_:)(v34, partial apply for closure #1 in closure #1 in Canvas.showOrHideContent(below:), (&v48 - 8));
      _s8PaperKit0A6MarkupVWOhTm_1(v46, type metadata accessor for PKDrawingStruct);
      return (*(v35 + 8))(v45, v36);
    }
  }

  return result;
}

void closure #1 in closure #1 in Canvas.showOrHideContent(below:)(double a1, CGFloat a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v21 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  Ref.subscript.getter();
  v22 = a4;
  v12 = type metadata accessor for Capsule.Ref();

  WitnessTable = swift_getWitnessTable();
  v14 = specialized CRRegister<>.bounds(in:)(&v22, v11, v12, WitnessTable);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v9 + 8))(v11, v8);

  if (CGRect.isFinite.getter(v14, v16, v18, v20))
  {
    v23.origin.x = v14;
    v23.origin.y = v16;
    v23.size.width = v18;
    v23.size.height = v20;
    if (CGRectGetMinY(v23) > a2)
    {
      v24.origin.x = v14;
      v24.origin.y = v16;
      v24.size.width = v18;
      v24.size.height = v20;
      if (CGRectGetMinX(v24) > 5000.0)
      {
        *a5 = 0;
      }
    }
  }
}

uint64_t closure #2 in Canvas.showOrHideContent(below:)(char *a1, char *a2, char *a3, double a4, double a5)
{
  v97 = a2;
  v102 = *a1;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v96 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v81 - v11;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v95 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v13 = &v81 - v12;
  v14 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v81 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v99 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v81 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v85 = &v81 - v20;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v81 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v81 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v101 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v81 - v26;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMR);
  v84 = *(v103 - 1);
  MEMORY[0x1EEE9AC00](v103);
  v29 = (&v81 - v28);
  v30 = (v102 + *MEMORY[0x1E6995440]);
  v83 = *v30;
  v104 = v83;
  v82 = v30[1];
  v105 = v82;
  v106 = a3;
  v86 = a3;
  v31 = v18;
  v32 = v24;
  swift_getKeyPath();
  Capsule.Ref.subscript.getter();
  v33 = a1;

  CROrderedSet.makeIterator()();
  (*(v101 + 1))(v27, v25);
  v34 = v99;
  v102 = v29;
  CROrderedSet.Iterator.next()();
  v100 = *(v34 + 6);
  v101 = v34 + 48;
  if (v100(v32, 1, v16) != 1)
  {
    v43 = *(v34 + 4);
    v42 = v34 + 32;
    v98 = v42 - 24;
    v99 = v43;
    do
    {
      v44 = v32;
      (v99)(v31, v32, v16);
      SharedTagged_10.subscript.getter();
      d = v108.d;
      tx = v108.tx;
      __swift_project_boxed_opaque_existential_1(&v108, *&v108.d);
      (*(*(*&tx + 8) + 8))(COERCE_CGFLOAT(*&d));
      v48 = v47;
      __swift_destroy_boxed_opaque_existential_0(&v108);
      if (v48 > a5)
      {
        v49 = v13;
        v50 = *v97;
        SharedTagged_10.subscript.getter();
        v52 = v108.d;
        v51 = v108.tx;
        __swift_project_boxed_opaque_existential_1(&v108, *&v108.d);
        v53 = (*(*(*&v51 + 8) + 8))(COERCE_CGFLOAT(*&v52));
        __swift_destroy_boxed_opaque_existential_0(&v108);
        v54 = v50 == v53 >= 5000.0;
        v13 = v49;
        if (!v54)
        {
          if (*v97)
          {
            v55 = 10000.0;
          }

          else
          {
            v55 = -10000.0;
          }

          v90 = SharedTagged_10.subscript.modify();
          v56 = v42;
          v57 = v33;
          v60 = *(v58 + 24);
          v59 = *(v58 + 32);
          __swift_mutable_project_boxed_opaque_existential_1(v58, v60);
          v61 = *(v59 + 24);
          v62 = v60;
          v33 = v57;
          v42 = v56;
          v63 = v59;
          v13 = v49;
          v64 = v61(v107, v62, v63);
          *v65 = v55 + *v65;
          v64(v107, 0);
          v90(&v108, 0);
        }
      }

      (*v98)(v31, v16);
      v32 = v44;
      CROrderedSet.Iterator.next()();
    }

    while (v100(v44, 1, v16) != 1);
  }

  v35 = (*(v84 + 8))(v102, v103);
  MEMORY[0x1EEE9AC00](v35);
  v36 = v82;
  *(&v81 - 4) = v83;
  *(&v81 - 3) = v36;
  v37 = v86;
  *(&v81 - 2) = v86;
  swift_getKeyPath();
  v38 = v85;
  Capsule.Ref.subscript.getter();

  v39 = v88;
  v40 = v89;
  if ((*(v88 + 48))(v38, 1, v89) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v38, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  }

  (*(v39 + 32))(v87, v38, v40);
  v66 = v81;
  v67 = Ref.subscript.getter();
  MEMORY[0x1EEE9AC00](v67);
  *(&v81 - 6) = v37;
  *(&v81 - 5) = v33;
  *(&v81 - 4) = a4;
  *(&v81 - 3) = a5;
  *(&v81 - 2) = v97;
  v68 = PKDrawingStruct.filteredStrokes<A>(in:isIncluded:)(v33, partial apply for closure #1 in closure #2 in Canvas.showOrHideContent(below:), (&v81 - 8));
  _s8PaperKit0A6MarkupVWOhTm_1(v66, type metadata accessor for PKDrawingStruct);
  v69 = *(v68 + 16);
  if (v69)
  {
    v99 = v33;
    *&v108.a = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69, 0);
    v70 = *(v96 + 16);
    a = v108.a;
    v72 = *(v96 + 80);
    v98 = v68;
    v73 = v68 + ((v72 + 32) & ~v72);
    v102 = (v96 + 8);
    v103 = v70;
    v101 = (v95 + 32);
    v96 += 16;
    v100 = *(v96 + 56);
    do
    {
      v74 = v92;
      v75 = v94;
      v76 = v13;
      v77 = v103;
      v103(v92, v73, v94);
      v77(v93, v74, v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953B8]);
      WeakRef.init<A>(_:)();
      (*v102)(v74, v75);
      v108.a = a;
      v79 = *(*&a + 16);
      v78 = *(*&a + 24);
      if (v79 >= v78 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1);
        a = v108.a;
      }

      *(*&a + 16) = v79 + 1;
      (*(v95 + 32))(*&a + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v79, v76, v91);
      v73 += v100;
      --v69;
      v13 = v76;
    }

    while (v69);

    v33 = v99;
    v40 = v89;
    v39 = v88;
  }

  else
  {

    a = MEMORY[0x1E69E7CC0];
  }

  v80 = -10000.0;
  if (*v97)
  {
    v80 = 10000.0;
  }

  CGAffineTransformMakeTranslation(&v108, v80, 0.0);
  static PKDrawingStruct.transformStrokes<A>(_:with:concat:in:)(*&a, &v108.a, 1, v33);

  return (*(v39 + 8))(v87, v40);
}

uint64_t closure #1 in closure #2 in Canvas.showOrHideContent(below:)(double a1, CGFloat a2, uint64_t a3, void *a4, char *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v24 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  Ref.subscript.getter();
  v25 = a4;
  v12 = type metadata accessor for Capsule.Ref();

  WitnessTable = swift_getWitnessTable();
  v14 = specialized CRRegister<>.bounds(in:)(&v25, v11, v12, WitnessTable);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v9 + 8))(v11, v8);

  v26.origin.x = v14;
  v26.origin.y = v16;
  v26.size.width = v18;
  v26.size.height = v20;
  if (CGRectGetMinY(v26) <= a2)
  {
    v22 = 0;
  }

  else
  {
    v21 = *a5;
    v27.origin.x = v14;
    v27.origin.y = v16;
    v27.size.width = v18;
    v27.size.height = v20;
    v22 = v21 ^ (CGRectGetMinX(v27) >= 5000.0);
  }

  return v22 & 1;
}

uint64_t closure #1 in Canvas.addCanvasElement<A>(_:setSelected:dragItem:harmonize:)(uint64_t *a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v9 = *a1;
  v10 = *(*a1 + *MEMORY[0x1E6995440]);
  MEMORY[0x1EEE9AC00](a1);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ImageVSgMd, &_s8PaperKit5ImageVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - v12;
  v14 = *a2 / 1.2;
  v15 = a2[1] / 1.2;
  Capsule.Ref.root.getter();
  v16 = type metadata accessor for Image(0);
  v17 = swift_dynamicCast();
  v18 = *(*(v16 - 8) + 56);
  if (v17)
  {
    v18(v13, 0, 1, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
    CRRegister.wrappedValue.getter();
    v20 = v34;
    v19 = v35;
    v21 = _s8PaperKit0A6MarkupVWOhTm_1(v13, type metadata accessor for Image);
    if (v14 < v20 || v15 < v19)
    {
      v23 = v14 / v20;
      if (v15 / v19 < v14 / v20)
      {
        v23 = v15 / v19;
      }

      v14 = v20 * v23;
      v15 = v19 * v23;
    }

    else
    {
      v14 = v20;
      v15 = v19;
    }
  }

  else
  {
    v18(v13, 1, 1, v16);
    v21 = outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit5ImageVSgMd, &_s8PaperKit5ImageVSgMR);
  }

  MEMORY[0x1EEE9AC00](v21);
  *(&v30 - 6) = a3;
  *(&v30 - 5) = v10;
  v25 = v30;
  v24 = v31;
  *(&v30 - 4) = a4;
  *(&v30 - 3) = v25;
  v26 = *(v9 + *MEMORY[0x1E6995440] + 8);
  *(&v30 - 2) = v26;
  *(&v30 - 1) = v24;
  swift_getKeyPath();
  v27 = a2[3] - v15 * 0.5;
  v32 = a2[2] - v14 * 0.5;
  v33 = v27;
  v34 = v14;
  v35 = v15;
  v28 = Capsule.Ref.subscript.setter();
  MEMORY[0x1EEE9AC00](v28);
  *(&v30 - 6) = a3;
  *(&v30 - 5) = v10;
  *(&v30 - 4) = a4;
  *(&v30 - 3) = v25;
  *(&v30 - 2) = v26;
  *(&v30 - 1) = v24;
  swift_getKeyPath();
  v32 = a2[4];
  return Capsule.Ref.subscript.setter();
}

void key path getter for PaperRenderable.frame : <A><A1>A1(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = (*(*(*(a1 + a2 - 8) + 8) + 8))(*(a1 + a2 - 40));
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
}

void closure #3 in Canvas.addCanvasElement<A>(_:setSelected:dragItem:harmonize:)(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #2 in CanvasGenerationTool.showBlurEffect(animationDuration:);
  *(v4 + 24) = v3;
  v7[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed () -> ();
  v7[3] = &block_descriptor_329;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v2 performWithoutAnimation_];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void Canvas.screenScaleOverride.didset()
{
  v1 = *(v0 + direct field offset for Canvas.paperView);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x250);
  v3 = v1;
  v2();
}

void closure #2 in Canvas.presentSubelement<A>(_:presentationViewController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = 4;
    AnyCanvas.merge<A>(_:from:)(a1, &v12, a4, a7);
  }
}

void Canvas.pressesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  v5 = (*MEMORY[0x1E69E7D40] & *v2);
  if ([v2 isFirstResponder])
  {
    v20 = v5;
    v21 = v2;
    AnyCanvas.overlays.getter();
    v7 = v6;
    v8 = *(v6 + 16);
    v9 = v8 + 1;
    v10 = (v6 + 16 * v8 + 24);
    do
    {
      if (!--v9)
      {

        v5 = v20;
        v2 = v21;
        goto LABEL_10;
      }

      if (v9 > *(v7 + 16))
      {
        __break(1u);
        return;
      }

      v11 = v10 - 2;
      v12 = *(v10 - 1);
      v13 = *v10;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 8);
      v16 = v12;
      v17 = v15(a1, a2, ObjectType, v13);

      v10 = v11;
    }

    while ((v17 & 1) == 0);
  }

  else
  {
LABEL_10:
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPress, 0x1E69DCDF0);
    lazy protocol witness table accessor for type UIPress and conformance NSObject();
    isa = Set._bridgeToObjectiveC()().super.isa;
    v19 = type metadata accessor for Canvas(0, v5[362], v5[363], v5[364]);
    v22.receiver = v2;
    v22.super_class = v19;
    objc_msgSendSuper2(&v22, sel_pressesBegan_withEvent_, isa, a2);
  }
}

void Canvas.pressesEnded(_:with:)(uint64_t a1, uint64_t a2)
{
  v19 = (*MEMORY[0x1E69E7D40] & *v2);
  v20 = v2;
  AnyCanvas.overlays.getter();
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = v7 + 1;
  v9 = (v5 + 16 * v7 + 24);
  do
  {
    if (!--v8)
    {

      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPress, 0x1E69DCDF0);
      lazy protocol witness table accessor for type UIPress and conformance NSObject();
      isa = Set._bridgeToObjectiveC()().super.isa;
      v18 = type metadata accessor for Canvas(0, v19[362], v19[363], v19[364]);
      v21.receiver = v20;
      v21.super_class = v18;
      objc_msgSendSuper2(&v21, sel_pressesEnded_withEvent_, isa, a2);

      return;
    }

    if (v8 > *(v6 + 16))
    {
      __break(1u);
      return;
    }

    v10 = v9 - 2;
    v11 = *(v9 - 1);
    v12 = *v9;
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 16);
    v15 = v11;
    v16 = v14(a1, a2, ObjectType, v12);

    v9 = v10;
  }

  while ((v16 & 1) == 0);
}

double @objc Canvas.pressesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPress, 0x1E69DCDF0);
  lazy protocol witness table accessor for type UIPress and conformance NSObject();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);

  return result;
}

uint64_t closure #1 in Canvas.selectableElements.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v21 = a1;
  v22 = a3;
  v3 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v20 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  v9 = type metadata accessor for Capsule();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  CanvasElementView.canvasElement.getter(&v20 - v11);
  v13 = v21;
  SharedTagged_10.subscript.getter();
  (*(v10 + 8))(v12, v9);
  v14 = v27;
  v15 = v28;
  __swift_project_boxed_opaque_existential_1(&v25, v27);
  (*(v15 + 88))(&v23, v14, v15);
  LOBYTE(v14) = v23;
  __swift_destroy_boxed_opaque_existential_0(&v25);
  if ((v14 & 2) != 0)
  {
    v17 = 1;
    v16 = v22;
  }

  else
  {
    (*(v6 + 16))(v8, v13, v5);
    WeakTagged_10.tag.getter();
    v23 = v25;
    v24 = v26;
    MEMORY[0x1DA6CB7A0](v5);
    lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
    v16 = v22;
    WeakTagged_10.init(_:id:)();
    (*(v6 + 8))(v8, v5);
    v17 = 0;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  return (*(*(v18 - 8) + 56))(v16, v17, 1, v18);
}

void *Canvas.PaperViewCanvasPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v86 = a1;
  v87 = a4;
  v7 = *(a2 + 16);
  v82 = a2;
  v83 = v7;
  v84 = *(a2 + 24);
  v79 = type metadata accessor for Capsule();
  v8 = type metadata accessor for AnySubscriber();
  v76 = type metadata accessor for Optional();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v10 = &v70 - v9;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v70 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v70 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v70 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v70 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v70 - v24;
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v85 = &v70 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v81 = &v70 - v33;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v73 = result;
    v72 = *(v4 + 8);
    v74 = v11;
    v35 = *(v11 + 16);
    v35(v25, v86, a3);
    v35(v22, v25, a3);
    v36 = swift_dynamicCast();
    v37 = *(v26 + 56);
    v38 = v8;
    if (v36)
    {
      v37(v10, 0, 1, v8);
      v39 = *(v26 + 32);
      v39(v29, v10, v8);
      v40 = v85;
      v39(v85, v29, v8);
      v41 = v74;
      v42 = v25;
      v43 = a3;
LABEL_14:
      v65 = *(v82 + 32);
      *&v91 = v83;
      *(&v91 + 1) = v83;
      v92 = v84;
      v93 = v65;
      WitnessTable = v84;
      v66 = type metadata accessor for Canvas.PaperViewCanvasSubscription(0, &v91);
      v67 = v81;
      (*(v26 + 32))(v81, v40, v38);
      (*(v41 + 8))(v42, v43);
      swift_allocObject();
      v68 = v73;
      v69 = specialized Canvas.PaperViewCanvasSubscription.init(canvas:live:subscriber:)(v73, v72, v67);
      *&v88 = v69;
      swift_beginAccess();
      type metadata accessor for Array();

      Array.append(_:)();
      swift_endAccess();
      v93 = v66;
      WitnessTable = swift_getWitnessTable();
      *&v91 = v69;
      dispatch thunk of Subscriber.receive(subscription:)();

      return __swift_destroy_boxed_opaque_existential_0(&v91);
    }

    v70 = v26;
    v37(v10, 1, 1, v8);
    (*(v75 + 8))(v10, v76);
    v44 = v85;
    v45 = v35;
    dispatch thunk of CustomCombineIdentifierConvertible.combineIdentifier.getter();
    type metadata accessor for AnySubscriberBox();
    v35(v80, v25, a3);
    *v44 = AnySubscriberBox.__allocating_init(_:)();
    v35(v77, v25, a3);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, &_ss23CustomStringConvertible_pMR);
    v46 = a3;
    if (swift_dynamicCast())
    {
      outlined init with take of PaperKitHashable(&v88, &v91);
      outlined init with take of PaperKitHashable(&v91, &v88);
      v47 = swift_allocObject();
      outlined init with take of PaperKitHashable(&v88, v47 + 16);
      v48 = partial apply for closure #1 in AnySubscriber.init<A>(_:);
    }

    else
    {
      v90 = 0;
      v88 = 0u;
      v89 = 0u;
      outlined destroy of StocksKitCurrencyCache.Provider?(&v88, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
      swift_getDynamicType();
      v49 = _typeName(_:qualified:)();
      v50 = v38;
      v52 = v51;
      v47 = swift_allocObject();
      *(v47 + 16) = v49;
      *(v47 + 24) = v52;
      v44 = v85;
      v38 = v50;
      v48 = partial apply for closure #2 in AnySubscriber.init<A>(_:);
    }

    v41 = v74;
    v44[1] = v48;
    v44[2] = v47;
    v53 = v80;
    v45(v80, v25, v46);
    v54 = (*(v41 + 80) + 40) & ~*(v41 + 80);
    v55 = swift_allocObject();
    v55[2] = v79;
    v55[3] = v46;
    v55[4] = v87;
    v56 = v55 + v54;
    v40 = v85;
    v57 = v53;
    v58 = v45;
    (*(v41 + 32))(v56, v57, v46);
    v40[3] = partial apply for closure #3 in AnySubscriber.init<A>(_:);
    v40[4] = v55;
    v45(v78, v25, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss34CustomPlaygroundDisplayConvertible_pMd, &_ss34CustomPlaygroundDisplayConvertible_pMR);
    v43 = v46;
    v42 = v25;
    if (swift_dynamicCast())
    {
      outlined init with take of PaperKitHashable(&v88, &v91);
      outlined init with take of PaperKitHashable(&v91, &v88);
      v59 = swift_allocObject();
      outlined init with take of PaperKitHashable(&v88, v59 + 16);
      v60 = partial apply for closure #4 in AnySubscriber.init<A>(_:);
    }

    else
    {
      v90 = 0;
      v88 = 0u;
      v89 = 0u;
      outlined destroy of StocksKitCurrencyCache.Provider?(&v88, &_ss34CustomPlaygroundDisplayConvertible_pSgMd, &_ss34CustomPlaygroundDisplayConvertible_pSgMR);
      v58(v71, v25, v46);
      if (!swift_dynamicCast())
      {
        v90 = 0;
        v88 = 0u;
        v89 = 0u;
        outlined destroy of StocksKitCurrencyCache.Provider?(&v88, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
        swift_getDynamicType();
        v61 = _typeName(_:qualified:)();
        v63 = v62;
        v64 = swift_allocObject();
        *(v64 + 16) = v61;
        *(v64 + 24) = v63;
        v40[5] = partial apply for closure #6 in AnySubscriber.init<A>(_:);
        v40[6] = v64;
        goto LABEL_13;
      }

      outlined init with take of PaperKitHashable(&v88, &v91);
      outlined init with take of PaperKitHashable(&v91, &v88);
      v59 = swift_allocObject();
      outlined init with take of PaperKitHashable(&v88, v59 + 16);
      v60 = partial apply for closure #5 in AnySubscriber.init<A>(_:);
    }

    v40[5] = v60;
    v40[6] = v59;
LABEL_13:
    v26 = v70;
    goto LABEL_14;
  }

  return result;
}

Swift::Void __swiftcall Canvas.setNeedsLayout()()
{
  v1 = type metadata accessor for Canvas(0, *((*MEMORY[0x1E69E7D40] & *v0) + 0xB50), *((*MEMORY[0x1E69E7D40] & *v0) + 0xB58), *((*MEMORY[0x1E69E7D40] & *v0) + 0xB60));
  v2.receiver = v0;
  v2.super_class = v1;
  objc_msgSendSuper2(&v2, sel_setNeedsLayout);
  Canvas.setCanvasStateNeedsLayout()();
}

void @objc Canvas.setNeedsLayout()(void *a1)
{
  v1 = a1;
  Canvas.setNeedsLayout()();
}

Swift::Void __swiftcall Canvas.layoutSubviews()()
{
  v1 = type metadata accessor for Canvas(0, *((*MEMORY[0x1E69E7D40] & *v0) + 0xB50), *((*MEMORY[0x1E69E7D40] & *v0) + 0xB58), *((*MEMORY[0x1E69E7D40] & *v0) + 0xB60));
  v34.receiver = v0;
  v34.super_class = v1;
  objc_msgSendSuper2(&v34, sel_layoutSubviews);
  AnyCanvas.overlays.getter();
  v33 = v2;
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v6 = *v4;
      v7 = [v6 superview];
      if (v7)
      {
        v8 = v7;
        v9 = Canvas.editingView.getter();
        [v9 bounds];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;

        v18 = Canvas.editingView.getter();
        [v8 convertRect:v18 fromCoordinateSpace:{v11, v13, v15, v17}];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;

        [v6 frame];
        x = v35.origin.x;
        y = v35.origin.y;
        width = v35.size.width;
        height = v35.size.height;
        IsNull = CGRectIsNull(v35);
        v36.origin.x = v20;
        v36.origin.y = v22;
        v36.size.width = v24;
        v36.size.height = v26;
        v32 = CGRectIsNull(v36);
        if (IsNull && v32 || IsNull == v32 && vabdd_f64(x, v20) < 0.1 && vabdd_f64(y, v22) < 0.1 && vabdd_f64(width, v24) < 0.1 && vabdd_f64(height, v26) < 0.1)
        {
          v5 = v8;
          v8 = v6;
        }

        else
        {
          [v6 setFrame_];
          v5 = v6;
        }

        v6 = v8;
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }
}

void @objc Canvas.layoutSubviews()(void *a1)
{
  v1 = a1;
  Canvas.layoutSubviews()();
}

void closure #1 in Canvas.applyUndo(_:selection:)(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd, &_s9Coherence17CapsuleUndoActionVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for CapsuleUndoAction();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = *(a1 + direct field offset for Canvas.paperView);
  swift_beginAccess();
  type metadata accessor for Capsule();
  v10 = v9;
  Capsule.apply(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence17CapsuleUndoActionVSgMd, &_s9Coherence17CapsuleUndoActionVSgMR);
  swift_endAccess();
}

void specialized closure #2 in Canvas.registerUndo(_:selection:analyticsEvents:)(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, char a6, uint64_t a7)
{
  specialized Canvas.undoable(newChange:persistSelection:action:)(1, a3 != 0, partial apply for specialized closure #1 in Canvas.applyUndo(_:selection:));
  if (a3)
  {

    v13 = a6 & 1;
    v14 = a3;
    v15 = a4;
    v16 = a5;
LABEL_6:
    AnyCanvas.selection.setter(v14, v15, v16, v13);
    goto LABEL_7;
  }

  v17 = *(a1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v17)
  {
    __break(1u);
    return;
  }

  if (*(v17 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24))
  {
    v14 = MEMORY[0x1E69E7CD0];
    v15 = MEMORY[0x1E69E7CD0];
    v16 = 6;
    v13 = 0;
    goto LABEL_6;
  }

LABEL_7:
  v18 = *(a7 + 16);
  if (v18)
  {
    v19 = a7 + 32;
    do
    {
      outlined init with copy of FindResult(v19, v20);
      __swift_mutable_project_boxed_opaque_existential_1(v20, v20[3]);
      AnalyticsEvent.send()();
      __swift_destroy_boxed_opaque_existential_0(v20);
      v19 += 40;
      --v18;
    }

    while (v18);
  }
}

void closure #2 in Canvas.registerUndo(_:selection:analyticsEvents:)(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, char a6, uint64_t a7)
{
  Canvas.applyUndo(_:selection:)(a2, a3, a4, a5, a6);
  v8 = *(a7 + 16);
  if (v8)
  {
    v9 = a7 + 32;
    do
    {
      outlined init with copy of FindResult(v9, v10);
      __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
      AnalyticsEvent.send()();
      __swift_destroy_boxed_opaque_existential_0(v10);
      v9 += 40;
      --v8;
    }

    while (v8);
  }
}

uint64_t Canvas.PaperViewCanvasSubscription.deinit()
{
  v1 = *(*v0 + 120);
  type metadata accessor for Capsule();
  v2 = type metadata accessor for AnySubscriber();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  MEMORY[0x1DA6D07B0](v0 + *(*v0 + 128));
  return v0;
}

uint64_t Canvas.PaperViewCanvasSubscription.__deallocating_deinit()
{
  Canvas.PaperViewCanvasSubscription.deinit();

  return swift_deallocClassInstance();
}

void closure #1 in closure #1 in Canvas.addWords(_:layout:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a2;
  v46 = a3;
  v6 = *a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  v34 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v37 = &v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  v11 = *(v6 + *MEMORY[0x1E6995440]);
  v41 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMR);
  v39 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v38 = &v33 - v16;
  v17 = Capsule.Ref.root.modify();
  v50 = a1;
  v47 = a4;
  ContainerCanvasElement.ensureHasDrawing<A>(in:)(a1, v11, a4);
  v18 = v48;
  v17(v51, 0);
  if (v18 >> 62)
  {
    v19 = __CocoaSet.count.getter();
    v20 = v38;
    if (!v19)
    {
      return;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v38;
    if (!v19)
    {
      return;
    }
  }

  if (v19 < 1)
  {
    __break(1u);
  }

  else
  {
    v21 = 0;
    v52 = v18 & 0xC000000000000001;
    v42 = v47 + 64;
    v43 = (v39 + 2);
    ++v41;
    ++v39;
    v40 = (v34 + 6);
    v35 = (v34 + 2);
    ++v34;
    v36 = v15;
    v44 = v19;
    do
    {
      if (v52)
      {
        MEMORY[0x1DA6CE0C0](v21, v18);
      }

      else
      {
      }

      type metadata accessor for ReflowWord();
      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v23 = *(v22 + 280);
        v24 = OBJC_IVAR___PKDrawingCoherence_model;
        swift_beginAccess();
        v25 = (*v43)(v20, v23 + v24, v15);
        if (v46)
        {
          MEMORY[0x1EEE9AC00](v25);
          *(&v33 - 2) = v26;
          v27 = v49;
          Capsule.callAsFunction<A>(_:)();
          v49 = v27;
        }

        Capsule.Ref.root.getter();
        (*(v47 + 64))(v11);
        (*v41)(v14, v11);
        v28 = v45;
        if ((*v40)(v10, 1, v45))
        {
          (*v39)(v20, v15);

          outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
        }

        else
        {
          v29 = v11;
          v30 = v37;
          (*v35)(v37, v10, v28);
          outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
          v31 = Ref.subscript.modify();
          PKDrawingStruct.append<A>(_:in:)(v38);
          v31(v51, 0);

          v32 = v30;
          v11 = v29;
          v15 = v36;
          v20 = v38;
          (*v34)(v32, v28);
          (*v39)(v20, v15);
        }

        v18 = v48;
        v19 = v44;
      }

      else
      {
      }

      ++v21;
    }

    while (v19 != v21);
  }
}

void closure #1 in closure #1 in closure #1 in Canvas.addWords(_:layout:)(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v3 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v54 = &v46[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v46[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetSgMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v46[-v11];
  v12 = *(a2 + 64);
  v48 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v47 = (v13 + 63) >> 6;
  v58 = (v3 + 32);
  v59 = (v3 + 16);
  v49 = v3;
  v52 = (v3 + 8);
  v50 = a2;

  v16 = 0;
  v51 = xmmword_1D4058CF0;
  v53 = v9;
  if (v15)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = v20 | (v17 << 6);
      v22 = v50;
      v23 = v49;
      v24 = v60;
      v25 = v63;
      (*(v49 + 16))(v60, *(v50 + 48) + *(v49 + 72) * v21, v63);
      v26 = *(v22 + 56) + 48 * v21;
      v27 = *(v26 + 32);
      v28 = *(v26 + 40);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetMR);
      v30 = &v9[*(v29 + 48)];
      v31 = *(v23 + 32);
      v32 = *(v26 + 16);
      v61 = *v26;
      v57 = v32;
      v31(v9, v24, v25);
      v33 = v57;
      *v30 = v61;
      *(v30 + 1) = v33;
      *(v30 + 4) = v27;
      *(v30 + 5) = v28;
      (*(*(v29 - 8) + 56))(v9, 0, 1, v29);
      v19 = v17;
LABEL_13:
      v34 = v56;
      outlined init with take of Range<AttributedString.Index>(v9, v56, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetSgMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetSgMR);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetMR);
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
      {
        break;
      }

      v36 = &v34[*(v35 + 48)];
      v37 = v36[1];
      v62[0] = *v36;
      v62[1] = v37;
      v62[2] = v36[2];
      v38 = v60;
      v39 = v63;
      (*v58)(v60, v34, v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
      *&v61 = v19;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
      v41 = *(v40 - 8);
      v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = v51;
      (*v59)(v54, v38, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953B8]);
      WeakRef.init<A>(_:)();
      _s8PaperKit15PKDrawingStructV16transformStrokes_4with6concat2inySay9Coherence7WeakRefVyAH10CRRegisterVyAA12TaggedStrokeOGGG_So17CGAffineTransformVSbAH7CapsuleV0L0Cyx_GtAH4CRDTRzlFZAC_Tt3g5(v43, v62, 0, v55);
      swift_setDeallocating();
      (*(v41 + 8))(v43 + v42, v40);
      swift_deallocClassInstance();
      v44 = v39;
      v9 = v53;
      (*v52)(v38, v44);
      v16 = v61;
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v47 <= v16 + 1)
    {
      v18 = v16 + 1;
    }

    else
    {
      v18 = v47;
    }

    v19 = v18 - 1;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v47)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetMR);
        (*(*(v45 - 8) + 56))(v9, 1, 1, v45);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v48 + 8 * v17);
      ++v16;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t closure #1 in Canvas.transformStrokes(_:)(uint64_t *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *(a1 + direct field offset for Canvas.paperView);
  swift_beginAccess();
  type metadata accessor for Capsule();
  v4 = v3;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();

  return (*((*v2 & *a1) + 0x850))(1);
}

void closure #1 in closure #1 in Canvas.transformStrokes(_:)(void *a1, uint64_t a2)
{
  v55 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v3 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v54 = &v46[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v46[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetSgMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v46[-v11];
  v12 = *(a2 + 64);
  v48 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v47 = (v13 + 63) >> 6;
  v58 = (v3 + 32);
  v59 = (v3 + 16);
  v49 = v3;
  v52 = (v3 + 8);
  v50 = a2;

  v16 = 0;
  v51 = xmmword_1D4058CF0;
  v53 = v9;
  if (v15)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = v20 | (v17 << 6);
      v22 = v50;
      v23 = v49;
      v24 = v60;
      v25 = v63;
      (*(v49 + 16))(v60, *(v50 + 48) + *(v49 + 72) * v21, v63);
      v26 = *(v22 + 56) + 48 * v21;
      v27 = *(v26 + 32);
      v28 = *(v26 + 40);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetMR);
      v30 = &v9[*(v29 + 48)];
      v31 = *(v23 + 32);
      v32 = *(v26 + 16);
      v61 = *v26;
      v57 = v32;
      v31(v9, v24, v25);
      v33 = v57;
      *v30 = v61;
      *(v30 + 1) = v33;
      *(v30 + 4) = v27;
      *(v30 + 5) = v28;
      (*(*(v29 - 8) + 56))(v9, 0, 1, v29);
      v19 = v17;
LABEL_13:
      v34 = v56;
      outlined init with take of Range<AttributedString.Index>(v9, v56, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetSgMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetSgMR);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetMR);
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
      {
        break;
      }

      v36 = &v34[*(v35 + 48)];
      v37 = v36[1];
      v62[0] = *v36;
      v62[1] = v37;
      v62[2] = v36[2];
      v38 = v60;
      v39 = v63;
      (*v58)(v60, v34, v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_ss23_ContiguousArrayStorageCy9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
      *&v61 = v19;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
      v41 = *(v40 - 8);
      v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = v51;
      (*v59)(v54, v38, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953B8]);
      WeakRef.init<A>(_:)();
      static PKDrawingStruct.transformStrokes<A>(_:with:concat:in:)(v43, v62, 0, v55);
      swift_setDeallocating();
      (*(v41 + 8))(v43 + v42, v40);
      swift_deallocClassInstance();
      v44 = v39;
      v9 = v53;
      (*v52)(v38, v44);
      v16 = v61;
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v47 <= v16 + 1)
    {
      v18 = v16 + 1;
    }

    else
    {
      v18 = v47;
    }

    v19 = v18 - 1;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v47)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG3key_So17CGAffineTransformV5valuetMR);
        (*(*(v45 - 8) + 56))(v9, 1, 1, v45);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v48 + 8 * v17);
      ++v16;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void closure #1 in Canvas.startCheckingForOldEraserStrokes()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    Canvas.removeOldEraserStrokes()();
  }
}

uint64_t closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v9 = type metadata accessor for Capsule();
  v8[11] = v9;
  v10 = type metadata accessor for Optional();
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), 0, 0);
}

uint64_t closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 144) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 120);
    v4 = *(v0 + 88);
    Capsule<>.paperWithRemovedEraserStrokes(createdBefore:)(*(v0 + 56), v4, *(v0 + 80), v2);
    if ((*(v3 + 48))(v2, 1, v4) == 1)
    {
      (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
      *(v0 + 160) = type metadata accessor for MainActor();
      *(v0 + 168) = static MainActor.shared.getter();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
      v7 = v6;
      v8 = closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:);
    }

    else
    {
      (*(*(v0 + 120) + 32))(*(v0 + 136), *(v0 + 112), *(v0 + 88));
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, logger);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1D38C4000, v12, v13, "Removed old eraser stroke(s)", v14, 2u);
        MEMORY[0x1DA6D0660](v14, -1, -1);
      }

      *(v0 + 200) = 3;
      type metadata accessor for MainActor();
      *(v0 + 152) = static MainActor.shared.getter();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
      v7 = v15;
      v8 = closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:);
    }

    return MEMORY[0x1EEE6DFA0](v8, v5, v7);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

{
  v1 = *(v0 + 136);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);

  AnyCanvas.merge<A>(_:from:)(v1, (v0 + 200), v3, v2);

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), 0, 0);
}

{
  (*(v0[15] + 8))(v0[17], v0[11]);
  v0[20] = type metadata accessor for MainActor();
  v0[21] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), v2, v1);
}

{
  v1 = *(v0 + 144);

  *(v0 + 176) = *(v1 + direct field offset for Canvas.eraserCheckingIndex);

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), 0, 0);
}

{
  v1 = *(v0 + 128);

  CanvasElementView.canvasElement.getter(v1);

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), 0, 0);
}

{
  if (Capsule<>.hasAnyEraserStrokes()(v0[11], v0[10]))
  {
    v1 = v0[18];
    (*(v0[15] + 8))(v0[16], v0[11]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[24] = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), v5, v4);
  }
}

{
  v1 = *(v0 + 176);

  Canvas.stopCheckingForOldEraserStrokes(index:)(v1);

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), 0, 0);
}

{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 88);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:)(uint64_t a1)
{
  *(v1 + 184) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeEraserStrokesCreatedBefore(_:), v3, v2);
}

void closure #1 in Canvas.align(members:to:)(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v71 = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v17);
  v65 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v67 = v62 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v24 = v62 - v23;
  v25 = *MEMORY[0x1E695F050];
  v26 = *(MEMORY[0x1E695F050] + 8);
  v27 = *(MEMORY[0x1E695F050] + 16);
  v28 = *(MEMORY[0x1E695F050] + 24);
  v73.a = *MEMORY[0x1E695F050];
  v73.b = v26;
  v73.c = v27;
  v73.d = v28;
  v29 = a2 + 56;
  v30 = 1 << *(a2 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(a2 + 56);
  v33 = (v30 + 63) >> 6;
  v69 = v22 + 16;
  v78 = v22;
  v70 = (v22 + 8);
  swift_bridgeObjectRetain_n();
  v34 = 0;
  if (v32)
  {
    while (1)
    {
      v35 = v34;
LABEL_8:
      (*(v78 + 16))(v24, *(a2 + 48) + *(v78 + 72) * (__clz(__rbit64(v32)) | (v35 << 6)), v17);
      closure #1 in closure #1 in Canvas.align(members:to:)(&v73.a, &v74);
      if (v10)
      {
        break;
      }

      v32 &= v32 - 1;
      (*v70)(v24, v17);
      v25 = v74;
      v26 = v75;
      v27 = v76;
      v28 = v77;
      v73.a = v74;
      v73.b = v75;
      v73.c = v76;
      v73.d = v77;
      v34 = v35;
      if (!v32)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v35 >= v33)
      {
        break;
      }

      v32 = *(v29 + 8 * v35);
      ++v34;
      if (v32)
      {
        goto LABEL_8;
      }
    }

    v62[1] = v10;

    v79.origin.x = a3;
    v79.origin.y = a4;
    v79.size.width = a5;
    v79.size.height = a6;
    MinX = CGRectGetMinX(v79);
    v68 = a6;
    v37 = MinX;
    v80.origin.x = v25;
    v80.origin.y = v26;
    v80.size.width = v27;
    v80.size.height = v28;
    v38 = v37 - CGRectGetMinX(v80);
    v81.origin.x = a3;
    v81.origin.y = a4;
    v81.size.width = a5;
    v81.size.height = v68;
    MinY = CGRectGetMinY(v81);
    v82.origin.x = v25;
    v82.origin.y = v26;
    v82.size.width = v27;
    v82.size.height = v28;
    v40 = CGRectGetMinY(v82);
    CGAffineTransformMakeTranslation(&v73, v38, MinY - v40);
    v11 = 0;
    v64 = *&v73.c;
    v63 = *&v73.a;
    v41 = 1 << *(a2 + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & *(a2 + 56);
    tx = v73.tx;
    ty = v73.ty;
    v46 = (v41 + 63) >> 6;
    v66 = v78 + 32;
    v24 = v65;
    while (v43)
    {
LABEL_21:
      v58 = v78;
      v59 = v67;
      (*(v78 + 16))(v67, *(a2 + 48) + *(v78 + 72) * (__clz(__rbit64(v43)) | (v11 << 6)), v17);
      (*(v58 + 32))(v24, v59, v17);
      v56 = COERCE_DOUBLE(WeakTagged_10.subscript.modify());
      v61 = *(v60 + 24);
      if (v61)
      {
        v47 = v17;
        v48 = a2;
        v49 = *(v60 + 32);
        v50 = v60;
        v51 = *(v60 + 24);
        v68 = v56;
        __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
        v52 = *(v49 + 24);
        v53 = v49;
        a2 = v48;
        v17 = v47;
        v24 = v65;
        v54 = v52(v72, v61, v53);
        v83 = *v55;
        *&v73.c = v64;
        *&v73.a = v63;
        v73.tx = tx;
        v73.ty = ty;
        *v55 = CGRectApplyAffineTransform(v83, &v73);
        v54(v72, 0);
        v56 = v68;
      }

      (*&v56)(&v74, 0);
      v43 &= v43 - 1;
      (*v70)(v24, v17);
    }

    while (1)
    {
      v57 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v57 >= v46)
      {

        return;
      }

      v43 = *(v29 + 8 * v57);
      ++v11;
      if (v43)
      {
        v11 = v57;
        goto LABEL_21;
      }
    }

LABEL_25:
    __break(1u);
  }

  (*v70)(v24, v17);
  __break(1u);
}

void closure #1 in closure #1 in Canvas.align(members:to:)(CGFloat *a1@<X0>, CGFloat *a3@<X8>)
{
  x = *a1;
  y = a1[1];
  width = a1[2];
  height = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  WeakTagged_10.subscript.getter();
  v8 = v18;
  if (v18)
  {
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v10 = (*(*(v9 + 8) + 8))(v8);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit13CanvasElement_pSgMd, &_s8PaperKit13CanvasElement_pSgMR);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v22.origin.x = v10;
    v22.origin.y = v12;
    v22.size.width = v14;
    v22.size.height = v16;
    v21 = CGRectUnion(v20, v22);
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit13CanvasElement_pSgMd, &_s8PaperKit13CanvasElement_pSgMR);
  }

  *a3 = x;
  a3[1] = y;
  a3[2] = width;
  a3[3] = height;
}

void closure #1 in closure #1 in Canvas.canvasDescription.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  v14 = a3;
  v3 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGMd, &_s9Coherence3RefVy8PaperKit5ImageVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Image(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  Capsule.Ref.root.getter();
  if (swift_dynamicCast())
  {
    _s8PaperKit0A6MarkupVWOhTm_1(v10, type metadata accessor for Image);
    Capsule.Ref.rootID.getter();
    _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    Ref.init(id:)();
    v12 = Ref.subscript.modify();
    v15 = v13;
    v16 = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
    CRRegister.wrappedValue.setter();
    v12(v17, 0);
    (*(v5 + 8))(v7, v4);
  }
}

void closure #1 in Canvas.addWords(_:layout:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + direct field offset for Canvas.paperView);
  swift_beginAccess();
  type metadata accessor for Capsule();
  v5 = v4;
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
}

void closure #1 in closure #1 in Canvas.canvasCaption.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a3;
  v3 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGMd, &_s9Coherence3RefVy8PaperKit5ImageVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Image(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  Capsule.Ref.root.getter();
  if (swift_dynamicCast())
  {
    _s8PaperKit0A6MarkupVWOhTm_1(v10, type metadata accessor for Image);
    Capsule.Ref.rootID.getter();
    _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    Ref.init(id:)();
    v12 = Ref.subscript.modify();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
    v13 = CRRegister.wrappedValue.modify();
    v14 = v17;
    *v15 = v16;
    v15[1] = v14;

    v13(v18, 0);
    v12(v19, 0);
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t closure #1 in Canvas.initiateMagicGenerativePlayground(context:in:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  *(v11 + 33) = a11;
  *(v11 + 80) = a9;
  *(v11 + 88) = a10;
  *(v11 + 64) = a3;
  *(v11 + 72) = a4;
  *(v11 + 48) = a1;
  *(v11 + 56) = a2;
  *(v11 + 40) = a8;
  type metadata accessor for MainActor();
  *(v11 + 96) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v11 + 104) = v13;
  *(v11 + 112) = v12;

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.initiateMagicGenerativePlayground(context:in:), v13, v12);
}

uint64_t closure #1 in Canvas.initiateMagicGenerativePlayground(context:in:)()
{
  v31 = v0;
  v1 = *(v0 + 40);
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x468))();
  *(v0 + 120) = v3;
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  type metadata accessor for TiledTextView();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_9:

    v21 = *(v0 + 33);
    v22.n128_u64[0] = *(v0 + 64);
    v23.n128_u64[0] = *(v0 + 72);
    v24.n128_u64[0] = *(v0 + 48);
    v25.n128_u64[0] = *(v0 + 56);
    v26 = *(v0 + 40);
    v29 = *(v0 + 80);
    v30 = v21;
    (*((*v2 & *v26) + 0xAC8))(&v29, v24, v25, v22, v23);
    goto LABEL_10;
  }

  [*(v0 + 40) convertRect:v5 toCoordinateSpace:{*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72)}];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = TiledTextView.canvasGenerationToolOverlayController.getter();
  v15 = v14;
  v16 = *&v14[OBJC_IVAR____TtC8PaperKit37CanvasGenerationToolOverlayController_canvasGenerationToolController];
  if (v16)
  {
    v17 = *(v0 + 33);
    v18 = *(v16 + OBJC_IVAR____TtC8PaperKit30CanvasGenerationToolController_canvasGenerationTool);
    *(v0 + 128) = v18;
    v18;
    v28 = *(v0 + 80);

    *(v0 + 16) = v28;
    *(v0 + 32) = v17;
    v19 = swift_task_alloc();
    *(v0 + 136) = v19;
    *v19 = v0;
    v19[1] = closure #1 in Canvas.initiateMagicGenerativePlayground(context:in:);

    return CanvasGenerationTool.initiateMagicGenerativePlayground(context:in:canvas:invocation:)(v0 + 16, v1, 2, v7, v9, v11, v13);
  }

LABEL_10:
  v27 = *(v0 + 8);

  return v27();
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 128);
  }

  else
  {
  }

  v4 = *(v2 + 104);
  v5 = *(v2 + 112);

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.initiateMagicGenerativePlayground(context:in:), v4, v5);
}

{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in Canvas.removeImageBackground(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = type metadata accessor for Image(0);
  v6[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  v6[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeImageBackground(for:), 0, 0);
}

uint64_t closure #1 in Canvas.removeImageBackground(for:)()
{
  v2 = v0[29];
  v1 = v0[30];
  Capsule.root.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  CRRegister.wrappedValue.getter();
  _s8PaperKit0A6MarkupVWOhTm_1(v2, type metadata accessor for Image);
  v3 = type metadata accessor for CRAssetOrData(0);
  if ((*(*(v3 - 8) + 48))(v1, 1, v3) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v0[30], &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[31] = v6;
    *v6 = v0;
    v6[1] = closure #1 in Canvas.removeImageBackground(for:);

    return CRAssetOrData.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:)(0x7FFFFFFFFFFFFFFFLL, 1, 0);
  }
}

{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = closure #1 in Canvas.removeImageBackground(for:);
  }

  else
  {

    v2 = closure #1 in Canvas.removeImageBackground(for:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 64);
  *(v0 + 288) = v1;
  v21 = *(v0 + 88);
  v22 = *(v0 + 72);
  if ((static Task<>.isCancelled.getter() & 1) != 0 || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {

    goto LABEL_7;
  }

  if (!v1)
  {

    goto LABEL_7;
  }

  v3 = v1;
  v4 = CGImageRef.imageData(compressionQuality:asPng:)(1, 0.9);
  *(v0 + 296) = v4;
  *(v0 + 304) = v5;
  if (v5 >> 60 == 15)
  {
    v6 = *(v0 + 256);

LABEL_7:

    v7 = *(v0 + 8);

    return v7();
  }

  v9 = v4;
  v10 = v5;
  v11 = *(v0 + 256);
  v12 = *(v0 + 192);
  (*(*(v0 + 208) + 16))(*(v0 + 216), *(v0 + 176), *(v0 + 200));
  v13 = swift_task_alloc();
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = v11;
  *(v13 + 48) = v1;
  *(v13 + 72) = v21;
  *(v13 + 56) = v22;
  Capsule.callAsFunction<A>(_:)();

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 312) = v14;
  if (!v14)
  {
    v17 = *(v0 + 256);

    v19 = *(v0 + 208);
    v18 = *(v0 + 216);
    v20 = *(v0 + 200);
    outlined consume of Data?(*(v0 + 296), *(v0 + 304));
    (*(v19 + 8))(v18, v20);
    goto LABEL_7;
  }

  type metadata accessor for MainActor();
  *(v0 + 320) = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeImageBackground(for:), v16, v15);
}

{
  v1 = v0[39];
  v3 = v0[27];
  v2 = v0[28];

  v4 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_4(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  v0[4] = v2;
  v0[5] = v4;
  v0[6] = v1;
  v0[7] = v3;
  Canvas.undoable(newChange:persistSelection:action:)(0, 0, partial apply for closure #1 in Canvas.mergeUndoable<A>(_:));

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeImageBackground(for:), 0, 0);
}

{
  v1 = *(v0 + 256);

  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 200);
  outlined consume of Data?(*(v0 + 296), *(v0 + 304));
  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in Canvas.removeImageBackground(for:)(uint64_t a1)
{
  v2 = *(*v1 + 240);
  *(*v1 + 256) = a1;

  _s8PaperKit0A6MarkupVWOhTm_1(v2, type metadata accessor for CRAssetOrData);

  return MEMORY[0x1EEE6DFA0](closure #1 in Canvas.removeImageBackground(for:), 0, 0);
}

uint64_t closure #1 in Canvas.removeImageBackground(for:)(__n128 a1)
{
  v2 = v1[32];
  if (v2)
  {
    if ((static Task<>.isCancelled.getter() & 1) == 0)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {

        v4 = swift_task_alloc();
        v1[33] = v4;
        *(v4 + 16) = v2;
        v5 = swift_task_alloc();
        v1[34] = v5;
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10CGImageRefaSg_So6CGRectVtMd, &_sSo10CGImageRefaSg_So6CGRectVtMR);
        *v5 = v1;
        v5[1] = closure #1 in Canvas.removeImageBackground(for:);

        return MEMORY[0x1EEE6DE38](v1 + 8, 0, 0, 0xD00000000000001BLL, 0x80000001D4091D00, partial apply for closure #1 in closure #1 in Canvas.removeImageBackground(for:), v4, v6);
      }
    }
  }

  v7 = v1[1];

  return v7();
}

void closure #1 in closure #1 in Canvas.removeImageBackground(for:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSg_So6CGRectVts5Error_pGMd, &_sScCySo10CGImageRefaSg_So6CGRectVts5Error_pGMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = aBlock - v6;
  (*(v4 + 16))(aBlock - v6, a1, v3, v5);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v7, v3);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in Canvas.removeImageBackground(for:);
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CGImageRef?, @unowned CGRect, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_351;
  v10 = _Block_copy(aBlock);

  vk_cgImageRemoveBackground();
  _Block_release(v10);
}

uint64_t closure #1 in closure #1 in closure #1 in Canvas.removeImageBackground(for:)(void *a1, id a2, double a3, double a4, double a5, double a6)
{
  if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSg_So6CGRectVts5Error_pGMd, &_sScCySo10CGImageRefaSg_So6CGRectVts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSg_So6CGRectVts5Error_pGMd, &_sScCySo10CGImageRefaSg_So6CGRectVts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed CGImageRef?, @unowned CGRect, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = *(a1 + 32);

  v15 = a2;
  v14 = a3;
  v13(a2, a3, a4, a5, a6, a7);
}

uint64_t closure #2 in closure #1 in Canvas.removeImageBackground(for:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, CGImage *a5, double *a6)
{
  v47 = *&a5;
  v48 = a1;
  v8 = a6[1];
  v9 = a6[2];
  v10 = a6[3];
  v11 = a6[4];
  v12 = type metadata accessor for Image(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  outlined copy of Data._Representation(a2, a3);

  CRAsset.init(data:assetManager:)();
  v21 = type metadata accessor for CRAssetOrData(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  v22 = Capsule.Ref.root.modify();
  outlined init with copy of Date?(v20, v17, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s8PaperKit13CRAssetOrDataOSgMd, &_s8PaperKit13CRAssetOrDataOSgMR);
  v22(v53, 0);
  v23 = *&v47;
  Width = CGImageGetWidth(*&v47);
  Height = CGImageGetHeight(v23);
  v54.origin.x = v8;
  v54.origin.y = v9;
  v54.size.width = v10;
  v54.size.height = v11;
  v26 = CGRectGetWidth(v54);
  v55.origin.x = 0.0;
  v55.origin.y = 0.0;
  v55.size.width = Width;
  v55.size.height = Height;
  v27 = v26 / CGRectGetWidth(v55);
  v56.origin.x = v8;
  v56.origin.y = v9;
  v56.size.width = v10;
  v56.size.height = v11;
  v28 = CGRectGetHeight(v56);
  v57.origin.x = 0.0;
  v57.origin.y = 0.0;
  v57.size.width = Width;
  v57.size.height = Height;
  v29 = v28 / CGRectGetHeight(v57);
  v58.origin.x = 0.0;
  v58.origin.y = 0.0;
  v58.size.width = Width;
  v58.size.height = Height;
  v30 = v8 / CGRectGetWidth(v58);
  v45 = v30;
  v59.origin.x = 0.0;
  v59.origin.y = 0.0;
  v59.size.width = Width;
  v59.size.height = Height;
  v31 = v9 / CGRectGetHeight(v59);
  Capsule.Ref.root.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  _s8PaperKit0A6MarkupVWOhTm_1(v14, type metadata accessor for Image);
  v32 = *v53;
  v33 = *&v53[1];
  v34 = *&v53[2];
  v35 = *&v53[3];
  v60.origin.x = v30;
  v60.origin.y = v31;
  v46 = v31;
  v60.size.width = v27;
  v60.size.height = v29;
  v36 = CGRectGetWidth(v60);
  v61.origin.x = v32;
  v61.origin.y = v33;
  v61.size.width = v34;
  v61.size.height = v35;
  v47 = v36 * CGRectGetWidth(v61);
  v37 = v45;
  v62.origin.x = v45;
  v62.origin.y = v31;
  v62.size.width = v27;
  v62.size.height = v29;
  v38 = CGRectGetHeight(v62);
  v63.origin.x = v32;
  v63.origin.y = v33;
  v63.size.width = v34;
  v63.size.height = v35;
  v39 = v38 * CGRectGetHeight(v63);
  v64.origin.x = v32;
  v64.origin.y = v33;
  v64.size.width = v34;
  v64.size.height = v35;
  v40 = v32 + v37 * CGRectGetWidth(v64);
  v65.origin.x = v32;
  v65.origin.y = v33;
  v65.size.width = v34;
  v65.size.height = v35;
  v41 = v33 + v46 * CGRectGetHeight(v65);
  v42 = Capsule.Ref.root.modify();
  v49 = v40;
  v50 = v41;
  v51 = v47;
  v52 = v39;
  CRRegister.wrappedValue.setter();
  return v42(v53, 0);
}

uint64_t closure #2 in Canvas.removeImageBackground(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](closure #2 in Canvas.removeImageBackground(for:), v7, v6);
}

uint64_t closure #2 in Canvas.removeImageBackground(for:)(uint64_t a1)
{
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = closure #2 in Canvas.removeImageBackground(for:);

  return specialized Clock.sleep(for:tolerance:)(5000000000000000000, 0, 0, 0, 1);
}

uint64_t closure #2 in Canvas.removeImageBackground(for:)()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = closure #2 in Canvas.removeImageBackground(for:);
  }

  else
  {
    v8 = closure #2 in Canvas.removeImageBackground(for:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

{
  v1 = *(v0 + 16);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x1DA6CD3C0](v1, MEMORY[0x1E69E7CA8] + 8, v2, MEMORY[0x1E69E7288]);

  v3 = *(v0 + 8);

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in Canvas.addFlags(_:strokeFlags:to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = a7;
  v54 = a8;
  v57 = a6;
  v9 = *a1;
  v64 = a1;
  v51 = v9;
  v10 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v49 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v48 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v50 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v47 - v20;
  v21 = a2 + 56;
  v22 = 1 << *(a2 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(a2 + 56);
  v25 = (v22 + 63) >> 6;
  v59 = v19 + 32;
  v60 = v19 + 16;
  v63 = v19;
  v58 = (v19 + 8);
  v67 = a2;

  v26 = 0;
  v56 = v15;
  v62 = v17;
  while (v24)
  {
LABEL_10:
    v28 = v63;
    v29 = v61;
    (*(v63 + 16))(v61, *(v67 + 48) + *(v63 + 72) * (__clz(__rbit64(v24)) | (v26 << 6)), v15);
    (*(v28 + 32))(v17, v29, v15);
    v31 = WeakTagged_10.subscript.modify();
    v32 = *(v30 + 24);
    if (v32)
    {
      v33 = *(v30 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v30, *(v30 + 24));
      v15 = v56;
      v34 = (*(v33 + 104))(v65, v32, v33);
      *v35 |= v57;
      v34(v65, 0);
    }

    v31(v66, 0);
    v24 &= v24 - 1;
    v17 = v62;
    (*v58)(v62, v15);
  }

  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      return;
    }

    if (v27 >= v25)
    {
      break;
    }

    v24 = *(v21 + 8 * v27);
    ++v26;
    if (v24)
    {
      v26 = v27;
      goto LABEL_10;
    }
  }

  v37 = v55;
  if (v55)
  {
    MEMORY[0x1EEE9AC00](v36);
    v38 = (v51 + *MEMORY[0x1E6995440]);
    *(&v47 - 4) = *v38;
    v39 = v54;
    *(&v47 - 3) = v38[1];
    *(&v47 - 2) = v39;
    swift_getKeyPath();
    v40 = v50;
    Capsule.Ref.subscript.getter();

    v41 = v52;
    v42 = v53;
    if ((*(v52 + 48))(v40, 1, v53))
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
    }

    else
    {
      v43 = v48;
      (*(v41 + 16))(v48, v40, v42);
      outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
      v44 = v49;
      v45 = v64;
      Ref.subscript.getter();
      v46 = (*(v41 + 8))(v43, v42);
      MEMORY[0x1EEE9AC00](v46);
      *(&v47 - 4) = v39;
      *(&v47 - 3) = v45;
      *(&v47 - 2) = v37;
      PKDrawingStruct.visitStrokes<A>(in:_:)(v45, partial apply for closure #1 in closure #1 in Canvas.addFlags(_:strokeFlags:to:), (&v47 - 6));
      _s8PaperKit0A6MarkupVWOhTm_1(v44, type metadata accessor for PKDrawingStruct);
    }
  }
}

uint64_t closure #1 in closure #1 in Canvas.addFlags(_:strokeFlags:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26[-v15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  Ref.subscript.getter();
  CRRegister.value.getter();
  (*(v11 + 8))(v13, v10);
  _s8PaperKit13CRAssetOrDataOWObTm_0(v9, v6, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload())
  {
    _s8PaperKit0A6MarkupVWOhTm_1(v6, type metadata accessor for TaggedStroke);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
    v19 = *(v18 - 8);
    (*(v19 + 32))(v16, v6, v18);
    (*(v19 + 56))(v16, 0, 1, v18);
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v16, 1, v20) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMR);
  }

  v23 = Ref.subscript.modify();
  type metadata accessor for PKStrokeStruct(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd, &_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMR);
  v24 = CRRegister.wrappedValue.modify();
  *v25 &= a3;
  v24(v26, 0);
  v23(v27, 0);
  return (*(v21 + 8))(v16, v20);
}