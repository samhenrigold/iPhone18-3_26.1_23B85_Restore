uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for Paper(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7) & ~v7;
  v30 = v2 | v7;
  v9 = (((*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v10 = v0 + v3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v12 = *(*(v11 - 8) + 8);
  v12(v10, v11);
  v12(v10 + v1[7], v11);
  v13 = v1[8];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  (*(*(v14 - 8) + 8))(v10 + v13, v14);
  v15 = v1[9];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  (*(*(v16 - 8) + 8))(v10 + v15, v16);
  v17 = v1[10];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  (*(*(v18 - 8) + 8))(v10 + v17, v18);
  v19 = v1[11];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  (*(*(v20 - 8) + 8))(v10 + v19, v20);
  v21 = v1[12];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  (*(*(v22 - 8) + 8))(v10 + v21, v22);
  v23 = v1[13];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  (*(*(v24 - 8) + 8))(v10 + v23, v24);
  v25 = v1[14];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  (*(*(v26 - 8) + 8))(v10 + v25, v26);
  v27 = v1[15];
  v28 = type metadata accessor for UnknownProperties();
  (*(*(v28 - 8) + 8))(v10 + v27, v28);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 16, v30 | 7);
}

uint64_t partial apply for specialized closure #1 in CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:completion:)(uint64_t a1)
{
  v3 = *(type metadata accessor for Paper(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1[3];
  v19 = v1[2];
  v9 = v1[4];
  v10 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = *(v10 + 32);
  v16 = *(v10 + 33);
  v17 = swift_task_alloc();
  *(v2 + 16) = v17;
  *v17 = v2;
  v17[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return specialized closure #1 in CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:completion:)(v11, v12, v13, v14, a1, v19, v8, v9, v1 + v4, v1 + v7, v15, v16);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for Capsule();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 16, v10 | 7);
}

uint64_t partial apply for closure #1 in CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:completion:)(uint64_t a1)
{
  v19 = v1[4];
  v3 = *(*(v19 - 8) + 64);
  v4 = (*(*(v19 - 8) + 80) + 72) & ~*(*(v19 - 8) + 80);
  v5 = *(type metadata accessor for Capsule() - 8);
  v6 = (v4 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v17 = v1[3];
  v18 = v1[2];
  v16 = v1[8];
  v7 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = *(v7 + 32);
  v13 = *(v7 + 33);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:completion:)(v8, v9, v10, v11, a1, v18, v17, v16, v1 + v4, v1 + v6, v12, v13);
}

uint64_t partial apply for specialized closure #1 in CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:completion:)(uint64_t a1)
{
  v3 = *(type metadata accessor for Paper(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for URL() - 8);
  v10 = (v8 + *(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = v1[3];
  v20 = v1[2];
  v11 = v1[4];
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = *(v1 + v8 + 16);
  v15 = *(v1 + v8 + 24);
  v16 = *(v1 + v10 + *(v9 + 64));
  v17 = swift_task_alloc();
  *(v2 + 16) = v17;
  *v17 = v2;
  v17[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return specialized closure #1 in CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:completion:)(v12, v13, v14, v15, a1, v20, v19, v11, v1 + v4, v1 + v7, v1 + v10, v16);
}

uint64_t outlined assign with take of PaperRenderable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A10Renderable_pSgMd, &_s8PaperKit0A10Renderable_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:completion:)(uint64_t a1)
{
  v3 = v2;
  v21 = v1[4];
  v4 = *(*(v21 - 8) + 64);
  v5 = (*(*(v21 - 8) + 80) + 72) & ~*(*(v21 - 8) + 80);
  v6 = *(type metadata accessor for Capsule() - 8);
  v7 = (v5 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for URL() - 8);
  v10 = (v8 + *(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = v1[3];
  v20 = v1[2];
  v18 = v1[8];
  v11 = *(v1 + v8);
  v12 = *(v1 + v8 + 8);
  v13 = *(v1 + v8 + 16);
  v14 = *(v1 + v8 + 24);
  v15 = *(v1 + v10 + *(v9 + 64));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:completion:)(v11, v12, v13, v14, a1, v20, v19, v18, v1 + v5, v1 + v7, v1 + v10, v15);
}

uint64_t dispatch thunk of CanvasElementImageRenderer.image(from:bounds:completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(*v2 + 240);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = v3;
  return v4(a1, v7);
}

uint64_t dispatch thunk of CanvasElementImageRenderer.image(from:bounds:darkMode:isRTL:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v10 = *(a2 + 32);
  v15 = (*(*v4 + 248) + **(*v4 + 248));
  v11 = swift_task_alloc();
  v12 = *a2;
  v13 = a2[1];
  *(v5 + 56) = v11;
  *(v5 + 32) = v13;
  *(v5 + 48) = v10;
  *(v5 + 16) = v12;
  *v11 = v5;
  v11[1] = dispatch thunk of CanvasElementImageRenderer.image(from:bounds:darkMode:isRTL:);

  return v15(a1, v5 + 16, a3, a4);
}

uint64_t dispatch thunk of CanvasElementImageRenderer.image(from:bounds:darkMode:isRTL:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  v32 = (*(*v12 + 272) + **(*v12 + 272));
  v26 = swift_task_alloc();
  *(v13 + 16) = v26;
  *v26 = v13;
  v26[1] = CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:);
  v27.n128_f64[0] = a9;
  v28.n128_f64[0] = a10;
  v29.n128_f64[0] = a11;
  v30.n128_f64[0] = a12;

  return v32(a1, a2, a3, a4, a5, a6, a7, a8, v27, v28, v29, v30);
}

uint64_t dispatch thunk of CanvasElementPDFRenderer.pdfData(from:bounds:completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(*v2 + 208);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = v3;
  return v4(a1, v7);
}

uint64_t dispatch thunk of CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:darkMode:isRTL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  v32 = (*(*v12 + 224) + **(*v12 + 224));
  v26 = swift_task_alloc();
  *(v13 + 16) = v26;
  *v26 = v13;
  v26[1] = dispatch thunk of CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:darkMode:isRTL:);
  v27.n128_f64[0] = a9;
  v28.n128_f64[0] = a10;
  v29.n128_f64[0] = a11;
  v30.n128_f64[0] = a12;

  return v32(a1, a2, a3, a4, a5, a6, a7, a8, v27, v28, v29, v30);
}

uint64_t dispatch thunk of CanvasElementPDFRenderer.pdfData<A, B>(_:in:bounds:darkMode:isRTL:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of CanvasElementPDFRenderer.writePDF(from:bounds:to:completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(*v2 + 232);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = v3;
  return v4(a1, v7);
}

uint64_t dispatch thunk of CanvasElementPDFRenderer.writePDF(from:bounds:to:darkMode:isRTL:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(a3 + 32);
  v19 = (*(*v6 + 240) + **(*v6 + 240));
  v15 = swift_task_alloc();
  v16 = *a3;
  v17 = a3[1];
  *(v7 + 56) = v15;
  *(v7 + 32) = v17;
  *(v7 + 48) = v14;
  *(v7 + 16) = v16;
  *v15 = v7;
  v15[1] = dispatch thunk of CanvasElementPDFRenderer.writePDF(from:bounds:to:darkMode:isRTL:);

  return v19(a1, a2, v7 + 16, a4, a5, a6);
}

uint64_t dispatch thunk of CanvasElementPDFRenderer.writePDF(from:bounds:to:darkMode:isRTL:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of CanvasElementPDFRenderer.writePDF<A, B>(_:in:bounds:to:darkMode:isRTL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14)
{
  v32 = (*(*v14 + 256) + **(*v14 + 256));
  v26 = swift_task_alloc();
  *(v15 + 16) = v26;
  *v26 = v15;
  v26[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);
  v27.n128_f64[0] = a9;
  v28.n128_f64[0] = a10;
  v29.n128_f64[0] = a11;
  v30.n128_f64[0] = a12;

  return v32(a1, a2, a3, a4, a5, a6, a7, a8, v27, v28, v29, v30, a13, a14);
}

uint64_t outlined init with copy of RendererContext?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit15RendererContext_pSgMd, &_s8PaperKit15RendererContext_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Paper(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s8PaperKit0A0VWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of Paper(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

Swift::Void __swiftcall CanvasGenerationTool.generationTool(_:)(UIGestureRecognizer *a1)
{
  v33[3] = &type metadata for PencilAndPaperFeatureFlags;
  v33[4] = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v33[0]) = 2;
  v3 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v33);
  if ((v3 & 1) == 0)
  {
    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, generativeLogger);
    v15 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_24;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33[0] = v9;
    *v8 = 136315394;
    v16 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v33);

    *(v8 + 4) = v18;
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001D4084B10, v33);
    v13 = "%s %s: returning (feature is not enabled)";
    goto LABEL_11;
  }

  if (v1[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState] - 3 < 4)
  {
    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, generativeLogger);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_24;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33[0] = v9;
    *v8 = 136315394;
    v10 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v33);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001D4084B10, v33);
    v13 = "%s %s: returning (gesture recognizer has been ignored in composing state)";
LABEL_11:
    _os_log_impl(&dword_1D38C4000, v6, v7, v13, v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v9, -1, -1);
    MEMORY[0x1DA6D0660](v8, -1, -1);
LABEL_24:

    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v20 = *(&Strong->isa + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (!v20)
    {
      __break(1u);
      return;
    }

    v21 = v20 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
    if (*(*v21 + 16) || (!*(*(v21 + 8) + 16) ? (v22 = *(v21 + 24) == 0) : (v22 = 0), !v22))
    {
      if (one-time initialization token for generativeLogger != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, generativeLogger);
      v24 = v1;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v33[0] = v28;
        *v27 = 136315394;
        v29 = CanvasGenerationTool.nameAndPointerDescription.getter();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v33);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2080;
        *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001D4084B10, v33);
        _os_log_impl(&dword_1D38C4000, v25, v26, "%s %s: returning (clearing canvas selection)", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA6D0660](v28, -1, -1);
        MEMORY[0x1DA6D0660](v27, -1, -1);
      }

      AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
      goto LABEL_24;
    }
  }

  v32 = [(UIGestureRecognizer *)a1 state];
  if (v32 > UIGestureRecognizerStateEnded)
  {
    if ((v32 - 4) < 2)
    {
      [v1 gestureRecognizerCanceledOrFailed_];
    }
  }

  else
  {
    switch(v32)
    {
      case UIGestureRecognizerStateBegan:
        [v1 gestureRecognizerBegan_];
        break;
      case UIGestureRecognizerStateChanged:
        [v1 gestureRecognizerChanged_];
        break;
      case UIGestureRecognizerStateEnded:
        [v1 gestureRecognizerEnded_];
        break;
    }
  }
}

void CanvasGenerationTool.gestureRecognizerBegan(_:)(void *a1)
{
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, generativeLogger);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&transform.a = v8;
    *v7 = 136315394;
    v9 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &transform);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000001D4084AF0, &transform);
    _os_log_impl(&dword_1D38C4000, v5, v6, "%s - %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v8, -1, -1);
    MEMORY[0x1DA6D0660](v7, -1, -1);
  }

  [a1 locationInView_];
  v13 = v12;
  v15 = v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v71 = Strong;
  [a1 locationInView_];
  v17 = [v71 hitAttachment:1 includeStandinAttachment:1 expandBottomAttachment:?];
  if (!v17)
  {
LABEL_13:
    v29 = v4;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&transform.a = v33;
      *v32 = 136315138;
      v34 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &transform);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1D38C4000, v30, v31, "%s Did not hit a canvas when wanding.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x1DA6D0660](v33, -1, -1);
      MEMORY[0x1DA6D0660](v32, -1, -1);
    }

    [a1 setState_];
    v37 = v71;
    goto LABEL_16;
  }

  v18 = v17;
  v19 = [v17 attachmentContainerView];

  type metadata accessor for AnyCanvas(0);
  if (!swift_dynamicCastClass())
  {

    goto LABEL_13;
  }

  swift_unknownObjectWeakAssign();

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v70 = v20;
    if ((*((*MEMORY[0x1E69E7D40] & *v20) + 0x7A0))())
    {
      [a1 setState_];
      v21 = v4;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *&transform.a = v25;
        *v24 = 136315138;
        v26 = CanvasGenerationTool.nameAndPointerDescription.getter();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &transform);

        *(v24 + 4) = v28;
        _os_log_impl(&dword_1D38C4000, v22, v23, "%s AutoRefine is running, cancel magic generative playground.", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x1DA6D0660](v25, -1, -1);
        MEMORY[0x1DA6D0660](v24, -1, -1);

        return;
      }

      goto LABEL_33;
    }
  }

  v38 = v4;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&transform.a = v42;
    *v41 = 136315394;
    v43 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &transform);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2080;
    v46 = CGPoint.debugDescription.getter();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &transform);

    *(v41 + 14) = v48;
    _os_log_impl(&dword_1D38C4000, v39, v40, "%s gesture began at location %s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v42, -1, -1);
    MEMORY[0x1DA6D0660](v41, -1, -1);
  }

  Mutable = CGPathCreateMutable();
  v50 = *&v38[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_wandPath];
  *&v38[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_wandPath] = Mutable;
  v70 = Mutable;

  transform.a = 1.0;
  transform.b = 0.0;
  transform.c = 0.0;
  transform.d = 1.0;
  transform.tx = 0.0;
  transform.ty = 0.0;
  CGMutablePathRef.move(to:transform:)(__PAIR128__(*&v15, *&v13), &transform);
  v51 = &v38[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_previousGesturePoint1];
  *v51 = v13;
  v51[1] = v15;
  *(v51 + 16) = 0;
  v52 = &v38[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_previousGesturePoint2];
  *v52 = v13;
  v52[1] = v15;
  *(v52 + 16) = 0;
  [v38 setHidden_];
  LOBYTE(v72[0]) = 2;
  CanvasGenerationTool.placeMagicGenerativePlayground(for:)(v72);
  if (v53)
  {
    v54 = v53;
  }

  else
  {
    v67 = *&v38[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeVC];
    if (v67)
    {
      v68 = v67;
      [v68 startSelectionWithPath:v70 pencilLocation:{v13, v15}];

LABEL_33:
      v37 = v70;
LABEL_16:

LABEL_18:

      return;
    }

    lazy protocol witness table accessor for type CanvasGenerationToolError and conformance CanvasGenerationToolError();
    v54 = swift_allocError();
    *v69 = xmmword_1D405FCB0;
    *(v69 + 16) = 2;
    swift_willThrow();
  }

  v55 = v38;
  v56 = v54;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v57, v58))
  {

    v37 = v54;

    goto LABEL_18;
  }

  v59 = swift_slowAlloc();
  v60 = swift_slowAlloc();
  v72[0] = v60;
  *v59 = 136315394;
  v61 = CanvasGenerationTool.nameAndPointerDescription.getter();
  v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v72);

  *(v59 + 4) = v63;
  *(v59 + 12) = 2080;
  swift_getErrorValue();
  v64 = Error.localizedDescription.getter();
  v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v72);

  *(v59 + 14) = v66;
  _os_log_impl(&dword_1D38C4000, v57, v58, "%s throw an error: %s", v59, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1DA6D0660](v60, -1, -1);
  MEMORY[0x1DA6D0660](v59, -1, -1);
}

void CanvasGenerationTool.gestureRecognizerChanged(_:)(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_wandPath];
  if (v2)
  {
    path = v2;
    [a1 locationInView_];
    v5 = v4;
    v7 = v6;
    CurrentPoint = CGPathGetCurrentPoint(path);
    if (CurrentPoint.x != v5 || CurrentPoint.y != v7)
    {
      v10 = &v1[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_previousGesturePoint1];
      if ((v1[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_previousGesturePoint1 + 16] & 1) == 0)
      {
        v11 = *v10;
        v12 = *(v10 + 1);
        v13 = &v1[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_previousGesturePoint2];
        if (v1[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_previousGesturePoint2 + 16])
        {
          transform.a = 1.0;
          transform.b = 0.0;
          transform.c = 0.0;
          transform.d = 1.0;
          transform.tx = 0.0;
          transform.ty = 0.0;
          CGMutablePathRef.addQuadCurve(to:control:transform:)(__PAIR128__(*&v7, *&v5), __PAIR128__(v12, *&v11), &transform);
        }

        else
        {
          v22 = *v13;
          v23 = v13[1];
          transform.a = 1.0;
          transform.b = 0.0;
          transform.c = 0.0;
          transform.d = 1.0;
          transform.tx = 0.0;
          transform.ty = 0.0;
          CGMutablePathRef.addCurve(to:control1:control2:transform:)(__PAIR128__(*&v7, *&v5), __PAIR128__(v12, *&v11), __PAIR128__(v23, v22), &transform);
        }
      }

      v24 = v10[16];
      v25 = &v1[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_previousGesturePoint2];
      *v25 = *v10;
      v25[16] = v24;
      *v10 = v5;
      *(v10 + 1) = v7;
      v10[16] = 0;
      v26 = *&v1[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeVC];
      [v26 updateSelectionWithPath:path pencilLocation:{v5, v7}];
    }
  }

  else
  {
    if (one-time initialization token for generativeLogger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, generativeLogger);
    v15 = v1;
    path = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(path, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&transform.a = v18;
      *v17 = 136315138;
      v19 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &transform);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1D38C4000, path, v16, "%s returning (wandPath or magicVC is nil)", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1DA6D0660](v18, -1, -1);
      MEMORY[0x1DA6D0660](v17, -1, -1);
    }
  }
}

void CanvasGenerationTool.gestureRecognizerEnded(_:)(void *a1)
{
  v150 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v138 = (&v135 - v4);
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, generativeLogger);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v148[0].i64[0] = v11;
    *v10 = 136315394;
    v12 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v14 = v6;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v148[0].i64);

    *(v10 + 4) = v15;
    v6 = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000001D4084AD0, v148[0].i64);
    _os_log_impl(&dword_1D38C4000, v8, v9, "%s %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v11, -1, -1);
    MEMORY[0x1DA6D0660](v10, -1, -1);
  }

  v16 = *&v7[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_wandPath];
  if (!v16)
  {
    v35 = v7;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v148[0].i64[0] = v39;
      *v38 = 136315138;
      v40 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v148[0].i64);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_1D38C4000, v36, v37, "%s returning (wand path or canvas is nil)", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1DA6D0660](v39, -1, -1);
      MEMORY[0x1DA6D0660](v38, -1, -1);
    }

    goto LABEL_19;
  }

  v17 = *&v7[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_magicGenerativeVC];
  if (!v17)
  {
    v35 = v7;
    v43 = v16;
    v36 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v148[0].i64[0] = v46;
      *v45 = 136315138;
      v47 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v148[0].i64);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_1D38C4000, v36, v44, "%s returning (magicGenerativeVC is nil)", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x1DA6D0660](v46, -1, -1);
      MEMORY[0x1DA6D0660](v45, -1, -1);
    }

LABEL_19:
    v148[0].i8[0] = v35[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState];
    LOBYTE(v146.a) = 7;
    if ((specialized static MagicGenerativePlaygroundState.supportsTransition(from:to:)(v148, &v146) & 1) == 0)
    {
      return;
    }

    v148[0].i8[0] = 7;
    v50 = v148;
    goto LABEL_41;
  }

  v139 = v17;
  v18 = v16;
  [a1 locationInView_];
  v20 = v19;
  v22 = v21;
  *&v136 = OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_canvas;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x588))())
    {
      v25 = swift_unknownObjectWeakLoadStrong();
      [a1 locationInView_];
      v27 = v26;
      v29 = v28;

      v30 = swift_unknownObjectWeakLoadStrong();
      if (v30)
      {
        v31 = v30;
        v32 = [v30 hitAttachment:1 includeStandinAttachment:1 expandBottomAttachment:{v27, v29}];
        if (v32)
        {
          v33 = v32;
          v34 = [v32 attachmentContainerView];

          type metadata accessor for AnyCanvas(0);
          if (swift_dynamicCastClass())
          {
            swift_unknownObjectWeakAssign();
          }

          v24 = v34;
        }

        else
        {
        }
      }
    }
  }

  v51 = v7;
  v52 = v18;
  v137 = v6;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *&v135 = swift_slowAlloc();
    v148[0].i64[0] = v135;
    *v55 = 136315650;
    v56 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v58 = v51;
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v148[0].i64);

    *(v55 + 4) = v59;
    *(v55 + 12) = 2080;
    v60 = CGPoint.debugDescription.getter();
    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v148[0].i64);

    *(v55 + 14) = v62;
    *(v55 + 22) = 2080;
    CGPathGetBoundingBox(v52);
    v63 = CGRect.debugDescription.getter();
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v148[0].i64);

    *(v55 + 24) = v65;
    v51 = v58;
    _os_log_impl(&dword_1D38C4000, v53, v54, "%s gesture ended (location = %s, boundingBox = %s)", v55, 0x20u);
    v66 = v135;
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v66, -1, -1);
    MEMORY[0x1DA6D0660](v55, -1, -1);
  }

  v67 = v52;
  CurrentPoint = CGPathGetCurrentPoint(v67);
  if (CurrentPoint.x != v20 || CurrentPoint.y != v22)
  {
    v70 = (v51 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_previousGesturePoint1);
    if ((*(&v51->_constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_previousGesturePoint1) & 1) == 0)
    {
      v71 = *v70;
      v72 = v70[1];
      v73 = (v51 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_previousGesturePoint2);
      if (*(&v51->_constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_previousGesturePoint2))
      {
        v146.a = 1.0;
        v146.b = 0.0;
        v146.c = 0.0;
        v146.d = 1.0;
        v146.tx = 0.0;
        v146.ty = 0.0;
        CGMutablePathRef.addQuadCurve(to:control:transform:)(__PAIR128__(*&v22, *&v20), __PAIR128__(v72, v71), &v146);
      }

      else
      {
        v74 = *v73;
        v75 = v73[1];
        v146.a = 1.0;
        v146.b = 0.0;
        v146.c = 0.0;
        v146.d = 1.0;
        v146.tx = 0.0;
        v146.ty = 0.0;
        CGMutablePathRef.addCurve(to:control1:control2:transform:)(__PAIR128__(*&v22, *&v20), __PAIR128__(v72, v71), __PAIR128__(v75, v74), &v146);
      }
    }
  }

  CGPathCloseSubpath(v67);
  v76 = v51 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_previousGesturePoint1;
  *v76 = 0;
  *(v76 + 1) = 0;
  v76[16] = 1;
  v77 = v51 + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_previousGesturePoint2;
  *v77 = 0;
  *(v77 + 1) = 0;
  v77[16] = 1;
  [v139 finishSelectionWithPath:v67 pencilLocation:{v20, v22}];
  BoundingBox = CGPathGetBoundingBox(v67);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  v82 = CGRectGetWidth(BoundingBox);
  v152.origin.x = x;
  v152.origin.y = y;
  v152.size.width = width;
  v152.size.height = height;
  v83 = CGRectGetHeight(v152);
  if (v83 < v82)
  {
    v82 = v83;
  }

  v153.origin.x = x;
  v153.origin.y = y;
  v153.size.width = width;
  v153.size.height = height;
  v84 = CGRectGetWidth(v153);
  v154.origin.x = x;
  v154.origin.y = y;
  v154.size.width = width;
  v154.size.height = height;
  v85 = CGRectGetHeight(v154);
  if (v82 < 64.0 || (v86 = y + (v85 - v82) * 0.5, v87 = x + (v84 - v82) * 0.5, v155.origin.x = v87, v155.origin.y = v86, v155.size.width = v82, v155.size.height = v82, CGRectGetHeight(v155) < 64.0))
  {

    v88 = v51;
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v148[0].i64[0] = v92;
      *v91 = 136315138;
      v93 = CanvasGenerationTool.nameAndPointerDescription.getter();
      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, v148[0].i64);

      *(v91 + 4) = v95;
      _os_log_impl(&dword_1D38C4000, v89, v90, "%s returning (generation area is too small)", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v92);
      MEMORY[0x1DA6D0660](v92, -1, -1);
      MEMORY[0x1DA6D0660](v91, -1, -1);
    }

    v148[0].i8[0] = *(&v88->super.super.isa + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState);
    LOBYTE(v143[0]) = 7;
    if (specialized static MagicGenerativePlaygroundState.supportsTransition(from:to:)(v148, v143))
    {
      v148[0].i8[0] = 7;
      v50 = v148;
LABEL_41:
      CanvasGenerationTool.magicGenerativeState.setter(v50);
      CanvasGenerationTool.resetGenerativeTool()();
      return;
    }

    return;
  }

  v156.origin.x = v87;
  v156.origin.y = v86;
  v156.size.width = v82;
  v156.size.height = v82;
  MidX = CGRectGetMidX(v156);
  v157.origin.x = v87;
  v157.origin.y = v86;
  v157.size.width = v82;
  v157.size.height = v82;
  *&v97 = CGRectGetMidY(v157);
  CanvasGenerationTool.allocateGenerationFrame(for:with:)(__PAIR128__(*&v82, *&v82), __PAIR128__(v97, *&MidX));
  v98 = swift_unknownObjectWeakLoadStrong();
  v99 = v67;
  if (!v98)
  {
LABEL_52:
    v110 = *(&v51->super.super.isa + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame);
    v111 = *(&v51->super._responderFlags + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame);
    v112 = *(&v51->_constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame);
    v113 = *(&v51->_cachedTraitCollection + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrame);
    [(UIView *)v51 bounds];
    v115 = v114;
    if (CGRect.isFinite.getter(v110, v111, v112, v113))
    {
      v116 = *(&v51->super.super.isa + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_initialGenerationFrameViewWidth);
      if (v116 > 0.0 && v115 > 0.0)
      {
        CGAffineTransformMakeScale(&v142, v115 / v116, v115 / v116);
        v158.origin.x = v110;
        v158.origin.y = v111;
        v158.size.width = v112;
        v158.size.height = v113;
        v159 = CGRectApplyAffineTransform(v158, &v142);
        v110 = v159.origin.x;
        v111 = v159.origin.y;
        v112 = v159.size.width;
        v113 = v159.size.height;
      }
    }

    v117 = [objc_allocWithZone(PPKGPMagicPaperState) initWithFrame:1 isEditing:{v110, v111, v112, v113}];
    [v139 setState_];

    LOBYTE(v142.a) = 4;
    CanvasGenerationTool.magicGenerativeState.setter(&v142);
    CanvasGenerationTool.addMagicGenerativeBackgroundView()();
    v118 = swift_unknownObjectWeakLoadStrong();
    if (v118)
    {
      v119 = v118;
      v120 = TiledTextView.imageWandTipController.getter();
      ImageWandTipController.userDidUseImageWand()();
    }

    v121 = type metadata accessor for TaskPriority();
    v122 = v138;
    (*(*(v121 - 8) + 56))(v138, 1, 1, v121);
    type metadata accessor for MainActor();
    v123 = v51;
    v124 = static MainActor.shared.getter();
    v125 = swift_allocObject();
    v126 = MEMORY[0x1E69E85E0];
    v125[2] = v124;
    v125[3] = v126;
    v125[4] = v123;
    v125[5] = v99;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v122, &async function pointer to partial apply for specialized closure #1 in CanvasGenerationTool.gestureRecognizerEnded(_:), v125);

    return;
  }

  v100 = v98;
  UIView.transformForConvertingFromView(_:)(&v142, v51);
  v101 = MEMORY[0x1DA6CF2B0](v67, &v142);
  if (!v101)
  {
    v99 = v67;
    goto LABEL_51;
  }

  v102 = v101;
  v103 = MEMORY[0x1E69E7D40];
  v104 = (*((*MEMORY[0x1E69E7D40] & *v100) + 0x440))();
  (*((*v103 & *v104) + 0x2C0))(v143);
  v135 = v143[1];
  v136 = v143[0];
  v105 = v144;
  v106 = v145;

  (*((*v103 & *v100) + 0x858))(v148);
  if (v149)
  {
    v107 = -1;
  }

  else
  {
    v107 = 0;
  }

  v108 = vdupq_n_s64(v107);
  *&t1.a = v136;
  *&t1.c = v135;
  t1.tx = v105;
  t1.ty = v106;
  *&v141.a = vbslq_s8(v108, xmmword_1D4059320, v148[0]);
  *&v141.c = vbslq_s8(v108, xmmword_1D4059310, v148[1]);
  *&v141.tx = vbicq_s8(v148[2], v108);
  CGAffineTransformConcat(&v140, &t1, &v141);
  v141 = v140;
  CGAffineTransformInvert(&t1, &v141);
  v109 = MEMORY[0x1DA6CF2B0](v102, &t1);
  if (v109)
  {
    v99 = v109;

    v100 = v67;
LABEL_51:

    goto LABEL_52;
  }

  v127 = v51;
  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    *&t1.a = v131;
    *v130 = 136315138;
    v138 = v128;
    v132 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v133, &t1);

    *(v130 + 4) = v134;
    v128 = v138;
    _os_log_impl(&dword_1D38C4000, v138, v129, "%s returning (modelSpacePath is nil)", v130, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v131);
    MEMORY[0x1DA6D0660](v131, -1, -1);
    MEMORY[0x1DA6D0660](v130, -1, -1);
  }

  LOBYTE(v142.a) = *(&v127->super.super.isa + OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState);
  LOBYTE(t1.a) = 7;
  if (specialized static MagicGenerativePlaygroundState.supportsTransition(from:to:)(&v142, &t1))
  {
    LOBYTE(v142.a) = 7;
    v50 = &v142;
    goto LABEL_41;
  }
}

