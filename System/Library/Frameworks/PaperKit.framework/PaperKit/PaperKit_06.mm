uint64_t @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned CGImageRef?, @unowned CGImageRef?) -> () with result type (CGImageRef?, CGImageRef?)(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40);
  *v5 = a2;
  v5[1] = a3;
  v6 = a2;
  v7 = a3;

  return swift_continuation_resume();
}

uint64_t @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ()(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return swift_continuation_resume();
}

uint64_t @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?) -> () with result type UIImage?(uint64_t a1, void *a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;
  v3 = a2;

  return swift_continuation_resume();
}

uint64_t specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  *(v8 + 376) = a3;
  *(v8 + 384) = a4;
  *(v8 + 368) = a2;
  *(v8 + 352) = a7;
  *(v8 + 360) = a8;
  *(v8 + 336) = a5;
  *(v8 + 344) = a6;
  *(v8 + 328) = a1;
  v9 = type metadata accessor for PKDrawing();
  *(v8 + 392) = v9;
  *(v8 + 400) = *(v9 - 8);
  *(v8 + 408) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  *(v8 + 376) = a3;
  *(v8 + 384) = a4;
  *(v8 + 368) = a2;
  *(v8 + 352) = a7;
  *(v8 + 360) = a8;
  *(v8 + 336) = a5;
  *(v8 + 344) = a6;
  *(v8 + 328) = a1;
  v9 = type metadata accessor for PKDrawing();
  *(v8 + 392) = v9;
  *(v8 + 400) = *(v9 - 8);
  *(v8 + 408) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

uint64_t specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)()
{
  v48 = v0;
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  [*(v0 + 328) bounds];
  v54.origin.x = v4;
  v54.origin.y = v3;
  v54.size.width = v2;
  v54.size.height = v1;
  v51 = CGRectIntersection(v50, v54);
  x = v51.origin.x;
  y = v51.origin.y;
  width = v51.size.width;
  height = v51.size.height;
  if (CGRectIsEmpty(v51))
  {

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    Type = CGContextGetType();
    if (Type == 1 || Type == 6)
    {
      v14 = *(v0 + 368);
      v13 = *(v0 + 376);
      v15 = *(v0 + 328);
      CGContextGetCTM(&v47, v14);
      a = v47.a;
      b = v47.b;
      v18 = CGContextGetType();
      *(v0 + 288) = x;
      *(v0 + 296) = y;
      *(v0 + 304) = width;
      *(v0 + 312) = height;
      *(v0 + 320) = 0;
      v19 = *v13;
      v20 = v13[1];
      *(v0 + 24) = 0;
      *(v0 + 139) = 0;
      *(v0 + 18) = 0;
      *(v0 + 32) = 0;
      *(v0 + 40) = 0u;
      *(v0 + 56) = 0u;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
      *(v0 + 121) = 0u;
      *(v0 + 72) = 1;
      *(v0 + 80) = 0;
      *(v0 + 88) = 0;
      *(v0 + 16) = v19;
      *(v0 + 17) = v20;
      *(v0 + 137) = 0;
      v21 = CGBitmapContextGetColorSpace(v14);
      if (v21)
      {
        v22 = v21;
        if (CGColorSpaceUsesExtendedRange(v21))
        {
          v23 = 1;
        }

        else
        {
          v23 = MEMORY[0x1DA6CEC30](v22);
        }
      }

      else
      {
        v23 = 0;
      }

      v41 = v18 == 6 || v18 == 1;
      *(v0 + 140) = v23;
      v42 = sqrt(a * a + b * b);
      v43 = 1.0;
      if (v41)
      {
        v43 = 2.0;
      }

      v44 = v42 * v43;
      v45 = swift_task_alloc();
      *(v0 + 416) = v45;
      *v45 = v0;
      v45[1] = specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
      v46 = *(v0 + 368);

      return specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:)(v15, v0 + 288, v46, v0 + 16, v44);
    }

    else
    {
      v24 = *(v0 + 368);
      v25 = *(v0 + 376);
      CGContextSaveGState(v24);
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      MinY = CGRectGetMinY(v52);
      v53.origin.x = x;
      v53.origin.y = y;
      v53.size.width = width;
      v53.size.height = height;
      MaxY = CGRectGetMaxY(v53);
      *(v0 + 144) = 0x3FF0000000000000;
      *(v0 + 152) = 0;
      *(v0 + 160) = 0;
      *(v0 + 176) = 0;
      *(v0 + 184) = 0;
      *(v0 + 168) = 0x3FF0000000000000;
      *(v0 + 192) = 0x3FF0000000000000;
      *(v0 + 200) = 0;
      *(v0 + 208) = 0;
      *(v0 + 216) = xmmword_1D405A660;
      *(v0 + 232) = MinY + MaxY;
      CGAffineTransformConcat(&v47, (v0 + 144), (v0 + 192));
      v28 = *&v47.c;
      v29 = *&v47.tx;
      *(v0 + 240) = *&v47.a;
      *(v0 + 256) = v28;
      *(v0 + 272) = v29;
      CGContextConcatCTM(v24, (v0 + 240));
      static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = *(v25 + 1);
      v31 = swift_task_alloc();
      *(v0 + 424) = v31;
      *v31 = v0;
      v31[1] = specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
      v40 = *(v0 + 368);
      v32.n128_f64[0] = x;
      v33.n128_f64[0] = y;
      v34.n128_f64[0] = width;
      v35.n128_f64[0] = height;
      v36.n128_f64[0] = x;
      v37.n128_f64[0] = y;
      v38.n128_f64[0] = width;
      v39.n128_f64[0] = height;

      return MEMORY[0x1EEDD58B0](0, 0, v40, v30, v32, v33, v34, v35, v36, v37, v38, v39);
    }
  }
}

{

  return MEMORY[0x1EEE6DFA0](specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  outlined destroy of PaperRenderableOptions(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 392);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  CGContextRestoreGState(*(v0 + 368));

  v1 = *(v0 + 8);

  return v1();
}

{
  v48 = v0;
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  [*(v0 + 328) bounds];
  v54.origin.x = v4;
  v54.origin.y = v3;
  v54.size.width = v2;
  v54.size.height = v1;
  v51 = CGRectIntersection(v50, v54);
  x = v51.origin.x;
  y = v51.origin.y;
  width = v51.size.width;
  height = v51.size.height;
  if (CGRectIsEmpty(v51))
  {

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    Type = CGContextGetType();
    if (Type == 1 || Type == 6)
    {
      v14 = *(v0 + 368);
      v13 = *(v0 + 376);
      v15 = *(v0 + 328);
      CGContextGetCTM(&v47, v14);
      a = v47.a;
      b = v47.b;
      v18 = CGContextGetType();
      *(v0 + 288) = x;
      *(v0 + 296) = y;
      *(v0 + 304) = width;
      *(v0 + 312) = height;
      *(v0 + 320) = 0;
      v19 = *v13;
      v20 = v13[1];
      *(v0 + 24) = 0;
      *(v0 + 139) = 0;
      *(v0 + 18) = 0;
      *(v0 + 32) = 0;
      *(v0 + 40) = 0u;
      *(v0 + 56) = 0u;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
      *(v0 + 121) = 0u;
      *(v0 + 72) = 1;
      *(v0 + 80) = 0;
      *(v0 + 88) = 0;
      *(v0 + 16) = v19;
      *(v0 + 17) = v20;
      *(v0 + 137) = 0;
      v21 = CGBitmapContextGetColorSpace(v14);
      if (v21)
      {
        v22 = v21;
        if (CGColorSpaceUsesExtendedRange(v21))
        {
          v23 = 1;
        }

        else
        {
          v23 = MEMORY[0x1DA6CEC30](v22);
        }
      }

      else
      {
        v23 = 0;
      }

      v41 = v18 == 6 || v18 == 1;
      *(v0 + 140) = v23;
      v42 = sqrt(a * a + b * b);
      v43 = 1.0;
      if (v41)
      {
        v43 = 2.0;
      }

      v44 = v42 * v43;
      v45 = swift_task_alloc();
      *(v0 + 416) = v45;
      *v45 = v0;
      v45[1] = specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
      v46 = *(v0 + 368);

      return specialized CanvasElement.renderDrawing(_:bounds:scale:in:options:)(v15, v0 + 288, v46, v0 + 16, v44);
    }

    else
    {
      v24 = *(v0 + 368);
      v25 = *(v0 + 376);
      CGContextSaveGState(v24);
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      MinY = CGRectGetMinY(v52);
      v53.origin.x = x;
      v53.origin.y = y;
      v53.size.width = width;
      v53.size.height = height;
      MaxY = CGRectGetMaxY(v53);
      *(v0 + 144) = 0x3FF0000000000000;
      *(v0 + 152) = 0;
      *(v0 + 160) = 0;
      *(v0 + 176) = 0;
      *(v0 + 184) = 0;
      *(v0 + 168) = 0x3FF0000000000000;
      *(v0 + 192) = 0x3FF0000000000000;
      *(v0 + 200) = 0;
      *(v0 + 208) = 0;
      *(v0 + 216) = xmmword_1D405A660;
      *(v0 + 232) = MinY + MaxY;
      CGAffineTransformConcat(&v47, (v0 + 144), (v0 + 192));
      v28 = *&v47.c;
      v29 = *&v47.tx;
      *(v0 + 240) = *&v47.a;
      *(v0 + 256) = v28;
      *(v0 + 272) = v29;
      CGContextConcatCTM(v24, (v0 + 240));
      static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = *(v25 + 1);
      v31 = swift_task_alloc();
      *(v0 + 424) = v31;
      *v31 = v0;
      v31[1] = specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
      v40 = *(v0 + 368);
      v32.n128_f64[0] = x;
      v33.n128_f64[0] = y;
      v34.n128_f64[0] = width;
      v35.n128_f64[0] = height;
      v36.n128_f64[0] = x;
      v37.n128_f64[0] = y;
      v38.n128_f64[0] = width;
      v39.n128_f64[0] = height;

      return MEMORY[0x1EEDD58B0](0, 0, v40, v30, v32, v33, v34, v35, v36, v37, v38, v39);
    }
  }
}

{

  return MEMORY[0x1EEE6DFA0](specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 392);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  v47 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  [*(v0 + 200) bounds];
  v53.origin.x = v4;
  v53.origin.y = v3;
  v53.size.width = v2;
  v53.size.height = v1;
  v50 = CGRectIntersection(v49, v53);
  x = v50.origin.x;
  y = v50.origin.y;
  width = v50.size.width;
  height = v50.size.height;
  if (CGRectIsEmpty(v50))
  {

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    Type = CGContextGetType();
    if (Type == 1 || Type == 6)
    {
      v13 = *(v0 + 264);
      v14 = *(v0 + 248);
      v15 = *(v0 + 200);
      CGContextGetCTM(&v45, *(v0 + 240));
      v16 = sqrt(vaddvq_f64(vmulq_f64(*&v45.a, *&v45.a)));
      v17 = CGContextGetType();
      v18 = v17 == 6 || v17 == 1;
      v19 = 1.0;
      if (v18)
      {
        v19 = 2.0;
      }

      v20 = v16 * v19;
      *(v0 + 160) = x;
      *(v0 + 168) = y;
      *(v0 + 176) = width;
      *(v0 + 184) = height;
      *(v0 + 192) = 0;
      v46 = specialized CanvasElement.renderDrawing(_:bounds:scale:in:useSixChannelBlending:darkMode:debug:);
      v21 = *v14;
      v22 = v14[1];
      v23 = swift_task_alloc();
      *(v0 + 304) = v23;
      v24 = *(v13 + 8);
      *v23 = v0;
      v23[1] = specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
      v25 = *(v0 + 256);
      v26 = *(v0 + 240);
      v27 = v46;

      return v27(v15, v0 + 160, v26, v21, v22, 0, v25, v24, v20);
    }

    else
    {
      v28 = *(v0 + 240);
      v29 = *(v0 + 248);
      CGContextSaveGState(v28);
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      MinY = CGRectGetMinY(v51);
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      MaxY = CGRectGetMaxY(v52);
      *(v0 + 16) = 0x3FF0000000000000;
      *(v0 + 24) = 0;
      *(v0 + 32) = 0;
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 40) = 0x3FF0000000000000;
      *(v0 + 64) = 0x3FF0000000000000;
      *(v0 + 72) = 0;
      *(v0 + 80) = 0;
      *(v0 + 88) = xmmword_1D405A660;
      *(v0 + 104) = MinY + MaxY;
      CGAffineTransformConcat(&v45, (v0 + 16), (v0 + 64));
      v32 = *&v45.c;
      v33 = *&v45.tx;
      *(v0 + 112) = *&v45.a;
      *(v0 + 128) = v32;
      *(v0 + 144) = v33;
      CGContextConcatCTM(v28, (v0 + 112));
      static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = *(v29 + 1);
      v35 = swift_task_alloc();
      *(v0 + 296) = v35;
      *v35 = v0;
      v35[1] = specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:);
      v44 = *(v0 + 240);
      v36.n128_f64[0] = x;
      v37.n128_f64[0] = y;
      v38.n128_f64[0] = width;
      v39.n128_f64[0] = height;
      v40.n128_f64[0] = x;
      v41.n128_f64[0] = y;
      v42.n128_f64[0] = width;
      v43.n128_f64[0] = height;

      return MEMORY[0x1EEDD58B0](0, 0, v44, v34, v36, v37, v38, v39, v40, v41, v42, v43);
    }
  }
}