uint64_t specialized closure #1 in CanvasGenerationTool.gestureRecognizerEnded(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in CanvasGenerationTool.gestureRecognizerEnded(_:), v7, v6);
}

uint64_t specialized closure #1 in CanvasGenerationTool.gestureRecognizerEnded(_:)()
{
  CanvasGenerationTool.hideToolPickerIfNeeded()();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = specialized closure #1 in CanvasGenerationTool.gestureRecognizerEnded(_:);
  v2 = *(v0 + 24);

  return CanvasGenerationTool.initiateMagicGenerativePlayground(for:invocation:)(v2, 1);
}

{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = specialized closure #1 in CanvasGenerationTool.gestureRecognizerEnded(_:);
  }

  else
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = specialized closure #1 in CanvasGenerationTool.gestureRecognizerEnded(_:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

{
  v1 = *(v0 + 16);

  [v1 setHidden_];
  v2 = *(v0 + 8);

  return v2();
}

void CanvasGenerationTool.gestureRecognizerCanceledOrFailed(_:)(void *a1)
{
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, generativeLogger);
  v4 = a1;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315394;
    v10 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v25);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    v13 = [v4 state];

    *(v8 + 14) = v13;
    _os_log_impl(&dword_1D38C4000, v6, v7, "%s gesture %ld", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1DA6D0660](v9, -1, -1);
    MEMORY[0x1DA6D0660](v8, -1, -1);
  }

  else
  {
  }

  v14 = &v5[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_previousGesturePoint1];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = &v5[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool_previousGesturePoint2];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  [v5 setHidden_];
  if (v5[OBJC_IVAR____TtC8PaperKit20CanvasGenerationTool__magicGenerativeState] == 2)
  {

LABEL_9:
    LOBYTE(v25) = 7;
    CanvasGenerationTool.magicGenerativeState.setter(&v25);
    CanvasGenerationTool.resetGenerativeTool()();
    return;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    goto LABEL_9;
  }

  v17 = v5;
  oslog = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315138;
    v21 = CanvasGenerationTool.nameAndPointerDescription.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v25);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1D38C4000, oslog, v18, "%s returning (transition state is inapplicable)", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1DA6D0660](v20, -1, -1);
    MEMORY[0x1DA6D0660](v19, -1, -1);
  }
}

uint64_t partial apply for specialized closure #1 in CanvasGenerationTool.gestureRecognizerEnded(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return specialized closure #1 in CanvasGenerationTool.gestureRecognizerEnded(_:)(a1, v4, v5, v7, v6);
}

void CanvasElementDrawingView.liveStreamingDisplayLink.setter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveStreamingDisplayLink);
  *(v1 + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveStreamingDisplayLink) = a1;
  v10 = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

    if (v5)
    {
      v6 = off_1F4F60E88;
      type metadata accessor for AnyCanvas(0);
      v7 = v6();
      v8 = AnyCanvas.isLiveEditing()();
      if (v8 == v5[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isCurrentlyLiveEditing])
      {
        v5[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isCurrentlyLiveEditing] = v8;
        if ((v7 & 1) == 0)
        {
LABEL_12:

          return;
        }
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        lazy protocol witness table accessor for type AnyCanvas and conformance AnyCanvas(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        if ((v7 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      if ((v6() & 1) == 0)
      {
        specialized LiveEditable.resumeLiveEditingContinuations()();
      }

      goto LABEL_12;
    }
  }
}

id CanvasElementDrawingView.init(frame:drawing:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveStreamingDisplayLink] = 0;
  *&v6[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveStreamingStartTimeInterval] = 0;
  *&v6[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveErasingDrawing] = 0;
  *&v6[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate] = 0;
  v12 = OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_latestEndOfStrokeTimestamp;
  *&v6[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_latestEndOfStrokeTimestamp] = 0;
  PKDrawing._bridgeToObjectiveC()(v12);
  v14 = v13;
  v20.receiver = v6;
  v20.super_class = type metadata accessor for CanvasElementDrawingView();
  v15 = objc_msgSendSuper2(&v20, sel_initWithFrame_drawing_, v14, a2, a3, a4, a5);

  v16 = v15;
  v17 = MEMORY[0x1DA6CCED0](0xD000000000000028, 0x80000001D4084F30);
  [v16 setAccessibilityIdentifier_];

  v18 = type metadata accessor for PKDrawing();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v16;
}

void __swiftcall CanvasElementDrawingView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  v4 = v3;
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v9 = Strong;
  v10 = MEMORY[0x1E69E7D40];
  v11 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
  if (v11)
  {
    v12 = v11;
    v13 = (*((*v10 & *v11) + 0x440))();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit26ContainerCanvasElementViewCyAA5ImageVGMd, &_s8PaperKit26ContainerCanvasElementViewCyAA5ImageVGMR);
    v14 = swift_dynamicCastClass();
    if (v14 && (v15 = *(v14 + *((*v10 & *v14) + 0x568))) != 0)
    {
      v16 = [v15 hitTest:0 withEvent:{x, y}];

      if (v16)
      {

        return;
      }
    }

    else
    {
    }
  }

  [v4 convertPoint:v9 toCoordinateSpace:{x, y}];
  v17 = [v9 hitTest:isa withEvent:?];

  if (!v17)
  {
LABEL_9:
    v19.receiver = v4;
    v19.super_class = type metadata accessor for CanvasElementDrawingView();
    v18 = [(UIView_optional *)&v19 hitTest:isa withEvent:x, y];
  }
}

Swift::Void __swiftcall CanvasElementDrawingView.initializeMathRecognitionIfNecessary()()
{
  v1 = v0;
  v2 = type metadata accessor for PKDrawing();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = MEMORY[0x1E69E7D40];
    v9 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

    if (v9)
    {
      v35 = &type metadata for PencilAndPaperFeatureFlags;
      v36 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
      LOBYTE(v34.f64[0]) = 5;
      v10 = isFeatureEnabled(_:)();
      v11 = __swift_destroy_boxed_opaque_existential_0(&v34);
      if ((v10 & 1) == 0)
      {
        goto LABEL_27;
      }

      v12 = OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate;
      if (!*&v1[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate] && (v14 = [v1 drawing], static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)(), v14, v15 = PKDrawing.strokes.getter(), (*(v3 + 8))(v5, v2), v16 = *(v15 + 16), v11 = , v16) && (v11 = (*((*v8 & *v9) + 0x9F8))(v11)) != 0)
      {
        swift_unknownObjectRelease();
        if (one-time initialization token for mathLogger != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, mathLogger);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_1D38C4000, v18, v19, "Creating MathRecognitionViewControllerDelegate", v20, 2u);
          MEMORY[0x1DA6D0660](v20, -1, -1);
        }

        v21 = v9;
        v22 = [v1 recognitionController];
        objc_allocWithZone(type metadata accessor for MathRecognitionViewControllerDelegate());
        v23 = MathRecognitionViewControllerDelegate.init(canvas:view:recognitionController:)(v21, v1, v22);
        v24 = *&v1[v12];
        *&v1[v12] = v23;
      }

      else
      {
        if ((*((*v8 & *v9) + 0x9F8))(v11))
        {
          swift_unknownObjectRelease();
          v13 = *&v1[v12];
          if (v13)
          {
            goto LABEL_17;
          }

          goto LABEL_27;
        }

        v24 = *&v1[v12];
        *&v1[v12] = 0;
      }

      v13 = *&v1[v12];
      if (v13)
      {
LABEL_17:
        v25 = *(v13 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController);
        if (v25)
        {
          v26 = *((*v8 & *v9) + 0xA00);
          v27 = v25;
          v26(&v34);
          v28 = LOBYTE(v34.f64[0]);
          if ([v27 solvingStyle] != v28)
          {
            if (one-time initialization token for mathLogger != -1)
            {
              swift_once();
            }

            v29 = type metadata accessor for Logger();
            __swift_project_value_buffer(v29, mathLogger);
            v30 = Logger.logObject.getter();
            v31 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v30, v31))
            {
              v32 = swift_slowAlloc();
              *v32 = 134217984;
              *(v32 + 4) = v28;
              _os_log_impl(&dword_1D38C4000, v30, v31, "Setting solving style: %ld", v32, 0xCu);
              MEMORY[0x1DA6D0660](v32, -1, -1);
            }

            [v27 setSolvingStyle_];
          }

          [v1 drawingTransform];
          v33 = sqrt(vaddvq_f64(vmulq_f64(v34, v34)));
          if (v33 > 0.0)
          {
            [v9 bounds];
            [v27 setCanvasWidth_];
          }
        }
      }

LABEL_27:
    }
  }
}

Swift::Void __swiftcall CanvasElementDrawingView.didMoveToWindow()()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = type metadata accessor for CanvasElementDrawingView();
  objc_msgSendSuper2(&v23, sel_didMoveToWindow);
  v2 = [v0 window];
  if (v2)
  {

    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = MEMORY[0x1E69E7D40];
    if (Strong && (v5 = Strong, v6 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))(), v5, v6))
    {
      v7 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_wantsDataDetection;
      swift_beginAccess();
      v8 = v6[v7];
    }

    else
    {
      v8 = 1;
    }

    [v1 setWantsDataDetection_];
    v9 = objc_opt_self();
    v10 = [v9 standardUserDefaults];
    v11 = MEMORY[0x1DA6CCED0](0xD000000000000028, 0x80000001D4084ED0);
    v12 = [v10 BOOLForKey_];

    [v1 setWantsHashtagDetection_];
    v13 = [v9 standardUserDefaults];
    v14 = MEMORY[0x1DA6CCED0](0xD000000000000028, 0x80000001D4084ED0);
    v15 = [v13 BOOLForKey_];

    [v1 setWantsMentionDetection_];
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16 && (v17 = v16, v18 = (*((*v4 & *v16) + 0x90))(), v17, v18))
    {
      v19 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_isSharedViaICloud;
      swift_beginAccess();
      v20 = v18[v19];
    }

    else
    {
      v20 = 0;
    }

    [v1 setIsSharedViaICloud_];
  }

  else
  {
    v21 = *&v0[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate];
    if (v21)
    {
      v22 = *(v21 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController);
      if (v22)
      {
        [v22 dismissPopovers];
      }
    }
  }
}

Swift::Void __swiftcall CanvasElementDrawingView.layoutSubviews()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CanvasElementDrawingView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  CanvasElementDrawingView.initializeMathRecognitionIfNecessary()();
  v1 = *&v0[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate];
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController);
    if (v2)
    {
      [v2 layoutSubviews];
    }
  }
}

Swift::Void __swiftcall CanvasElementDrawingView.eraserMoved(toLocation:)(CGPoint toLocation)
{
  y = toLocation.y;
  x = toLocation.x;
  v4 = *&v1[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate];
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController);
    if (v5)
    {
      [v5 eraserMovedToLocation_];
    }
  }

  v6.receiver = v1;
  v6.super_class = type metadata accessor for CanvasElementDrawingView();
  objc_msgSendSuper2(&v6, sel_eraserMovedToLocation_, x, y);
}

void CanvasElementDrawingView.additionalStrokes.didset()
{
  v1 = type metadata accessor for PKStroke();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v34 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v7 = &v26 - v6;
  v8 = [v0 additionalStrokes];
  if (v8)
  {
    v27 = v0;
    v9 = v8;
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = *(v10 + 16);
    if (v33)
    {
      v11 = 0;
      v28 = (v2 + 8);
      v31 = (v2 + 32);
      v32 = v2 + 16;
      v12 = MEMORY[0x1E69E7CC0];
      v29 = v10;
      v30 = v1;
      while (v11 < *(v10 + 16))
      {
        v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
        v14 = *(v2 + 72);
        (*(v2 + 16))(v7, v10 + v13 + v14 * v11, v1);
        isa = PKStroke._bridgeToObjectiveC()().super.isa;
        v16 = [(objc_class *)isa _isHidden];

        if (v16)
        {
          v17 = *v31;
          (*v31)(v34, v7, v1);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v35 = v12;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1);
            v12 = v35;
          }

          v20 = *(v12 + 16);
          v19 = *(v12 + 24);
          if (v20 >= v19 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
            v12 = v35;
          }

          *(v12 + 16) = v20 + 1;
          v21 = v12 + v13 + v20 * v14;
          v1 = v30;
          v17(v21, v34, v30);
          v10 = v29;
        }

        else
        {
          (*v28)(v7, v1);
        }

        if (v33 == ++v11)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:

      v22 = *&v27[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate];
      if (v22 && (v23 = *(v22 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController)) != 0)
      {
        v24 = v23;
        v25 = Array._bridgeToObjectiveC()().super.isa;

        [v24 didEraseStrokes_];
      }

      else
      {
      }
    }
  }
}

uint64_t CanvasElementDrawingView.becomeFirstResponder()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type AnyCanvas and conformance AnyCanvas(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1DA6CD890](0, v11, v8, v14);
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
  return 0;
}

void closure #1 in CanvasElementDrawingView.becomeFirstResponder()(uint64_t a1, const char **a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
    if (v4)
    {
      v5 = *a2;
      v6 = v4;
      [v4 v5];

      v7 = v6;
    }

    else
    {
      v7 = v8;
    }
  }
}

Swift::Void __swiftcall CanvasElementDrawingView.drawingDidChangeVisibleStrokes(_:)(Swift::Bool a1)
{
  v3 = type metadata accessor for PKDrawing();
  MEMORY[0x1EEE9AC00](v3);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CanvasElementDrawingView();
  objc_msgSendSuper2(&v8, sel_drawingDidChangeVisibleStrokes_, a1);
  v4 = [v1 drawing];
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for PKDrawingCoherence(0);
  if (swift_dynamicCast())
  {
    CanvasElementDrawingView.mergeLiveEraseDrawing()();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x2F8))();
    }

    CanvasElementDrawingView.initializeMathRecognitionIfNecessary()();
  }
}

void __swiftcall CanvasElementDrawingView.inlineView(at:)(UIView_optional *__return_ptr retstr, CGPoint at)
{
  y = at.y;
  x = at.x;
  v5 = *&v2[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate];
  if (!v5 || (v6 = *(v5 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController)) == 0 || ![v6 hitTest_])
  {
    v8.receiver = v2;
    v8.super_class = type metadata accessor for CanvasElementDrawingView();
    v7 = [(UIView_optional *)&v8 inlineViewAtPoint:x, y];
  }
}

void CanvasElementDrawingView.drawingTransform.getter(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v8 = xmmword_1D4059320;
    v9 = 0uLL;
    ty = 0.0;
    a = 1.0;
    goto LABEL_7;
  }

  v3 = Strong;
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
  }

  else
  {
    v10 = MEMORY[0x1E69E7D40];
    v11 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x90))();
    if (v11)
    {
      v12 = v11;
      (*((*v10 & *v11) + 0x858))(&v15);

      if ((v19 & 1) == 0)
      {
        ty = v18;
        v13 = v16;
        v14 = v17;
        v5 = &v15;
        goto LABEL_5;
      }
    }
  }

  v5 = &v20;
  AnyCanvasElementView.paperBoundsTransform()(&v20);
  v13 = *&v20.b;
  v14 = *&v20.d;
  ty = v20.ty;
LABEL_5:
  a = v5->a;

  v9 = v13;
  v8 = v14;
LABEL_7:
  *a1 = a;
  *(a1 + 8) = v9;
  *(a1 + 24) = v8;
  *(a1 + 40) = ty;
}

uint64_t CanvasElementDrawingView.merge<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for PKDrawing();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v15 = &v27 - v14;
  v16 = [v3 drawing];
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v9 + 32))(v15, v11, v8);
  type metadata accessor for PKDrawingCoherence(0);
  swift_dynamicCast();
  v17 = v29;
  v18 = PKDrawingCoherence.merge<A>(_:)(a1, a2, a3);

  if (v18)
  {
    v19 = type metadata accessor for CanvasElementDrawingView();
    v28.receiver = v4;
    v28.super_class = v19;
    objc_msgSendSuper2(&v28, sel_drawingDidChange);
    v20 = [v4 tiledView];
    if (v20)
    {
      v21 = v20;
      v22 = [v4 drawing];
      static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

      PKDrawing._bridgeToObjectiveC()(v23);
      v25 = v24;
      (*(v9 + 8))(v15, v8);
      [v21 updateCurrentSelectionWithNewDrawingIfNecessary_];
    }
  }

  return v18 & 1;
}

Swift::Void __swiftcall CanvasElementDrawingView.didBeginDrawing()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CanvasElementDrawingView();
  objc_msgSendSuper2(&v5, sel_didBeginDrawing);
  v1 = *&v0[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate];
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController);
    if (v2)
    {
      [v2 didBeginDrawing];
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x308))();
  }
}

void CanvasElementDrawingView.beganStroke(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = PKStroke._bridgeToObjectiveC()().super.isa;
  v7 = type metadata accessor for CanvasElementDrawingView();
  v19.receiver = v1;
  v19.super_class = v7;
  objc_msgSendSuper2(&v19, sel_beganStroke_, isa);

  [*&v1[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveStreamingDisplayLink] invalidate];
  CanvasElementDrawingView.liveStreamingDisplayLink.setter(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

    if (v10)
    {
      swift_getKeyPath();
      v18[1] = v10;
      lazy protocol witness table accessor for type AnyCanvas and conformance AnyCanvas(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v11 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__liveStreamDrawings;
      swift_beginAccess();
      LODWORD(v11) = v10[v11];

      if (v11 == 1)
      {
        v12 = [objc_opt_self() displayLinkWithTarget:v1 selector:sel_displayLinkUpdateLiveDrawing];
        [v12 setPreferredFramesPerSecond_];
        v13 = [objc_opt_self() currentRunLoop];
        [v12 addToRunLoop:v13 forMode:*MEMORY[0x1E695DA28]];

        v14 = v12;
        CanvasElementDrawingView.liveStreamingDisplayLink.setter(v12);
        v15 = [objc_opt_self() now];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        Date.timeIntervalSinceReferenceDate.getter();
        v17 = v16;

        (*(v3 + 8))(v5, v2);
        *&v1[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveStreamingStartTimeInterval] = v17;
      }
    }
  }
}

Swift::Void __swiftcall CanvasElementDrawingView.displayLinkUpdateLiveDrawing()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit8PKStrokeVSgMd, &_s9PencilKit8PKStrokeVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() now];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSinceReferenceDate.getter();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  if (*(v1 + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveStreamingStartTimeInterval) + 60.0 < v11)
  {
    [*(v1 + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveStreamingDisplayLink) invalidate];
    CanvasElementDrawingView.liveStreamingDisplayLink.setter(0);
  }

  v12 = type metadata accessor for PKStroke();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  CanvasElementDrawingView.updateLiveDrawing(stroke:)(v4);
  outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9PencilKit8PKStrokeVSgMd, &_s9PencilKit8PKStrokeVSgMR);
}

void CanvasElementDrawingView.updateLiveDrawing(stroke:)(uint64_t a1)
{
  v37 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit8PKStrokeVSgMd, &_s9PencilKit8PKStrokeVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v34 - v2;
  v4 = type metadata accessor for PKStroke();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

    if (v16)
    {
      swift_getKeyPath();
      v36 = v5;
      v39 = v16;
      lazy protocol witness table accessor for type AnyCanvas and conformance AnyCanvas(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v17 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__liveStreamDrawings;
      swift_beginAccess();
      LODWORD(v17) = v16[v17];

      if (v17 == 1)
      {
        v18 = swift_unknownObjectWeakLoadStrong();
        if (v18)
        {
          v19 = v18;
          v20 = (*((*MEMORY[0x1E69E7D40] & *v18) + 0x90))();

          if (v20)
          {
            v21 = (*((*MEMORY[0x1E69E7D40] & *v20) + 0x468))();

            if (v21)
            {
              v22 = [v21 _liveDrawing];
              v35 = v21;
              if (v22)
              {
                v23 = v22;
                static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

                v24 = 0;
              }

              else
              {
                v24 = 1;
              }

              v25 = type metadata accessor for PKDrawing();
              v26 = *(v25 - 8);
              (*(v26 + 56))(v10, v24, 1, v25);
              outlined init with take of PKDrawing?(v10, v13);
              if ((*(v26 + 48))(v13, 1, v25) == 1)
              {

                outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
                return;
              }

              type metadata accessor for PKDrawingCoherence(0);
              if ((swift_dynamicCast() & 1) == 0)
              {

                return;
              }

              v27 = v38;
              outlined init with copy of Date?(v37, v3, &_s9PencilKit8PKStrokeVSgMd, &_s9PencilKit8PKStrokeVSgMR);
              v28 = v36;
              if ((*(v36 + 48))(v3, 1, v4) == 1)
              {
                outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s9PencilKit8PKStrokeVSgMd, &_s9PencilKit8PKStrokeVSgMR);
              }

              else
              {
                (*(v28 + 32))(v7, v3, v4);
                v29.super.isa = PKStroke._bridgeToObjectiveC()().super.isa;
                v30 = [v27 _rootStrokesCount];
                if (__OFSUB__(v30, 1))
                {
                  __break(1u);
                  return;
                }

                [v27 updateStroke:v29.super.isa indexHint:v30 - 1];

                (*(v28 + 8))(v7, v4);
              }

              v31 = swift_unknownObjectWeakLoadStrong();
              v32 = v35;
              if (v31)
              {
                v33 = v31;
                (*((*MEMORY[0x1E69E7D40] & *v31) + 0x2F8))(v27);
              }
            }
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall CanvasElementDrawingView.mergeLiveEraseDrawing()()
{
  v1 = type metadata accessor for PKDrawing();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveErasingDrawing;
  v9 = *&v0[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveErasingDrawing];
  if (v9)
  {
    v10 = v9;
    v11 = [v0 drawing];
    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v2 + 32))(v7, v4, v1);
    type metadata accessor for PKDrawingCoherence(0);
    swift_dynamicCast();
    v12 = v15;
    [v15 mergeWithDrawing_];

    v13 = *&v0[v8];
    *&v0[v8] = 0;
  }
}

Swift::Void __swiftcall CanvasElementDrawingView.drawingDidEraseStrokes(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v39 - v6;
  v41 = type metadata accessor for PKDrawing();
  MEMORY[0x1EEE9AC00](v41);
  rawValue = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PKStroke();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v11 = type metadata accessor for CanvasElementDrawingView();
  v45.receiver = v2;
  v45.super_class = v11;
  objc_msgSendSuper2(&v45, sel_drawingDidEraseStrokes_, isa);

  v12 = *&v2[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate];
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController);
    if (v13)
    {
      v14 = v13;
      v15 = Array._bridgeToObjectiveC()().super.isa;
      [v14 didEraseStrokes_];
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v18 = Strong;
    v19 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
    if (v19)
    {
      v20 = v19;
      (*((*v17 & *v19) + 0x870))(v18);

      v18 = v20;
    }
  }

  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    v23 = (*((*MEMORY[0x1E69E7D40] & *v21) + 0x90))();

    if (v23)
    {
      swift_getKeyPath();
      v39[1] = v9;
      v44 = v23;
      lazy protocol witness table accessor for type AnyCanvas and conformance AnyCanvas(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v24 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__liveStreamDrawings;
      swift_beginAccess();
      LODWORD(v24) = v23[v24];

      if (v24 == 1)
      {
        v25 = [v2 drawing];
        static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

        v26 = type metadata accessor for PKDrawingCoherence(0);
        if (swift_dynamicCast())
        {
          v27 = v43;
          v28 = OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveErasingDrawing;
          v29 = *&v2[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveErasingDrawing];
          if (v29 || (v30 = OBJC_IVAR___PKDrawingCoherence_model, swift_beginAccess(), rawValue = a1._rawValue, v41 = v27, v31 = *(v5 + 16), v39[0] = v4, v31(v7, &v27[v30]), v32 = objc_allocWithZone(v26), (v31)(&v32[OBJC_IVAR___PKDrawingCoherence_model], v7, v4), v27 = v41, v42.receiver = v32, v42.super_class = v26, v33 = objc_msgSendSuper2(&v42, sel_init), (*(v5 + 8))(v7, v39[0]), v34 = *&v2[v28], *&v2[v28] = v33, v34, (v29 = *&v2[v28]) != 0))
          {
            v35 = v29;
            v36 = Array._bridgeToObjectiveC()().super.isa;
            [v35 deleteStrokes_];

            v37 = swift_unknownObjectWeakLoadStrong();
            if (v37)
            {
              v38 = v37;
              (*((*MEMORY[0x1E69E7D40] & *v37) + 0x2F8))(v35);
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

void CanvasElementDrawingView.endedStroke(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit8PKStrokeVSgMd, &_s9PencilKit8PKStrokeVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  isa = PKStroke._bridgeToObjectiveC()().super.isa;
  v8 = type metadata accessor for CanvasElementDrawingView();
  v26.receiver = v2;
  v26.super_class = v8;
  objc_msgSendSuper2(&v26, sel_endedStroke_, isa);

  v9 = *&v2[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate];
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController);
    if (v10)
    {
      [v10 dismissPopovers];
    }
  }

  *&v2[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_latestEndOfStrokeTimestamp] = CACurrentMediaTime();
  v11 = type metadata accessor for PKStroke();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  CanvasElementDrawingView.updateLiveDrawing(stroke:)(v6);
  outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9PencilKit8PKStrokeVSgMd, &_s9PencilKit8PKStrokeVSgMR);
  [*&v2[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveStreamingDisplayLink] invalidate];
  CanvasElementDrawingView.liveStreamingDisplayLink.setter(0);
  CanvasElementDrawingView.mergeLiveEraseDrawing()();
  v13 = [v2 tiledView];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 canvasView];

    if (v15)
    {
      v16 = [v15 drawingGestureRecognizer];

      v17 = [v16 state];
      if (v17 == 3)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          v20 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

          if (v20)
          {
            if (*&v20[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView])
            {

              _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(v21);
              v23 = v22;

              v24 = *(v23 + 16);

              if (v24)
              {
                AnyCanvas.selectedCanvasElementIds.setter(MEMORY[0x1E69E7CC0]);
              }
            }

            else
            {
              __break(1u);
            }
          }
        }
      }
    }
  }
}

uint64_t @objc CanvasElementDrawingView.beganStroke(_:)(void *a1, uint64_t a2, void *a3, void (*a4)(char *))
{
  v7 = type metadata accessor for PKStroke();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3;
  v12 = a1;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  a4(v10);
  return (*(v8 + 8))(v10, v7);
}

Swift::Void __swiftcall CanvasElementDrawingView.updateFrameForTextContainer()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    goto LABEL_5;
  }

  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x90))();
  if (v3)
  {
    v1 = v3;
    (*((*v2 & *v3) + 0x808))();
LABEL_5:
  }
}