{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](specialized renderDrawingInContext #1 <A><A1>(_:) in ContainerCanvasElement.renderSubelements<A>(in:capsule:options:), 0, 0);
}

{
  CGContextRestoreGState(*(v0 + 240));

  v1 = *(v0 + 8);

  return v1();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t specialized ContainerCanvasElement.drawingIndexableTextContent<A>(in:)(uint64_t a1)
{
  v34 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMR);
  v1 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v3 = &v34 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  v11 = off_1F4F62930;
  type metadata accessor for Paper(0);
  v12 = v11();
  v13 = v8;
  if ((*(v8 + 48))(v6, 1, v7, v12) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
    return MEMORY[0x1E69E7CC0];
  }

  (*(v8 + 32))(v10, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKDrawingStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMR, MEMORY[0x1E69953B8]);
  Capsule.encapsulateTransient<A>(_:)();
  v14 = type metadata accessor for PKDrawingCoherence(0);
  v15 = objc_allocWithZone(v14);
  v16 = v35;
  (*(v1 + 16))(v15 + OBJC_IVAR___PKDrawingCoherence_model, v3, v35);
  v36.receiver = v15;
  v36.super_class = v14;
  v17 = objc_msgSendSuper2(&v36, sel_init, v34);
  (*(v1 + 8))(v3, v16);
  v18 = v17;
  [v18 setRecognitionEnabled_];
  v19 = [v18 indexableContent];

  if (!v19)
  {

    (*(v13 + 8))(v10, v7);
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit20IndexableTextContentVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit20IndexableTextContentVGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D4058CF0;
  v21 = [v19 indexableTextRepresentation];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v26 = [v19 presentableTextRepresentation];
  if (v26)
  {
    v35 = v25;
    v27 = v23;
    v28 = v13;
    v29 = v26;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v13 = v28;
    v23 = v27;
    v25 = v35;
  }

  else
  {
    v30 = 0;
    v32 = 0xE000000000000000;
  }

  *(v20 + 32) = v23;
  *(v20 + 40) = v25;
  *(v20 + 48) = v30;
  *(v20 + 56) = v32;

  (*(v13 + 8))(v10, v7);
  return v20;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v10 = *v2;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995228]);
  v31 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = a1;
    v28 = ~v12;
    v25 = v7;
    v15 = v7 + 16;
    v14 = *(v7 + 16);
    v16 = (v7 + 8);
    v17 = *(v15 + 56);
    v24[1] = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v18 = v14;
      v14(v9, *(v30 + 48) + v17 * v13, v6);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995230]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *v16;
      (*v16)(v9, v6);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v28;
      v14 = v18;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v3 = v26;
        a1 = v27;
        v7 = v25;
        goto LABEL_7;
      }
    }

    v20(v31, v6);
    v18(v27, *(v30 + 48) + v17 * v13, v6);
    return 0;
  }

  else
  {
    v14 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v31;
    v14(v9, v31, v6);
    v32 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    (*(v7 + 32))(a1, v22, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v10 = *v2;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E6995478]);
  v31 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = a1;
    v28 = ~v12;
    v25 = v7;
    v15 = v7 + 16;
    v14 = *(v7 + 16);
    v16 = (v7 + 8);
    v17 = *(v15 + 56);
    v24[1] = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v18 = v14;
      v14(v9, *(v30 + 48) + v17 * v13, v6);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E6995480]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *v16;
      (*v16)(v9, v6);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v28;
      v14 = v18;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v3 = v26;
        a1 = v27;
        v7 = v25;
        goto LABEL_7;
      }
    }

    v20(v31, v6);
    v18(v27, *(v30 + 48) + v17 * v13, v6);
    return 0;
  }

  else
  {
    v14 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v31;
    v14(v9, v31, v6);
    v32 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    (*(v7 + 32))(a1, v22, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v10 = *v2;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E69951D0]);
  v31 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = a1;
    v28 = ~v12;
    v25 = v7;
    v15 = v7 + 16;
    v14 = *(v7 + 16);
    v16 = (v7 + 8);
    v17 = *(v15 + 56);
    v24[1] = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v18 = v14;
      v14(v9, *(v30 + 48) + v17 * v13, v6);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E69951D8]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *v16;
      (*v16)(v9, v6);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v28;
      v14 = v18;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v3 = v26;
        a1 = v27;
        v7 = v25;
        goto LABEL_7;
      }
    }

    v20(v31, v6);
    v18(v27, *(v30 + 48) + v17 * v13, v6);
    return 0;
  }

  else
  {
    v14 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v31;
    v14(v9, v31, v6);
    v32 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    (*(v7 + 32))(a1, v22, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for CRKeyPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954C8]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954D0]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v10 = *v2;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953C8]);
  v31 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = a1;
    v28 = ~v12;
    v25 = v7;
    v15 = v7 + 16;
    v14 = *(v7 + 16);
    v16 = (v7 + 8);
    v17 = *(v15 + 56);
    v24[1] = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v18 = v14;
      v14(v9, *(v30 + 48) + v17 * v13, v6);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953D0]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *v16;
      (*v16)(v9, v6);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v28;
      v14 = v18;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v3 = v26;
        a1 = v27;
        v7 = v25;
        goto LABEL_7;
      }
    }

    v20(v31, v6);
    v18(v27, *(v30 + 48) + v17 * v13, v6);
    return 0;
  }

  else
  {
    v14 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v31;
    v14(v9, v31, v6);
    v32 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    (*(v7 + 32))(a1, v22, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for CRAsset();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995418]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995420]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for PKInkingTool.InkType();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type PKInkingTool.InkType and conformance PKInkingTool.InkType, MEMORY[0x1E6978358], MEMORY[0x1E6978360]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type PKInkingTool.InkType and conformance PKInkingTool.InkType, MEMORY[0x1E6978358], MEMORY[0x1E6978368]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for CalculateExpression();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC9Calculate0E10ExpressionC_Tt1g5(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      specialized _NativeSet.resize(capacity:)(v17 + 1);
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for CalculateExpression();
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CalculateExpression and conformance CalculateExpression, MEMORY[0x1E69921C8], MEMORY[0x1E69921D0]);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CalculateExpression and conformance CalculateExpression, MEMORY[0x1E69921C8], MEMORY[0x1E69921D8]);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, void *a2)
{
  v41 = a1;
  v56 = type metadata accessor for UnknownValueProperties();
  v4 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22UnknownValuePropertiesVSgMd, &_s9Coherence22UnknownValuePropertiesVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v39 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22UnknownValuePropertiesVSg_ADtMd, &_s9Coherence22UnknownValuePropertiesVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v51);
  v9 = &v39 - v8;
  v10 = type metadata accessor for Color(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v39 = (&v39 - v15);
  v40 = v2;
  v16 = *v2;
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type Color and conformance Color, type metadata accessor for Color, &protocol conformance descriptor for Color);
  v50 = v10;
  v17 = v16;
  v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v19 = v16 + 56;
  v20 = -1 << *(v16 + 32);
  v21 = v18 & ~v20;
  v22 = *(v16 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21;
  v52 = a2;
  if ((v22 & 1) == 0)
  {
LABEL_12:
    v34 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v52;
    v37 = v39;
    outlined init with copy of ShapeType(v52, v39, type metadata accessor for Color);
    v57 = *v34;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v37, v21, isUniquelyReferenced_nonNull_native);
    *v34 = v57;
    outlined init with take of Shape(v36, v41, type metadata accessor for Color);
    return 1;
  }

  v54 = ~v20;
  type metadata accessor for CGColorRef(0);
  v55 = *a2;
  v48 = v16;
  v49 = (v4 + 48);
  v23 = (v4 + 32);
  v46 = (v4 + 8);
  v47 = v16 + 56;
  v24 = *(v11 + 72);
  v42 = v24;
  v43 = v23;
  while (1)
  {
    v26 = v24 * v21;
    outlined init with copy of ShapeType(*(v17 + 48) + v24 * v21, v13, type metadata accessor for Color);
    lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef, &protocol conformance descriptor for CGColorRef);
    if ((static _CFObject.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_5;
    }

    v27 = *(v50 + 20);
    v28 = *(v51 + 48);
    outlined init with copy of Date?(&v13[v27], v9, &_s9Coherence22UnknownValuePropertiesVSgMd, &_s9Coherence22UnknownValuePropertiesVSgMR);
    outlined init with copy of Date?(v52 + v27, &v9[v28], &_s9Coherence22UnknownValuePropertiesVSgMd, &_s9Coherence22UnknownValuePropertiesVSgMR);
    v29 = *v49;
    if ((*v49)(v9, 1, v56) == 1)
    {
      break;
    }

    outlined init with copy of Date?(v9, v53, &_s9Coherence22UnknownValuePropertiesVSgMd, &_s9Coherence22UnknownValuePropertiesVSgMR);
    if (v29(&v9[v28], 1, v56) == 1)
    {
      (*v46)(v53, v56);
      v17 = v48;
      goto LABEL_4;
    }

    v30 = v44;
    v31 = &v9[v28];
    v32 = v56;
    (*v43)(v44, v31, v56);
    lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type UnknownValueProperties and conformance UnknownValueProperties, MEMORY[0x1E6995350], MEMORY[0x1E6995360]);
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    v33 = *v46;
    (*v46)(v30, v32);
    v33(v53, v32);
    v24 = v42;
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence22UnknownValuePropertiesVSgMd, &_s9Coherence22UnknownValuePropertiesVSgMR);
    v19 = v47;
    v17 = v48;
    if (v45)
    {
      goto LABEL_15;
    }