uint64_t CanvasElementDrawingView.isAtEndOfDocument.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = 0;
    }

    else
    {
      v5 = MEMORY[0x1E69E7D40];
      v6 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
      if (!v6)
      {
        v4 = 0;
        goto LABEL_8;
      }

      v3 = v6;
      v4 = (*((*v5 & *v6) + 0x810))();
    }

LABEL_8:
    return v4 & 1;
  }

  v4 = 0;
  return v4 & 1;
}

Swift::Bool __swiftcall CanvasElementDrawingView.hit(byTouchLocation:bounds:)(CGPoint byTouchLocation, __C::CGRect bounds)
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v7 = byTouchLocation.y;
  v8 = byTouchLocation.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [v2 convertPoint:Strong toCoordinateSpace:{v8, v7}];
    v12 = v11;
    v14 = v13;
    [v2 convertRect:v10 toCoordinateSpace:{x, y, width, height}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {

LABEL_4:
      v32.origin.x = v16;
      v32.origin.y = v18;
      v32.size.width = v20;
      v32.size.height = v22;
      v31.x = v12;
      v31.y = v14;
      v24 = CGRectContainsPoint(v32, v31);

      return v24;
    }

    v26 = MEMORY[0x1E69E7D40];
    v27 = (*((*MEMORY[0x1E69E7D40] & *v10) + 0x90))();
    if (!v27)
    {
      goto LABEL_4;
    }

    v28 = v27;
    v29 = (*((*v26 & *v27) + 0x818))(v12, v14, v16, v18, v20, v22);

    return v29 & 1;
  }

  else
  {
    v30.receiver = v2;
    v30.super_class = type metadata accessor for CanvasElementDrawingView();
    return objc_msgSendSuper2(&v30, sel_hitByTouchLocation_bounds_, v8, v7, x, y, width, height);
  }
}

void CanvasElementDrawingView.height(from:delta:)(double a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = MEMORY[0x1E69E7D40];
    v6 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
    if (v6)
    {
      v8 = v6;
      PKDrawing._bridgeToObjectiveC()(v7);
      v10 = v9;
      (*((*v5 & *v8) + 0x820))(a1);

      return;
    }
  }

  PKDrawing.bounds.getter();
  CGRectGetHeight(v11);
  [v1 drawingTransform];
}

id CanvasElementDrawingView.attachmentContainerView.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MEMORY[0x1E69E7D40];
    v3 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
    if (v3)
    {
      v4 = v3;
      v5 = (*((*v2 & *v3) + 0x888))(v1);

      if (v5)
      {
        return v5;
      }
    }

    else
    {
    }
  }

  return v7;
}

void __swiftcall CanvasElementDrawingView.hitMiniMenu(_:)(UIView_optional *__return_ptr retstr, CGPoint a2)
{
  v3 = v2;
  y = a2.y;
  x = a2.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = MEMORY[0x1E69E7D40];
    v9 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
    if (v9)
    {
      v10 = v9;
      [v7 convertPoint:v3 fromCoordinateSpace:{x, y}];
      (*((*v8 & *v10) + 0x890))(v7);

      v7 = v10;
    }
  }
}

Swift::Bool __swiftcall CanvasElementDrawingView.hitChrome(_:isStylus:event:)(CGPoint _, Swift::Bool isStylus, UIEvent_optional event)
{
  v4 = v3;
  isa = event.value.super.isa;
  y = _.y;
  x = _.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = MEMORY[0x1E69E7D40];
    v12 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
    if (v12)
    {
      v13 = v12;
      [v10 convertPoint:v4 fromCoordinateSpace:{x, y}];
      v14 = (*((*v11 & *v13) + 0x898))(v10, isStylus, isa);

      v10 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

void CanvasElementDrawingView.proofreadingView(_:willPresentStringsFor:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v49 - v14;
  v62 = type metadata accessor for MagicPaperUsageProofreadingEvent(0);
  MEMORY[0x1EEE9AC00](v62);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CanvasElementDrawingView();
  v64 = v2;
  v68.receiver = v2;
  v68.super_class = v17;
  objc_msgSendSuper2(&v68, sel_proofreadingView_willPresentStringsForProofreadingItem_, a1, a2);
  v18 = specialized static MagicPaperUsageProofreadingEvent.ProofreadingType.from(_:)([a2 resultType]);
  if (v18 != 2)
  {
    v19 = v18;
    v20 = [a2 replacementStrings];
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v65 = v21;
    v61 = *(v21 + 16);
    if (v61)
    {
      v22 = 0;
      v58 = (v6 + 56);
      v59 = OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_canvasElementView;
      v56 = v19 & 1;
      v55 = (v6 + 48);
      v51 = (v6 + 32);
      v50 = (v6 + 8);
      v54 = "nerView";
      v23 = (v65 + 40);
      v60 = v12;
      v57 = v5;
      while (v22 < *(v65 + 16))
      {
        v26 = *v23;
        Strong = swift_unknownObjectWeakLoadStrong();
        v28 = Strong;
        v66 = v26;
        if (Strong)
        {
          v29 = MEMORY[0x1E69E7D40];
          v30 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

          if (v30)
          {
            v28 = (*((*v29 & *v30) + 0x468))();
          }

          else
          {
            v28 = 0;
          }
        }

        else
        {
        }

        v31 = v57;
        v32 = *v58;
        v33 = v63;
        (*v58)(v63, 1, 1, v57);
        v16[1] = 0;
        v16[65] = 0;
        *(v16 + 17) = 0;
        v16[72] = 0;
        *(v16 + 8) = 0u;
        *(v16 + 24) = 0u;
        *(v16 + 40) = 0u;
        swift_unknownObjectWeakInit();
        v34 = *(v62 + 68);
        v32(&v16[v34], 1, 1, v31);
        *v16 = v56;
        *(v16 + 7) = 0;
        v16[64] = 0;
        outlined assign with take of Date?(v33, &v16[v34]);
        swift_unknownObjectWeakAssign();

        outlined init with copy of Date?(&v16[v34], v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        if ((*v55)(v12, 1, v31) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        }

        else
        {
          v35 = v52;
          (*v51)(v52, v12, v31);
          v36 = v53;
          Date.init()();
          Date.timeIntervalSince(_:)();
          v38 = v37;
          v39 = *v50;
          (*v50)(v36, v31);
          v39(v35, v31);
          v40 = v38;
          *(v16 + 17) = v40 * 1000.0;
        }

        v41 = swift_unknownObjectWeakLoadStrong();
        v42 = [objc_opt_self() activePencil];
        v43 = [v42 isConnected];

        v16[1] = v43;
        v67 = static Locale.preferredLanguages.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
        v44 = BidirectionalCollection<>.joined(separator:)();
        v46 = v45;

        *(v16 + 1) = v44;
        *(v16 + 2) = v46;
        if (v41)
        {
          v47 = v41;
          specialized MagicPaperUsageAnalyticsEvent.countGroups(in:)(v47);
        }

        v16[72] = 1;
        v48 = MEMORY[0x1DA6CCED0](0xD000000000000026, v54 | 0x8000000000000000);
        if (specialized AnalyticsEvent.caEventPayload.getter())
        {
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
          v24.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v24.super.isa = 0;
        }

        v12 = v60;
        ++v22;
        AnalyticsSendEvent();

        outlined destroy of MagicPaperUsageProofreadingEvent(v16, v25);
        v23 += 2;
        if (v61 == v22)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_19:
    }
  }
}

id CanvasElementDrawingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasElementDrawingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined init with take of PKDrawing?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void specialized CanvasElementDrawingView.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveStreamingDisplayLink) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveStreamingStartTimeInterval) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveErasingDrawing) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_mathRecognitionDelegate) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_latestEndOfStrokeTimestamp) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t outlined destroy of MagicPaperUsageProofreadingEvent(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for MagicPaperUsageProofreadingEvent(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t lazy protocol witness table accessor for type AnyCanvas and conformance AnyCanvas(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *PaperViewController.imageViewController.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit19PaperViewController_imageViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PaperViewController.imageViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit19PaperViewController_imageViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void key path setter for PaperViewController.imageViewController : PaperViewController(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

void *PaperViewController.pdfViewController.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit19PaperViewController_pdfViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PaperViewController.pdfViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit19PaperViewController_pdfViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t PaperViewController.display(_:readOnly:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for UTType();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtC8PaperKit19PaperViewController_imageViewController;
  swift_beginAccess();
  if (*(v3 + v16))
  {
    goto LABEL_22;
  }

  v17 = OBJC_IVAR____TtC8PaperKit19PaperViewController_pdfViewController;
  swift_beginAccess();
  if (*(v3 + v17))
  {
    goto LABEL_22;
  }

  if (!URL.startAccessingSecurityScopedResource()())
  {
    goto LABEL_22;
  }

  URL._bridgeToObjectiveC()(v18);
  v20 = v19;
  v21 = CGImageSourceCreateWithURL(v19, 0);

  if (!v21)
  {
    goto LABEL_22;
  }

  v34 = v21;
  v22 = CGImageSourceGetType(v21);
  if (!v22)
  {
    goto LABEL_18;
  }

  v23 = v22;
  v24 = a2;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_22;
  }

  v36 = 0;
  v37 = 0;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  a2 = v37;
  if (!v37)
  {
LABEL_18:

    goto LABEL_22;
  }

  v35 = a1;
  v25 = v36;

  v33 = v25;
  UTType.init(_:)();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    goto LABEL_22;
  }

  (*(v10 + 32))(v15, v8, v9);
  if (v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = 3;
  }

  static UTType.pdf.getter();
  v27 = UTType.conforms(to:)();
  v28 = *(v10 + 8);
  v28(v12, v9);
  if (v27)
  {

    LOBYTE(v36) = v26;
    PaperViewController.loadPDF(_:editingMode:)(v35, &v36);
  }

  else
  {
    static UTType.image.getter();
    v29 = UTType.conforms(to:)();
    v28(v12, v9);
    v30 = v34;
    if ((v29 & 1) == 0)
    {
      while (1)
      {
        v36 = 0;
        v37 = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        v36 = 0xD000000000000014;
        v37 = 0x80000001D4084FD0;
        MEMORY[0x1DA6CD010](v33, a2);
        MEMORY[0x1DA6CD010](46, 0xE100000000000000);
LABEL_22:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

    LOBYTE(v36) = v26;
    PaperViewController.loadImage(_:editingMode:)(v35, &v36);
  }

  return (v28)(v15, v9);
}

void PaperViewController.loadImage(_:editingMode:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v69 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v69 - v14;
  v16 = *&v2[OBJC_IVAR____TtC8PaperKit19PaperViewController_context];
  v17 = *a2;
  v75 = v16;
  v18 = _s8PaperKit27CanvasElementViewControllerC7context11editingMode010allowMediaC8Elements21transparentBackground22isImageAnalysisEnabledACyxG9Coherence9CRContextC_AA0c7EditingI0OS3btcfCAA0P0V_Tt4B5(v75, v17, 1, 0, 1);
  v19 = [v3 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = v19;
  v73 = v10;
  v74 = v15;
  v21 = v18;
  v22 = [v21 view];
  if (!v22)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v23 = v22;
  [v20 insertSubview:v22 atIndex:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D405B630;
  v25 = [v3 view];
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = v25;
  v71 = v9;
  v72 = v12;
  v27 = [v25 topAnchor];

  v28 = [v21 view];
  if (!v28)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v29 = v28;
  v70 = a1;
  v30 = [v28 topAnchor];

  v31 = [v27 constraintEqualToAnchor_];
  *(v24 + 32) = v31;
  v32 = [v3 view];
  if (!v32)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v33 = v32;
  v34 = [v32 bottomAnchor];

  v35 = [v21 view];
  if (!v35)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v36 = v35;
  v37 = [v35 bottomAnchor];

  v38 = [v34 constraintEqualToAnchor_];
  *(v24 + 40) = v38;
  v39 = [v3 view];
  if (!v39)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v40 = v39;
  v41 = [v39 trailingAnchor];

  v42 = [v21 view];
  if (!v42)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v43 = v42;
  v44 = [v42 trailingAnchor];

  v45 = [v41 constraintEqualToAnchor_];
  *(v24 + 48) = v45;
  v46 = [v3 view];
  if (!v46)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v47 = v46;
  v69 = v8;
  v48 = [v46 leadingAnchor];

  v49 = [v21 view];
  if (v49)
  {
    v50 = objc_opt_self();
    v51 = [v49 leadingAnchor];

    v52 = [v48 constraintEqualToAnchor_];
    *(v24 + 56) = v52;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v50 activateConstraints_];

    [v3 addChildViewController_];
    [v21 didMoveToParentViewController_];
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
    (*(*(v54 - 8) + 56))(v74, 1, 1, v54);
    (*(v73 + 16))(v72, v70, v71);
    LOBYTE(v76) = 0;
    v77 = 0;
    v78 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence23CRCustomFileSyncManagerCy8PaperKit05ImagecD0VGMd, &_s9Coherence23CRCustomFileSyncManagerCy8PaperKit05ImagecD0VGMR);
    swift_allocObject();
    outlined copy of (@escaping @callee_guaranteed (@unowned CGSize) -> (@unowned CGSize))?(0, 0);
    v55 = CRCustomFileSyncManager.init(_:sync:at:customSync:)();
    v56 = type metadata accessor for TaskPriority();
    v57 = v69;
    (*(*(v56 - 8) + 56))(v69, 1, 1, v56);
    v58 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();
    v59 = v21;

    v60 = static MainActor.shared.getter();
    v61 = swift_allocObject();
    v62 = MEMORY[0x1E69E85E0];
    v61[2] = v60;
    v61[3] = v62;
    v61[4] = v55;
    v61[5] = v58;

    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v57, &async function pointer to partial apply for closure #1 in PaperViewController.loadImage(_:editingMode:), v61);

    v63 = *&v59[direct field offset for CanvasElementViewController.passThroughSubject];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGGMd, &_s7Combine12PublisherBoxCyAA18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGGMR);
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    v76 = v64;
    v65 = swift_allocObject();
    *(v65 + 16) = v59;
    *(v65 + 24) = v55;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type AnyPublisher<Capsule<Image>, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd, &_s7Combine12AnyPublisherVy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMR, MEMORY[0x1E695BED8]);
    v66 = Publisher<>.sink(receiveValue:)();

    outlined consume of (@escaping @callee_guaranteed () -> ())?(0, 0);

    *&v3[OBJC_IVAR____TtC8PaperKit19PaperViewController_imageCancellable] = v66;

    v67 = OBJC_IVAR____TtC8PaperKit19PaperViewController_imageViewController;
    swift_beginAccess();
    v68 = *&v3[v67];
    *&v3[v67] = v21;

    return;
  }

LABEL_21:
  __break(1u);
}

id _s8PaperKit27CanvasElementViewControllerC7context11editingMode010allowMediaC8Elements21transparentBackground22isImageAnalysisEnabledACyxG9Coherence9CRContextC_AA0c7EditingI0OS3btcfCAA0P0V_Tt4B5(uint64_t a1, char a2, char a3, char a4, char a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR);
  v9 = objc_allocWithZone(v8);
  *&v9[direct field offset for CanvasElementViewController._canvasView] = 0;
  v10 = &v9[direct field offset for CanvasElementViewController._liveStreamMessenger];
  *v10 = 0;
  v10[1] = 0;
  *&v9[direct field offset for CanvasElementViewController._participantDetailsDataSource + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  swift_unknownObjectWeakInit();
  v9[direct field offset for CanvasElementViewController._showParticipantCursors] = 0;
  *&v9[direct field offset for CanvasElementViewController._mediaAnalysisObserver] = 0;
  v9[direct field offset for CanvasElementViewController._allowsContentSnapping] = 0;
  *&v9[direct field offset for CanvasElementViewController._contentViewController] = 0;
  *&v9[direct field offset for CanvasElementViewController._canvasSubscribeCancellable] = 0;
  v11 = direct field offset for CanvasElementViewController.passThroughSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMd, &_s7Combine18PassthroughSubjectCy9Coherence7CapsuleVy8PaperKit5ImageVGs5NeverOGMR);
  swift_allocObject();
  *&v9[v11] = PassthroughSubject.init()();
  v12 = &v9[direct field offset for CanvasElementViewController.__imageSize];
  *v12 = 0;
  v12[1] = 0;
  *&v9[direct field offset for CanvasElementViewController.__imageHeadroom] = 0;
  v9[direct field offset for CanvasElementViewController._liveStreamDrawings] = 0;
  v9[direct field offset for CanvasElementViewController._isSixChannelBlendingEnabled] = 1;
  v13 = direct field offset for CanvasElementViewController._sixChannelBlendingDisableSnapshotting;
  v9[direct field offset for CanvasElementViewController._sixChannelBlendingDisableSnapshotting] = 0;
  v9[direct field offset for CanvasElementViewController._sixChannelBlendingRendersTransparent] = 0;
  v9[direct field offset for CanvasElementViewController._canEditVellumOpacity] = 0;
  v14 = direct field offset for CanvasElementViewController._isImageAnalysisEnabled;
  v9[direct field offset for CanvasElementViewController._isImageAnalysisEnabled] = 1;
  v9[direct field offset for CanvasElementViewController._canEditDescription] = 1;
  v15 = direct field offset for CanvasElementViewController.plusButton;
  type metadata accessor for FormPlusButtonView();
  *&v9[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9[direct field offset for CanvasElementViewController._isUpdatingBannerConfiguration] = 0;
  v16 = &v9[direct field offset for CanvasElementViewController._bannerViewConfiguration];
  *v16 = 1;
  *(v16 + 40) = 0u;
  *(v16 + 24) = 0u;
  *(v16 + 8) = 0u;
  v17 = [objc_allocWithZone(PPKQuickLookBannerView) init];
  *&v9[direct field offset for CanvasElementViewController._bannerView] = v17;
  *&v9[direct field offset for CanvasElementViewController.__rulerHostingDelegate] = 0;
  *&v9[direct field offset for CanvasElementViewController._rulerHostView] = 0;
  *&v9[direct field offset for CanvasElementViewController._formDelegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  swift_unknownObjectWeakInit();
  *&v9[direct field offset for CanvasElementViewController._analysis] = 0;
  ObservationRegistrar.init()();
  v9[direct field offset for CanvasElementViewController.allowMediaCanvasElements] = a3;
  *&v9[direct field offset for CanvasElementViewController.context] = a1;
  v9[direct field offset for CanvasElementViewController.transparentBackground] = a4;
  v9[direct field offset for CanvasElementViewController._editingMode] = a2;
  v9[v14] = a5;
  v9[v13] = 1;
  v21.receiver = v9;
  v21.super_class = v8;
  return objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t closure #1 in PaperViewController.loadImage(_:editingMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy9Coherence7CapsuleVy8PaperKit5ImageVGGMd, &_sScSy9Coherence7CapsuleVy8PaperKit5ImageVGGMR);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy9Coherence7CapsuleVy8PaperKit5ImageVG_GMd, &_sScS8IteratorVy9Coherence7CapsuleVy8PaperKit5ImageVG_GMR);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = type metadata accessor for MainActor();
  v5[18] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[19] = v10;
  v5[20] = v9;

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperViewController.loadImage(_:editingMode:), v10, v9);
}

uint64_t closure #1 in PaperViewController.loadImage(_:editingMode:)()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  CRCustomFileSyncManager.updates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = static MainActor.shared.getter();
  v0[21] = v4;
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = closure #1 in PaperViewController.loadImage(_:editingMode:);
  v6 = v0[14];
  v7 = v0[10];
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v7, v4, v8, v6);
}

{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperViewController.loadImage(_:editingMode:), v3, v2);
}

{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[9], v1, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      specialized CanvasElementViewController.merge<A>(_:)(v0[9]);
    }

    (*(v0[8] + 8))(v0[9], v0[7]);
    v8 = static MainActor.shared.getter();
    v0[21] = v8;
    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v9[1] = closure #1 in PaperViewController.loadImage(_:editingMode:);
    v10 = v0[14];
    v11 = v0[10];
    v12 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v11, v8, v12, v10);
  }
}

void closure #2 in PaperViewController.loadImage(_:editingMode:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a2 + direct field offset for CanvasElementViewController._editingMode))
  {
    CRCustomFileSyncManager.sync(_:)();
  }
}

void PaperViewController.loadPDF(_:editingMode:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v69 - v12;
  v14 = *a2;
  static CRKeyPath.unique.getter();
  v71 = a1;
  v72 = v2;
  type metadata accessor for PaperDocument(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
  Capsule.init(id:initClosure:)();
  type metadata accessor for CRContext();
  v74 = 0;
  memset(v73, 0, sizeof(v73));
  v15 = MEMORY[0x1DA6CC630](0, v73);
  outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_s9Coherence18EncryptionDelegate_pSgMd, &_s9Coherence18EncryptionDelegate_pSgMR);
  (*(v8 + 16))(v10, v13, v7);
  LOBYTE(v73[0]) = v14;
  v16 = objc_allocWithZone(type metadata accessor for PaperDocumentViewController(0));
  v17 = specialized PaperDocumentViewController.init(context:paperDocument:editingMode:)(v15, v10, v73);

  v18 = [v3 view];
  if (!v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18;
  v20 = v17;
  v21 = [v20 view];
  if (!v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = v21;
  [v19 insertSubview:v21 atIndex:0];

  v23 = [v20 view];
  if (!v23)
  {
    goto LABEL_6;
  }

  v24 = v23;
  v25 = [v3 view];
  if (v25)
  {
    v26 = v25;
    [v25 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    [v24 setFrame_];
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1D405B630;
    v36 = [v3 view];
    if (v36)
    {
      v37 = v36;
      v70 = v13;
      v38 = [v36 topAnchor];

      v39 = [v20 view];
      if (v39)
      {
        v40 = v39;
        v41 = [v39 topAnchor];

        v42 = [v38 constraintEqualToAnchor_];
        *(v35 + 32) = v42;
        v43 = [v3 view];
        if (v43)
        {
          v44 = v43;
          v45 = [v43 bottomAnchor];

          v46 = [v20 view];
          if (v46)
          {
            v47 = v46;
            v48 = [v46 bottomAnchor];

            v49 = [v45 constraintEqualToAnchor_];
            *(v35 + 40) = v49;
            v50 = [v3 view];
            if (v50)
            {
              v51 = v50;
              v52 = v8;
              v53 = [v50 trailingAnchor];

              v54 = [v20 view];
              if (v54)
              {
                v55 = v54;
                v56 = v7;
                v57 = [v54 trailingAnchor];

                v58 = [v53 constraintEqualToAnchor_];
                *(v35 + 48) = v58;
                v59 = [v3 view];
                if (v59)
                {
                  v60 = v59;
                  v61 = [v59 leadingAnchor];

                  v62 = [v20 view];
                  if (v62)
                  {
                    v63 = objc_opt_self();
                    v64 = [v62 leadingAnchor];

                    v65 = [v61 constraintEqualToAnchor_];
                    *(v35 + 56) = v65;
                    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
                    isa = Array._bridgeToObjectiveC()().super.isa;

                    [v63 activateConstraints_];

                    [v3 addChildViewController_];
                    [v20 didMoveToParentViewController_];
                    (*(v52 + 8))(v70, v56);
                    v67 = OBJC_IVAR____TtC8PaperKit19PaperViewController_pdfViewController;
                    swift_beginAccess();
                    v68 = *&v3[v67];
                    *&v3[v67] = v20;

                    return;
                  }

                  goto LABEL_24;
                }

LABEL_23:
                __break(1u);
LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
}

uint64_t closure #1 in PaperViewController.loadPDF(_:editingMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  MEMORY[0x1EEE9AC00](v5);
  v24 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A8DocumentVSgMd, &_s8PaperKit0A8DocumentVSgMR);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v23 - v16;
  (*(v11 + 16))(v13, a2, v10, v15);

  v18 = CRContext.assetManager.getter();
  _s8PaperKit0A8DocumentV3url2in12assetManagerACSg10Foundation3URLV_9Coherence7CapsuleV3RefCyx_GAK07CRAssetG0CtcAK4CRDTRzlufCAC_Tt3g5(v13, a1, v18, v17);
  v19 = type metadata accessor for PaperDocument(0);
  v20 = *(*(v19 - 8) + 48);
  if (v20(v17, 1, v19) != 1)
  {
    return _s8PaperKit5ShapeVWObTm_0(v17, v25, type metadata accessor for PaperDocument);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995220]);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR, MEMORY[0x1E6995228]);
  v23[1] = v5;
  CROrderedSet.init()();
  v21 = type metadata accessor for CRAsset();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  outlined init with copy of Date?(v9, v24, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  lazy protocol witness table accessor for type CRAsset? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
  UnknownProperties.init()();
  result = (v20)(v17, 1, v19);
  if (result != 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit0A8DocumentVSgMd, &_s8PaperKit0A8DocumentVSgMR);
  }

  return result;
}

Swift::Void __swiftcall PaperViewController.setCanvasEditingMode(_:)(PaperKit::CanvasEditingMode a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8PaperKit19PaperViewController_imageViewController;
  v4 = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5)
  {
    if (v5[direct field offset for CanvasElementViewController._editingMode] == v2)
    {
      v6 = v5;
      specialized CanvasElementViewController._editingMode.didset(v2);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v4);
      type metadata accessor for Image(0);
      _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v18 = v5;
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
      v15 = v5;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else
  {
    v7 = OBJC_IVAR____TtC8PaperKit19PaperViewController_pdfViewController;
    swift_beginAccess();
    v8 = *(v1 + v7);
    if (v8)
    {
      v9 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_editingMode;
      swift_beginAccess();
      v8[v9] = v2;
      v10 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
      swift_beginAccess();
      v11 = *&v8[v10];
      if (v11)
      {
        v17 = v8[v9];
        v12 = v8;
        v13 = v11;
        PaperDocumentView.editingMode.setter(&v17);
      }

      else
      {
        v16 = v8;
      }

      PaperDocumentViewController.updatePlusButton()();
    }
  }
}

Swift::Void __swiftcall PaperViewController.revertAllChanges()()
{
  v1 = OBJC_IVAR____TtC8PaperKit19PaperViewController_pdfViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4)
    {
      v5 = v2;
      v6 = v4;
      PaperDocumentView.revertAllChanges()();
    }
  }
}

id PaperViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id PaperViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC8PaperKit19PaperViewController_context;
  type metadata accessor for CRContext();
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v9 = MEMORY[0x1DA6CC630](0, v14);
  outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence18EncryptionDelegate_pSgMd, &_s9Coherence18EncryptionDelegate_pSgMR);
  *&v4[v8] = v9;
  *&v4[OBJC_IVAR____TtC8PaperKit19PaperViewController_imageViewController] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit19PaperViewController_imageFileSyncManager] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit19PaperViewController_imageCancellable] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit19PaperViewController_pdfViewController] = 0;
  if (a2)
  {
    v10 = MEMORY[0x1DA6CCED0](a1, a2);
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for PaperViewController();
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, v10, a3);

  return v11;
}

id PaperViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PaperViewController.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8PaperKit19PaperViewController_context;
  type metadata accessor for CRContext();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v5 = MEMORY[0x1DA6CC630](0, v9);
  outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence18EncryptionDelegate_pSgMd, &_s9Coherence18EncryptionDelegate_pSgMR);
  *&v2[v4] = v5;
  *&v2[OBJC_IVAR____TtC8PaperKit19PaperViewController_imageViewController] = 0;
  *&v2[OBJC_IVAR____TtC8PaperKit19PaperViewController_imageFileSyncManager] = 0;
  *&v2[OBJC_IVAR____TtC8PaperKit19PaperViewController_imageCancellable] = 0;
  *&v2[OBJC_IVAR____TtC8PaperKit19PaperViewController_pdfViewController] = 0;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for PaperViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id PaperViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PaperViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void specialized CanvasElementViewController._editingMode.didset(int a1)
{
  LODWORD(v78) = a1;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v74 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v71 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v71 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = v1;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for specialized closure #1 in CanvasElementViewController.updateToolPickerVisibility(), v9);

  v11 = type metadata accessor for Image(0);
  v81 = v11;
  v12 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  v82 = v12;
  v83 = &protocol witness table for Image;
  swift_getKeyPath();
  v87 = v7;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v77 = direct field offset for CanvasElementViewController._canvasView;
  v14 = *&v7[direct field offset for CanvasElementViewController._canvasView];
  if (!v14)
  {
    goto LABEL_11;
  }

  MEMORY[0x1EEE9AC00](v13);
  *(&v71 - 4) = v11;
  *(&v71 - 3) = v12;
  *(&v71 - 2) = &protocol witness table for Image;
  swift_getKeyPath();
  v87 = v7;
  v15 = v14;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = v7[direct field offset for CanvasElementViewController._editingMode];
  v17 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_editingMode;
  swift_beginAccess();
  v18 = v15[v17];
  v15[v17] = v16;
  specialized Canvas.editingMode.didset(v18);
  v19 = *&v15[direct field offset for CanvasView.canvasTiledView];
  if (v19)
  {
    v20 = v15[v17];
    v76 = v11;
    if (v20 >= 2)
    {
      if (v20 != 2)
      {
        v20 = 0;
      }

      v21 = 1;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    v22 = [v19 canvasView];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 drawingGestureRecognizer];

      [v24 setEnabled_];
    }

    [v19 setDrawingPolicy_];

    v11 = v76;
LABEL_11:
    v25 = specialized CanvasElementViewController.updatePlusButton()();
    MEMORY[0x1EEE9AC00](v25);
    *(&v71 - 4) = v11;
    *(&v71 - 3) = v12;
    *(&v71 - 2) = &protocol witness table for Image;
    swift_getKeyPath();
    v86 = v7;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v7[direct field offset for CanvasElementViewController._editingMode] != 1)
    {
      goto LABEL_59;
    }

    if (v78 == 1)
    {
      goto LABEL_59;
    }

    MEMORY[0x1EEE9AC00](v26);
    *(&v71 - 4) = v11;
    *(&v71 - 3) = v12;
    *(&v71 - 2) = &protocol witness table for Image;
    swift_getKeyPath();
    v86 = v7;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = *&v7[v77];
    if (!v27)
    {
      goto LABEL_59;
    }

    v28 = *(v27 + direct field offset for Canvas._editingView);
    v73 = v7;
    if (v28)
    {
      v29 = *(v27 + direct field offset for Canvas._editingView + 8);
      v30 = v28;
    }

    else
    {
      v30 = *(v27 + direct field offset for Canvas.paperView);
      v29 = &protocol witness table for ContainerCanvasElementView<A>;
    }

    ObjectType = swift_getObjectType();
    v32 = v29[21];
    v33 = v28;
    v34 = v32(ObjectType, v29);

    if (!v34)
    {
      goto LABEL_59;
    }

    v35 = FormFillingView.formFields.getter();
    v36 = v35;
    v72 = v34;
    if (v35 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v38 = 0;
      v77 = v36 & 0xFFFFFFFFFFFFFF8;
      v78 = v36 & 0xC000000000000001;
      v75 = (v74 + 16);
      v39 = (v74 + 8);
      while (1)
      {
        if (v78)
        {
          v40 = MEMORY[0x1DA6CE0C0](v38, v36);
        }

        else
        {
          if (v38 >= *(v77 + 16))
          {
            goto LABEL_32;
          }

          v40 = *(v36 + 8 * v38 + 32);
        }

        v41 = v40;
        v42 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        type metadata accessor for ShapeView(0);
        v43 = swift_dynamicCastClass();
        if (v43)
        {
          v44 = *((*MEMORY[0x1E69E7D40] & *v43) + 0x3F0);
          v45 = v43;
          swift_beginAccess();
          v46 = v45 + v44;
          v47 = v79;
          v48 = v36;
          v49 = v80;
          (*v75)(v79, v46, v80);
          swift_getKeyPath();
          v50 = v41;
          Capsule.subscript.getter();
          v76 = v50;

          v51 = v49;
          v36 = v48;
          (*v39)(v47, v51);
          if (v84 != 50 && v84 != 1)
          {

            goto LABEL_35;
          }
        }

        ++v38;
        if (v42 == i)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_34:

    v76 = 0;
LABEL_35:
    v52 = FormFillingView.formFields.getter();
    v53 = v52;
    if (v52 >> 62)
    {
LABEL_53:
      v54 = __CocoaSet.count.getter();
      if (v54)
      {
LABEL_37:
        v55 = 0;
        v77 = v53 & 0xFFFFFFFFFFFFFF8;
        v78 = v53 & 0xC000000000000001;
        v75 = (v74 + 16);
        v56 = (v74 + 8);
        while (1)
        {
          if (v78)
          {
            v57 = MEMORY[0x1DA6CE0C0](v55, v53);
          }

          else
          {
            if (v55 >= *(v77 + 16))
            {
              goto LABEL_52;
            }

            v57 = *(v53 + 8 * v55 + 32);
          }

          v58 = v57;
          v59 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            __break(1u);
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          type metadata accessor for ShapeView(0);
          v60 = swift_dynamicCastClass();
          if (!v60)
          {
            break;
          }

          v61 = v60;
          v62 = *((*MEMORY[0x1E69E7D40] & *v60) + 0x3F0);
          swift_beginAccess();
          v63 = v61 + v62;
          v64 = v79;
          v65 = v54;
          v66 = v80;
          (*v75)(v79, v63, v80);
          swift_getKeyPath();
          v67 = v58;
          Capsule.subscript.getter();

          v68 = v66;
          v54 = v65;
          (*v56)(v64, v68);
          if (v85 != 50)
          {
            break;
          }

          ++v55;
          if (v59 == v65)
          {
            goto LABEL_54;
          }
        }

        v69 = v72;
        v70 = v76;
        if (v76)
        {
          goto LABEL_56;
        }

        if (v58)
        {
          v58 = v58;
          v70 = v58;
          goto LABEL_56;
        }

        v58 = v72;
        goto LABEL_58;
      }
    }

    else
    {
      v54 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v54)
      {
        goto LABEL_37;
      }
    }

LABEL_54:

    v70 = v76;
    if (v76)
    {
      v58 = 0;
      v69 = v72;
LABEL_56:
      [v70 becomeFirstResponder];
    }

    else
    {
      v58 = v72;
    }

LABEL_58:

LABEL_59:
    specialized CanvasElementViewController.updateActionInfoViewVisibility()();
    return;
  }

  __break(1u);
}

void specialized closure #1 in CanvasElementViewController.editingMode.setter(uint64_t a1, char a2)
{
  v3 = *(a1 + direct field offset for CanvasElementViewController._editingMode);
  *(a1 + direct field offset for CanvasElementViewController._editingMode) = a2;
  specialized CanvasElementViewController._editingMode.didset(v3);
}

UIView *specialized CanvasElementViewController.updatePlusButton()()
{
  v1 = type metadata accessor for Image(0);
  v2 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  swift_getKeyPath();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *&v0[direct field offset for CanvasElementViewController.plusButton];
  if (v0[direct field offset for CanvasElementViewController._editingMode] != 1)
  {
    return [*&v0[direct field offset for CanvasElementViewController.plusButton] removeFromSuperview];
  }

  v4 = [*&v0[direct field offset for CanvasElementViewController.plusButton] superview];
  if (v4)
  {

    v4 = [v3 removeFromSuperview];
  }

  MEMORY[0x1EEE9AC00](v4);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *&v0[direct field offset for CanvasElementViewController._canvasView];
  if (v5)
  {
    [v5 addSubview_];
  }

  result = [v0 view];
  if (result)
  {
    v7 = result;
    FormPlusButtonView.setConstraintsBasedOn(_:)(result);

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();

    FormPlusButtonView.setMenuWithActions(addTextBoxHandler:addSignatureHandler:)(partial apply for specialized closure #1 in CanvasElementViewController.updatePlusButton(), v8, partial apply for specialized closure #2 in CanvasElementViewController.updatePlusButton(), v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized closure #1 in CanvasElementViewController.updatePlusButton()(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v257 = v208 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v263 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v208 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v264 = v208 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v208 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
  v255 = *(v12 - 8);
  v256 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v254 = v208 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v252 = *(v14 - 8);
  v253 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v251 = v208 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v249 = *(v16 - 8);
  v250 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v248 = v208 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMR);
  v245 = *(v18 - 8);
  v246 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v244 = v208 - v19;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v20 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v241 = v208 - v21;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  MEMORY[0x1EEE9AC00](v240);
  v239 = v208 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v238 = v208 - v24;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  MEMORY[0x1EEE9AC00](v237);
  v236 = v208 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v235 = v208 - v27;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v234);
  v261 = v208 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v260 = v208 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v242 = v208 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v266 = v208 - v34;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v259);
  v232 = (v208 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v36);
  v38 = v208 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v265 = v208 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v272 = (v208 - v42);
  v269 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v269);
  v233 = v208 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v258 = v208 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v270 = (v208 - v47);
  v48 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v48);
  v247 = v208 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = v208 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v262 = v208 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v267 = *(v55 - 8);
  v268 = v55;
  MEMORY[0x1EEE9AC00](v55);
  v231 = v208 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v271 = v208 - v58;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v60 = Strong;
  v228 = v6;
  v230 = v11;
  MEMORY[0x1EEE9AC00](Strong);
  v208[-4] = type metadata accessor for Image(0);
  v208[-3] = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  v276._object = &protocol witness table for Image;
  swift_getKeyPath();
  *&v273 = v60;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v62 = *&v60[direct field offset for CanvasElementViewController._canvasView];
  if (!v62 || ((v63 = *(v62 + direct field offset for Canvas._editingView), v223 = v20, !v63) ? (v61 = *(v62 + direct field offset for Canvas.paperView), v64 = v61) : (v64 = v63), v65 = MEMORY[0x1E69E7D40], v66 = (*((*MEMORY[0x1E69E7D40] & *v64) + 0x90))(v61), v67 = v63, v64, (v229 = v66) == 0))
  {

    return;
  }

  v222 = v4;
  v68 = v60;
  v69 = [v68 view];
  if (!v69)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v70 = v69;
  [v69 center];
  v72 = v71;
  v74 = v73;

  v75 = *v65 & *v229;
  v226 = *(v75 + 0x440);
  v227 = v75 + 1088;
  v76 = v226();
  v77 = [v68 view];
  v221 = v68;

  [v76 convertRect:v77 fromView:{v72 + -75.0, v74 + -12.5, 150.0, 25.0}];
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D405FD70;
  v87 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
  v88 = v87;
  specialized static FormFillingView.fontThatFits(frame:)(v79, v81, v83, v85);
  v89 = MEMORY[0x1E69DB688];
  *(inited + 40) = v90;
  v91 = *v89;
  *(inited + 72) = *v89;
  v92 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v93 = v91;
  v94 = [v92 init];
  [v94 setAlignment_];
  v95 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableParagraphStyle, 0x1E69DB7C8);
  *(inited + 80) = v94;
  v96 = *MEMORY[0x1E69DB660];
  *(inited + 104) = v95;
  *(inited + 112) = v96;
  *(inited + 144) = MEMORY[0x1E69E7DE0];
  *(inited + 120) = 0;
  v97 = v96;
  v98 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
  swift_arrayDestroy();
  v99 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v100 = MEMORY[0x1DA6CCED0](0, 0xE000000000000000);
  type metadata accessor for NSAttributedStringKey(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v99 initWithString:v100 attributes:isa];

  MEMORY[0x1EEE9AC00](v102);
  v276._object = 0x3FF0000000000000;
  v103 = lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.init(_:transformAttributes:)();
  swift_storeEnumTagMultiPayload();
  v104 = type metadata accessor for Color(0);
  v105 = *(v104 + 20);
  v106 = type metadata accessor for UnknownValueProperties();
  (*(*(v106 - 8) + 56))(v272 + v105, 1, 1, v106);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  v225 = v48;
  v107 = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F51320);
  if (!v107)
  {
    goto LABEL_26;
  }

  v108 = v107;
  v219 = v103;
  v220 = v98;
  v224 = v38;
  CGColorRef.calculateMinimumHeadroom.getter();
  v109 = CGColorCreateWithContentHeadroom();
  if (!v109)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v110 = v109;

  *v272 = v110;
  v111 = *(v104 - 8);
  v112 = *(v111 + 56);
  v113 = v111 + 56;
  v112();
  (v112)(v265, 1, 1, v104);
  v212 = v113;
  v213 = v112;
  v114 = v266;
  v115 = v267;
  v116 = *(v267 + 16);
  v211 = v104;
  v117 = v268;
  v116(v266, v271);
  (*(v115 + 56))(v114, 0, 1, v117);
  type metadata accessor for CGRect(0);
  v217 = v118;
  v216 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v273 = 0u;
  v274 = 0u;
  CRRegister.init(wrappedValue:)();
  v119 = v225;
  *&v273 = 0;
  v208[1] = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(_:)();
  v218 = v119[6];
  v120 = v224;
  (v112)(v224, 1, 1, v104);
  v121 = v232;
  outlined init with copy of Date?(v120, v232, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v214 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v120, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v215 = v119[7];
  (v213)(v120, 1, 1, v211);
  outlined init with copy of Date?(v120, v121, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v120, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v213 = v119[8];
  *&v273 = 0x4014000000000000;
  CRRegister.init(wrappedValue:)();
  v212 = v119[9];
  v122 = v258;
  swift_storeEnumTagMultiPayload();
  v209 = type metadata accessor for ShapeType;
  _s8PaperKit9ShapeTypeOWOcTm_0(v122, v233, type metadata accessor for ShapeType);
  v210 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType, &protocol conformance descriptor for ShapeType);
  CRRegister.init(wrappedValue:)();
  outlined destroy of ShapeType(v122, type metadata accessor for ShapeType);
  *&v273 = 0x3FF0000000000000;
  CRRegister.init(wrappedValue:)();
  *&v273 = 0;
  BYTE8(v273) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMR, MEMORY[0x1E69950E8]);
  CRRegister.init(wrappedValue:)();
  *&v273 = 0;
  BYTE8(v273) = 0;
  CRRegister.init(wrappedValue:)();
  v208[0] = v119[13];
  CRAttributedString.init(_:)();
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v124 = *(v123 - 8);
  v125 = v260;
  v232 = *(v124 + 56);
  v233 = v123;
  v219 = v124 + 56;
  (v232)(v260, 1, 1);
  outlined init with copy of Date?(v125, v261, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v125, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  v126 = v119[15];
  *&v273 = 0;
  v127 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  v234 = v126;
  v211 = v127;
  CRRegister.init(wrappedValue:)();
  *&v273 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v128 = type metadata accessor for StrokeStyle(0);
  v129 = v235;
  (*(*(v128 - 8) + 56))(v235, 1, 1, v128);
  outlined init with copy of Date?(v129, v236, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v129, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  v130 = type metadata accessor for Shadow(0);
  v131 = v238;
  (*(*(v130 - 8) + 56))(v238, 1, 1, v130);
  outlined init with copy of Date?(v131, v239, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v131, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  v274 = 0u;
  v275 = 0u;
  v273 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd, &_s8PaperKit18ShapeAuxiliaryInfoVSgMR);
  lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  *&v273 = v79;
  *(&v273 + 1) = v81;
  *&v274 = v83;
  *(&v274 + 1) = v85;
  v132 = v241;
  CRRegister.init(_:)();
  (*(v223 + 40))(v52, v132, v243);
  _s8PaperKit9ShapeTypeOWOcTm_0(v270, v122, v209);
  v133 = v244;
  CRRegister.init(_:)();
  (*(v245 + 40))(&v52[v212], v133, v246);
  *&v273 = 0x4014000000000000;
  v134 = v248;
  CRRegister.init(_:)();
  (*(v249 + 40))(v213 + v52, v134, v250);
  v135 = v224;
  outlined init with copy of Date?(v272, v224, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v136 = v251;
  CRRegister.init(_:)();
  v137 = v253;
  v138 = *(v252 + 40);
  v138(&v52[v215], v136, v253);
  outlined init with copy of Date?(v265, v135, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v139 = v267;
  CRRegister.init(_:)();
  v138(&v52[v218], v136, v137);
  v140 = v268;
  v141 = v242;
  outlined init with copy of Date?(v266, v242, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  if ((*(v139 + 48))(v141, 1, v140) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v141, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  }

  else
  {
    v142 = v231;
    (*(v139 + 32))(v231, v141, v140);
    (*(v139 + 40))(&v52[v208[0]], v142, v140);
  }

  v143 = v230;
  v144 = v256;
  *&v273 = 2;
  v145 = v254;
  CRRegister.init(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v266, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v265, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v272, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  outlined destroy of ShapeType(v270, type metadata accessor for ShapeType);
  (*(v255 + 40))(&v52[v234], v145, v144);
  v146 = v262;
  _s8PaperKit5ShapeVWObTm_0(v52, v262, type metadata accessor for Shape);
  LOBYTE(v273) = 1;
  Shape.formContentType.setter(&v273);
  v147 = v260;
  CRAttributedString.Attributes<>.init(nsAttributes:darkMode:)(v220, 0, v260);
  (v232)(v147, 0, 1, v233);
  outlined init with copy of Date?(v147, v261, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v147, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  _s8PaperKit9ShapeTypeOWOcTm_0(v146, v247, type metadata accessor for Shape);
  static CRKeyPath.unique.getter();
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape, &protocol conformance descriptor for Shape);
  Capsule.init(_:id:)();
  v148 = v263;
  v149 = v264;
  v150 = *(v263 + 16);
  v151 = v143;
  v152 = v222;
  v150(v264, v151, v222);
  v153 = v150;
  v154 = objc_allocWithZone(type metadata accessor for ShapeView(0));
  *(v154 + direct field offset for ShapeView.$__lazy_storage_$_shapeLayer) = 0;
  *(v154 + direct field offset for ShapeView.$__lazy_storage_$_endLineEndLayer) = 0;
  *(v154 + direct field offset for ShapeView.$__lazy_storage_$_startLineEndLayer) = 0;
  *(v154 + direct field offset for ShapeView.$__lazy_storage_$_groupLayer) = 0;
  v155 = direct field offset for ShapeView.showsSignaturePopover;
  *(v154 + direct field offset for ShapeView.showsSignaturePopover) = 0;
  v156 = direct field offset for ShapeView.analytics_inputSource;
  *(v154 + direct field offset for ShapeView.analytics_inputSource) = 68;
  v157 = direct field offset for ShapeView.analytics_documentType;
  *(v154 + direct field offset for ShapeView.analytics_documentType) = 68;
  *(v154 + direct field offset for ShapeView._textBoxView) = 0;
  *(v154 + direct field offset for ShapeView.appearanceStreamView) = 0;
  *(v154 + v155) = 0;
  *(v154 + v156) = 11;
  *(v154 + v157) = 5;
  v158 = v228;
  v153(v228, v149, v152);
  v270 = v153;
  v159 = MEMORY[0x1E69E7D40];
  (*(v148 + 56))(v154 + *((*MEMORY[0x1E69E7D40] & *v154) + 0x3F8), 1, 1, v152);
  *(v154 + *((*v159 & *v154) + 0x400)) = 0;
  *(v154 + *((*v159 & *v154) + 0x408)) = 0;
  *(v154 + *((*v159 & *v154) + 0x410)) = 0;
  *(v154 + *((*v159 & *v154) + 0x418)) = 0;
  *(v154 + *((*v159 & *v154) + 0x420)) = 0;
  v153(v154 + *((*v159 & *v154) + 0x3F0), v158, v152);
  v160 = v229;
  v272 = v229;
  v161 = AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(v160, 0, 0.0, 0.0, 0.0, 0.0);
  specialized CanvasElementView.setupAccessibility()();
  (*((*v159 & *v161) + 0x520))();
  v164 = *(v148 + 8);
  v162 = v148 + 8;
  v163 = v164;
  (v164)(v158, v152);
  v165 = v161;
  specialized AppearanceStreamViewSupport.setupAppearanceStreamIfNeeded()();
  v166 = *v159;
  v167 = v264;
  v168 = *((v166 & *v165) + 0x3F0);
  swift_beginAccess();
  v270(v158, &v165[v168], v152);
  LOBYTE(v168) = specialized Capsule<>.isTextBox.getter();

  (v164)(v158, v152);
  if (v168)
  {
    goto LABEL_19;
  }

  v270 = v163;
  v263 = v162;
  [v165 setIsAccessibilityElement_];
  v169 = 0x80000001D40850C0;
  if (one-time initialization token for paperKitBundle != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v276._object = v169;
    v170._countAndFlagsBits = 0x4025206570616853;
    v171.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v171.value._object = 0xEB00000000656C62;
    v170._object = 0xE800000000000000;
    v172._countAndFlagsBits = 0;
    v172._object = 0xE000000000000000;
    v276._countAndFlagsBits = 0xD00000000000005FLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v170, v171, paperKitBundle, v172, v276);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v173 = swift_allocObject();
    *(v173 + 16) = xmmword_1D4058CF0;
    swift_getKeyPath();
    v174 = v258;
    v175 = v222;
    Capsule.subscript.getter();

    ShapeType.any.getter(&v273);
    outlined destroy of ShapeType(v174, type metadata accessor for ShapeType);
    v176 = *(&v274 + 1);
    v177 = v275;
    __swift_project_boxed_opaque_existential_1(&v273, *(&v274 + 1));
    v178 = *(v177 + 48);
    v179 = v177;
    v167 = v264;
    v180 = v178(v176, v179);
    v182 = v181;
    *(v173 + 56) = MEMORY[0x1E69E6158];
    *(v173 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v173 + 32) = v180;
    *(v173 + 40) = v182;
    __swift_destroy_boxed_opaque_existential_0(&v273);
    v183 = static String.localizedStringWithFormat(_:_:)();
    v185 = v184;

    v152 = v175;

    v186 = MEMORY[0x1DA6CCED0](v183, v185);

    [v165 setAccessibilityLabel_];

    v163 = v270;
LABEL_19:
    (v163)(v167, v152);
    (v163)(v230, v152);
    outlined destroy of ShapeType(v262, type metadata accessor for Shape);
    v187 = (*(v267 + 8))(v271, v268);
    v165[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDetectedFormField] = 1;
    v165[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_startsNewAutofillContext] = 0;
    v188 = v272;
    v189 = (v226)(v187);
    v191 = v190;
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v193 = swift_initStackObject();
    *(v193 + 16) = xmmword_1D405CEB0;
    *(v193 + 32) = v165;
    v194 = *(v191 + 200);
    v195 = v165;
    v194(v193, 0, ObjectType, v191);

    swift_setDeallocating();
    swift_arrayDestroy();
    v165 = v195;
    v196 = specialized CanvasMembers.init(_:)(v165);
    AnyCanvas.selection.setter(v196, v198, v199, v197 & 1);
    v200 = v226();
    v202 = v201;
    v203 = swift_getObjectType();
    v169 = (*(v202 + 168))(v203, v202);

    if (!v169)
    {
      break;
    }

    v204 = *&v169[OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics];

    v205 = *(v204 + 48);
    v206 = __OFADD__(v205, 1);
    v207 = v205 + 1;
    if (!v206)
    {
      *(v204 + 48) = v207;

      return;
    }

    __break(1u);
LABEL_24:
    swift_once();
  }
}

void specialized closure #2 in CanvasElementViewController.updatePlusButton()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + direct field offset for CanvasElementViewController.plusButton);
    v5 = v4;
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = one-time initialization token for SignatureLogger;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, SignatureLogger);
    v17 = v3;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138477827;
      *(v20 + 4) = v17;
      *v21 = v3;
      v22 = v17;
      _os_log_impl(&dword_1D38C4000, v18, v19, "show signature panel on viewController: %{private}@", v20, 0xCu);
      outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1DA6D0660](v21, -1, -1);
      MEMORY[0x1DA6D0660](v20, -1, -1);
    }

    v23 = specialized SignatureManager.signatureViewController(_:_:_:_:_:)(v3, 0, v4, partial apply for specialized closure #1 in closure #2 in CanvasElementViewController.updatePlusButton(), v14, v7, v9, v11, v13);
    [v17 presentViewController:v23 animated:1 completion:0];
  }
}

void specialized closure #1 in closure #2 in CanvasElementViewController.updatePlusButton()(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for Signature(0);
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd, &_s9Coherence7CapsuleVy8PaperKit9SignatureVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a1)
    {
      v34 = v4;
      v35 = v6;
      MEMORY[0x1EEE9AC00](Strong);
      *(&v34 - 4) = type metadata accessor for Image(0);
      *(&v34 - 3) = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
      *(&v34 - 2) = &protocol witness table for Image;
      swift_getKeyPath();
      *&v36[0] = v10;
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
      v11 = a1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v13 = *&v10[direct field offset for CanvasElementViewController._canvasView];
      if (v13)
      {
        v14 = *(v13 + direct field offset for Canvas._editingView);
        if (v14)
        {
          v15 = *(v13 + direct field offset for Canvas._editingView);
        }

        else
        {
          v12 = *(v13 + direct field offset for Canvas.paperView);
          v15 = v12;
        }

        v16 = v11;
        v17 = (*((*MEMORY[0x1E69E7D40] & *v15) + 0x90))(v12);
        v18 = v14;

        if (v17)
        {
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          v19 = [v10 view];
          if (v19)
          {
            v20 = v19;
            [v19 center];
            v22 = v21;
            v24 = v23;

            v25 = SignatureItem.size.getter();
            v27 = 400.0 / v25;
            if (400.0 / v25 > 1.0)
            {
              v27 = 1.0;
            }

            v28 = v25 * v27;
            v29 = v26 * v27;
            v30 = 72.0 / v29;
            if (72.0 / v29 > 1.0)
            {
              v30 = 1.0;
            }

            v36[0] = v28 * v30;
            v36[1] = v29 * v30;
            Signature.init()();
            static CRKeyPath.unique.getter();
            v31 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature, &protocol conformance descriptor for Signature);
            v32 = v34;
            v33 = Capsule.init(_:id:)();
            MEMORY[0x1EEE9AC00](v33);
            *(&v34 - 4) = v16;
            *(&v34 - 3) = v22;
            *(&v34 - 2) = v24;
            *(&v34 - 1) = v36;
            Capsule.callAsFunction<A>(_:)();
            (*((*MEMORY[0x1E69E7D40] & *v17) + 0x700))(v8, 1, 0, 0, v32, v31, &protocol witness table for Signature);

            (*(v35 + 8))(v8, v5);
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

    else
    {
    }
  }
}

void partial apply for specialized closure #1 in CanvasElementViewController.editingMode.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + direct field offset for CanvasElementViewController._editingMode);
  *(v1 + direct field offset for CanvasElementViewController._editingMode) = *(v0 + 24);
  specialized CanvasElementViewController._editingMode.didset(v2);
}