LABEL_5:
    outlined destroy of Paper(v13, type metadata accessor for Color);
    v21 = (v21 + 1) & v54;
    if (((*(v19 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v25 = v29(&v9[v28], 1, v56);
  v17 = v48;
  if (v25 != 1)
  {
LABEL_4:
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence22UnknownValuePropertiesVSg_ADtMd, &_s9Coherence22UnknownValuePropertiesVSg_ADtMR);
    v19 = v47;
    goto LABEL_5;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence22UnknownValuePropertiesVSgMd, &_s9Coherence22UnknownValuePropertiesVSgMR);
LABEL_15:
  outlined destroy of Paper(v13, type metadata accessor for Color);
  outlined destroy of Paper(v52, type metadata accessor for Color);
  outlined init with copy of ShapeType(*(v17 + 48) + v26, v41, type metadata accessor for Color);
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(float *a1, float a2)
{
  v3 = a2;
  v5 = *v2;
  v6 = a2 == 0.0;
  v7 = 0.0;
  if (!v6)
  {
    v7 = v3;
  }

  v8 = MEMORY[0x1DA6CE7E0](*(*v2 + 40), LODWORD(v7), 4);
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v5 + 48);
      if (*(v12 + 4 * v10) == v3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    v3 = *(v12 + 4 * v10);
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v10, isUniquelyReferenced_nonNull_native, v3);
    *v2 = v15;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1DA6CE7F0](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  v5 = *v2;
  v6 = MEMORY[0x1DA6CE7F0](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for AnyCanvasElementView();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC8PaperKit20AnyCanvasElementViewC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1, &_ss11_SetStorageCy8PaperKit20AnyCanvasElementViewCGMd, &_ss11_SetStorageCy8PaperKit20AnyCanvasElementViewCGMR);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for AnyCanvasElementView();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo8PKStrokeC_Tt1g5Tm(v7, result + 1, &_ss11_SetStorageCySo8NSObjectCGMd, &_ss11_SetStorageCySo8NSObjectCGMR, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1, &_ss11_SetStorageCySo8NSObjectCGMd, &_ss11_SetStorageCySo8NSObjectCGMR);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo8PKStrokeC_Tt1g5Tm(v7, result + 1, &_ss11_SetStorageCySo7UIColorCGMd, &_ss11_SetStorageCySo7UIColorCGMR, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1, &_ss11_SetStorageCySo7UIColorCGMd, &_ss11_SetStorageCySo7UIColorCGMR);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKStroke, 0x1E69784D8);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo8PKStrokeC_Tt1g5Tm(v7, result + 1, &_ss11_SetStorageCySo8PKStrokeCGMd, &_ss11_SetStorageCySo8PKStrokeCGMR, &lazy cache variable for type metadata for PKStroke, 0x1E69784D8);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1, &_ss11_SetStorageCySo8PKStrokeCGMd, &_ss11_SetStorageCySo8PKStrokeCGMR);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKStroke, 0x1E69784D8);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Calculate0C10ExpressionCGMd, &_ss11_SetStorageCy9Calculate0C10ExpressionCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for CalculateExpression();
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CalculateExpression and conformance CalculateExpression, MEMORY[0x1E69921C8], MEMORY[0x1E69921D0]);

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
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
        v26 = (v16 - 1) & v16;
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

  return result;
}

{
  v2 = v1;
  v3 = type metadata accessor for Color(0);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8PaperKit5ColorVGMd, &_ss11_SetStorageCy8PaperKit5ColorVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v29 + 72);
      outlined init with copy of ShapeType(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, type metadata accessor for Color);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type Color and conformance Color, type metadata accessor for Color, &protocol conformance descriptor for Color);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v8 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = outlined init with take of Shape(v5, *(v8 + 48) + v15 * v19, type metadata accessor for Color);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
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
    *v2 = v8;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySfGMd, &_ss11_SetStorageCySfGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = v13 | (v6 << 6);
      v17 = *(v3 + 48);
      v18 = *(v17 + 4 * v16);
      if (v18 == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = *(v17 + 4 * v16);
      }

      result = MEMORY[0x1DA6CE7E0](*(v5 + 40), LODWORD(v19), 4);
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
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

        goto LABEL_29;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v18;
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
        goto LABEL_27;
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
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_27:

    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - v4;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Coherence14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_ss11_SetStorageCy9Coherence14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995228]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

{
  v2 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - v4;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_ss11_SetStorageCy9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E6995478]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

{
  v2 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - v4;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Coherence13WeakTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_ss11_SetStorageCy9Coherence13WeakTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E69951D0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

{
  v2 = v1;
  v33 = type metadata accessor for CRKeyPath();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Coherence9CRKeyPathVGMd, &_ss11_SetStorageCy9Coherence9CRKeyPathVGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954C8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

{
  v2 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - v4;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_ss11_SetStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953C8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySOGMd, &_ss11_SetStorageCySOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = MEMORY[0x1DA6CE7F0](*(v5 + 40), v16);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = MEMORY[0x1DA6CE7F0](*(v5 + 40), v16);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v33 = type metadata accessor for CRAsset();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Coherence7CRAssetVGMd, &_ss11_SetStorageCy9Coherence7CRAssetVGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995418]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

{
  v2 = v1;
  v33 = type metadata accessor for PKInkingTool.InkType();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9PencilKit12PKInkingToolV7InkTypeOGMd, &_ss11_SetStorageCy9PencilKit12PKInkingToolV7InkTypeOGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type PKInkingTool.InkType and conformance PKInkingTool.InkType, MEMORY[0x1E6978358], MEMORY[0x1E6978360]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + (v15 | (v8 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x1DA6CE810](v18);
      result = Hasher._finalize()();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v18;
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

        v4 = v3;
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

  return result;
}

{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v3;
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
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v7 + 40);
      v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = NSObject._rawHashValue(seed:)(v18);
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

        v4 = v27;
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

  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
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

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Calculate0C10ExpressionCGMd, &_ss11_SetStorageCy9Calculate0C10ExpressionCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v3;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for CalculateExpression();
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CalculateExpression and conformance CalculateExpression, MEMORY[0x1E69921C8], MEMORY[0x1E69921D0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero(v7, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = type metadata accessor for Color(0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8PaperKit5ColorVGMd, &_ss11_SetStorageCy8PaperKit5ColorVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      outlined init with take of Shape(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for Color);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type Color and conformance Color, type metadata accessor for Color, &protocol conformance descriptor for Color);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = outlined init with take of Shape(v5, *(v8 + 48) + v16 * v20, type metadata accessor for Color);
      ++*(v8 + 16);
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

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySfGMd, &_ss11_SetStorageCySfGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = v14 | (v6 << 6);
      v18 = *(v3 + 48);
      v19 = *(v18 + 4 * v17);
      if (v19 == 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = *(v18 + 4 * v17);
      }

      result = MEMORY[0x1DA6CE7E0](*(v5 + 40), LODWORD(v20), 4);
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Coherence14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_ss11_SetStorageCy9Coherence14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995228]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
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

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_ss11_SetStorageCy9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E6995478]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
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

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Coherence13WeakTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_ss11_SetStorageCy9Coherence13WeakTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E69951D0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
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

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

{
  v2 = v1;
  v36 = type metadata accessor for CRKeyPath();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Coherence9CRKeyPathVGMd, &_ss11_SetStorageCy9Coherence9CRKeyPathVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954C8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
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

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_ss11_SetStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953C8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
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

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySOGMd, &_ss11_SetStorageCySOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = MEMORY[0x1DA6CE7F0](*(v5 + 40), v17);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = MEMORY[0x1DA6CE7F0](*(v5 + 40), v17);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v36 = type metadata accessor for CRAsset();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Coherence7CRAssetVGMd, &_ss11_SetStorageCy9Coherence7CRAssetVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995418]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
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

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

{
  v2 = v1;
  v36 = type metadata accessor for PKInkingTool.InkType();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9PencilKit12PKInkingToolV7InkTypeOGMd, &_ss11_SetStorageCy9PencilKit12PKInkingToolV7InkTypeOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type PKInkingTool.InkType and conformance PKInkingTool.InkType, MEMORY[0x1E6978358], MEMORY[0x1E6978360]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
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

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v12 = result + 56;
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
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8PaperKit07FeatureA0V08InternalE0OGMd, &_ss11_SetStorageCy8PaperKit07FeatureA0V08InternalE0OGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x1DA6CE810](v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo15NSTextAlignmentVGMd, &_ss11_SetStorageCySo15NSTextAlignmentVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x1DA6CE810](v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySbGMd, &_ss11_SetStorageCySbGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + (v16 | (v8 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x1DA6CE810](v19);
      result = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v19;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC9Calculate0E10ExpressionC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9Calculate0C10ExpressionCGMd, &_ss11_SetStorageCy9Calculate0C10ExpressionCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for CalculateExpression();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CalculateExpression and conformance CalculateExpression, MEMORY[0x1E69921C8], MEMORY[0x1E69921D0]);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC8PaperKit20AnyCanvasElementViewC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8PaperKit20AnyCanvasElementViewCGMd, &_ss11_SetStorageCy8PaperKit20AnyCanvasElementViewCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for AnyCanvasElementView();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1, &_ss11_SetStorageCy8PaperKit20AnyCanvasElementViewCGMd, &_ss11_SetStorageCy8PaperKit20AnyCanvasElementViewCGMR);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo8PKStrokeC_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = static _SetStorage.convert(_:capacity:)();
    v23 = v10;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          specialized _NativeSet.resize(capacity:)(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = NSObject._rawHashValue(seed:)(*(v23 + 40));
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v10;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CalculateExpression();
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CalculateExpression and conformance CalculateExpression, MEMORY[0x1E69921C8], MEMORY[0x1E69921D0]);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v7;
  v30 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995228]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v18 = v7 + 16;
    v19 = v20;
    v21 = *(v18 + 56);
    do
    {
      v19(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995230]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v29;
  v24 = *v30;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v7;
  v30 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E6995478]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v18 = v7 + 16;
    v19 = v20;
    v21 = *(v18 + 56);
    do
    {
      v19(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E6995480]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v29;
  v24 = *v30;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v7;
  v30 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E69951D0]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v18 = v7 + 16;
    v19 = v20;
    v21 = *(v18 + 56);
    do
    {
      v19(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E69951D8]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v29;
  v24 = *v30;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = a1;
  v6 = type metadata accessor for CRKeyPath();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954C8]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8], MEMORY[0x1E69954D0]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v7;
  v30 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953C8]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v18 = v7 + 16;
    v19 = v20;
    v21 = *(v18 + 56);
    do
    {
      v19(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953D0]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v29;
  v24 = *v30;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = a1;
  v6 = type metadata accessor for CRAsset();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995418]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995420]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = a1;
  v6 = type metadata accessor for PKInkingTool.InkType();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type PKInkingTool.InkType and conformance PKInkingTool.InkType, MEMORY[0x1E6978358], MEMORY[0x1E6978360]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type PKInkingTool.InkType and conformance PKInkingTool.InkType, MEMORY[0x1E6978358], MEMORY[0x1E6978368]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  type metadata accessor for CalculateExpression();
  lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CalculateExpression and conformance CalculateExpression, MEMORY[0x1E69921C8], MEMORY[0x1E69921D0]);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CalculateExpression and conformance CalculateExpression, MEMORY[0x1E69921C8], MEMORY[0x1E69921D8]);
    do
    {
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4 & 1);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4 & 1;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x1DA6CE7F0](*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x1DA6CE7F0](*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(void *a1, unint64_t a2, char a3)
{
  v53 = type metadata accessor for UnknownValueProperties();
  v7 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22UnknownValuePropertiesVSgMd, &_s9Coherence22UnknownValuePropertiesVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v47 = &v36 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22UnknownValuePropertiesVSg_ADtMd, &_s9Coherence22UnknownValuePropertiesVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v46);
  v12 = &v36 - v11;
  v48 = type metadata accessor for Color(0);
  v13 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*v3 + 16);
  v17 = *(*v3 + 24);
  v49 = a1;
  v40 = v13;
  v41 = v3;
  if (v17 <= v16 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v16 + 1);
    }

    else
    {
      if (v17 > v16)
      {
        specialized _NativeSet.copy()();
        goto LABEL_19;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v16 + 1);
    }

    v18 = *v3;
    lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type Color and conformance Color, type metadata accessor for Color, &protocol conformance descriptor for Color);
    v19 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v18 + 32);
    a2 = v19 & ~v20;
    v52 = v18 + 56;
    if ((*(v18 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v51 = ~v20;
      type metadata accessor for CGColorRef(0);
      v50 = *a1;
      v37 = (v7 + 32);
      v42 = (v7 + 8);
      v43 = v18;
      v21 = *(v13 + 72);
      v44 = v21;
      v45 = (v7 + 48);
      do
      {
        outlined init with copy of ShapeType(*(v18 + 48) + v21 * a2, v15, type metadata accessor for Color);
        lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef, &protocol conformance descriptor for CGColorRef);
        if (static _CFObject.== infix(_:_:)())
        {
          v26 = *(v48 + 20);
          v27 = *(v46 + 48);
          outlined init with copy of Date?(&v15[v26], v12, &_s9Coherence22UnknownValuePropertiesVSgMd, &_s9Coherence22UnknownValuePropertiesVSgMR);
          outlined init with copy of Date?(v49 + v26, &v12[v27], &_s9Coherence22UnknownValuePropertiesVSgMd, &_s9Coherence22UnknownValuePropertiesVSgMR);
          v28 = *v45;
          if ((*v45)(v12, 1, v53) == 1)
          {
            v29 = v28(&v12[v27], 1, v53);
            v18 = v43;
            if (v29 == 1)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v30 = v47;
            outlined init with copy of Date?(v12, v47, &_s9Coherence22UnknownValuePropertiesVSgMd, &_s9Coherence22UnknownValuePropertiesVSgMR);
            if (v28(&v12[v27], 1, v53) != 1)
            {
              v22 = &v12[v27];
              v23 = v39;
              v24 = v53;
              (*v37)(v39, v22, v53);
              lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type UnknownValueProperties and conformance UnknownValueProperties, MEMORY[0x1E6995350], MEMORY[0x1E6995360]);
              v38 = dispatch thunk of static Equatable.== infix(_:_:)();
              v25 = *v42;
              (*v42)(v23, v24);
              v25(v47, v24);
              outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence22UnknownValuePropertiesVSgMd, &_s9Coherence22UnknownValuePropertiesVSgMR);
              v18 = v43;
              v21 = v44;
              if (v38)
              {
                goto LABEL_23;
              }

              goto LABEL_11;
            }

            (*v42)(v30, v53);
            v18 = v43;
          }

          outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence22UnknownValuePropertiesVSg_ADtMd, &_s9Coherence22UnknownValuePropertiesVSg_ADtMR);
          v21 = v44;
        }