id keypath_get_1Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

void specialized Canvas.editingMode.didset(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3C8);
  v5((&v20 + 2));
  if (BYTE2(v20) != v3)
  {
    v6 = *(v1 + direct field offset for Canvas.dropInteraction);
    if (v6)
    {
      v7 = *((*v4 & *v1) + 0xED8);
      v19 = v6;
      v8 = v7();
      v9 = &selRef_addInteraction_;
      if ((v8 & 1) == 0)
      {
        v9 = &selRef_removeInteraction_;
      }

      (v5)((&v20 + 1), [v1 *v9]);
      if (v3 == 1 || BYTE1(v20) == 1)
      {
        v10 = *(v1 + direct field offset for Canvas._editingView);
        if (v10)
        {
          v11 = *(v1 + direct field offset for Canvas._editingView + 8);
          v12 = *(v1 + direct field offset for Canvas._editingView);
        }

        else
        {
          v12 = *(v1 + direct field offset for Canvas.paperView);
          v11 = &protocol witness table for ContainerCanvasElementView<A>;
        }

        ObjectType = swift_getObjectType();
        v14 = v11[3];
        v15 = v10;
        v14(ObjectType, v11);
      }

      v5(&v20);
      if (!v20)
      {
        v16 = *(v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
        if (!v16)
        {
          __break(1u);
          return;
        }

        v17 = v16 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
        if (*(*v17 + 16) || (!*(*(v17 + 8) + 16) ? (v18 = *(v17 + 24) == 0) : (v18 = 0), !v18))
        {
          AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
        }
      }
    }
  }
}

uint64_t _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type CRAsset? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CRAsset? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CRAsset? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRAsset? and conformance <A> A?);
  }

  return result;
}

uint64_t _s8PaperKit5ShapeVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in PaperViewController.loadImage(_:editingMode:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in PaperViewController.loadImage(_:editingMode:)(a1, v4, v5, v7, v6);
}

uint64_t one-time initialization function for SignatureLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, SignatureLogger);
  __swift_project_value_buffer(v0, SignatureLogger);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for shared(uint64_t a1)
{
  type metadata accessor for SignatureManager();
  result = swift_initStaticObject();
  static SignatureManager.shared = result;
  return result;
}

uint64_t SignatureManager.signatureItems.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = specialized SignatureManager.loadSignatures()();
    *(v0 + 16) = v1;
  }

  return v1;
}

void closure #1 in SignatureManager.signatureViewController(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(type metadata accessor for SignatureEditViewController()) initWithNibName:0 bundle:0];
  v8 = &v7[OBJC_IVAR____TtC8PaperKit27SignatureEditViewController_completion];
  *v8 = a2;
  *(v8 + 1) = a3;
  v12 = v7;

  v9 = v12;
  if (a4)
  {
    v10 = [a4 traitCollection];
    v11 = [v10 userInterfaceStyle];
  }

  else
  {
    v11 = 0;
  }

  [v12 setOverrideUserInterfaceStyle_];

  if (a4)
  {
    [a4 presentViewController:v12 animated:1 completion:0];
  }
}

uint64_t closure #1 in SignatureManager.signatureCanvasElementForItem(_:at:baselineY:maxHeight:)(uint64_t a1, void *a2, double *a3, double a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v47 = &v45 - v11;
  v12 = type metadata accessor for Signature(0);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v48 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v57 = &v45 - v23;
  v24 = Capsule.Ref.root.modify();
  v52 = a2;
  v50 = v12;
  v46 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
  CRRegister.wrappedValue.setter();
  v24(v56, 0);
  v25 = *a3;
  v26 = a3[1];
  *&v27 = a4 - *a3 * 0.5;
  v51 = a1;
  v28 = Capsule.Ref.root.modify();
  v52 = v27;
  v53 = a5 - v26 * 0.5;
  v54 = v25;
  v55 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  v28(v56, 0);
  if (one-time initialization token for defaultColor != -1)
  {
    swift_once();
  }

  v29 = static SignatureItem.defaultColor;
  Color.init(cgColor:)([v29 CGColor], v21);

  v30 = type metadata accessor for Color(0);
  v31 = (*(v30 - 8) + 48);
  v32 = (*v31)(v21, 1, v30);
  v33 = (v31 + 1);
  if (v32)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    v34 = 1;
    v35 = v57;
  }

  else
  {
    v35 = v57;
    outlined init with take of Color(v21, v57);
    v34 = 0;
  }

  (*v33)(v35, v34, 1, v30);
  outlined init with copy of Date?(v35, v18, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v36 = Capsule.Ref.root.modify();
  outlined init with copy of Date?(v18, v48, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v36(v56, 0);
  v37 = v49;
  Capsule.Ref.root.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiSgGMd, &_s9Coherence10CRRegisterVySiSgGMR);
  CRRegister.wrappedValue.getter();
  outlined destroy of Signature(v37);
  if ((v56[8] & 1) == 0)
  {
    goto LABEL_10;
  }

  v38 = v47;
  outlined init with copy of Date?(v46 + OBJC_IVAR____TtC8PaperKit13SignatureItem_drawing, v47, &_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
  v39 = type metadata accessor for PKDrawing();
  if ((*(*(v39 - 8) + 48))(v38, 1, v39) != 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v38, &_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
    v43 = Capsule.Ref.root.modify();
    v52 = 2;
    LOBYTE(v53) = 0;
    CRRegister.wrappedValue.setter();
    v43(v56, 0);
LABEL_10:
    v40 = &_s8PaperKit5ColorVSgMd;
    v41 = &_s8PaperKit5ColorVSgMR;
    v42 = v57;
    return outlined destroy of StocksKitCurrencyCache.Provider?(v42, v40, v41);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v57, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  v40 = &_s9PencilKit9PKDrawingVSgMd;
  v41 = &_s9PencilKit9PKDrawingVSgMR;
  v42 = v38;
  return outlined destroy of StocksKitCurrencyCache.Provider?(v42, v40, v41);
}

void SignatureManager.saveSignature(_:)(NSObject *a1)
{
  v2 = v1;
  if (one-time initialization token for SignatureLogger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, SignatureLogger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D38C4000, v5, v6, "saving signature", v7, 2u);
    MEMORY[0x1DA6D0660](v7, -1, -1);
  }

  v8 = SignatureItem.dataForKeychain()();
  if (v9 >> 60 == 15)
  {
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D38C4000, oslog, v10, "failed to create archive data for keychain", v11, 2u);
      MEMORY[0x1DA6D0660](v11, -1, -1);
    }
  }

  else
  {
    v12 = v9;
    osloga = a1;
    v53 = v2;
    v55 = v8;
    v13 = Data.base64EncodedData(options:)();
    v56 = v14;
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v61._object = 0x80000001D4085310;
    v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v15.value._object = 0xEB00000000656C62;
    v16._countAndFlagsBits = 0xD000000000000072;
    v16._object = 0x80000001D4085290;
    v61._countAndFlagsBits = 0xD000000000000052;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v15, paperKitBundle, v17, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yXltGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yXltGMR);
    inited = swift_initStackObject();
    v20 = *MEMORY[0x1E697AFF8];
    *(inited + 32) = *MEMORY[0x1E697AFF8];
    *(inited + 16) = xmmword_1D405FF10;
    v21 = *MEMORY[0x1E697B008];
    v22 = *MEMORY[0x1E697AE88];
    *(inited + 40) = *MEMORY[0x1E697B008];
    *(inited + 48) = v22;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    v26 = MEMORY[0x1DA6CCED0](0xD000000000000024, 0x80000001D4085240);
    v27 = *MEMORY[0x1E697ADC8];
    *(inited + 56) = v26;
    *(inited + 64) = v27;
    v28 = v27;
    v29 = MEMORY[0x1DA6CCED0](0xD00000000000001CLL, 0x80000001D4085370);
    v30 = *MEMORY[0x1E697ABD0];
    *(inited + 72) = v29;
    *(inited + 80) = v30;
    v31 = v30;
    v32 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4085270);
    v33 = *MEMORY[0x1E697AEB0];
    *(inited + 88) = v32;
    *(inited + 96) = v33;
    v34 = v33;
    v35.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v36 = *MEMORY[0x1E697B3C0];
    *(inited + 104) = v35;
    *(inited + 112) = v36;
    v37 = v36;
    v54 = v13;
    v38.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v39 = *MEMORY[0x1E697AC30];
    *(inited + 120) = v38;
    *(inited + 128) = v39;
    v40 = v39;
    v41 = UUID.uuidString.getter();
    v42 = MEMORY[0x1DA6CCED0](v41);

    v43 = *MEMORY[0x1E697ACC8];
    *(inited + 136) = v42;
    *(inited + 144) = v43;
    v44 = v43;
    v45 = MEMORY[0x1DA6CCED0](v18._countAndFlagsBits, v18._object);

    *(inited + 152) = v45;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_yXlTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yXltMd, &_sSo11CFStringRefa_yXltMR);
    swift_arrayDestroy();
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    v46.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v47 = SecItemAdd(v46.super.isa, 0);
    if (v47)
    {
      v48 = v47;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 67109120;
        *(v51 + 4) = v48;
        _os_log_impl(&dword_1D38C4000, v49, v50, "failed to add new signature. error:%d", v51, 8u);
        MEMORY[0x1DA6D0660](v51, -1, -1);
      }

      outlined consume of Data._Representation(v54, v56);

      outlined consume of Data?(v55, v12);
    }

    else
    {
      v59 = SignatureManager.signatureItems.getter();
      if (v59 >> 62 && __CocoaSet.count.getter() < 0)
      {
        __break(1u);
      }

      else
      {
        v52 = osloga;
        specialized Array.replaceSubrange<A>(_:with:)(0, 0, v52);

        outlined consume of Data._Representation(v54, v56);
        outlined consume of Data?(v55, v12);
        *(v53 + 16) = v59;
      }
    }
  }
}

Swift::Bool __swiftcall SignatureManager.removeSignature(atIndex:)(Swift::Int atIndex)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for SignatureLogger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, SignatureLogger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1D38C4000, v9, v10, "removing signature", v11, 2u);
    MEMORY[0x1DA6D0660](v11, -1, -1);
  }

  if (atIndex < 0)
  {
    return 0;
  }

  v12 = SignatureManager.signatureItems.getter();
  v13 = v12 >> 62 ? __CocoaSet.count.getter() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v13 <= atIndex)
  {
    return 0;
  }

  v15 = *(v2 + 16);
  if ((v15 & 0xC000000000000001) != 0)
  {

    v16 = MEMORY[0x1DA6CE0C0](atIndex, v15);

LABEL_12:
    (*(v5 + 16))(v7, v16 + OBJC_IVAR____TtC8PaperKit13SignatureItem_uniqueID, v4);

    v17 = specialized SignatureManager.removeSignature(_:)();
    (*(v5 + 8))(v7, v4);
    if (v17)
    {
      v19 = *(v2 + 16);

      *(v2 + 16) = v19;

      return 1;
    }

    return 0;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) > atIndex)
  {
    v16 = *(v15 + 8 * atIndex + 32);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t SignatureManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id SignatureListController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignatureListController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v142 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v156 = &v136 - v10;
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v151 = &v136 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v139 = &v136 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v141 = &v136 - v19;
  v150 = a3;
  v20 = *(a3 + 8);
  if (v20 >= 1)
  {
    v144 = v18;
    v152 = v17;
    v138 = a4;
    v21 = 0;
    v22 = MEMORY[0x1E69E7CC0];
    v23 = &OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate;
    while (1)
    {
      v24 = v21++;
      v149 = v22;
      if (v21 < v20)
      {
        v148 = v20;
        v25 = *v150;
        v26 = *(*v150 + 8 * v21);
        v27 = v23;
        v143 = v24;
        v155 = v25;
        v28 = *&v25[8 * v24];
        v29 = v141;
        outlined init with copy of Date?(v26 + *v23, v141, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v30 = type metadata accessor for Date();
        v154 = *(v30 - 8);
        v31 = *(v154 + 6);
        v32 = v29;
        v33 = v154 + 48;
        if (v31(v32, 1, v30) == 1)
        {
          goto LABEL_138;
        }

        v140 = v5;
        v34 = v139;
        outlined init with copy of Date?(v28 + *v27, v139, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v146 = v31;
        if (v31(v34, 1, v30) == 1)
        {
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        v35 = v26;
        v36 = v28;
        v37 = v141;
        LODWORD(v153) = static Date.> infix(_:_:)();
        v38 = v154 + 8;
        v39 = *(v154 + 1);
        (v39)(v34, v30);
        v147 = v30;
        v154 = v38;
        v145 = v39;
        (v39)(v37, v30);

        v40 = (v143 + 2);
        v137 = 8 * v143;
        v41 = &v155[8 * v143 + 16];
        while (1)
        {
          v42 = v148;
          v23 = &OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate;
          if (v148 == v40)
          {
            break;
          }

          v155 = v40;
          v43 = *(v41 - 1);
          v44 = *v41;
          v45 = v33;
          v46 = v151;
          outlined init with copy of Date?(*v41 + OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate, v151, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v48 = v146;
          v47 = v147;
          if ((v146)(v46, 1, v147) == 1)
          {
            goto LABEL_133;
          }

          v49 = v144;
          outlined init with copy of Date?(v43 + OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate, v144, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v50 = v45;
          if (v48(v49, 1, v47) == 1)
          {
            goto LABEL_132;
          }

          v51 = v44;
          v52 = v43;
          v53 = v151;
          v54 = static Date.> infix(_:_:)() & 1;
          v55 = v145;
          (v145)(v49, v47);
          (v55)(v53, v47);

          v40 = v155 + 1;
          ++v41;
          v56 = (v153 & 1) == v54;
          v22 = v149;
          v33 = v50;
          if (!v56)
          {
            v42 = v155;
            v23 = &OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate;
            break;
          }
        }

        v5 = v140;
        v24 = v143;
        if (v153)
        {
          if (v42 < v143)
          {
            goto LABEL_125;
          }

          if (v143 < v42)
          {
            v57 = 8 * v42 - 8;
            v58 = v42;
            v59 = v143;
            v60 = v137;
            do
            {
              if (v59 != --v58)
              {
                v61 = *v150;
                if (!*v150)
                {
                  goto LABEL_135;
                }

                v62 = *&v61[v60];
                *&v61[v60] = *&v61[v57];
                *&v61[v57] = v62;
              }

              ++v59;
              v57 -= 8;
              v60 += 8;
            }

            while (v59 < v58);
          }
        }

        v21 = v42;
      }

      v63 = *(v150 + 8);
      if (v21 < v63)
      {
        if (__OFSUB__(v21, v24))
        {
          goto LABEL_124;
        }

        if (v21 - v24 < v138)
        {
          v64 = (v24 + v138);
          if (__OFADD__(v24, v138))
          {
            goto LABEL_126;
          }

          if (v64 >= v63)
          {
            v64 = *(v150 + 8);
          }

          if (v64 < v24)
          {
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          if (v21 != v64)
          {
            v140 = v5;
            v153 = *v150;
            v65 = &v153[8 * v21 - 8];
            v143 = v24;
            v66 = (v24 - v21);
            v145 = v64;
            do
            {
              v147 = v65;
              v148 = v21;
              v67 = v66;
              v68 = *&v153[8 * v21];
              v146 = v66;
              while (1)
              {
                v154 = v67;
                v155 = v68;
                v69 = *v65;
                v70 = v156;
                v71 = v23;
                outlined init with copy of Date?(&v68[*v23], v156, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                v72 = type metadata accessor for Date();
                v73 = *(v72 - 8);
                v74 = *(v73 + 48);
                if (v74(v70, 1, v72) == 1)
                {
                  goto LABEL_130;
                }

                v75 = v152;
                outlined init with copy of Date?(v69 + *v71, v152, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                if (v74(v75, 1, v72) == 1)
                {
                  __break(1u);
LABEL_130:
                  __break(1u);
LABEL_131:
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
                  goto LABEL_139;
                }

                v76 = v155;
                v77 = v69;
                v78 = v156;
                v79 = static Date.> infix(_:_:)();
                v80 = *(v73 + 8);
                v80(v75, v72);
                v80(v78, v72);

                if ((v79 & 1) == 0)
                {
                  break;
                }

                v81 = v154;
                if (!v153)
                {
                  goto LABEL_131;
                }

                v82 = *v65;
                v68 = *(v65 + 8);
                *v65 = v68;
                *(v65 + 8) = v82;
                v65 -= 8;
                v83 = __CFADD__(v81, 1);
                v67 = v81 + 1;
                v23 = &OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate;
                if (v83)
                {
                  goto LABEL_32;
                }
              }

              v23 = &OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate;
LABEL_32:
              v21 = (v148 + 1);
              v65 = v147 + 8;
              v66 = v146 - 1;
            }

            while (v148 + 1 != v145);
            v21 = v145;
            v5 = v140;
            v22 = v149;
            v24 = v143;
          }
        }
      }

      if (v21 < v24)
      {
        goto LABEL_123;
      }

      v84 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
      }

      v86 = *(v22 + 2);
      v85 = *(v22 + 3);
      v87 = v86 + 1;
      if (v86 >= v85 >> 1)
      {
        v131 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, v22);
        v23 = v84;
        v22 = v131;
      }

      else
      {
        v23 = v84;
      }

      *(v22 + 2) = v87;
      v88 = &v22[16 * v86];
      *(v88 + 4) = v24;
      *(v88 + 5) = v21;
      v24 = *v142;
      if (!*v142)
      {
        goto LABEL_137;
      }

      if (v86)
      {
        while (1)
        {
          v89 = v87 - 1;
          if (v87 >= 4)
          {
            break;
          }

          if (v87 == 3)
          {
            v90 = *(v22 + 4);
            v91 = *(v22 + 5);
            v100 = __OFSUB__(v91, v90);
            v92 = v91 - v90;
            v93 = v100;
LABEL_62:
            if (v93)
            {
              goto LABEL_112;
            }

            v106 = &v22[16 * v87];
            v108 = *v106;
            v107 = *(v106 + 1);
            v109 = __OFSUB__(v107, v108);
            v110 = v107 - v108;
            v111 = v109;
            if (v109)
            {
              goto LABEL_115;
            }

            v112 = &v22[16 * v89 + 32];
            v114 = *v112;
            v113 = *(v112 + 1);
            v100 = __OFSUB__(v113, v114);
            v115 = v113 - v114;
            if (v100)
            {
              goto LABEL_118;
            }

            if (__OFADD__(v110, v115))
            {
              goto LABEL_119;
            }

            if (v110 + v115 >= v92)
            {
              if (v92 < v115)
              {
                v89 = v87 - 2;
              }

              goto LABEL_83;
            }

            goto LABEL_76;
          }

          v116 = &v22[16 * v87];
          v118 = *v116;
          v117 = *(v116 + 1);
          v100 = __OFSUB__(v117, v118);
          v110 = v117 - v118;
          v111 = v100;
LABEL_76:
          if (v111)
          {
            goto LABEL_114;
          }

          v119 = &v22[16 * v89];
          v121 = *(v119 + 4);
          v120 = *(v119 + 5);
          v100 = __OFSUB__(v120, v121);
          v122 = v120 - v121;
          if (v100)
          {
            goto LABEL_117;
          }

          if (v122 < v110)
          {
            goto LABEL_3;
          }

LABEL_83:
          v127 = v89 - 1;
          if (v89 - 1 >= v87)
          {
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
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
LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

          if (!*v150)
          {
            goto LABEL_134;
          }

          v128 = *&v22[16 * v127 + 32];
          v129 = *&v22[16 * v89 + 40];
          specialized _merge<A>(low:mid:high:buffer:by:)((*v150 + 8 * v128), (*v150 + 8 * *&v22[16 * v89 + 32]), (*v150 + 8 * v129), v24);
          if (v5)
          {
            goto LABEL_105;
          }

          if (v129 < v128)
          {
            goto LABEL_108;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
          }

          if (v127 >= *(v22 + 2))
          {
            goto LABEL_109;
          }

          v130 = &v22[16 * v127];
          *(v130 + 4) = v128;
          *(v130 + 5) = v129;
          v157 = v22;
          specialized Array.remove(at:)(v89);
          v22 = v157;
          v87 = *(v157 + 2);
          v23 = &OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate;
          if (v87 <= 1)
          {
            goto LABEL_3;
          }
        }

        v94 = &v22[16 * v87 + 32];
        v95 = *(v94 - 64);
        v96 = *(v94 - 56);
        v100 = __OFSUB__(v96, v95);
        v97 = v96 - v95;
        if (v100)
        {
          goto LABEL_110;
        }

        v99 = *(v94 - 48);
        v98 = *(v94 - 40);
        v100 = __OFSUB__(v98, v99);
        v92 = v98 - v99;
        v93 = v100;
        if (v100)
        {
          goto LABEL_111;
        }

        v101 = &v22[16 * v87];
        v103 = *v101;
        v102 = *(v101 + 1);
        v100 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v100)
        {
          goto LABEL_113;
        }

        v100 = __OFADD__(v92, v104);
        v105 = v92 + v104;
        if (v100)
        {
          goto LABEL_116;
        }

        if (v105 >= v97)
        {
          v123 = &v22[16 * v89 + 32];
          v125 = *v123;
          v124 = *(v123 + 1);
          v100 = __OFSUB__(v124, v125);
          v126 = v124 - v125;
          if (v100)
          {
            goto LABEL_120;
          }

          if (v92 < v126)
          {
            v89 = v87 - 2;
          }

          goto LABEL_83;
        }

        goto LABEL_62;
      }

LABEL_3:
      v20 = *(v150 + 8);
      if (v21 >= v20)
      {
        goto LABEL_94;
      }
    }
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_94:
  v24 = *v142;
  if (*v142)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v132 = v22;
    }

    else
    {
LABEL_128:
      v132 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
    }

    v22 = v5;
    v157 = v132;
    v133 = *(v132 + 2);
    if (v133 >= 2)
    {
      while (*v150)
      {
        v134 = *&v132[16 * v133];
        v5 = *&v132[16 * v133 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v150 + 8 * v134), (*v150 + 8 * *&v132[16 * v133 + 16]), (*v150 + 8 * v5), v24);
        if (v22)
        {
          goto LABEL_105;
        }

        if (v5 < v134)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v132 = specialized _ArrayBuffer._consumeAndCreateNew()(v132);
        }

        if (v133 - 2 >= *(v132 + 2))
        {
          goto LABEL_122;
        }

        v135 = &v132[16 * v133];
        *v135 = v134;
        *(v135 + 1) = v5;
        v157 = v132;
        specialized Array.remove(at:)(v133 - 1);
        v132 = v157;
        v133 = *(v157 + 2);
        if (v133 <= 1)
        {
          goto LABEL_105;
        }
      }

      goto LABEL_136;
    }

LABEL_105:
  }

  else
  {
LABEL_140:
    __break(1u);
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **a1, void **a2, void **a3, void **a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v58 - v10;
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v58 - v15;
  v16 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v16 = a2 - a1;
  }

  v17 = v16 >> 3;
  v18 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v18 = a3 - a2;
  }

  v19 = v18 >> 3;
  if (v17 >= v18 >> 3)
  {
    v64 = a1;
    v60 = v13;
    if (a4 != a2 || &a2[v19] <= a4)
    {
      memmove(a4, a2, 8 * v19);
    }

    v68 = &a4[v19];
    if (a3 - a2 >= 8 && a2 > v64)
    {
      v38 = &_s10Foundation4DateVSgMd;
      v39 = &_s10Foundation4DateVSgMR;
      v66 = a4;
LABEL_28:
      v62 = a2;
      v40 = a2 - 1;
      v41 = a3 - 1;
      v42 = v68;
      v59 = a2 - 1;
      while (1)
      {
        v67 = v41;
        v43 = *--v42;
        v65 = *v40;
        v61 = v43;
        v44 = v63;
        v45 = v38;
        outlined init with copy of Date?(v43 + OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate, v63, v38, v39);
        v46 = type metadata accessor for Date();
        v47 = *(v46 - 8);
        v48 = *(v47 + 48);
        result = v48(v44, 1, v46);
        if (result == 1)
        {
          goto LABEL_47;
        }

        v49 = v60;
        v50 = v45;
        v51 = v45;
        v52 = v39;
        outlined init with copy of Date?(&v65[OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate], v60, v51, v39);
        result = v48(v49, 1, v46);
        if (result == 1)
        {
          goto LABEL_48;
        }

        v61 = v61;
        v65 = v65;
        v53 = v63;
        v54 = static Date.> infix(_:_:)();
        v55 = *(v47 + 8);
        v55(v49, v46);
        v55(v53, v46);

        if (v54)
        {
          a4 = v66;
          a3 = v67;
          v38 = v50;
          v39 = v52;
          v57 = v59;
          if (v67 + 1 != v62)
          {
            *v67 = *v59;
          }

          if (v68 <= a4 || (a2 = v57, v57 <= v64))
          {
            a2 = v57;
            break;
          }

          goto LABEL_28;
        }

        a4 = v66;
        v56 = v67;
        v38 = v50;
        v39 = v52;
        v40 = v59;
        if (v67 + 1 != v68)
        {
          *v67 = *v42;
        }

        v41 = v56 - 1;
        v68 = v42;
        if (v42 <= a4)
        {
          v68 = v42;
          a2 = v62;
          break;
        }
      }
    }

LABEL_41:
    if (a2 != a4 || a2 >= (a4 + ((v68 - a4 + (v68 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, a4, 8 * (v68 - a4));
    }

    return 1;
  }

  v20 = a1;
  if (a4 != a1 || &a1[v17] <= a4)
  {
    v21 = v14;
    memmove(a4, a1, 8 * v17);
    v14 = v21;
  }

  v68 = &a4[v17];
  if (a2 - a1 < 8 || a2 >= a3)
  {
LABEL_21:
    a2 = v20;
    goto LABEL_41;
  }

  v63 = v14;
  v67 = a3;
  while (1)
  {
    v64 = v20;
    v62 = a2;
    v22 = *a2;
    v66 = a4;
    v23 = *a4;
    v24 = v65;
    outlined init with copy of Date?(v22 + OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate, v65, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v25 = type metadata accessor for Date();
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    result = v27(v24, 1, v25);
    if (result == 1)
    {
      break;
    }

    v29 = v63;
    outlined init with copy of Date?(v23 + OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate, v63, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    result = v27(v29, 1, v25);
    if (result == 1)
    {
      goto LABEL_46;
    }

    v30 = v22;
    v31 = v23;
    v32 = v65;
    v33 = static Date.> infix(_:_:)();
    v34 = *(v26 + 8);
    v34(v29, v25);
    v34(v32, v25);

    if (v33)
    {
      v35 = v62;
      a2 = v62 + 1;
      v36 = v64;
      v37 = v64 == v62;
      a4 = v66;
    }

    else
    {
      v35 = v66;
      a4 = v66 + 1;
      v36 = v64;
      v37 = v64 == v66;
      a2 = v62;
    }

    if (!v37)
    {
      *v36 = *v35;
    }

    v20 = v36 + 1;
    if (a4 >= v68 || a2 >= v67)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

id specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)()
{
  v6[1] = *MEMORY[0x1E69E9840];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6[0] = 0;
  v2 = [v0 initForReadingFromData:isa error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t specialized SignatureManager.loadSignatures()()
{
  v115 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for SignatureLogger != -1)
  {
LABEL_44:
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, SignatureLogger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D38C4000, v1, v2, "load signatures", v3, 2u);
    MEMORY[0x1DA6D0660](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yXltGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yXltGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D405FF20;
  v5 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = *MEMORY[0x1E697AFF8];
  v6 = *MEMORY[0x1E697B008];
  v7 = *MEMORY[0x1E697B310];
  *(inited + 40) = *MEMORY[0x1E697B008];
  *(inited + 48) = v7;
  v107 = v5;
  v8 = v6;
  v9 = v7;
  v10.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v11 = *MEMORY[0x1E697ABD0];
  *(inited + 56) = v10;
  *(inited + 64) = v11;
  v106 = v11;
  v12 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4085270);
  v13 = *MEMORY[0x1E697AEB0];
  *(inited + 72) = v12;
  *(inited + 80) = v13;
  v105 = v13;
  v14.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v15 = *MEMORY[0x1E697AE88];
  *(inited + 88) = v14;
  *(inited + 96) = v15;
  v16 = v15;
  v17 = MEMORY[0x1DA6CCED0](0xD000000000000024, 0x80000001D4085240);
  v18 = *MEMORY[0x1E697B260];
  *(inited + 104) = v17;
  *(inited + 112) = v18;
  v19 = *MEMORY[0x1E697B268];
  *(inited + 120) = *MEMORY[0x1E697B268];
  v20 = v18;
  v21 = v19;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_yXlTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yXltMd, &_sSo11CFStringRefa_yXltMR);
  swift_arrayDestroy();
  type metadata accessor for CFStringRef(0);
  v23 = v22;
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  v24.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  result = 0;
  v25 = SecItemCopyMatching(v24.super.isa, &result);
  if (v25)
  {
    v26 = v25;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 67109120;
      *(v29 + 4) = v26;
      _os_log_impl(&dword_1D38C4000, v27, v28, "no signatures. error:%d", v29, 8u);
      MEMORY[0x1DA6D0660](v29, -1, -1);
    }

    goto LABEL_8;
  }

  v31 = v107;
  v103 = v20;
  v104 = v16;
  if (result)
  {
    isa = v24.super.isa;
    *&v113[0] = result;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySo11CFStringRefaypGGMd, &_sSaySDySo11CFStringRefaypGGMR);
    swift_dynamicCast();
    v32 = *&v112[0];
    v110 = MEMORY[0x1E69E7CC0];
    v33 = *(*&v112[0] + 16);
    if (!v33)
    {
LABEL_40:

      specialized MutableCollection<>.sort(by:)(&v110);

      v30 = v110;
      goto LABEL_41;
    }

    v102 = v23;
    v34 = 0;
    v35 = *&v112[0] + 32;
    v36 = *MEMORY[0x1E697AC30];
    v101 = *MEMORY[0x1E697B270];
    v100 = *MEMORY[0x1E697B318];
    v109 = v8;
    v108 = *MEMORY[0x1E697AC30];
    v99 = *&v112[0] + 32;
    v98 = *(*&v112[0] + 16);
    while (1)
    {
      if (v34 >= *(v32 + 16))
      {
        __break(1u);
        goto LABEL_44;
      }

      v37 = *(v35 + 8 * v34);
      if (!*(v37 + 16))
      {
        goto LABEL_23;
      }

      v38 = specialized __RawDictionaryStorage.find<A>(_:)(v36);
      if ((v39 & 1) == 0)
      {

LABEL_23:
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&dword_1D38C4000, v64, v65, "entry missing kSecAttrAccount entry", v66, 2u);
          v67 = v66;
          v8 = v109;
          MEMORY[0x1DA6D0660](v67, -1, -1);
        }

        goto LABEL_13;
      }

      outlined init with copy of Any(*(v37 + 56) + 32 * v38, v112);

      outlined init with take of Any(v112, v113);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_1D405FF30;
      *(v40 + 32) = v31;
      *(v40 + 40) = v8;
      *(v40 + 64) = v102;
      *(v40 + 72) = v106;
      v41 = v31;
      v42 = v8;
      v43 = v106;
      v36 = v108;
      v44 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4085270);
      ObjectType = swift_getObjectType();
      *(v40 + 80) = v44;
      *(v40 + 104) = ObjectType;
      *(v40 + 112) = v105;
      v46 = v105;
      v47 = Bool._bridgeToObjectiveC()().super.super.isa;
      v48 = swift_getObjectType();
      *(v40 + 120) = v47;
      *(v40 + 144) = v48;
      *(v40 + 152) = v104;
      v49 = v104;
      v50 = MEMORY[0x1DA6CCED0](0xD000000000000024, 0x80000001D4085240);
      v51 = swift_getObjectType();
      *(v40 + 160) = v50;
      *(v40 + 184) = v51;
      *(v40 + 192) = v103;
      *(v40 + 200) = v101;
      *(v40 + 224) = v102;
      *(v40 + 232) = v100;
      v52 = v103;
      v53 = v101;
      v54 = v100;
      v55 = Bool._bridgeToObjectiveC()().super.super.isa;
      v56 = swift_getObjectType();
      *(v40 + 240) = v55;
      *(v40 + 264) = v56;
      *(v40 + 272) = v108;
      outlined init with copy of Any(v113, v40 + 280);
      v57 = v108;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(v40);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
      swift_arrayDestroy();
      v58.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v111 = 0;
      v59 = SecItemCopyMatching(v58.super.isa, &v111);
      if (v59)
      {
        v60 = v59;
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();
        v33 = v98;
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 67109120;
          *(v63 + 4) = v60;
          _os_log_impl(&dword_1D38C4000, v61, v62, "failed to load. error:%d", v63, 8u);
          MEMORY[0x1DA6D0660](v63, -1, -1);
        }

        __swift_destroy_boxed_opaque_existential_0(v113);
        swift_unknownObjectRelease();
        v31 = v107;
        v36 = v108;
      }

      else
      {
        v33 = v98;
        if (v111)
        {
          swift_unknownObjectRetain();
          swift_dynamicCast();
          v69 = *(&v112[0] + 1);
          v68 = *&v112[0];
          v70 = Data.init(base64Encoded:options:)();
          v8 = v109;
          v35 = v99;
          if (v71 >> 60 == 15)
          {
            __swift_destroy_boxed_opaque_existential_0(v113);
            outlined consume of Data._Representation(v68, v69);

            swift_unknownObjectRelease();
          }

          else
          {
            v95 = v68;
            v72 = v70;
            v73 = v71;
            v74 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
            v93 = v72;
            v94 = v73;
            v75 = Data._bridgeToObjectiveC()().super.isa;
            *&v112[0] = 0;
            v76 = [v74 initForReadingFromData:v75 error:v112];

            v77 = *&v112[0];
            v96 = v76;
            if (v76)
            {
              v92 = v69;
              type metadata accessor for SignatureItem(0);
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v79 = v77;
              v80 = v76;
              v81 = MEMORY[0x1DA6CCED0](0x74616E6769534B41, 0xEB00000000657275);
              [v80 setClass:ObjCClassFromMetadata forClassName:v81];

              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v82 = v80;
              v85 = NSCoder.decodeTopLevelObject<A>(of:forKey:)();

              v31 = v107;
              v36 = v108;
              v69 = v92;
            }

            else
            {
              v83 = *&v112[0];
              v84 = _convertNSErrorToError(_:)();

              swift_willThrow();
              v85 = 0;
              v31 = v107;
              v36 = v108;
            }

            [v96 finishDecoding];

            if (v85)
            {
              v86 = v85;
              MEMORY[0x1DA6CD190]();
              if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v31 = v107;
                v36 = v108;
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              outlined consume of Data?(v93, v94);
              outlined consume of Data._Representation(v95, v69);
            }

            else
            {
              v87 = Logger.logObject.getter();
              v88 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v87, v88))
              {
                v89 = swift_slowAlloc();
                *v89 = 0;
                _os_log_impl(&dword_1D38C4000, v87, v88, "failed to unarchive signature", v89, 2u);
                v90 = v89;
                v31 = v107;
                v36 = v108;
                MEMORY[0x1DA6D0660](v90, -1, -1);
              }

              outlined consume of Data?(v93, v94);
              outlined consume of Data._Representation(v95, v69);
            }

            __swift_destroy_boxed_opaque_existential_0(v113);
            swift_unknownObjectRelease();
            v8 = v109;
          }

          goto LABEL_13;
        }

        __swift_destroy_boxed_opaque_existential_0(v113);

        swift_unknownObjectRelease();
      }

      v8 = v109;
      v35 = v99;
LABEL_13:
      if (v33 == ++v34)
      {
        goto LABEL_40;
      }
    }
  }

LABEL_8:
  v30 = MEMORY[0x1E69E7CC0];
LABEL_41:
  swift_unknownObjectRelease();
  return v30;
}