LABEL_11:
        outlined destroy of Paper(v15, type metadata accessor for Color);
        a2 = (a2 + 1) & v51;
      }

      while (((*(v52 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_19:
  v31 = *v41;
  *(*v41 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of Shape(v49, *(v31 + 48) + *(v40 + 72) * a2, type metadata accessor for Color);
  v33 = *(v31 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
    __break(1u);
LABEL_22:
    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence22UnknownValuePropertiesVSgMd, &_s9Coherence22UnknownValuePropertiesVSgMR);
LABEL_23:
    outlined destroy of Paper(v15, type metadata accessor for Color);
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v31 + 16) = v35;
  }

  return result;
}

unint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(unint64_t result, char a2, float a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a2)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      specialized _NativeSet.copy()();
      result = v7;
      goto LABEL_14;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  v9 = 0.0;
  if (a3 != 0.0)
  {
    v9 = a3;
  }

  v10 = MEMORY[0x1DA6CE7E0](*(*v3 + 40), LODWORD(v9), 4);
  v11 = -1 << *(v8 + 32);
  result = v10 & ~v11;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v12 = ~v11;
    while (*(*(v8 + 48) + 4 * result) != a3)
    {
      result = (result + 1) & v12;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_17;
  }

LABEL_14:
  v13 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v13 + 48) + 4 * result) = a3;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_17:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](a1);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for NSTextAlignment(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1, &_ss11_SetStorageCy8PaperKit20AnyCanvasElementViewCGMd, &_ss11_SetStorageCy8PaperKit20AnyCanvasElementViewCGMR);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1, &_ss11_SetStorageCy8PaperKit20AnyCanvasElementViewCGMd, &_ss11_SetStorageCy8PaperKit20AnyCanvasElementViewCGMR);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for AnyCanvasElementView();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1, &_ss11_SetStorageCySo8NSObjectCGMd, &_ss11_SetStorageCySo8NSObjectCGMR);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1, &_ss11_SetStorageCySo8NSObjectCGMd, &_ss11_SetStorageCySo8NSObjectCGMR);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1, &_ss11_SetStorageCySo7UIColorCGMd, &_ss11_SetStorageCySo7UIColorCGMR);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1, &_ss11_SetStorageCySo7UIColorCGMd, &_ss11_SetStorageCySo7UIColorCGMR);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1, &_ss11_SetStorageCySo8PKStrokeCGMd, &_ss11_SetStorageCySo8PKStrokeCGMR);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1, &_ss11_SetStorageCySo8PKStrokeCGMd, &_ss11_SetStorageCySo8PKStrokeCGMR);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKStroke, 0x1E69784D8);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [AnyCanvas] and conformance [A], &_sSay8PaperKit9AnyCanvasCGMd, &_sSay8PaperKit9AnyCanvasCGMR, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit9AnyCanvasCGMd, &_sSay8PaperKit9AnyCanvasCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AnyCanvas(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [PKAttachmentView] and conformance [A], &_sSaySo16PKAttachmentViewCGMd, &_sSaySo16PKAttachmentViewCGMR, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16PKAttachmentViewCGMd, &_sSaySo16PKAttachmentViewCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PKMathRecognitionItemAttributes(0, lazy cache variable for type metadata for PKAttachmentView, 0x1E69783F0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [AnyCanvasElementView] and conformance [A], &_sSay8PaperKit20AnyCanvasElementViewCGMd, &_sSay8PaperKit20AnyCanvasElementViewCGMR, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit20AnyCanvasElementViewCGMd, &_sSay8PaperKit20AnyCanvasElementViewCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AnyCanvasElementView();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [CanvasElementResizeHandle] and conformance [A], &_sSay8PaperKit25CanvasElementResizeHandleCGMd, &_sSay8PaperKit25CanvasElementResizeHandleCGMR, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit25CanvasElementResizeHandleCGMd, &_sSay8PaperKit25CanvasElementResizeHandleCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CanvasElementResizeHandle();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [NSObject] and conformance [A], &_sSaySo8NSObjectCGMd, &_sSaySo8NSObjectCGMR, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSObjectCGMd, &_sSaySo8NSObjectCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [ReflowElement] and conformance [A], &_sSay8PaperKit13ReflowElementCGMd, _sSay8PaperKit13ReflowElementCGMR, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit13ReflowElementCGMd, _sSay8PaperKit13ReflowElementCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ReflowElement();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [CanvasElementPDFAnnotation] and conformance [A], &_sSay8PaperKit26CanvasElementPDFAnnotationCGMd, &_sSay8PaperKit26CanvasElementPDFAnnotationCGMR, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit26CanvasElementPDFAnnotationCGMd, &_sSay8PaperKit26CanvasElementPDFAnnotationCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CanvasElementPDFAnnotation(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [CHStrokeIdentifier] and conformance [A], &_sSaySo18CHStrokeIdentifier_pGMd, &_sSaySo18CHStrokeIdentifier_pGMR, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18CHStrokeIdentifier_pGMd, &_sSaySo18CHStrokeIdentifier_pGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CHStrokeIdentifier_pMd, &_sSo18CHStrokeIdentifier_pMR);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [UIMenu] and conformance [A], &_sSaySo6UIMenuCGMd, &_sSaySo6UIMenuCGMR, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6UIMenuCGMd, &_sSaySo6UIMenuCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [PDFAnnotation] and conformance [A], &_sSaySo13PDFAnnotationCGMd, &_sSaySo13PDFAnnotationCGMR, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13PDFAnnotationCGMd, &_sSaySo13PDFAnnotationCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation, 0x1E6978018);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [SynapseLinkItem] and conformance [A], &_sSay8PaperKit15SynapseLinkItemCGMd, &_sSay8PaperKit15SynapseLinkItemCGMR, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit15SynapseLinkItemCGMd, &_sSay8PaperKit15SynapseLinkItemCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SynapseLinkItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in ContainerCanvasElement.subelementsIndexableTextContent<A>(in:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v4 = type metadata accessor for Paper(0);
  v5 = lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
  SharedTagged_10.subscript.getter();
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v8 = (*(v7 + 144))(a1, v4, v5, v6, v7);
  result = __swift_destroy_boxed_opaque_existential_0(v10);
  *a2 = v8;
  return result;
}

uint64_t specialized static PaperMarkup.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v20[0] = a1;
  Capsule.rootID.getter();
  v20[1] = a2;
  Capsule.rootID.getter();
  v11 = CRKeyPath.rawValue.getter();
  v13 = v12;
  v14 = CRKeyPath.rawValue.getter();
  v16 = v15;
  LOBYTE(a2) = specialized static Data.== infix(_:_:)(v11, v13, v14, v15);
  outlined consume of Data._Representation(v14, v16);
  outlined consume of Data._Representation(v11, v13);
  v17 = *(v5 + 8);
  v17(v7, v4);
  v17(v10, v4);
  if ((a2 & 1) != 0 && (Capsule.hasDelta(from:)() & 1) == 0)
  {
    v18 = Capsule.hasDelta(from:)() ^ 1;
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t partial apply for specialized closure #1 in Capsule<>.append<A>(_:andStrokes:pasteOffset:)(uint64_t a1, __n128 a2, __n128 a3)
{
  a2.n128_u64[0] = *(v3 + 24);
  a3.n128_u64[0] = *(v3 + 32);
  return specialized closure #1 in Capsule<>.append<A>(_:andStrokes:pasteOffset:)(a1, *(v3 + 16), *(v3 + 40), a2, a3);
}

unint64_t lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope()
{
  result = lazy protocol witness table cache variable for type TextAttributeScope and conformance TextAttributeScope;
  if (!lazy protocol witness table cache variable for type TextAttributeScope and conformance TextAttributeScope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope and conformance TextAttributeScope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Attributes and conformance CRAttributedString<A>.Attributes, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR, MEMORY[0x1E69952B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior()
{
  result = lazy protocol witness table cache variable for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior;
  if (!lazy protocol witness table cache variable for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior;
  if (!lazy protocol witness table cache variable for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior;
  if (!lazy protocol witness table cache variable for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior;
  if (!lazy protocol witness table cache variable for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior;
  if (!lazy protocol witness table cache variable for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior;
  if (!lazy protocol witness table cache variable for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior;
  if (!lazy protocol witness table cache variable for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type StrokeStyle? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type StrokeStyle? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
    lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type StrokeStyle and conformance StrokeStyle, type metadata accessor for StrokeStyle, &protocol conformance descriptor for StrokeStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StrokeStyle? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Shadow? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Shadow? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Shadow? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
    lazy protocol witness table accessor for type Paper and conformance Paper(&lazy protocol witness table cache variable for type Shadow and conformance Shadow, type metadata accessor for Shadow, &protocol conformance descriptor for Shadow);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Shadow? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ShapeAuxiliaryInfo? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ShapeAuxiliaryInfo? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd, &_s8PaperKit18ShapeAuxiliaryInfoVSgMR);
    lazy protocol witness table accessor for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShapeAuxiliaryInfo? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo()
{
  result = lazy protocol witness table cache variable for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo;
  if (!lazy protocol witness table cache variable for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo;
  if (!lazy protocol witness table cache variable for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo;
  if (!lazy protocol witness table cache variable for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo;
  if (!lazy protocol witness table cache variable for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo;
  if (!lazy protocol witness table cache variable for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo;
  if (!lazy protocol witness table cache variable for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo;
  if (!lazy protocol witness table cache variable for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShapeAuxiliaryInfo and conformance ShapeAuxiliaryInfo);
  }

  return result;
}

uint64_t partial apply for closure #1 in PaperMarkup._insertNewImage(_:frame:rotation:)(uint64_t a1)
{
  return partial apply for closure #1 in PaperMarkup._insertNewImage(_:frame:rotation:)(a1);
}

{
  return closure #1 in PaperMarkup._insertNewImage(_:frame:rotation:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 80), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LineEnd and conformance LineEnd()
{
  result = lazy protocol witness table cache variable for type LineEnd and conformance LineEnd;
  if (!lazy protocol witness table cache variable for type LineEnd and conformance LineEnd)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LineEnd and conformance LineEnd);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LineEnd and conformance LineEnd;
  if (!lazy protocol witness table cache variable for type LineEnd and conformance LineEnd)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LineEnd and conformance LineEnd);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LineEnd and conformance LineEnd;
  if (!lazy protocol witness table cache variable for type LineEnd and conformance LineEnd)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LineEnd and conformance LineEnd);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LineEnd and conformance LineEnd;
  if (!lazy protocol witness table cache variable for type LineEnd and conformance LineEnd)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LineEnd and conformance LineEnd);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LineEnd and conformance LineEnd;
  if (!lazy protocol witness table cache variable for type LineEnd and conformance LineEnd)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LineEnd and conformance LineEnd);
  }

  return result;
}

uint64_t outlined init with copy of ShapeType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Shape(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Paper(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void one-time initialization function for paperKitBundle()
{
  v0 = MEMORY[0x1DA6CCED0](0xD000000000000012, 0x80000001D40813C0);
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (v1)
  {
    paperKitBundle.super.isa = v1;
  }

  else
  {
    __break(1u);
  }
}

__n128 closure #1 in DefaultColorWell.checkeredView.getter@<Q0>(uint64_t a1@<X8>)
{
  closure #1 in closure #1 in DefaultColorWell.checkeredView.getter(v5);
  v2 = v6[0];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 90) = *(v6 + 10);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t closure #1 in closure #1 in DefaultColorWell.checkeredView.getter@<X0>(_OWORD *a2@<X8>)
{
  Path.init(_:)();
  v3 = static Color.white.getter();
  Path.init(_:)();
  v4 = static Color.black.getter();
  v14[0] = v11;
  v14[1] = v12;
  *&v15 = v13;
  *(&v15 + 1) = v3;
  *v7 = 256;
  v6 = v15;
  v17[0] = v8;
  v17[1] = v9;
  *&v18 = v10;
  *(&v18 + 1) = v4;
  *&v7[24] = v9;
  *&v7[8] = v8;
  *&v7[56] = 256;
  *&v7[40] = v18;
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v6;
  a2[3] = *v7;
  *(a2 + 90) = *&v7[42];
  a2[4] = *&v7[16];
  a2[5] = *&v7[32];
  v16 = 256;
  v19 = 256;
  v20[0] = v8;
  v20[1] = v9;
  v21 = v10;
  v22 = v4;
  v23 = 256;
  outlined init with copy of Date?(v14, v24, &_s7SwiftUI10_ShapeViewVyAA4PathVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA4PathVAA5ColorVGMR);
  outlined init with copy of Date?(v17, v24, &_s7SwiftUI10_ShapeViewVyAA4PathVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA4PathVAA5ColorVGMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s7SwiftUI10_ShapeViewVyAA4PathVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA4PathVAA5ColorVGMR);
  v24[0] = v11;
  v24[1] = v12;
  v25 = v13;
  v26 = v3;
  v27 = 256;
  return outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s7SwiftUI10_ShapeViewVyAA4PathVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA4PathVAA5ColorVGMR);
}

void closure #1 in closure #1 in closure #1 in DefaultColorWell.checkeredView.getter()
{
  GeometryProxy.size.getter();
  Path.move(to:)(__PAIR128__(v0, 0));
  GeometryProxy.size.getter();
  v2 = v1;
  GeometryProxy.size.getter();
  Path.addLine(to:)(__PAIR128__(v3, v2));
  GeometryProxy.size.getter();
  Path.addLine(to:)(v4);
  Path.closeSubpath()();
}

void closure #2 in closure #1 in closure #1 in DefaultColorWell.checkeredView.getter()
{
  Path.move(to:)(0);
  GeometryProxy.size.getter();
  Path.addLine(to:)(__PAIR128__(v0, 0));
  GeometryProxy.size.getter();
  Path.addLine(to:)(v1);
  Path.closeSubpath()();
}

uint64_t closure #1 in DefaultColorWell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGMR);
  MEMORY[0x1EEE9AC00](v64);
  v8 = (&v64 - v7);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA16_FlexFrameLayoutVGMR);
  MEMORY[0x1EEE9AC00](v65);
  v10 = &v64 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGMR);
  MEMORY[0x1EEE9AC00](v67);
  v12 = &v64 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAA01_d5ShapeI0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAA01_d5ShapeI0VyAA9RectangleVGGMR);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v64 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v64 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyACyAA14GeometryReaderVyAA5GroupVyAGyAA06_ShapeG0VyAA4PathVAA5ColorVG_ARtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_AMyAyQGAA06StrokekG0VyAyA08_OpacityK5StyleVyAA010ForegroundT0VGAA05EmptyG0VGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameY0VGAA08_PaddingY0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyACyAA14GeometryReaderVyAA5GroupVyAGyAA06_ShapeG0VyAA4PathVAA5ColorVG_ARtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_AMyAyQGAA06StrokekG0VyAyA08_OpacityK5StyleVyAA010ForegroundT0VGAA05EmptyG0VGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameY0VGAA08_PaddingY0VGMR);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v64 - v24);
  *v25 = static Alignment.center.getter();
  v25[1] = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA14GeometryReaderVyAA5GroupVyAIyAA06_ShapeD0VyAA4PathVAA5ColorVG_AVtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_AQyA1_AUGAA06StrokenD0VyA1_AA08_OpacityN5StyleVyAA010ForegroundW0VGAA05EmptyD0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA14GeometryReaderVyAA5GroupVyAIyAA06_ShapeD0VyAA4PathVAA5ColorVG_AVtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_AQyA1_AUGAA06StrokenD0VyA1_AA08_OpacityN5StyleVyAA010ForegroundW0VGAA05EmptyD0VGtGGMR);
  closure #1 in closure #1 in DefaultColorWell.body.getter(a1, a2, a3, v25 + *(v27 + 44));
  v28 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA14GeometryReaderVyAA5GroupVyAGyAA06_ShapeG0VyAA4PathVAA5ColorVG_ARtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_AMyAyQGAA06StrokekG0VyAyA08_OpacityK5StyleVyAA010ForegroundT0VGAA05EmptyG0VGtGGAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA14GeometryReaderVyAA5GroupVyAGyAA06_ShapeG0VyAA4PathVAA5ColorVG_ARtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_AMyAyQGAA06StrokekG0VyAyA08_OpacityK5StyleVyAA010ForegroundT0VGAA05EmptyG0VGtGGAA18_AspectRatioLayoutVGMR) + 36);
  *v28 = 0;
  *(v28 + 4) = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v29 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyACyAA14GeometryReaderVyAA5GroupVyAGyAA06_ShapeG0VyAA4PathVAA5ColorVG_ARtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_AMyAyQGAA06StrokekG0VyAyA08_OpacityK5StyleVyAA010ForegroundT0VGAA05EmptyG0VGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameY0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyACyAA14GeometryReaderVyAA5GroupVyAGyAA06_ShapeG0VyAA4PathVAA5ColorVG_ARtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_AMyAyQGAA06StrokekG0VyAyA08_OpacityK5StyleVyAA010ForegroundT0VGAA05EmptyG0VGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameY0VGMR) + 36));
  v30 = v76;
  v29[4] = v75;
  v29[5] = v30;
  v29[6] = v77;
  v31 = v72;
  *v29 = v71;
  v29[1] = v31;
  v32 = v74;
  v29[2] = v73;
  v29[3] = v32;
  LOBYTE(a1) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v33 = v25 + *(v20 + 44);
  *v33 = a1;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *(v33 + 3) = v36;
  *(v33 + 4) = v37;
  v33[40] = 0;
  v38 = Image.init(systemName:)();
  v39 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR) + 36));
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
  v41 = *MEMORY[0x1E69816C8];
  v42 = type metadata accessor for Image.Scale();
  (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
  *v39 = swift_getKeyPath();
  *v8 = v38;
  if (one-time initialization token for toolbarButtonFont != -1)
  {
    swift_once();
  }

  v43 = static ToolbarView.Constants.toolbarButtonFont;
  KeyPath = swift_getKeyPath();
  v45 = (v8 + *(v64 + 36));
  *v45 = KeyPath;
  v45[1] = v43;

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of Range<AttributedString.Index>(v8, v10, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGMR);
  v46 = &v10[*(v65 + 36)];
  v47 = v83;
  *(v46 + 4) = v82;
  *(v46 + 5) = v47;
  *(v46 + 6) = v84;
  v48 = v79;
  *v46 = v78;
  *(v46 + 1) = v48;
  v49 = v81;
  *(v46 + 2) = v80;
  *(v46 + 3) = v49;
  LOBYTE(v43) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  outlined init with take of Range<AttributedString.Index>(v10, v12, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA16_FlexFrameLayoutVGMR);
  v58 = &v12[*(v67 + 36)];
  *v58 = v43;
  *(v58 + 1) = v51;
  *(v58 + 2) = v53;
  *(v58 + 3) = v55;
  *(v58 + 4) = v57;
  v58[40] = 0;
  outlined init with take of Range<AttributedString.Index>(v12, v16, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGMR);
  v16[*(v66 + 36)] = 0;
  v59 = v68;
  outlined init with take of Range<AttributedString.Index>(v16, v68, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAA01_d5ShapeI0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAA01_d5ShapeI0VyAA9RectangleVGGMR);
  outlined init with copy of Date?(v25, v22, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyACyAA14GeometryReaderVyAA5GroupVyAGyAA06_ShapeG0VyAA4PathVAA5ColorVG_ARtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_AMyAyQGAA06StrokekG0VyAyA08_OpacityK5StyleVyAA010ForegroundT0VGAA05EmptyG0VGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameY0VGAA08_PaddingY0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyACyAA14GeometryReaderVyAA5GroupVyAGyAA06_ShapeG0VyAA4PathVAA5ColorVG_ARtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_AMyAyQGAA06StrokekG0VyAyA08_OpacityK5StyleVyAA010ForegroundT0VGAA05EmptyG0VGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameY0VGAA08_PaddingY0VGMR);
  v60 = v69;
  outlined init with copy of Date?(v59, v69, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAA01_d5ShapeI0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAA01_d5ShapeI0VyAA9RectangleVGGMR);
  v61 = v70;
  outlined init with copy of Date?(v22, v70, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyACyAA14GeometryReaderVyAA5GroupVyAGyAA06_ShapeG0VyAA4PathVAA5ColorVG_ARtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_AMyAyQGAA06StrokekG0VyAyA08_OpacityK5StyleVyAA010ForegroundT0VGAA05EmptyG0VGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameY0VGAA08_PaddingY0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyACyAA14GeometryReaderVyAA5GroupVyAGyAA06_ShapeG0VyAA4PathVAA5ColorVG_ARtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_AMyAyQGAA06StrokekG0VyAyA08_OpacityK5StyleVyAA010ForegroundT0VGAA05EmptyG0VGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameY0VGAA08_PaddingY0VGMR);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyACyAA14GeometryReaderVyAA5GroupVyAGyAA06_ShapeG0VyAA4PathVAA5ColorVG_ARtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_AMyAyQGAA06StrokekG0VyAyA08_OpacityK5StyleVyAA010ForegroundT0VGAA05EmptyG0VGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameY0VGAA08_PaddingY0VG_ACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA23_5ScaleOGGA25_yAA4FontVSgGGA17_GA20_GAA01_dK8ModifierVyAA0Q0VGGtMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyACyAA14GeometryReaderVyAA5GroupVyAGyAA06_ShapeG0VyAA4PathVAA5ColorVG_ARtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_AMyAyQGAA06StrokekG0VyAyA08_OpacityK5StyleVyAA010ForegroundT0VGAA05EmptyG0VGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameY0VGAA08_PaddingY0VG_ACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA23_5ScaleOGGA25_yAA4FontVSgGGA17_GA20_GAA01_dK8ModifierVyAA0Q0VGGtMR);
  outlined init with copy of Date?(v60, v61 + *(v62 + 48), &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAA01_d5ShapeI0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAA01_d5ShapeI0VyAA9RectangleVGGMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v59, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAA01_d5ShapeI0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAA01_d5ShapeI0VyAA9RectangleVGGMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyACyAA14GeometryReaderVyAA5GroupVyAGyAA06_ShapeG0VyAA4PathVAA5ColorVG_ARtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_AMyAyQGAA06StrokekG0VyAyA08_OpacityK5StyleVyAA010ForegroundT0VGAA05EmptyG0VGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameY0VGAA08_PaddingY0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyACyAA14GeometryReaderVyAA5GroupVyAGyAA06_ShapeG0VyAA4PathVAA5ColorVG_ARtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_AMyAyQGAA06StrokekG0VyAyA08_OpacityK5StyleVyAA010ForegroundT0VGAA05EmptyG0VGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameY0VGAA08_PaddingY0VGMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAA01_d5ShapeI0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAA01_d5ShapeI0VyAA9RectangleVGGMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyACyAA14GeometryReaderVyAA5GroupVyAGyAA06_ShapeG0VyAA4PathVAA5ColorVG_ARtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_AMyAyQGAA06StrokekG0VyAyA08_OpacityK5StyleVyAA010ForegroundT0VGAA05EmptyG0VGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameY0VGAA08_PaddingY0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyACyAA14GeometryReaderVyAA5GroupVyAGyAA06_ShapeG0VyAA4PathVAA5ColorVG_ARtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_AMyAyQGAA06StrokekG0VyAyA08_OpacityK5StyleVyAA010ForegroundT0VGAA05EmptyG0VGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameY0VGAA08_PaddingY0VGMR);
}