uint64_t specialized SignatureManager.removeSignature(_:)()
{
  result[19] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yXltGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yXltGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D405FF30;
  v1 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = *MEMORY[0x1E697AFF8];
  v2 = *MEMORY[0x1E697B008];
  v3 = *MEMORY[0x1E697B320];
  *(inited + 40) = *MEMORY[0x1E697B008];
  *(inited + 48) = v3;
  v4 = v1;
  v5 = v2;
  v6 = v3;
  v7.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v8 = *MEMORY[0x1E697AE88];
  *(inited + 56) = v7;
  *(inited + 64) = v8;
  v9 = v8;
  v10 = MEMORY[0x1DA6CCED0](0xD000000000000024, 0x80000001D4085240);
  v11 = *MEMORY[0x1E697ABD0];
  *(inited + 72) = v10;
  *(inited + 80) = v11;
  v12 = v11;
  v13 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4085270);
  v14 = *MEMORY[0x1E697AEB0];
  *(inited + 88) = v13;
  *(inited + 96) = v14;
  v15 = v14;
  v16.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v17 = *MEMORY[0x1E697B260];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  v18 = *MEMORY[0x1E697B270];
  v19 = *MEMORY[0x1E697AC30];
  *(inited + 120) = *MEMORY[0x1E697B270];
  *(inited + 128) = v19;
  v20 = v17;
  v21 = v18;
  v22 = v19;
  v23 = UUID.uuidString.getter();
  v24 = MEMORY[0x1DA6CCED0](v23);

  *(inited + 136) = v24;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_yXlTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yXltMd, &_sSo11CFStringRefa_yXltMR);
  swift_arrayDestroy();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  v25.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  result[0] = 0;
  if (!SecItemCopyMatching(v25.super.isa, result) && result[0])
  {
    swift_unknownObjectRetain();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_So06CFDataE0atGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_So06CFDataE0atGMR);
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_1D4058CF0;
    v29 = *MEMORY[0x1E697B3C8];
    *(v28 + 32) = *MEMORY[0x1E697B3C8];
    v30 = v29;
    *(v28 + 40) = Data._bridgeToObjectiveC()();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_So06CFDataD0aTt0g5Tf4g_n(v28);
    swift_setDeallocating();
    outlined destroy of StocksKitCurrencyCache.Provider?(v28 + 32, &_sSo11CFStringRefa_So06CFDataB0atMd, &_sSo11CFStringRefa_So06CFDataB0atMR);
    type metadata accessor for CFDataRef(0);
    v31.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v32 = SecItemDelete(v31.super.isa);
    if (!v32)
    {
      outlined consume of Data._Representation(v38, v39);

      v26 = 1;
      goto LABEL_3;
    }

    v33 = v32;
    if (one-time initialization token for SignatureLogger != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, SignatureLogger);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 67109120;
      *(v37 + 4) = v33;
      _os_log_impl(&dword_1D38C4000, v35, v36, "failed to delete signature. error:%d", v37, 8u);
      MEMORY[0x1DA6D0660](v37, -1, -1);
    }

    outlined consume of Data._Representation(v38, v39);
  }

  v26 = 0;
LABEL_3:
  swift_unknownObjectRelease();
  return v26;
}

char *specialized SignatureManager.signatureViewController(_:_:_:_:_:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  type metadata accessor for SignatureManager();
  swift_initStaticObject();
  v18 = SignatureManager.signatureItems.getter();
  v19 = v18;
  v20 = v18 >> 62;
  if (v18 >> 62)
  {
    if (__CocoaSet.count.getter() >= 1)
    {
LABEL_3:
      if (one-time initialization token for SignatureLogger != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, SignatureLogger);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();
      v69 = a4;
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 134217984;
        if (v20)
        {
          v25 = __CocoaSet.count.getter();
        }

        else
        {
          v25 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v24 + 4) = v25;

        _os_log_impl(&dword_1D38C4000, v22, v23, "showing list of signatures, count: %ld", v24, 0xCu);
        MEMORY[0x1DA6D0660](v24, -1, -1);

        a4 = v69;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      type metadata accessor for SignatureListViewController();

      SignatureListViewController.__allocating_init(editable:_:)(0, a4, a5);
      v27 = v26;
      type metadata accessor for SignatureListController();
      v28 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:0 message:0 preferredStyle:0];
      v68 = v27;
      [v28 setContentViewController_];
      v29 = v28;
      [v29 setModalPresentationStyle_];
      v30 = [v29 popoverPresentationController];
      if (v30)
      {
        if (a3)
        {
          v31 = 0;
        }

        else
        {
          v31 = a2;
        }

        v32 = v30;
        [v30 setSourceItem_];
      }

      v33 = [v29 popoverPresentationController];
      [v33 setSourceView_];

      v34 = [v29 popoverPresentationController];
      if (v34)
      {
        v35 = v34;
        if (a3)
        {
          v78.origin.x = a6;
          v78.origin.y = a7;
          v78.size.width = a8;
          v78.size.height = a9;
          if (CGRectIsEmpty(v78))
          {
            [a3 bounds];
            a6 = v36;
            a7 = v37;
            a8 = v38;
            a9 = v39;
          }
        }

        [v35 setSourceRect_];
      }

      v40 = _UISolariumEnabled();
      v41 = [v29 popoverPresentationController];
      v42 = v41;
      if (v40 && a3)
      {
        if (v41)
        {
          [v41 _setShouldHideArrow_];
LABEL_27:
        }
      }

      else if (v41)
      {
        [v41 setPermittedArrowDirections_];
        goto LABEL_27;
      }

      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      isa = paperKitBundle.super.isa;
      v76._object = 0x80000001D40851C0;
      v44.value._object = 0xEB00000000656C62;
      v45._object = 0x80000001D40851A0;
      v76._countAndFlagsBits = 0xD00000000000003ELL;
      v45._countAndFlagsBits = 0xD000000000000017;
      v44.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, v44, paperKitBundle, v46, v76);
      v48 = swift_allocObject();
      v48[2] = v69;
      v48[3] = a5;
      v48[4] = a1;
      v49 = a1;

      v50 = MEMORY[0x1DA6CCED0](v47._countAndFlagsBits, v47._object);

      v74 = partial apply for closure #1 in SignatureManager.signatureViewController(_:_:_:_:_:);
      v75 = v48;
      aBlock = MEMORY[0x1E69E9820];
      v71 = 1107296256;
      v72 = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction) -> ();
      v73 = &block_descriptor_15;
      v51 = _Block_copy(&aBlock);

      v52 = objc_opt_self();
      v53 = [v52 actionWithTitle:v50 style:0 handler:v51];
      _Block_release(v51);

      [v29 addAction_];
      v77._object = 0x80000001D4085220;
      v54._countAndFlagsBits = 0x6C65636E6143;
      v54._object = 0xE600000000000000;
      v55.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v55.value._object = 0xEB00000000656C62;
      v56._countAndFlagsBits = 0;
      v56._object = 0xE000000000000000;
      v77._countAndFlagsBits = 0xD000000000000017;
      v57 = NSLocalizedString(_:tableName:bundle:value:comment:)(v54, v55, isa, v56, v77);
      v58 = swift_allocObject();
      *(v58 + 16) = v69;
      *(v58 + 24) = a5;

      v59 = MEMORY[0x1DA6CCED0](v57._countAndFlagsBits, v57._object);

      v74 = partial apply for closure #2 in SignatureManager.signatureViewController(_:_:_:_:_:);
      v75 = v58;
      aBlock = MEMORY[0x1E69E9820];
      v71 = 1107296256;
      v72 = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction) -> ();
      v73 = &block_descriptor_19;
      v60 = _Block_copy(&aBlock);

      v61 = [v52 actionWithTitle:v59 style:1 handler:v60];
      _Block_release(v60);

      [v29 addAction_];
      return v29;
    }
  }

  else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_3;
  }

  if (one-time initialization token for SignatureLogger != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  __swift_project_value_buffer(v62, SignatureLogger);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_1D38C4000, v63, v64, "no signatures. showing signature creation panel", v65, 2u);
    MEMORY[0x1DA6D0660](v65, -1, -1);
  }

  v29 = [objc_allocWithZone(type metadata accessor for SignatureCreationViewController()) initWithNibName:0 bundle:0];
  v66 = &v29[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_completion];
  *v66 = a4;
  *(v66 + 1) = a5;

  return v29;
}

double block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t outlined destroy of Signature(uint64_t a1)
{
  v2 = type metadata accessor for Signature(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Color(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Color(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef()
{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

BOOL specialized static SignatureManager.ownsSignature(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yXltGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yXltGMR);
  inited = swift_initStackObject();
  v1 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = *MEMORY[0x1E697AFF8];
  *(inited + 16) = xmmword_1D405FF30;
  v2 = *MEMORY[0x1E697B008];
  v3 = *MEMORY[0x1E697ABD0];
  *(inited + 40) = *MEMORY[0x1E697B008];
  *(inited + 48) = v3;
  v4 = v1;
  v5 = v2;
  v6 = v3;
  v7 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4085270);
  v8 = *MEMORY[0x1E697AEB0];
  *(inited + 56) = v7;
  *(inited + 64) = v8;
  v9 = v8;
  v10.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v11 = *MEMORY[0x1E697AE88];
  *(inited + 72) = v10;
  *(inited + 80) = v11;
  v12 = v11;
  v13 = MEMORY[0x1DA6CCED0](0xD000000000000024, 0x80000001D4085240);
  v14 = *MEMORY[0x1E697B260];
  *(inited + 88) = v13;
  *(inited + 96) = v14;
  v15 = *MEMORY[0x1E697B270];
  v16 = *MEMORY[0x1E697B318];
  *(inited + 104) = *MEMORY[0x1E697B270];
  *(inited + 112) = v16;
  v17 = v14;
  v18 = v15;
  v19 = v16;
  v20.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v21 = *MEMORY[0x1E697AC30];
  *(inited + 120) = v20;
  *(inited + 128) = v21;
  v22 = v21;
  v23 = UUID.uuidString.getter();
  v24 = MEMORY[0x1DA6CCED0](v23);

  *(inited + 136) = v24;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_yXlTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yXltMd, &_sSo11CFStringRefa_yXltMR);
  swift_arrayDestroy();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = SecItemCopyMatching(isa, 0);

  return v26 == 0;
}

void specialized CanvasElement.apply(_:)(double *a1)
{
  v33 = a1[5];
  v34 = a1[4];
  v2 = off_1F4F57458;
  type metadata accessor for GraphElement(0);
  v31 = *(a1 + 1);
  v32 = *a1;
  v3 = v2();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = (off_1F4F573C8[0])();
  v29 = v5 - v9 * 0.0;
  v30 = v3 - v7 * 0.0;
  v38.origin.x = v3;
  v38.origin.y = v5;
  v38.size.width = v7;
  v27 = v7;
  v28 = v9;
  v38.size.height = v9;
  MidX = CGRectGetMidX(v38);
  v39.origin.x = v3;
  v39.origin.y = v5;
  v39.size.width = v7;
  v39.size.height = v9;
  MidY = CGRectGetMidY(v39);
  CGAffineTransformMakeRotation(&t1, v10);
  tx = t1.tx;
  ty = t1.ty;
  v23 = *&t1.c;
  v25 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v19 = t1.tx;
  v20 = t1.ty;
  *&t2.a = v25;
  *&t2.c = v23;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v21 = v35.tx;
  v22 = v35.ty;
  v24 = *&v35.c;
  v26 = *&v35.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v19;
  t1.ty = v20;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.c = v24;
  *&t1.a = v26;
  t1.tx = v21;
  t1.ty = v22;
  CGAffineTransformConcat(&v35, &t1, &t2);
  t1.a = v27;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v28;
  t1.tx = v30;
  t1.ty = v29;
  t2 = v35;
  CGAffineTransformConcat(&v35, &t1, &t2);
  t2 = v35;
  *&v35.a = v32;
  *&v35.c = v31;
  v35.tx = v34;
  v35.ty = v33;
  CGAffineTransformConcat(&t1, &t2, &v35);
  specialized CanvasElement.coordinateSpace.setter();
}

{
  v34 = a1[5];
  v35 = a1[4];
  v2 = off_1F4F612B0;
  v3 = type metadata accessor for LoupeElement(0);
  v32 = *(a1 + 1);
  v33 = *a1;
  v4 = v2();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = off_1F4F61220(v3, &protocol witness table for LoupeElement);
  v30 = v6 - v10 * 0.0;
  v31 = v4 - v8 * 0.0;
  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v28 = v8;
  v29 = v10;
  v39.size.height = v10;
  MidX = CGRectGetMidX(v39);
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  MidY = CGRectGetMidY(v40);
  CGAffineTransformMakeRotation(&t1, v11);
  tx = t1.tx;
  ty = t1.ty;
  v24 = *&t1.c;
  v26 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v20 = t1.tx;
  v21 = t1.ty;
  *&t2.a = v26;
  *&t2.c = v24;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v36, &t1, &t2);
  v22 = v36.tx;
  v23 = v36.ty;
  v25 = *&v36.c;
  v27 = *&v36.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v20;
  t1.ty = v21;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.c = v25;
  *&t1.a = v27;
  t1.tx = v22;
  t1.ty = v23;
  CGAffineTransformConcat(&v36, &t1, &t2);
  t1.a = v28;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v29;
  t1.tx = v31;
  t1.ty = v30;
  t2 = v36;
  CGAffineTransformConcat(&v36, &t1, &t2);
  t2 = v36;
  *&v36.a = v33;
  *&v36.c = v32;
  v36.tx = v35;
  v36.ty = v34;
  CGAffineTransformConcat(&t1, &t2, &v36);
  specialized CanvasElement.coordinateSpace.setter();
}

{
  v34 = a1[5];
  v35 = a1[4];
  v2 = off_1F4F5EEB0;
  v3 = type metadata accessor for Image(0);
  v32 = *(a1 + 1);
  v33 = *a1;
  v4 = v2();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = off_1F4F5EE20(v3, &protocol witness table for Image);
  v30 = v6 - v10 * 0.0;
  v31 = v4 - v8 * 0.0;
  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v28 = v8;
  v29 = v10;
  v39.size.height = v10;
  MidX = CGRectGetMidX(v39);
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  MidY = CGRectGetMidY(v40);
  CGAffineTransformMakeRotation(&t1, v11);
  tx = t1.tx;
  ty = t1.ty;
  v24 = *&t1.c;
  v26 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v20 = t1.tx;
  v21 = t1.ty;
  *&t2.a = v26;
  *&t2.c = v24;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v36, &t1, &t2);
  v22 = v36.tx;
  v23 = v36.ty;
  v25 = *&v36.c;
  v27 = *&v36.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v20;
  t1.ty = v21;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.c = v25;
  *&t1.a = v27;
  t1.tx = v22;
  t1.ty = v23;
  CGAffineTransformConcat(&v36, &t1, &t2);
  t1.a = v28;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v29;
  t1.tx = v31;
  t1.ty = v30;
  t2 = v36;
  CGAffineTransformConcat(&v36, &t1, &t2);
  t2 = v36;
  *&v36.a = v33;
  *&v36.c = v32;
  v36.tx = v35;
  v36.ty = v34;
  CGAffineTransformConcat(&t1, &t2, &v36);
  specialized CanvasElement.coordinateSpace.setter();
}

{
  v34 = a1[5];
  v35 = a1[4];
  v2 = off_1F4F62A10;
  v3 = type metadata accessor for Paper(0);
  v32 = *(a1 + 1);
  v33 = *a1;
  v4 = v2();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = off_1F4F62980(v3, &protocol witness table for Paper);
  v30 = v6 - v10 * 0.0;
  v31 = v4 - v8 * 0.0;
  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v28 = v8;
  v29 = v10;
  v39.size.height = v10;
  MidX = CGRectGetMidX(v39);
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  MidY = CGRectGetMidY(v40);
  CGAffineTransformMakeRotation(&t1, v11);
  tx = t1.tx;
  ty = t1.ty;
  v24 = *&t1.c;
  v26 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v20 = t1.tx;
  v21 = t1.ty;
  *&t2.a = v26;
  *&t2.c = v24;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v36, &t1, &t2);
  v22 = v36.tx;
  v23 = v36.ty;
  v25 = *&v36.c;
  v27 = *&v36.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v20;
  t1.ty = v21;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.c = v25;
  *&t1.a = v27;
  t1.tx = v22;
  t1.ty = v23;
  CGAffineTransformConcat(&v36, &t1, &t2);
  t1.a = v28;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v29;
  t1.tx = v31;
  t1.ty = v30;
  t2 = v36;
  CGAffineTransformConcat(&v36, &t1, &t2);
  t2 = v36;
  *&v36.a = v33;
  *&v36.c = v32;
  v36.tx = v35;
  v36.ty = v34;
  CGAffineTransformConcat(&t1, &t2, &v36);
  specialized CanvasElement.coordinateSpace.setter();
}

{
  v33 = a1[5];
  v34 = a1[4];
  v2 = off_1F4F62BD8;
  type metadata accessor for Link(0);
  v31 = *(a1 + 1);
  v32 = *a1;
  v3 = v2();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = (off_1F4F62B48[0])();
  v29 = v5 - v9 * 0.0;
  v30 = v3 - v7 * 0.0;
  v38.origin.x = v3;
  v38.origin.y = v5;
  v38.size.width = v7;
  v27 = v7;
  v28 = v9;
  v38.size.height = v9;
  MidX = CGRectGetMidX(v38);
  v39.origin.x = v3;
  v39.origin.y = v5;
  v39.size.width = v7;
  v39.size.height = v9;
  MidY = CGRectGetMidY(v39);
  CGAffineTransformMakeRotation(&t1, v10);
  tx = t1.tx;
  ty = t1.ty;
  v23 = *&t1.c;
  v25 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v19 = t1.tx;
  v20 = t1.ty;
  *&t2.a = v25;
  *&t2.c = v23;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v21 = v35.tx;
  v22 = v35.ty;
  v24 = *&v35.c;
  v26 = *&v35.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v19;
  t1.ty = v20;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.c = v24;
  *&t1.a = v26;
  t1.tx = v21;
  t1.ty = v22;
  CGAffineTransformConcat(&v35, &t1, &t2);
  t1.a = v27;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v28;
  t1.tx = v30;
  t1.ty = v29;
  t2 = v35;
  CGAffineTransformConcat(&v35, &t1, &t2);
  t2 = v35;
  *&v35.a = v32;
  *&v35.c = v31;
  v35.tx = v34;
  v35.ty = v33;
  CGAffineTransformConcat(&t1, &t2, &v35);
  specialized CanvasElement.coordinateSpace.setter();
}

{
  v33 = a1[5];
  v34 = a1[4];
  v2 = off_1F4F66BD0;
  type metadata accessor for UnknownCanvasElement(0);
  v31 = *(a1 + 1);
  v32 = *a1;
  v3 = v2();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = (off_1F4F66B40[0])();
  v29 = v5 - v9 * 0.0;
  v30 = v3 - v7 * 0.0;
  v38.origin.x = v3;
  v38.origin.y = v5;
  v38.size.width = v7;
  v27 = v7;
  v28 = v9;
  v38.size.height = v9;
  MidX = CGRectGetMidX(v38);
  v39.origin.x = v3;
  v39.origin.y = v5;
  v39.size.width = v7;
  v39.size.height = v9;
  MidY = CGRectGetMidY(v39);
  CGAffineTransformMakeRotation(&t1, v10);
  tx = t1.tx;
  ty = t1.ty;
  v23 = *&t1.c;
  v25 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v19 = t1.tx;
  v20 = t1.ty;
  *&t2.a = v25;
  *&t2.c = v23;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v21 = v35.tx;
  v22 = v35.ty;
  v24 = *&v35.c;
  v26 = *&v35.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v19;
  t1.ty = v20;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.c = v24;
  *&t1.a = v26;
  t1.tx = v21;
  t1.ty = v22;
  CGAffineTransformConcat(&v35, &t1, &t2);
  t1.a = v27;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v28;
  t1.tx = v30;
  t1.ty = v29;
  t2 = v35;
  CGAffineTransformConcat(&v35, &t1, &t2);
  t2 = v35;
  *&v35.a = v32;
  *&v35.c = v31;
  v35.tx = v34;
  v35.ty = v33;
  CGAffineTransformConcat(&t1, &t2, &v35);
  specialized CanvasElement.coordinateSpace.setter();
}

uint64_t specialized CanvasElement.apply(_:)(double *a1)
{
  v35 = a1[5];
  v36 = a1[4];
  v2 = off_1F4F5A660;
  type metadata accessor for PaperDocumentPage(0);
  v33 = *(a1 + 1);
  v34 = *a1;
  v3 = v2();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  off_1F4F5A5D0[0]();
  v11 = v10;
  v31 = v5 - v9 * 0.0;
  v32 = v3 - v7 * 0.0;
  v40.origin.x = v3;
  v40.origin.y = v5;
  v40.size.width = v7;
  v29 = v7;
  v30 = v9;
  v40.size.height = v9;
  MidX = CGRectGetMidX(v40);
  v41.origin.x = v3;
  v41.origin.y = v5;
  v41.size.width = v7;
  v41.size.height = v9;
  MidY = CGRectGetMidY(v41);
  CGAffineTransformMakeRotation(&t1, v11);
  tx = t1.tx;
  ty = t1.ty;
  v25 = *&t1.c;
  v27 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v20 = t1.tx;
  v21 = t1.ty;
  *&t2.a = v27;
  *&t2.c = v25;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v37, &t1, &t2);
  v22 = v37.tx;
  v23 = v37.ty;
  v26 = *&v37.c;
  v28 = *&v37.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v20;
  t1.ty = v21;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.c = v26;
  *&t1.a = v28;
  t1.tx = v22;
  t1.ty = v23;
  CGAffineTransformConcat(&v37, &t1, &t2);
  t1.a = v29;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v30;
  t1.tx = v32;
  t1.ty = v31;
  t2 = v37;
  CGAffineTransformConcat(&v37, &t1, &t2);
  t2 = v37;
  *&v37.a = v34;
  *&v37.c = v33;
  v37.tx = v36;
  v37.ty = v35;
  CGAffineTransformConcat(&t1, &t2, &v37);
  return specialized CanvasElement.coordinateSpace.setter();
}

void specialized Sequence.forEach(_:)(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA6CE0C0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

id AKControllerDelegateHelper.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AKControllerDelegateHelper();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t static AnnotationImporter.translateStrokedAnnotation(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v348 = a2;
  v3 = type metadata accessor for ShapeType(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v340 = &v322 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v341 = &v322 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v339 = &v322 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v333 = &v322 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v334 = &v322 - v13;
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v337 = *(v338 - 8);
  MEMORY[0x1EEE9AC00](v338);
  v329 = &v322 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v327 = &v322 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v325 = &v322 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v324 = &v322 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v330 = &v322 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v328 = &v322 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v322 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v350 = (&v322 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v349 = &v322 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v322 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v335 = &v322 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v336 = &v322 - v38;
  MEMORY[0x1EEE9AC00](v39);
  *&v351 = &v322 - v40;
  MEMORY[0x1EEE9AC00](v41);
  *&v352 = &v322 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v322 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v322 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9ShapeTypeOSgMd, &_s8PaperKit9ShapeTypeOSgMR);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v345 = &v322 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v323 = (&v322 - v52);
  MEMORY[0x1EEE9AC00](v53);
  v326 = (&v322 - v54);
  MEMORY[0x1EEE9AC00](v55);
  v57 = (&v322 - v56);
  v58 = type metadata accessor for Shape(0);
  v347 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v322 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = Shape.init()(v60);
  v346 = v4;
  v62 = *(v4 + 56);
  v353 = v57;
  v354 = v3;
  v343 = v4 + 56;
  v342 = v62;
  (v62)(v57, 1, 1, v3, v61);
  [a1 drawingBounds];
  v356.a = v63;
  v356.b = v64;
  v356.c = v65;
  v356.d = v66;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  v67 = [a1 strokeColor];
  v355 = v58;
  if (v67)
  {
    v68 = v67;
    Color.init(cgColor:)([v68 CGColor], v45);

    v69 = type metadata accessor for Color(0);
    v70 = (*(v69 - 8) + 48);
    v71 = (*v70)(v45, 1, v69);
    v72 = (v70 + 1);
    v332 = v27;
    v331 = a1;
    if (v71)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      v73 = 1;
    }

    else
    {
      outlined init with take of AnnotationImporter.ImportedElement(v45, v48, type metadata accessor for Color);
      v73 = 0;
    }

    (*v72)(v48, v73, 1, v69);
    v74 = v352;
    outlined init with copy of Date?(v48, *&v352, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    outlined init with copy of Date?(*&v74, *&v351, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
    CRRegister.wrappedValue.setter();

    outlined destroy of StocksKitCurrencyCache.Provider?(*&v74, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v48, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    v27 = v332;
    a1 = v331;
  }

  [a1 strokeWidth];
  v356.a = v75;
  v76 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR));
  CRRegister.wrappedValue.setter();
  v77 = a1;
  _s8PaperKit11StrokeStyleO3forACx_tcSo27AKStrokedAnnotationProtocolRzlufCSo0fG0C_Tt1g5Tm(v77, v34);
  v78 = type metadata accessor for StrokeStyle(0);
  (*(*(v78 - 8) + 56))(v34, 0, 1, v78);
  outlined init with copy of Date?(v34, v349, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  if ([v77 hasShadow])
  {
    [v77 originalModelBaseScaleFactor];
    v80 = v79;
    v81 = type metadata accessor for Shadow(0);
    v82 = *(v81 + 24);
    v83 = v354;
    v84 = v350;
    if (one-time initialization token for defaultShadowColor != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Color(0);
    v86 = __swift_project_value_buffer(v85, static UIConstants.defaultShadowColor);
    outlined init with copy of AnnotationImporter.ImportedElement(v86, v84 + v82, type metadata accessor for Color);
    *v84 = v80 * 0.0;
    v84[1] = v80 * 3.0;
    v84[2] = v80 * 3.0;
    outlined assign with copy of Color(v86, v84 + v82);
    (*(*(v81 - 8) + 56))(v84, 0, 1, v81);
  }

  else
  {
    v87 = type metadata accessor for Shadow(0);
    v84 = v350;
    (*(*(v87 - 8) + 56))(v350, 1, 1, v87);
    v83 = v354;
  }

  v88 = v355;
  outlined init with copy of Date?(v84, v27, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMR);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v84, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  v357 = &unk_1F4FF8798;
  v89 = swift_dynamicCastObjCProtocolConditional();
  if (v89)
  {
    v90 = v89;
    v91 = v77;
    [v90 rectangle];
    v356.a = v92;
    v356.b = v93;
    v356.c = v94;
    v356.d = v95;
    CRRegister.wrappedValue.setter();
  }

  objc_opt_self();
  v96 = swift_dynamicCastObjCClass();
  v97 = v353;
  if (!v96)
  {
    goto LABEL_103;
  }

  v98 = v96;
  v99 = v77;
  v100 = [v98 fillColor];
  if (v100)
  {
    v350 = v99;
    v101 = v100;
    v102 = [v101 CGColor];
    v103 = v335;
    Color.init(cgColor:)(v102, v335);

    v104 = type metadata accessor for Color(0);
    v105 = (*(v104 - 8) + 48);
    v106 = (*v105)(v103, 1, v104);
    v107 = (v105 + 1);
    v108 = v76;
    if (v106)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v103, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      v109 = 1;
      v110 = v336;
    }

    else
    {
      v110 = v336;
      outlined init with take of AnnotationImporter.ImportedElement(v103, v336, type metadata accessor for Color);
      v109 = 0;
    }

    (*v107)(v110, v109, 1, v104);
    v111 = v352;
    outlined init with copy of Date?(v110, *&v352, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    outlined init with copy of Date?(*&v111, *&v351, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
    CRRegister.wrappedValue.setter();

    outlined destroy of StocksKitCurrencyCache.Provider?(*&v111, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v110, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    v76 = v108;
    v99 = v350;
  }

  objc_opt_self();
  v112 = swift_dynamicCastObjCClass();
  if (v112)
  {
    v113 = v112;
    v114 = COERCE_DOUBLE(v99);
    [v113 rotationAngle];
    v116 = v115;
    CRRegister.value.getter();
    if (vabdd_f64(v356.a, v116) > 0.01)
    {
      v356.a = v116;
      CRRegister.value.setter();
    }

    v117 = [v113 typingAttributes];
    v97 = v353;
    v83 = v354;
    if (!v117)
    {
      goto LABEL_51;
    }

    v118 = v117;
    v119 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v119);
    v121 = v120;

    if (v121 == 0.0)
    {
      goto LABEL_51;
    }

    v351 = v76;
    v356.a = v121;
    [*&v114 originalModelBaseScaleFactor];
    Dictionary<>.scaleBy(_:)(v122);
    v123 = [v113 annotationText];
    v352 = v114;
    if (!v123)
    {
      if (![v113 shouldUsePlaceholderText])
      {
        goto LABEL_50;
      }

      if (!object_getClass(*&v352))
      {
        goto LABEL_50;
      }

      swift_getObjCClassMetadata();
      v154 = [swift_getObjCClassFromMetadata() defaultPlaceholderText];
      if (!v154)
      {
        goto LABEL_50;
      }

      v155 = v154;
      [*&v352 originalModelBaseScaleFactor];
      v156 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      type metadata accessor for NSAttributedStringKey(0);
      lazy protocol witness table accessor for type PKDrawingStruct and conformance PKDrawingStruct(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v156 initWithString:v155 attributes:isa];

      MEMORY[0x1EEE9AC00](v158);
      lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
      v159 = v324;
      CRAttributedString.init(_:transformAttributes:)();
      v160 = *(v355 + 52);
      v161 = v337;
      v162 = v338;
      (*(v337 + 40))(&v60[v160], v159, v338);
      v163 = v325;
      (*(v161 + 16))(v325, &v60[v160], v162);
      v164 = CRAttributedString.attributedString.getter();
      v165 = [v164 string];

      v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v168 = v167;

      if (!v166 && v168 == 0xE000000000000000)
      {

        (*(v337 + 8))(v163, v338);
LABEL_50:
        v212 = v334;
        CRAttributedString.Attributes<>.init(nsAttributes:darkMode:)(*&v356.a, 0, v334);
        v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
        (*(*(v213 - 8) + 56))(v212, 0, 1, v213);
        outlined init with copy of Date?(v212, v333, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
        CRRegister.wrappedValue.setter();
        outlined destroy of StocksKitCurrencyCache.Provider?(v212, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
        v76 = v351;
        v114 = v352;
LABEL_51:
        Shape.maximumNumberOfCharacters.setter([v113 maximumNumberOfCharacters]);
        objc_opt_self();
        v214 = swift_dynamicCastObjCClass();
        if (v214)
        {
          [v214 cornerRadius];
          if (v215 <= 0.0)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s8PaperKit9ShapeTypeOSgMd, &_s8PaperKit9ShapeTypeOSgMR);
          }

          else
          {
            v216 = v215;
            [v113 rectangle];
            Width = CGRectGetWidth(v378);
            [v113 rectangle];
            v219 = v218;
            v221 = v220;
            v223 = v222;
            v225 = v224;

            v379.origin.x = v219;
            v379.origin.y = v221;
            v379.size.width = v223;
            v379.size.height = v225;
            Height = CGRectGetHeight(v379);

            outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s8PaperKit9ShapeTypeOSgMd, &_s8PaperKit9ShapeTypeOSgMR);
            if (Height >= Width)
            {
              v227 = Width;
            }

            else
            {
              v227 = Height;
            }

            v228 = v216 / v227;
            if (v228 > 0.5)
            {
              v228 = 0.5;
            }

            if (v228 < 0.0)
            {
              v228 = 0.0;
            }

            *v97 = v228;
          }

          goto LABEL_75;
        }

        objc_opt_self();
        v229 = swift_dynamicCastObjCClass();
        v230 = v114;
        if (v229)
        {
          v231 = v229;
          outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s8PaperKit9ShapeTypeOSgMd, &_s8PaperKit9ShapeTypeOSgMR);
          swift_storeEnumTagMultiPayload();
          v342(v97, 0, 1, v83);
          *&v356.a = 3;
          v88 = v355;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
          CRRegister.wrappedValue.setter();
          v230 = COERCE_DOUBLE(*&v230);
          if ([v231 textIsFixedWidth])
          {
            v233 = CRRegister.wrappedValue.modify();
            if (*v232)
            {
              *v232 &= ~1uLL;
            }

            v233(&v356, 0);
          }

          if ([v231 textIsFixedHeight])
          {
            v235 = CRRegister.wrappedValue.modify();
            if ((*v234 & 2) != 0)
            {
              *v234 &= ~2uLL;
            }

            v235(&v356, 0);
          }

          v236 = [v231 textContentType];

          if (v236)
          {
            v356.a = 0.0;
            v356.b = 0.0;
            static String._conditionallyBridgeFromObjectiveC(_:result:)();

            b = v356.b;
            if (*&v356.b)
            {
              a = v356.a;
              FormContentType.init(_:)(*(&b - 1));
              Shape.formContentType.setter(&v356);
            }
          }

          goto LABEL_73;
        }

        objc_opt_self();
        v239 = swift_dynamicCastObjCClass();
        v88 = v355;
        if (v239)
        {
          goto LABEL_77;
        }

        objc_opt_self();
        v240 = swift_dynamicCastObjCClass();
        if (v240)
        {
          v241 = v240;
          v351 = v76;
          v242 = *&v114;
          v243 = [v241 pointCount];
          outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s8PaperKit9ShapeTypeOSgMd, &_s8PaperKit9ShapeTypeOSgMR);
          v244 = 3;
          if (v243 > 3)
          {
            v244 = v243;
          }

          if (v244 >= 12)
          {
            v244 = 12;
          }

          v245 = v326;
          *v326 = v244;
          swift_storeEnumTagMultiPayload();
          v342(v245, 0, 1, v83);
          outlined init with take of Range<AttributedString.Index>(v245, v97, &_s8PaperKit9ShapeTypeOSgMd, &_s8PaperKit9ShapeTypeOSgMR);
          objc_opt_self();
          v246 = swift_dynamicCastObjCClass();
          if (!v246)
          {

            if ([v241 pointCount] == 6)
            {
              CRRegister.value.getter();
              v88 = v355;
              if (fabs(v356.a + -0.523598776) > 0.01)
              {
                v356.a = 0.523598776;
                CRRegister.value.setter();
              }
            }

            else
            {

              v88 = v355;
            }

            goto LABEL_103;
          }

          v208 = v246;
          v207 = v242;
          v124 = [v208 pointCount];
          if (one-time initialization token for defaultInnerRadius == -1)
          {
            goto LABEL_86;
          }

          goto LABEL_128;
        }

        objc_opt_self();
        v278 = swift_dynamicCastObjCClass();
        if (!v278)
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            objc_opt_self();
            if (!swift_dynamicCastObjCClass() || (objc_opt_self(), (v305 = swift_dynamicCastObjCClass()) == 0))
            {
LABEL_73:

              goto LABEL_103;
            }

            v306 = v305;
            v307 = *&v230;
            CRRegister.wrappedValue.getter();
            v308 = v356.a;
            v309 = v356.b;
            c = v356.c;
            d = v356.d;
            [v306 pointyBitPoint];
            v313 = v312;
            v315 = v314;
            v382.origin.x = v308;
            v382.origin.y = v309;
            v382.size.width = c;
            v382.size.height = d;
            v316 = v313 - CGRectGetMinX(v382);
            v383.origin.x = v308;
            v383.origin.y = v309;
            v383.size.width = c;
            v383.size.height = d;
            v317 = v316 / CGRectGetWidth(v383);
            v384.origin.x = v308;
            v384.origin.y = v309;
            v384.size.width = c;
            v384.size.height = d;
            v318 = v315 - CGRectGetMinY(v384);
            v385.origin.x = v308;
            v385.origin.y = v309;
            v385.size.width = c;
            v385.size.height = d;
            v319 = 1.0 - v318 / CGRectGetHeight(v385);
            [v306 pointyBitBaseWidthAngle];
            v321 = v320;

            outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s8PaperKit9ShapeTypeOSgMd, &_s8PaperKit9ShapeTypeOSgMR);
            *v97 = v317;
            v97[1] = v319;
            v97[2] = v321 * 3.14159265 / 180.0 * 0.5;
LABEL_78:
            swift_storeEnumTagMultiPayload();
            v342(v97, 0, 1, v83);
            goto LABEL_103;
          }

LABEL_77:

          outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s8PaperKit9ShapeTypeOSgMd, &_s8PaperKit9ShapeTypeOSgMR);
          goto LABEL_78;
        }

        v279 = v278;
        v280 = *&v230;
        v281 = [v279 path];
        if (!v281)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s8PaperKit9ShapeTypeOSgMd, &_s8PaperKit9ShapeTypeOSgMR);

          outlined destroy of AnnotationImporter.ImportedElement(v60, type metadata accessor for Shape);
          goto LABEL_105;
        }

        v282 = v281;
        v283 = v280;
        [v279 rectangle];
        v284 = 1.0 / CGRectGetWidth(v380);
        [v279 rectangle];
        v286 = v285;
        v288 = v287;
        v290 = v289;
        v292 = v291;

        v381.origin.x = v286;
        v381.origin.y = v288;
        v381.size.width = v290;
        v381.size.height = v292;
        v293 = CGRectGetHeight(v381);
        CGAffineTransformMakeScale(&v356, v284, -1.0 / v293);
        [v282 applyTransform_];
        [v282 bounds];
        CGAffineTransformMakeTranslation(&v356, -v294, -v295);
        [v282 applyTransform_];
        v296 = [v279 path];
        if (v296)
        {
          v297 = v296;
          v298 = [v296 CGPath];

          outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s8PaperKit9ShapeTypeOSgMd, &_s8PaperKit9ShapeTypeOSgMR);
          v299 = v323;
          *v323 = v298;
          swift_storeEnumTagMultiPayload();
          v342(v299, 0, 1, v83);
          outlined init with take of Range<AttributedString.Index>(v299, v97, &_s8PaperKit9ShapeTypeOSgMd, &_s8PaperKit9ShapeTypeOSgMR);
          goto LABEL_103;
        }

        goto LABEL_130;
      }

      v300 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*(v337 + 8))(v163, v338);
      if (v300)
      {
        goto LABEL_50;
      }

      v301 = CRAttributedString.attributedString.getter();
      v302 = [v301 length];

      if (__OFSUB__(v302, 1))
      {
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      v303 = v334;
      CRAttributedString.attributes(at:effectiveRange:)();
      v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
      (*(*(v304 - 8) + 56))(v303, 0, 1, v304);
      outlined init with copy of Date?(v303, v333, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
      CRRegister.wrappedValue.setter();
      v211 = v303;
LABEL_49:
      outlined destroy of StocksKitCurrencyCache.Provider?(v211, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
      goto LABEL_50;
    }

    v124 = v123;
    v125 = [*&v114 originalModelBaseScaleFactor];
    MEMORY[0x1EEE9AC00](v125);
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    v126 = v328;
    CRAttributedString.init(_:transformAttributes:)();
    v127 = *(v355 + 52);
    v128 = v337;
    v129 = v338;
    (*(v337 + 40))(&v60[v127], v126, v338);
    (*(v128 + 16))(v330, &v60[v127], v129);
    v130 = CRAttributedString.attributedString.getter();
    v131 = [v130 string];

    v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v134 = v133;

    if (!v132 && v134 == 0xE000000000000000)
    {

      (*(v337 + 8))(v330, v338);
LABEL_43:

      goto LABEL_50;
    }

    v206 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v337 + 8))(v330, v338);
    if (v206)
    {
      goto LABEL_43;
    }

    v207 = CRAttributedString.attributedString.getter();
    v208 = [v207 length];

    if (!__OFSUB__(v208, 1))
    {
      v209 = v334;
      CRAttributedString.attributes(at:effectiveRange:)();
      v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
      (*(*(v210 - 8) + 56))(v209, 0, 1, v210);
      outlined init with copy of Date?(v209, v333, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
      CRRegister.wrappedValue.setter();

      v211 = v209;
      goto LABEL_49;
    }

    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    swift_once();
LABEL_86:
    [v208 innerRadiusFactor];
    v248 = v247;

    outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s8PaperKit9ShapeTypeOSgMd, &_s8PaperKit9ShapeTypeOSgMR);
    *v97 = v124;
    *(v97 + 1) = v248;
LABEL_75:
    swift_storeEnumTagMultiPayload();
    v342(v97, 0, 1, v83);
    v88 = v355;
    goto LABEL_103;
  }

  objc_opt_self();
  v135 = swift_dynamicCastObjCClass();
  v83 = v354;
  if (!v135)
  {

    v97 = v353;
    v88 = v355;
LABEL_103:
    v272 = v345;
    outlined init with copy of Date?(v97, v345, &_s8PaperKit9ShapeTypeOSgMd, &_s8PaperKit9ShapeTypeOSgMR);
    if ((*(v346 + 48))(v272, 1, v83) != 1)
    {
      v275 = v339;
      outlined init with take of AnnotationImporter.ImportedElement(v272, v339, type metadata accessor for ShapeType);
      v276 = v341;
      outlined init with copy of AnnotationImporter.ImportedElement(v275, v341, type metadata accessor for ShapeType);
      outlined init with copy of AnnotationImporter.ImportedElement(v276, v340, type metadata accessor for ShapeType);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMR);
      CRRegister.wrappedValue.setter();
      outlined destroy of AnnotationImporter.ImportedElement(v276, type metadata accessor for ShapeType);
      outlined destroy of AnnotationImporter.ImportedElement(v275, type metadata accessor for ShapeType);
      outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s8PaperKit9ShapeTypeOSgMd, &_s8PaperKit9ShapeTypeOSgMR);
      v274 = v348;
      outlined init with take of AnnotationImporter.ImportedElement(v60, v348, type metadata accessor for Shape);
      v273 = 0;
      return (*(v347 + 56))(v274, v273, 1, v88);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s8PaperKit9ShapeTypeOSgMd, &_s8PaperKit9ShapeTypeOSgMR);
    outlined destroy of AnnotationImporter.ImportedElement(v60, type metadata accessor for Shape);
    outlined destroy of StocksKitCurrencyCache.Provider?(v272, &_s8PaperKit9ShapeTypeOSgMd, &_s8PaperKit9ShapeTypeOSgMR);