uint64_t closure #1 in closure #1 in DefaultColorWell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a2;
  v54 = a3;
  v51 = a1;
  v58 = a4;
  v4 = type metadata accessor for RoundedRectangle();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15StrokeShapeViewVyAA16RoundedRectangleVAA08_OpacityD5StyleVyAA010ForegroundI0VGAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVyAA16RoundedRectangleVAA08_OpacityD5StyleVyAA010ForegroundI0VGAA05EmptyE0VGMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMR);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA5GroupVyAA9TupleViewVyAA06_ShapeI0VyAA4PathVAA5ColorVG_APtGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA5GroupVyAA9TupleViewVyAA06_ShapeI0VyAA4PathVAA5ColorVG_APtGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v61 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v51 - v20);
  v23 = &v51 + *(v22 + 44) - v20;
  v24 = *(v5 + 28);
  v25 = *MEMORY[0x1E697F468];
  v26 = type metadata accessor for RoundedCornerStyle();
  v27 = *(*(v26 - 8) + 104);
  v27(&v23[v24], v25, v26);
  __asm { FMOV            V0.2D, #4.0 }

  v59 = _Q0;
  *v23 = _Q0;
  *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR) + 36)] = 256;
  v60 = v21;
  *v21 = closure #1 in DefaultColorWell.checkeredView.getter;
  v21[1] = 0;
  v27(&v16[*(v5 + 28)], v25, v26);
  *v16 = v59;
  *&v63 = v51;
  *(&v63 + 1) = v53;
  *&v64 = v54;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA5ColorVGMd, &_s7SwiftUI7BindingVyAA5ColorVGMR);
  MEMORY[0x1DA6CA790](&v62, v33);
  v34 = v16;
  *&v16[*(v12 + 60)] = v62;
  *&v16[*(v12 + 64)] = 256;
  v35 = v55;
  v27(&v55[*(v5 + 28)], v25, v26);
  *v35 = v59;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v36 = v52;
  outlined init with copy of RoundedRectangle(v35, v52);
  v37 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_StrokedShapeVyAA16RoundedRectangleVGMd, &_s7SwiftUI13_StrokedShapeVyAA16RoundedRectangleVGMR) + 36);
  v38 = v64;
  *v37 = v63;
  *(v37 + 16) = v38;
  *(v37 + 32) = v65;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA08_StrokedC0VyAA16RoundedRectangleVGAA08_OpacityC5StyleVyAA010ForegroundI0VGGMd, &_s7SwiftUI10_ShapeViewVyAA08_StrokedC0VyAA16RoundedRectangleVGAA08_OpacityC5StyleVyAA010ForegroundI0VGGMR);
  *(v36 + *(v39 + 52)) = 1056964608;
  *(v36 + *(v39 + 56)) = 256;
  v40 = static Alignment.center.getter();
  v42 = v41;
  outlined destroy of RoundedRectangle(v35);
  v43 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA08_StrokedE0VyAA16RoundedRectangleVGAA08_OpacityE5StyleVyAA010ForegroundK0VGGAA19_BackgroundModifierVyAA05EmptyF0VGGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA08_StrokedE0VyAA16RoundedRectangleVGAA08_OpacityE5StyleVyAA010ForegroundK0VGGAA19_BackgroundModifierVyAA05EmptyF0VGGMR) + 36));
  *v43 = v40;
  v43[1] = v42;
  v44 = v61;
  outlined init with copy of Date?(v60, v61, &_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA5GroupVyAA9TupleViewVyAA06_ShapeI0VyAA4PathVAA5ColorVG_APtGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA5GroupVyAA9TupleViewVyAA06_ShapeI0VyAA4PathVAA5ColorVG_APtGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  v45 = v56;
  outlined init with copy of Date?(v34, v56, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMR);
  v46 = v57;
  outlined init with copy of Date?(v36, v57, &_s7SwiftUI15StrokeShapeViewVyAA16RoundedRectangleVAA08_OpacityD5StyleVyAA010ForegroundI0VGAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVyAA16RoundedRectangleVAA08_OpacityD5StyleVyAA010ForegroundI0VGAA05EmptyE0VGMR);
  v47 = v44;
  v48 = v58;
  outlined init with copy of Date?(v47, v58, &_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA5GroupVyAA9TupleViewVyAA06_ShapeI0VyAA4PathVAA5ColorVG_APtGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA5GroupVyAA9TupleViewVyAA06_ShapeI0VyAA4PathVAA5ColorVG_APtGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA5GroupVyAA9TupleViewVyAA06_ShapeI0VyAA4PathVAA5ColorVG_APtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_AKyAwOGAA06StrokejI0VyAwA08_OpacityJ5StyleVyAA010ForegroundS0VGAA05EmptyI0VGtMd, &_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA5GroupVyAA9TupleViewVyAA06_ShapeI0VyAA4PathVAA5ColorVG_APtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_AKyAwOGAA06StrokejI0VyAwA08_OpacityJ5StyleVyAA010ForegroundS0VGAA05EmptyI0VGtMR);
  outlined init with copy of Date?(v45, v48 + *(v49 + 48), &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMR);
  outlined init with copy of Date?(v46, v48 + *(v49 + 64), &_s7SwiftUI15StrokeShapeViewVyAA16RoundedRectangleVAA08_OpacityD5StyleVyAA010ForegroundI0VGAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVyAA16RoundedRectangleVAA08_OpacityD5StyleVyAA010ForegroundI0VGAA05EmptyE0VGMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s7SwiftUI15StrokeShapeViewVyAA16RoundedRectangleVAA08_OpacityD5StyleVyAA010ForegroundI0VGAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVyAA16RoundedRectangleVAA08_OpacityD5StyleVyAA010ForegroundI0VGAA05EmptyE0VGMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA5GroupVyAA9TupleViewVyAA06_ShapeI0VyAA4PathVAA5ColorVG_APtGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA5GroupVyAA9TupleViewVyAA06_ShapeI0VyAA4PathVAA5ColorVG_APtGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s7SwiftUI15StrokeShapeViewVyAA16RoundedRectangleVAA08_OpacityD5StyleVyAA010ForegroundI0VGAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVyAA16RoundedRectangleVAA08_OpacityD5StyleVyAA010ForegroundI0VGAA05EmptyE0VGMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA5GroupVyAA9TupleViewVyAA06_ShapeI0VyAA4PathVAA5ColorVG_APtGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA5GroupVyAA9TupleViewVyAA06_ShapeI0VyAA4PathVAA5ColorVG_APtGGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
}

uint64_t protocol witness for View.body.getter in conformance DefaultColorWell@<X0>(uint64_t a1@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA6ZStackVyAIyAKyAA14GeometryReaderVyAA5GroupVyAIyAA06_ShapeD0VyAA4PathVAA5ColorVG_AXtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_ASyA3_AWGAA06StrokeoD0VyA3_AA08_OpacityO5StyleVyAA010ForegroundX0VGAA05EmptyD0VGtGGAA012_AspectRatioG0VGAA010_FlexFrameG0VGAA08_PaddingG0VG_AKyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA29_5ScaleOGGA31_yAA4FontVSgGGA23_GA26_GAA01_jO8ModifierVyAA0U0VGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA6ZStackVyAIyAKyAA14GeometryReaderVyAA5GroupVyAIyAA06_ShapeD0VyAA4PathVAA5ColorVG_AXtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_ASyA3_AWGAA06StrokeoD0VyA3_AA08_OpacityO5StyleVyAA010ForegroundX0VGAA05EmptyD0VGtGGAA012_AspectRatioG0VGAA010_FlexFrameG0VGAA08_PaddingG0VG_AKyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA29_5ScaleOGGA31_yAA4FontVSgGGA23_GA26_GAA01_jO8ModifierVyAA0U0VGGtGGMR);
  return closure #1 in DefaultColorWell.body.getter(v4, v5, v6, a1 + *(v7 + 44));
}

uint64_t key path setter for EnvironmentValues.imageScale : EnvironmentValues, serialized(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.imageScale.setter();
}

uint64_t key path getter for EnvironmentValues.font : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t outlined init with copy of RoundedRectangle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RoundedRectangle(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<GeometryReader<Group<TupleView<(_ShapeView<Path, Color>, _ShapeView<Path, Color>)>>>, _ClipEffect<RoundedRectangle>>, _ShapeView<RoundedRectangle, Color>, StrokeShapeView<RoundedRectangle, _OpacityShapeStyle<ForegroundStyle>, EmptyView>)>>, _AspectRatioLayout>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>)>> and conformance HStack<A>()
{
  result = lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<GeometryReader<Group<TupleView<(_ShapeView<Path, Color>, _ShapeView<Path, Color>)>>>, _ClipEffect<RoundedRectangle>>, _ShapeView<RoundedRectangle, Color>, StrokeShapeView<RoundedRectangle, _OpacityShapeStyle<ForegroundStyle>, EmptyView>)>>, _AspectRatioLayout>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>)>> and conformance HStack<A>;
  if (!lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<GeometryReader<Group<TupleView<(_ShapeView<Path, Color>, _ShapeView<Path, Color>)>>>, _ClipEffect<RoundedRectangle>>, _ShapeView<RoundedRectangle, Color>, StrokeShapeView<RoundedRectangle, _OpacityShapeStyle<ForegroundStyle>, EmptyView>)>>, _AspectRatioLayout>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>)>> and conformance HStack<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA6ZStackVyAEyAGyAA14GeometryReaderVyAA5GroupVyAEyAA06_ShapeE0VyAA4PathVAA5ColorVG_ATtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_AOyA_ASGAA06StrokelE0VyA_AA08_OpacityL5StyleVyAA010ForegroundU0VGAA05EmptyE0VGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameZ0VGAA08_PaddingZ0VG_AGyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA25_5ScaleOGGA27_yAA4FontVSgGGA19_GA22_GAA01_gL8ModifierVyAA0R0VGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA6ZStackVyAEyAGyAA14GeometryReaderVyAA5GroupVyAEyAA06_ShapeE0VyAA4PathVAA5ColorVG_ATtGGGAA11_ClipEffectVyAA16RoundedRectangleVGG_AOyA_ASGAA06StrokelE0VyA_AA08_OpacityL5StyleVyAA010ForegroundU0VGAA05EmptyE0VGtGGAA18_AspectRatioLayoutVGAA010_FlexFrameZ0VGAA08_PaddingZ0VG_AGyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA25_5ScaleOGGA27_yAA4FontVSgGGA19_GA22_GAA01_gL8ModifierVyAA0R0VGGtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<GeometryReader<Group<TupleView<(_ShapeView<Path, Color>, _ShapeView<Path, Color>)>>>, _ClipEffect<RoundedRectangle>>, _ShapeView<RoundedRectangle, Color>, StrokeShapeView<RoundedRectangle, _OpacityShapeStyle<ForegroundStyle>, EmptyView>)>>, _AspectRatioLayout>, _FlexFrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>)>> and conformance HStack<A>);
  }

  return result;
}