LABEL_105:
    v273 = 1;
    v274 = v348;
    return (*(v347 + 56))(v274, v273, 1, v88);
  }

  v124 = v135;
  objc_opt_self();
  v136 = swift_dynamicCastObjCClass();
  v97 = v353;
  if (v136)
  {
    v137 = v136;
    [v99 strokeWidth];
    v139 = v138 * 4.0;
    CRRegister.wrappedValue.getter();
    v358.origin.x = v356.a;
    v358.origin.y = v356.b;
    v358.size.width = v356.c;
    v358.size.height = v356.d;
    v359 = CGRectInset(v358, v139, v139);
    v356.a = v359.origin.x;
    v356.b = v359.origin.y;
    v356.c = v359.size.width;
    v356.d = v359.size.height;
    CRRegister.wrappedValue.setter();
    CRRegister.wrappedValue.getter();
    v360.origin.x = v356.a;
    v360.origin.y = v356.b;
    v360.size.width = v356.c;
    v360.size.height = v356.d;
    MaxX = CGRectGetMaxX(v360);
    [v137 arrowHeadLength];
    v142 = MaxX - v141;
    CRRegister.wrappedValue.getter();
    v361.origin.x = v356.a;
    v361.origin.y = v356.b;
    v361.size.width = v356.c;
    v361.size.height = v356.d;
    MidY = CGRectGetMidY(v361);
    [v137 arrowLineWidth];
    v145 = MidY + v144 * 0.5;
    CRRegister.wrappedValue.getter();
    v146 = v356.a;
    v147 = v356.b;
    v148 = v356.c;
    v149 = v356.d;
    v362.origin.x = v356.a;
    v362.origin.y = v356.b;
    v362.size.width = v356.c;
    v362.size.height = v356.d;
    v150 = v142 - CGRectGetMinX(v362);
    v363.origin.x = v146;
    v363.origin.y = v147;
    v363.size.width = v148;
    v363.size.height = v149;
    v151 = v150 / CGRectGetWidth(v363);
    v364.origin.x = v146;
    v364.origin.y = v147;
    v364.size.width = v148;
    v364.size.height = v149;
    v152 = v145 - CGRectGetMinY(v364);
    v365.origin.x = v146;
    v365.origin.y = v147;
    v365.size.width = v148;
    v365.size.height = v149;
    v153 = CGRectGetHeight(v365);
    outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s8PaperKit9ShapeTypeOSgMd, &_s8PaperKit9ShapeTypeOSgMR);
    *v97 = v151;
    v97[1] = 1.0 - v152 / v153;
    swift_storeEnumTagMultiPayload();
    v342(v97, 0, 1, v83);
    v88 = v355;
    goto LABEL_90;
  }

  v169 = v99;
  CRRegister.wrappedValue.getter();
  v170 = v356.a;
  v171 = v356.b;
  v172 = v356.c;
  v173 = v356.d;
  [v124 startPoint];
  v175 = v174;
  v177 = v176;
  v366.origin.x = v170;
  v366.origin.y = v171;
  v366.size.width = v172;
  v366.size.height = v173;
  v178 = v175 - CGRectGetMinX(v366);
  v367.origin.x = v170;
  v367.origin.y = v171;
  v367.size.width = v172;
  v367.size.height = v173;
  v352 = v178 / CGRectGetWidth(v367);
  v368.origin.x = v170;
  v368.origin.y = v171;
  v368.size.width = v172;
  v368.size.height = v173;
  v179 = v177 - CGRectGetMinY(v368);
  v369.origin.x = v170;
  v369.origin.y = v171;
  v369.size.width = v172;
  v369.size.height = v173;
  v351 = 1.0 - v179 / CGRectGetHeight(v369);
  CRRegister.wrappedValue.getter();
  v180 = v356.a;
  v181 = v356.b;
  v182 = v356.c;
  v183 = v356.d;
  [v124 midPoint];
  v185 = v184;
  v187 = v186;
  v370.origin.x = v180;
  v370.origin.y = v181;
  v370.size.width = v182;
  v370.size.height = v183;
  v188 = v185 - CGRectGetMinX(v370);
  v371.origin.x = v180;
  v371.origin.y = v181;
  v371.size.width = v182;
  v371.size.height = v183;
  v189 = v188 / CGRectGetWidth(v371);
  v372.origin.x = v180;
  v372.origin.y = v181;
  v372.size.width = v182;
  v372.size.height = v183;
  v190 = v187 - CGRectGetMinY(v372);
  v373.origin.x = v180;
  v373.origin.y = v181;
  v373.size.width = v182;
  v373.size.height = v183;
  v191 = 1.0 - v190 / CGRectGetHeight(v373);
  CRRegister.wrappedValue.getter();
  v192 = v356.a;
  v193 = v356.b;
  v194 = v356.c;
  v195 = v356.d;
  [v124 endPoint];
  v197 = v196;
  v199 = v198;
  v374.origin.x = v192;
  v374.origin.y = v193;
  v374.size.width = v194;
  v374.size.height = v195;
  v200 = v197 - CGRectGetMinX(v374);
  v375.origin.x = v192;
  v375.origin.y = v193;
  v375.size.width = v194;
  v375.size.height = v195;
  v201 = v200 / CGRectGetWidth(v375);
  v376.origin.x = v192;
  v376.origin.y = v193;
  v376.size.width = v194;
  v376.size.height = v195;
  v202 = v199 - CGRectGetMinY(v376);
  v377.origin.x = v192;
  v377.origin.y = v193;
  v377.size.width = v194;
  v377.size.height = v195;
  v203 = CGRectGetHeight(v377);
  outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s8PaperKit9ShapeTypeOSgMd, &_s8PaperKit9ShapeTypeOSgMR);
  v204 = v351;
  *v97 = v352;
  v97[1] = v204;
  v97[2] = v189;
  v97[3] = v191;
  v97[4] = v201;
  v97[5] = 1.0 - v202 / v203;
  swift_storeEnumTagMultiPayload();
  v342(v97, 0, 1, v83);
  v205 = [v124 arrowHeadStyle];
  v88 = v355;
  if (v205 > 1)
  {
    if (v205 == 2)
    {
      *&v356.a = 8;
      LOBYTE(v356.b) = 0;
      goto LABEL_46;
    }

    if (v205 == 3)
    {
      *&v356.a = 8;
      LOBYTE(v356.b) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMR);
      CRRegister.wrappedValue.setter();
      *&v356.a = 8;
      LOBYTE(v356.b) = 0;
      goto LABEL_89;
    }
  }

  else
  {
    if (!v205)
    {
      goto LABEL_90;
    }

    if (v205 == 1)
    {
      *&v356.a = 8;
      LOBYTE(v356.b) = 0;
LABEL_46:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMR);
LABEL_89:
      CRRegister.wrappedValue.setter();
LABEL_90:
      v249 = [v124 annotationText];
      if (!v249)
      {
LABEL_99:
        v264 = [v124 typingAttributes];
        if (!v264 || (v265 = v264, v266 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v265, specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v266), v268 = v267, , v268 == 0.0))
        {
        }

        else
        {
          v356.a = v268;
          [v99 originalModelBaseScaleFactor];
          Dictionary<>.scaleBy(_:)(v269);
          v270 = v334;
          CRAttributedString.Attributes<>.init(nsAttributes:darkMode:)(*&v356.a, 0, v334);
          v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
          (*(*(v271 - 8) + 56))(v270, 0, 1, v271);
          outlined init with copy of Date?(v270, v333, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
          CRRegister.wrappedValue.setter();

          outlined destroy of StocksKitCurrencyCache.Provider?(v270, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
        }

        goto LABEL_103;
      }

      v208 = v249;
      v350 = v99;
      v250 = [v99 originalModelBaseScaleFactor];
      MEMORY[0x1EEE9AC00](v250);
      lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
      v251 = v327;
      CRAttributedString.init(_:transformAttributes:)();
      v252 = *(v88 + 52);
      v253 = v337;
      v254 = v338;
      (*(v337 + 40))(&v60[v252], v251, v338);
      (*(v253 + 16))(v329, &v60[v252], v254);
      v255 = CRAttributedString.attributedString.getter();
      v256 = [v255 string];

      v257 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v259 = v258;

      if (v257 || v259 != 0xE000000000000000)
      {
        v260 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*(v337 + 8))(v329, v338);
        if ((v260 & 1) == 0)
        {
          v207 = CRAttributedString.attributedString.getter();
          v261 = [v207 length];

          if (__OFSUB__(v261, 1))
          {
            goto LABEL_127;
          }

          v262 = v334;
          CRAttributedString.attributes(at:effectiveRange:)();
          v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
          (*(*(v263 - 8) + 56))(v262, 0, 1, v263);
          outlined init with copy of Date?(v262, v333, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
          CRRegister.wrappedValue.setter();

          outlined destroy of StocksKitCurrencyCache.Provider?(v262, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
          goto LABEL_98;
        }
      }

      else
      {

        (*(v337 + 8))(v329, v338);
      }

LABEL_98:
      v99 = v350;
      goto LABEL_99;
    }
  }

LABEL_131:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s8PaperKit11StrokeStyleO3forACx_tcSo27AKStrokedAnnotationProtocolRzlufCSo0fG0C_Tt1g5Tm@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 brushStyle];
  if (!v4)
  {
    if ([a1 isDashed])
    {
      [a1 strokeWidth];
      v12 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd, &_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMR);
      v8 = swift_allocObject();
      v9.f64[0] = v12;
      v9.f64[1] = v12 * 3.0;
      *(v8 + 16) = xmmword_1D405C990;
      *(v8 + 32) = vdivq_f64(vaddq_f64(v9, xmmword_1D405FFD0), vdupq_lane_s64(*&v12, 0));

      *a2 = 1.0 / v12;
      *(a2 + 8) = v8;
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
      *a2 = 0;
      *(a2 + 8) = v10;
    }

    *(a2 + 16) = 2;
    goto LABEL_18;
  }

  v5 = v4;

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v6 = 3;
      goto LABEL_16;
    }

    if (v5 == 4)
    {
      v6 = 4;
      goto LABEL_16;
    }
  }

  else
  {
    if (v5 == 1)
    {
      *a2 = 1;
      *(a2 + 8) = 0;
      goto LABEL_18;
    }

    if (v5 == 2)
    {
      v6 = 2;
LABEL_16:
      *a2 = v6;
      goto LABEL_17;
    }
  }

  *a2 = 0;
LABEL_17:
  *(a2 + 8) = 0;
LABEL_18:
  type metadata accessor for StrokeStyle(0);

  return swift_storeEnumTagMultiPayload();
}

void specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
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
    v10 = __clz(__rbit64(v4)) | (v7 << 6);
    outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v10, v30);
    outlined init with copy of Any(*(a1 + 56) + 32 * v10, v31 + 8);
    v28[0] = v31[0];
    v28[1] = v31[1];
    v29 = v32;
    v27[0] = v30[0];
    v27[1] = v30[1];
    outlined init with copy of AnyHashable(v27, v24);
    type metadata accessor for NSAttributedStringKey(0);
    if (!swift_dynamicCast())
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);

      return;
    }

    v11 = v23;
    outlined init with copy of Any(v28 + 8, v25 + 8);
    outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
    outlined init with take of Any((v25 + 8), v22);
    v12 = v11;
    outlined init with take of Any(v22, v26);
    outlined init with take of Any(v26, v25);
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

      goto LABEL_28;
    }

    v8 = __clz(__rbit64((-1 << v15) & ~*(v6 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v8) = v12;
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
LABEL_28:
  __break(1u);
}

uint64_t static AnnotationImporter.translateDoodleAnnotation(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
  v169 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v168 = &v124 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v182 = *(v5 - 8);
  v183 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v147 = &v124 - v6;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  v166 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v165 = &v124 - v7;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v164 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v163 = &v124 - v8;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMR);
  v162 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v161 = &v124 - v9;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v160 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v158 = &v124 - v10;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
  MEMORY[0x1EEE9AC00](v157);
  v171 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v156 = &v124 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v179 = &v124 - v15;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
  MEMORY[0x1EEE9AC00](v155);
  v181 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v180 = &v124 - v18;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v153);
  v152 = (&v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v151 = &v124 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v159 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v177 = &v124 - v25;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v176);
  v149 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v124 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v124 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v124 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v185 = &v124 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v186 = &v124 - v39;
  v184 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v184);
  v150 = (&v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v124 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = (&v124 - v45);
  v47 = type metadata accessor for Shape(0);
  v174 = *(v47 - 1);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v124 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v51 = MEMORY[0x1EEE9AC00](v50).n128_u64[0];
  v187 = &v124 - v52;
  v53 = [a1 path];
  if (v53)
  {
    v129 = v29;
    v145 = a1;
    v146 = a2;
    v54 = v53;
    [v53 bounds];
    v55 = 1.0 / CGRectGetWidth(v190);
    [v54 bounds];
    Height = CGRectGetHeight(v191);
    CGAffineTransformMakeScale(&v188, v55, -1.0 / Height);
    [v54 applyTransform_];
    [v54 bounds];
    CGAffineTransformMakeTranslation(&v188, -v57, -v58);
    [v54 applyTransform_];
    v144 = v54;
    v59 = [v54 CGPath];
    v172 = v46;
    *v46 = v59;
    swift_storeEnumTagMultiPayload();
    v60 = type metadata accessor for Color(0);
    v125 = *(v60 - 8);
    v61 = v125 + 56;
    v62 = *(v125 + 56);
    v62(v186, 1, 1, v60);
    v62(v185, 1, 1, v60);
    (*(v182 + 56))(v177, 1, 1, v183);
    type metadata accessor for CGRect(0);
    v142 = v63;
    v141 = lazy protocol witness table accessor for type PKDrawingStruct and conformance PKDrawingStruct(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
    memset(&v188, 0, 32);
    CRRegister.init(wrappedValue:)();
    v188.a = 0.0;
    v131 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(_:)();
    v143 = v47[6];
    v62(v35, 1, 1, v60);
    v130 = v43;
    outlined init with copy of Date?(v35, v32, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    v138 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    v140 = v47[7];
    v148 = v60;
    v127 = v61;
    v126 = v62;
    v62(v35, 1, 1, v60);
    v173 = v35;
    outlined init with copy of Date?(v35, v32, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    v128 = v32;
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    v137 = v47[8];
    v188.a = 5.0;
    CRRegister.init(wrappedValue:)();
    v134 = v47[9];
    v64 = v130;
    swift_storeEnumTagMultiPayload();
    v135 = type metadata accessor for ShapeType;
    outlined init with copy of AnnotationImporter.ImportedElement(v64, v150, type metadata accessor for ShapeType);
    v133 = lazy protocol witness table accessor for type PKDrawingStruct and conformance PKDrawingStruct(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType, &protocol conformance descriptor for ShapeType);
    CRRegister.init(wrappedValue:)();
    outlined destroy of AnnotationImporter.ImportedElement(v64, type metadata accessor for ShapeType);
    v188.a = 1.0;
    CRRegister.init(wrappedValue:)();
    v188.a = 0.0;
    LOBYTE(v188.b) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMR, MEMORY[0x1E69950E8]);
    CRRegister.init(wrappedValue:)();
    v188.a = 0.0;
    LOBYTE(v188.b) = 0;
    CRRegister.init(wrappedValue:)();
    v65 = v47[13];
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    v124 = v65;
    CRAttributedString.init(_:)();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
    v67 = v151;
    (*(*(v66 - 8) + 56))(v151, 1, 1, v66);
    outlined init with copy of Date?(v67, v152, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
    lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMR);
    v68 = v47[15];
    v188.a = 0.0;
    v69 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
    v136 = v68;
    v132 = v69;
    CRRegister.init(wrappedValue:)();
    v188.a = 0.0;
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    CRRegister.init(wrappedValue:)();
    v70 = type metadata accessor for StrokeStyle(0);
    v71 = *(v70 - 8);
    v72 = *(v71 + 56);
    v73 = v180;
    v153 = v70;
    v152 = v72;
    v151 = (v71 + 56);
    (v72)(v180, 1, 1);
    outlined init with copy of Date?(v73, v181, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
    lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
    v74 = type metadata accessor for Shadow(0);
    v75 = *(v74 - 8);
    v76 = *(v75 + 56);
    v77 = v179;
    v155 = v74;
    v150 = v76;
    v139 = v75 + 56;
    (v76)(v179, 1, 1);
    outlined init with copy of Date?(v77, v156, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
    lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v77, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
    memset(&v188, 0, sizeof(v188));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd, &_s8PaperKit18ShapeAuxiliaryInfoVSgMR);
    lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    v157 = v47;
    UnknownProperties.init()();
    memset(&v188, 0, 32);
    v78 = v158;
    CRRegister.init(_:)();
    (*(v160 + 40))(v49, v78, v178);
    outlined init with copy of AnnotationImporter.ImportedElement(v172, v64, v135);
    v79 = v161;
    CRRegister.init(_:)();
    (*(v162 + 40))(&v49[v134], v79, v154);
    v188.a = 5.0;
    v80 = v163;
    v81 = v175;
    CRRegister.init(_:)();
    (*(v164 + 40))(&v49[v137], v80, v167);
    v82 = v173;
    outlined init with copy of Date?(v186, v173, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    v83 = v165;
    CRRegister.init(_:)();
    v84 = *(v166 + 40);
    v84(&v49[v140], v83, v81);
    outlined init with copy of Date?(v185, v82, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    CRRegister.init(_:)();
    v84(&v49[v143], v83, v81);
    v85 = v177;
    v86 = v159;
    outlined init with copy of Date?(v177, v159, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
    if ((*(v182 + 48))(v86, 1, v183) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v86, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
    }

    else
    {
      v89 = v182;
      v90 = v147;
      v91 = v86;
      v92 = v85;
      v93 = v183;
      (*(v182 + 32))(v147, v91, v183);
      v94 = v93;
      v85 = v92;
      (*(v89 + 40))(&v49[v124], v90, v94);
    }

    v95 = v145;
    v96 = v171;
    v188.a = 0.0;
    v97 = v168;
    CRRegister.init(_:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v85, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v185, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v186, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    outlined destroy of AnnotationImporter.ImportedElement(v172, type metadata accessor for ShapeType);
    (*(v169 + 40))(&v49[v136], v97, v170);
    outlined init with take of AnnotationImporter.ImportedElement(v49, v187, type metadata accessor for Shape);
    [v95 rectangle];
    v188.a = v98;
    v188.b = v99;
    v188.c = v100;
    v188.d = v101;
    CRRegister.wrappedValue.setter();
    [v95 rotationAngle];
    v103 = v102;
    v104 = v157;
    CRRegister.value.getter();
    v105 = v181;
    if (vabdd_f64(v188.a, v103) > 0.01)
    {
      v188.a = v103;
      CRRegister.value.setter();
    }

    v106 = [v95 hasShadow];
    v107 = v173;
    v108 = v155;
    if (v106)
    {
      *v96 = xmmword_1D405FFE0;
      *(v96 + 16) = 0x4008000000000000;
      v109 = *(v108 + 24);
      v110 = v179;
      if (one-time initialization token for defaultShadowColor != -1)
      {
        swift_once();
      }

      v111 = __swift_project_value_buffer(v148, static UIConstants.defaultShadowColor);
      outlined init with copy of AnnotationImporter.ImportedElement(v111, v96 + v109, type metadata accessor for Color);
      v112 = 0;
    }

    else
    {
      v112 = 1;
      v110 = v179;
    }

    v150(v96, v112, 1, v108);
    outlined init with copy of Date?(v96, v110, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMR);
    CRRegister.wrappedValue.setter();
    outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_s8PaperKit6ShadowVSgMd, &_s8PaperKit6ShadowVSgMR);
    v113 = v95;
    v114 = v180;
    _s8PaperKit11StrokeStyleO3forACx_tcSo27AKStrokedAnnotationProtocolRzlufCSo0fG0C_Tt1g5Tm(v113, v180);
    (v152)(v114, 0, 1, v153);
    outlined init with copy of Date?(v114, v105, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMR);
    CRRegister.wrappedValue.setter();
    outlined destroy of StocksKitCurrencyCache.Provider?(v114, &_s8PaperKit11StrokeStyleOSgMd, &_s8PaperKit11StrokeStyleOSgMR);
    v115 = [v113 strokeColor];
    if (v115)
    {
      v116 = v115;
      v117 = [v116 CGColor];
      v118 = v149;
      Color.init(cgColor:)(v117, v149);

      v119 = v148;
      if ((*(v125 + 48))(v118, 1, v148))
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v118, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        v120 = 1;
        v121 = v187;
        v122 = v129;
      }

      else
      {
        v122 = v129;
        outlined init with take of AnnotationImporter.ImportedElement(v118, v129, type metadata accessor for Color);
        v120 = 0;
        v121 = v187;
      }

      v126(v122, v120, 1, v119);
      [v113 pathIsPrestroked];
      outlined init with copy of Date?(v122, v107, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      outlined init with copy of Date?(v107, v128, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      CRRegister.wrappedValue.setter();

      outlined destroy of StocksKitCurrencyCache.Provider?(v107, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v122, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    }

    else
    {

      v121 = v187;
    }

    v123 = v146;
    outlined init with take of AnnotationImporter.ImportedElement(v121, v146, type metadata accessor for Shape);
    return (*(v174 + 56))(v123, 0, 1, v104);
  }

  else
  {
    v87 = *(v174 + 56);

    return v87(a2, 1, 1, v47);
  }
}

uint64_t static AnnotationImporter.translateSignatureAnnotation(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v108 = &v99 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v99 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v109 = &v99 - v13;
  v116 = type metadata accessor for Date();
  v118 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v112 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v99 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v113 = &v99 - v19;
  v117 = type metadata accessor for UUID();
  v20 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v22 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v99 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v115 = &v99 - v27;
  v28 = type metadata accessor for Signature(0);
  v119 = *(v28 - 8);
  *&v29 = MEMORY[0x1EEE9AC00](v28).n128_u64[0];
  v31 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = a1;
  v32 = [a1 signature];
  if (v32)
  {
    v33 = v32;
    v114 = v28;
    v103 = v11;
    v104 = v6;
    v111 = a2;
    v34 = [v32 descriptionTag];
    v35 = [v33 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    SignatureDescription.init(tag:customDescription:)(v34, v36, v38, &v120);
    v39 = v120;
    v40 = v121;
    Signature.init()();
    v41 = [v33 uniqueID];
    if (v41)
    {
      v42 = v41;
      v105 = v39;
      v106 = v31;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = v115;
      v44 = v117;
      (*(v20 + 32))(v115, v25, v117);
      v45 = [v33 creationDate];
      if (v45)
      {
        v102 = v40;
        v46 = v43;
        v47 = v45;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v48 = v118;
        v49 = v113;
        v50 = v17;
        v51 = v116;
        (*(v118 + 32))(v113, v50, v116);
        v52 = v46;
        v53 = *(v20 + 16);
        v53(v22, v52, v44);
        [v33 baselineOffset];
        v55 = v54;
        v56 = *(v48 + 16);
        v56(v112, v49, v51);
        v101 = [v33 shouldPersist];
        v100 = [v33 path];
        v57 = [v33 drawing];
        v107 = v20;
        if (v57)
        {
          v58 = v109;
          v59 = v57;
          static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

          v60 = 0;
        }

        else
        {
          v60 = 1;
          v58 = v109;
        }

        v65 = type metadata accessor for PKDrawing();
        (*(*(v65 - 8) + 56))(v58, v60, 1, v65);
        v66 = type metadata accessor for SignatureItem(0);
        v67 = objc_allocWithZone(v66);
        v68 = v117;
        v53(&v67[OBJC_IVAR____TtC8PaperKit13SignatureItem_uniqueID], v22, v117);
        *&v67[OBJC_IVAR____TtC8PaperKit13SignatureItem_baselineOffset] = v55;
        v69 = OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate;
        v109 = v22;
        v70 = v112;
        v71 = v116;
        v56(&v67[OBJC_IVAR____TtC8PaperKit13SignatureItem_creationDate], v112, v116);
        v72 = v118;
        (*(v118 + 56))(&v67[v69], 0, 1, v71);
        v67[OBJC_IVAR____TtC8PaperKit13SignatureItem_shouldPersist] = v101;
        v73 = &v67[OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription];
        v74 = v102;
        *v73 = v105;
        v73[1] = v74;
        *&v67[OBJC_IVAR____TtC8PaperKit13SignatureItem_path] = v100;
        outlined init with copy of Date?(v58, &v67[OBJC_IVAR____TtC8PaperKit13SignatureItem_drawing], &_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
        v67[OBJC_IVAR____TtC8PaperKit13SignatureItem_isOwned] = 1;
        v124.receiver = v67;
        v124.super_class = v66;
        v75 = objc_msgSendSuper2(&v124, sel_init);
        outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
        v76 = *(v72 + 8);
        v118 = v72 + 8;
        v76(v70, v71);
        v77 = *(v107 + 8);
        v107 += 8;
        v77(v109, v68);
        v120 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13SignatureItemCSgGMR);
        v78 = v106;
        CRRegister.wrappedValue.setter();
        v79 = v110;
        [v110 drawingBounds];
        v120 = v80;
        v121 = v81;
        v122 = v82;
        v123 = v83;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
        CRRegister.wrappedValue.setter();
        [v79 rotationAngle];
        v120 = v84;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
        CRRegister.wrappedValue.setter();
        v85 = [v79 strokeColor];
        if (v85)
        {
          v112 = v76;
          v86 = v85;
          v87 = [v86 CGColor];
          v88 = v108;
          Color.init(cgColor:)(v87, v108);

          v89 = type metadata accessor for Color(0);
          v90 = (*(v89 - 8) + 48);
          v91 = (*v90)(v88, 1, v89);
          v92 = (v90 + 1);
          if (v91)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(v88, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
            v93 = 1;
            v94 = v103;
          }

          else
          {
            v94 = v103;
            outlined init with take of AnnotationImporter.ImportedElement(v88, v103, type metadata accessor for Color);
            v93 = 0;
          }

          (*v92)(v94, v93, 1, v89);
          outlined init with copy of Date?(v94, v104, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
          v95 = v114;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
          CRRegister.wrappedValue.setter();

          outlined destroy of StocksKitCurrencyCache.Provider?(v94, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
          v76 = v112;
        }

        else
        {

          v95 = v114;
        }

        v76(v113, v116);
        v77(v115, v117);
        v96 = v78;
        v97 = v111;
        outlined init with take of AnnotationImporter.ImportedElement(v96, v111, type metadata accessor for Signature);
        return (*(v119 + 56))(v97, 0, 1, v95, v98);
      }

      v64 = outlined consume of SignatureDescription(v105, v40);
      (*(v20 + 8))(v43, v44, v64);
      outlined destroy of AnnotationImporter.ImportedElement(v106, type metadata accessor for Signature);
    }

    else
    {
      outlined destroy of AnnotationImporter.ImportedElement(v31, type metadata accessor for Signature);

      v63.n128_f64[0] = outlined consume of SignatureDescription(v39, v40);
    }

    return (*(v119 + 56))(v111, 1, 1, v114, v63);
  }

  v61 = *(v119 + 56);

  return v61(a2, 1, 1, v28);
}

CGColorRef static AnnotationImporter.translateLoupeAnnotation(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Color(0);
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v35);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v31 - v10);
  v12 = type metadata accessor for UnknownProperties();
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownProperties.init()();
  type metadata accessor for CGRect(0);
  lazy protocol witness table accessor for type PKDrawingStruct and conformance PKDrawingStruct(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v41 = 0u;
  v42 = 0u;
  CRRegister.init(wrappedValue:)();
  v14 = type metadata accessor for LoupeElement(0);
  v15 = v14[5];
  v41 = 0u;
  v42 = 0u;
  v37 = v15;
  CRRegister.init(wrappedValue:)();
  v16 = v14[6];
  *&v41 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v33 = v16;
  CRRegister.init(wrappedValue:)();
  v17 = v14[7];
  *&v41 = 0x3FF8000000000000;
  v34 = v17;
  CRRegister.init(wrappedValue:)();
  v18 = v4;
  v19 = *(v4 + 20);
  v20 = type metadata accessor for UnknownValueProperties();
  (*(*(v20 - 8) + 56))(v6 + v19, 1, 1, v20);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F510A0);
  if (result)
  {
    v22 = result;
    v32 = a1;
    CGColorRef.calculateMinimumHeadroom.getter();
    result = CGColorCreateWithContentHeadroom();
    if (result)
    {
      v23 = result;

      *v6 = v23;
      Color.withAlphaComponent(_:)(v11, 0.5);
      outlined destroy of AnnotationImporter.ImportedElement(v6, type metadata accessor for Color);
      (*(v36 + 56))(v11, 0, 1, v18);
      outlined init with copy of Date?(v11, v8, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      lazy protocol witness table accessor for type Color? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      *&v41 = 0x4004000000000000;
      CRRegister.init(wrappedValue:)();
      v24 = v14[10];
      UnknownProperties.init()();
      v41 = 0u;
      v42 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
      CRRegister.wrappedValue.setter();
      v41 = 0u;
      v42 = 0u;
      CRRegister.wrappedValue.setter();
      *&v41 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
      CRRegister.wrappedValue.setter();
      (*(v39 + 40))(a2 + v24, v38, v40);
      v25 = v32;
      [v32 magnification];
      *&v41 = v26;
      CRRegister.wrappedValue.setter();
      [v25 rectangle];
      *&v41 = v27;
      *(&v41 + 1) = v28;
      *&v42 = v29;
      *(&v42 + 1) = v30;
      CRRegister.wrappedValue.setter();
      return (*(*(v14 - 1) + 56))(a2, 0, 1, v14);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static AnnotationImporter.addAnnotation<A>(_:from:in:id:scale:mediaBox:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, CGFloat a6@<D0>, double a7@<D2>, double a8@<D4>)
{
  v42 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v16 = *(v15 - 8);
  v40 = v15;
  v41 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18AnnotationImporterV15ImportedElementOSgMd, &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v39 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v39 - v26;
  static AnnotationImporter.importElement<A>(_:from:in:id:scale:mediaBox:)(a1, a2, a3, a4, &v39 - v26, a6, a7, a8);
  outlined init with copy of Date?(v27, v24, &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMd, &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMR);
  v28 = type metadata accessor for AnnotationImporter.ImportedElement(0);
  if ((*(*(v28 - 8) + 48))(v24, 1, v28) != 1)
  {
    outlined init with copy of Date?(v24, v21, &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMd, &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMR);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AnnotationImporter.ImportedElement(v21, type metadata accessor for AnnotationImporter.ImportedElement);
    }

    else
    {
      v29 = v40;
      (*(v41 + 32))(v18, v21, v40);
      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        v30 = 0;
      }

      else
      {
        objc_opt_self();
        v30 = swift_dynamicCastObjCClass() == 0;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass() || ((objc_opt_self(), swift_dynamicCastObjCClass()) ? (v31 = 1) : (v31 = v30), (v31 & 1) != 0))
      {
        v32 = SharedTagged_10.subscript.modify();
        v34 = *(v33 + 24);
        v35 = *(v33 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
        v36 = (*(v35 + 104))(v43, v34, v35);
        *v37 |= 0x88uLL;
        v36(v43, 0);
        v32(v44, 0);
      }

      (*(v41 + 8))(v18, v29);
    }
  }

  outlined init with take of Range<AttributedString.Index>(v27, v42, &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMd, &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMd, &_s8PaperKit18AnnotationImporterV15ImportedElementOSgMR);
}