PaperKit::PDFPageID::CodingKeys_optional __swiftcall PDFPageID.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x626D754E65676170 && stringValue._object == 0xEA00000000007265;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x7465737361 && object == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v4 = v7;
  return result;
}

PaperKit::PDFPageID::CodingKeys_optional __swiftcall PDFPageID.CodingKeys.init(intValue:)(Swift::Int intValue)
{
  if (intValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!intValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return intValue;
}

uint64_t PDFPageID.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x7465737361;
  }

  else
  {
    return 0x626D754E65676170;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PDFPageID.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PDFPageID.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PDFPageID.CodingKeys()
{
  if (*v0)
  {
    return 0x7465737361;
  }

  else
  {
    return 0x626D754E65676170;
  }
}

uint64_t protocol witness for static IntCaseIterable.intCases.getter in conformance PDFPageID.CodingKeys(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys();
  v5 = lazy protocol witness table accessor for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys();

  return MEMORY[0x1EEDF56F8](a1, a2, v4, v5);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PDFPageID.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PDFPageID.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PDFPageID.debugDescription.getter()
{
  _StringGuts.grow(_:)(17);

  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1DA6CD010](v0);

  MEMORY[0x1DA6CD010](0x3A7465737361202CLL, 0xE800000000000000);
  type metadata accessor for PDFPageID(0);
  v1 = CRAsset.digest.getter();
  v3 = v2;
  v4 = Data.base64EncodedString(options:)(0);
  outlined consume of Data._Representation(v1, v3);
  MEMORY[0x1DA6CD010](v4._countAndFlagsBits, v4._object);

  MEMORY[0x1DA6CD010](125, 0xE100000000000000);
  return 979857531;
}

uint64_t static PDFPageID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for PDFPageID(0);

  return static CRAsset.== infix(_:_:)();
}

uint64_t PDFPageID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit9PDFPageIDV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy8PaperKit9PDFPageIDV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for PDFPageID(0);
    v8[14] = 1;
    type metadata accessor for CRAsset();
    lazy protocol witness table accessor for type CRAsset and conformance CRAsset(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995410]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PDFPageID.hash(into:)(uint64_t a1)
{
  MEMORY[0x1DA6CE810](*v1);
  type metadata accessor for PDFPageID(0);
  type metadata accessor for CRAsset();
  lazy protocol witness table accessor for type CRAsset and conformance CRAsset(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995418]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int PDFPageID.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](*v0);
  type metadata accessor for PDFPageID(0);
  type metadata accessor for CRAsset();
  lazy protocol witness table accessor for type CRAsset and conformance CRAsset(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995418]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t PDFPageID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = type metadata accessor for CRAsset();
  v18 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit9PDFPageIDV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy8PaperKit9PDFPageIDV10CodingKeysOGMR);
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v15 - v6;
  v8 = type metadata accessor for PDFPageID(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v17 = v8;
    v11 = v20;
    v12 = v21;
    v24 = 0;
    v13 = v22;
    *v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v23 = 1;
    lazy protocol witness table accessor for type CRAsset and conformance CRAsset(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995428]);
    v16 = v5;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v11 + 8))(v7, v13);
    (*(v18 + 32))(v10 + *(v17 + 20), v16, v12);
    outlined init with take of PDFPageID(v10, v19);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PDFPageID()
{
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](*v0);
  type metadata accessor for CRAsset();
  lazy protocol witness table accessor for type CRAsset and conformance CRAsset(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995418]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PDFPageID(uint64_t a1)
{
  MEMORY[0x1DA6CE810](*v1);
  type metadata accessor for CRAsset();
  lazy protocol witness table accessor for type CRAsset and conformance CRAsset(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995418]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PDFPageID(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](*v1);
  type metadata accessor for CRAsset();
  lazy protocol witness table accessor for type CRAsset and conformance CRAsset(&lazy protocol witness table cache variable for type CRAsset and conformance CRAsset, MEMORY[0x1E6995408], MEMORY[0x1E6995418]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PDFPageID(void *a1, void *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return static CRAsset.== infix(_:_:)();
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance PDFPageID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type CRAsset and conformance CRAsset(&lazy protocol witness table cache variable for type PDFPageID and conformance PDFPageID, type metadata accessor for PDFPageID, &protocol conformance descriptor for PDFPageID);
  lazy protocol witness table accessor for type CRAsset and conformance CRAsset(&lazy protocol witness table cache variable for type PDFPageID and conformance PDFPageID, type metadata accessor for PDFPageID, &protocol conformance descriptor for PDFPageID);

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance PDFPageID(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CRAsset and conformance CRAsset(&lazy protocol witness table cache variable for type PDFPageID and conformance PDFPageID, type metadata accessor for PDFPageID, &protocol conformance descriptor for PDFPageID);

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

uint64_t type metadata accessor for PDFPageID(uint64_t a1)
{
  result = type metadata singleton initialization cache for PDFPageID;
  if (!type metadata singleton initialization cache for PDFPageID)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys;
  if (!lazy protocol witness table cache variable for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys;
  if (!lazy protocol witness table cache variable for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys;
  if (!lazy protocol witness table cache variable for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys;
  if (!lazy protocol witness table cache variable for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys;
  if (!lazy protocol witness table cache variable for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys;
  if (!lazy protocol witness table cache variable for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys;
  if (!lazy protocol witness table cache variable for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PDFPageID.CodingKeys and conformance PDFPageID.CodingKeys);
  }

  return result;
}

uint64_t outlined init with take of PDFPageID(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PDFPageID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [PDFPageID.CodingKeys] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [PDFPageID.CodingKeys] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PDFPageID.CodingKeys] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8PaperKit9PDFPageIDV10CodingKeysOGMd, &_sSay8PaperKit9PDFPageIDV10CodingKeysOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PDFPageID.CodingKeys] and conformance [A]);
  }

  return result;
}

uint64_t type metadata completion function for PDFPageID(uint64_t a1)
{
  result = type metadata accessor for CRAsset();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PDFPageID.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PDFPageID.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}