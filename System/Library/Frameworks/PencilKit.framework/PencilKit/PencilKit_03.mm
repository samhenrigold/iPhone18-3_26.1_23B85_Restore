uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable () -> () with result type ()(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CGImageRef?, @unowned CGImageRef?) -> () with result type (CGImageRef?, CGImageRef?)(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  v7 = *(*(*v5 + 64) + 40);
  *v7 = a2;
  v7[1] = a3;
  v8 = a2;
  v9 = a3;

  return MEMORY[0x1EEE6DED8](v6);
}

id one-time initialization function for kernel()
{
  result = closure #1 in variable initialization expression of static SixChannelCompositeFilter.kernel();
  static SixChannelCompositeFilter.kernel = result;
  return result;
}

id closure #1 in variable initialization expression of static SixChannelCompositeFilter.kernel()
{
  v0 = type metadata accessor for Logger();
  v18[1] = *(v0 - 8);
  v18[2] = v0;
  MEMORY[0x1EEE9AC00](v0);
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v18 - v6;
  type metadata accessor for SixChannelCompositeFilter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = MEMORY[0x1CCA6CE70](0xD000000000000013, 0x80000001C8020A90);
  v11 = MEMORY[0x1CCA6CE70](0x6C6174656D2E6963, 0xEB0000000062696CLL);
  v12 = [v9 URLForResource:v10 withExtension:v11];

  if (!v12)
  {
    return 0;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v2 + 32))(v7, v5, v1);
  v13 = Data.init(contentsOf:options:)();
  v15 = v14;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CIColorKernel, 0x1E695F618);
  v16 = specialized @nonobjc CIColorKernel.__allocating_init(functionName:fromMetalLibraryData:)(0xD000000000000013, 0x80000001C8020A90);
  outlined consume of Data._Representation(v13, v15);
  (*(v2 + 8))(v7, v1);
  return v16;
}

id SixChannelCompositeFilter.outputImage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PencilKitP33_45B1B8C2C17199CF2EF5F41F5CBE091B25SixChannelCompositeFilter_backgroundImage);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC9PencilKitP33_45B1B8C2C17199CF2EF5F41F5CBE091B25SixChannelCompositeFilter_multiplyImage);
    if (v2)
    {
      v3 = *(v0 + OBJC_IVAR____TtC9PencilKitP33_45B1B8C2C17199CF2EF5F41F5CBE091B25SixChannelCompositeFilter_addImage);
      if (v3)
      {
        v4 = one-time initialization token for kernel;
        v5 = v3;
        v6 = v2;
        v7 = v1;
        if (v4 != -1)
        {
          swift_once();
        }

        if (static SixChannelCompositeFilter.kernel)
        {
          v8 = static SixChannelCompositeFilter.kernel;
          [v7 extent];
          v10 = v9;
          v12 = v11;
          v14 = v13;
          v16 = v15;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_1C8019700;
          v18 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CIImage, 0x1E695F658);
          *(v17 + 32) = v7;
          *(v17 + 56) = v18;
          *(v17 + 64) = v6;
          *(v17 + 120) = v18;
          *(v17 + 88) = v18;
          *(v17 + 96) = v5;
          v19 = v5;
          v20 = v6;
          v21 = v7;
          isa = Array._bridgeToObjectiveC()().super.isa;

          v23 = [v8 applyWithExtent:isa arguments:{v10, v12, v14, v16}];

          return v23;
        }
      }
    }
  }

  return 0;
}

id SixChannelCompositeFilter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SixChannelCompositeFilter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized @nonobjc CIColorKernel.__allocating_init(functionName:fromMetalLibraryData:)(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1CCA6CE70](a1);

  isa = Data._bridgeToObjectiveC()().super.isa;
  v8[0] = 0;
  v4 = [swift_getObjCClassFromMetadata() kernelWithFunctionName:v2 fromMetalLibraryData:isa error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

id RecognitionStrokeProvider.drawing.getter@<X0>(void *a1@<X8>)
{
  result = *(v1 + 120);
  if (result)
  {
    *a1 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in InternalDelegate.recognitionController(_:found:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in InternalDelegate.recognitionController(_:found:), 0, 0);
}

{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in InternalDelegate.recognitionController(_:found:), 0, 0);
}

uint64_t closure #1 in InternalDelegate.recognitionController(_:found:)()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in InternalDelegate.recognitionController(_:found:), Strong, 0);
  }

  else
  {
    **(v0 + 16) = 1;

    v2 = *(v0 + 8);

    return v2();
  }
}

{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v1;
  v6[5] = v3;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in RecognitionStrokeProvider.foundDataDetectorItems(_:), v6);

  return MEMORY[0x1EEE6DFA0](closure #1 in InternalDelegate.recognitionController(_:found:), 0, 0);
}

{
  **(v0 + 16) = *(v0 + 48) == 0;

  v1 = *(v0 + 8);

  return v1();
}

{
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in InternalDelegate.recognitionController(_:found:), Strong, 0);
  }

  else
  {
    **(v0 + 16) = 1;

    v2 = *(v0 + 8);

    return v2();
  }
}

{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v1;
  v6[5] = v3;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in RecognitionStrokeProvider.foundProofreadingItems(_:), v6);

  return MEMORY[0x1EEE6DFA0](closure #1 in InternalDelegate.recognitionController(_:found:), 0, 0);
}

uint64_t @objc InternalDelegate.recognitionController(_:found:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - v13;
  type metadata accessor for NSObject(0, a5, a6);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = v15;
  v18 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v14, a8, v17);
}

id InternalDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id RecognitionStrokeProvider.recognitionController.getter()
{
  result = *(v0 + 112);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t key path setter for RecognitionStrokeProvider.proactive : RecognitionStrokeProvider(_BYTE *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  LOBYTE(a1) = *a1;
  v7 = *a2;
  swift_beginAccess();
  *(v7 + 152) = a1;
  v8 = type metadata accessor for TaskPriority();
  v9 = (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v11 = lazy protocol witness table accessor for type RecognitionStrokeProvider and conformance RecognitionStrokeProvider(v9, v10);
  v12 = swift_allocObject();
  v12[2] = v7;
  v12[3] = v11;
  v12[4] = v7;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in RecognitionStrokeProvider.proactive.didsetpartial apply, v12);
}

uint64_t RecognitionStrokeProvider.proactive.setter(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  swift_beginAccess();
  *(v1 + 152) = a1;
  v6 = type metadata accessor for TaskPriority();
  v7 = (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v9 = lazy protocol witness table accessor for type RecognitionStrokeProvider and conformance RecognitionStrokeProvider(v7, v8);
  v10 = swift_allocObject();
  v10[2] = v1;
  v10[3] = v9;
  v10[4] = v1;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in RecognitionStrokeProvider.proactive.didset, v10);
}

void *closure #1 in RecognitionStrokeProvider.proactive.didset()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  if (*(v1 + 152) == 1)
  {
    v2 = *(v0 + 40);
    result = *(v2 + 112);
    if (result)
    {
      if (*(v2 + 120))
      {
        [result setDrawing_];
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_5:
  v4 = *(v0 + 8);

  return v4();
}

unint64_t lazy protocol witness table accessor for type RecognitionStrokeProvider and conformance RecognitionStrokeProvider(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table cache variable for type RecognitionStrokeProvider and conformance RecognitionStrokeProvider;
  if (!lazy protocol witness table cache variable for type RecognitionStrokeProvider and conformance RecognitionStrokeProvider)
  {
    type metadata accessor for RecognitionStrokeProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecognitionStrokeProvider and conformance RecognitionStrokeProvider);
  }

  return result;
}

uint64_t partial apply for closure #1 in RecognitionStrokeProvider.proactive.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasDataDetectorInteraction.setNeedsLayout();

  return closure #1 in RecognitionStrokeProvider.proactive.didset(a1, v4, v5, v6);
}

uint64_t (*RecognitionStrokeProvider.proactive.modify(uint64_t *a1))()
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
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  *(v5 + 32) = v7;
  swift_beginAccess();
  return RecognitionStrokeProvider.proactive.modify;
}

void RecognitionStrokeProvider.proactive.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = type metadata accessor for TaskPriority();
    v7 = (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v9 = lazy protocol witness table accessor for type RecognitionStrokeProvider and conformance RecognitionStrokeProvider(v7, v8);
    v10 = swift_allocObject();
    v10[2] = v5;
    v10[3] = v9;
    v10[4] = v5;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &closure #1 in RecognitionStrokeProvider.proactive.didsetpartial apply, v10);
  }

  free(v4);

  free(v3);
}

uint64_t RecognitionStrokeProvider.__allocating_init(drawing:proactive:identifier:)(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = swift_allocObject();
  RecognitionStrokeProvider.init(drawing:proactive:identifier:)(a1, v4, a3);
  return v6;
}

void RecognitionStrokeProvider.init(drawing:proactive:identifier:)(void **a1, int a2, uint64_t a3)
{
  v4 = v3;
  v32 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v30 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - v10;
  v12 = *a1;
  swift_defaultActor_initialize();
  *(v4 + 152) = 1;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(v4 + 136) = MEMORY[0x1E69E7CC0];
  *(v4 + 144) = v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(a3, 1, v14);
  v31 = a3;
  outlined init with copy of UUID?(a3, v11);
  v18 = v16(v11, 1, v14);
  v19 = v12;
  isa = 0;
  if (v18 != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v15 + 8))(v11, v14);
  }

  v21 = [objc_allocWithZone(PKRecognitionController) initWithDrawing:v19 visibleOnscreenStrokes:0 useSessionCache:v17 != 1 sessionCacheIdentifier:isa];

  *(v4 + 112) = v21;
  swift_beginAccess();
  v22 = v32;
  *(v4 + 152) = v32 & 1;
  v23 = *(v4 + 120);
  *(v4 + 120) = v19;
  v24 = v19;

  if ((v22 & 1) == 0)
  {
    goto LABEL_6;
  }

  v25 = *(v4 + 112);
  if (v25)
  {
    v26 = v25;
    [v26 setDrawing_];

LABEL_6:
    v27 = type metadata accessor for TaskPriority();
    v28 = v30;
    (*(*(v27 - 8) + 56))(v30, 1, 1, v27);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v4;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v28, &async function pointer to partial apply for closure #1 in RecognitionStrokeProvider.init(drawing:proactive:identifier:), v29);

    outlined destroy of UUID?(v31);
    return;
  }

  __break(1u);
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in RecognitionStrokeProvider.init(drawing:proactive:identifier:)()
{
  RecognitionStrokeProvider.setupInternalDelegate()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in RecognitionStrokeProvider.init(drawing:proactive:identifier:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CanvasDataDetectorInteraction.setNeedsLayout();

  return closure #1 in RecognitionStrokeProvider.init(drawing:proactive:identifier:)(a1, v4, v5, v6);
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void RecognitionStrokeProvider.setupInternalDelegate()()
{
  v1 = type metadata accessor for InternalDelegate();
  v2 = objc_allocWithZone(v1);
  swift_weakInit();
  swift_weakAssign();
  v7.receiver = v2;
  v7.super_class = v1;
  v3 = objc_msgSendSuper2(&v7, sel_init);
  v4 = *(v0 + 128);
  *(v0 + 128) = v3;
  v5 = v3;

  v6 = *(v0 + 112);
  if (v6)
  {
    [(PKRecognitionController *)v6 setInternalDelegate:v5];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall RecognitionStrokeProvider.updateDrawing(_:)(PencilKit::PKDrawing *a1)
{
  v2 = a1->drawing.super.isa;
  [(objc_class *)v2 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v3 = swift_dynamicCast();
  if (v3)
  {
    v4 = v9;
  }

  else
  {
    v4 = v2;
  }

  v5 = *(v1 + 120);
  *(v1 + 120) = v4;
  v6 = v4;

  swift_beginAccess();
  if (*(v1 + 152) == 1)
  {
    v7 = *(v1 + 112);
    if (v7)
    {
      if (*(v1 + 120))
      {
        [v7 setDrawing_];
        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_8:

  if (v3)
  {
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }
}

uint64_t closure #1 in RecognitionStrokeProvider.foundDataDetectorItems(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in RecognitionStrokeProvider.foundDataDetectorItems(_:), a4, 0);
}

uint64_t closure #1 in RecognitionStrokeProvider.foundDataDetectorItems(_:)()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  *(v0 + 72) = *(v1 + 136);

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in RecognitionStrokeProvider.foundDataDetectorItems(_:), v3, v2);
}

{
  v8 = v0;
  v1 = v0[9];

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9] + 40;
    do
    {
      v4 = *(v3 - 8);
      v7 = v0[6];

      v4(&v7);

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  v5 = v0[1];

  return v5();
}

uint64_t closure #1 in RecognitionStrokeProvider.foundProofreadingItems(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in RecognitionStrokeProvider.foundProofreadingItems(_:), a4, 0);
}

uint64_t closure #1 in RecognitionStrokeProvider.foundProofreadingItems(_:)()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  *(v0 + 72) = *(v1 + 144);

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in RecognitionStrokeProvider.foundProofreadingItems(_:), v3, v2);
}

id *RecognitionStrokeProvider.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RecognitionStrokeProvider.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t partial apply for closure #1 in InternalDelegate.recognitionController(_:found:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasDataDetectorInteraction.setNeedsLayout();

  return closure #1 in InternalDelegate.recognitionController(_:found:)(a1, v4, v5, v7, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = closure #1 in CanvasDataDetectorInteraction.setNeedsLayout()partial apply;

  return closure #1 in InternalDelegate.recognitionController(_:found:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in RecognitionStrokeProvider.foundProofreadingItems(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasDataDetectorInteraction.setNeedsLayout();

  return closure #1 in RecognitionStrokeProvider.foundProofreadingItems(_:)(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_21Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_25Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for closure #1 in RecognitionStrokeProvider.foundDataDetectorItems(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasDataDetectorInteraction.setNeedsLayout();

  return closure #1 in RecognitionStrokeProvider.foundDataDetectorItems(_:)(a1, v4, v5, v7, v6);
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = MEMORY[0x1CCA6D1F0](v3, v5, v6, v7);
    outlined consume of Set<UITouch>.Index._Variant(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      outlined consume of Set<UITouch>.Index._Variant(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v3, v5, v2 != 0, a1);
  v12 = v11;
  outlined consume of Set<UITouch>.Index._Variant(v3, v5, v2 != 0);
  return v12;
}

void PKLongPressGestureRecognizer.checkForPress(_:)(uint64_t a1)
{
  started = type metadata accessor for PKLongPressGestureRecognizer.PressStartLocation(0);
  v3 = *(started - 8);
  MEMORY[0x1EEE9AC00](started);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v1 state])
  {
    v6 = *&v1[OBJC_IVAR___PKLongPressGestureRecognizer_pressStartLocations];
    v7 = *(v6 + 16);

    v8 = 0;
    while (1)
    {
      if (v7 == v8)
      {

        return;
      }

      if (v8 >= *(v6 + 16))
      {
        break;
      }

      outlined init with copy of PKLongPressGestureRecognizer.PressStartLocation(v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8++, v5);
      v9 = static UUID.== infix(_:_:)();
      outlined destroy of PKLongPressGestureRecognizer.PressStartLocation(v5);
      if (v9)
      {

        [v1 setState_];
        return;
      }
    }

    __break(1u);
  }
}

Swift::Void __swiftcall PKLongPressGestureRecognizer.addNewStartLocation(_:)(CGPoint a1)
{
  y = a1.y;
  x = a1.x;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v36 = &v31 - v5;
  started = type metadata accessor for PKLongPressGestureRecognizer.PressStartLocation(0);
  v7 = started - 8;
  v33 = *(started - 8);
  MEMORY[0x1EEE9AC00](started);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v34 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  UUID.init()();
  v16 = v9 + *(v7 + 28);
  v32 = *(v11 + 16);
  v32(v16, v15, v10);
  *v9 = x;
  v9[1] = y;
  v17 = OBJC_IVAR___PKLongPressGestureRecognizer_pressStartLocations;
  v18 = *&v1[OBJC_IVAR___PKLongPressGestureRecognizer_pressStartLocations];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v1[v17] = v18;
  v35 = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
    *&v1[v17] = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
  }

  v18[2] = v21 + 1;
  outlined init with take of PKLongPressGestureRecognizer.PressStartLocation(v9, v18 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v21);
  v22 = v35;
  *&v35[v17] = v18;
  v23 = type metadata accessor for TaskPriority();
  v24 = v36;
  (*(*(v23 - 8) + 56))(v36, 1, 1, v23);
  v25 = v34;
  v32(v34, v15, v10);
  type metadata accessor for MainActor();
  v26 = v22;
  v27 = static MainActor.shared.getter();
  v28 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v29 = swift_allocObject();
  v30 = MEMORY[0x1E69E85E0];
  *(v29 + 2) = v27;
  *(v29 + 3) = v30;
  *(v29 + 4) = v26;
  (*(v11 + 32))(&v29[v28], v25, v10);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v24, &async function pointer to partial apply for closure #1 in PKLongPressGestureRecognizer.addNewStartLocation(_:), v29);

  (*(v11 + 8))(v15, v10);
}

uint64_t closure #1 in PKLongPressGestureRecognizer.addNewStartLocation(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in PKLongPressGestureRecognizer.addNewStartLocation(_:), v8, v7);
}

uint64_t closure #1 in PKLongPressGestureRecognizer.addNewStartLocation(_:)()
{
  v1 = static Duration.milliseconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = closure #1 in PKLongPressGestureRecognizer.addNewStartLocation(_:);

  return specialized Clock.sleep(for:tolerance:)(v1, v3, 0, 0, 1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 72);
  v7 = *(v2 + 64);
  if (v0)
  {
    v8 = closure #1 in PKLongPressGestureRecognizer.addNewStartLocation(_:);
  }

  else
  {
    v8 = closure #1 in PKLongPressGestureRecognizer.addNewStartLocation(_:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

{
  v1 = *(v0 + 24);

  PKLongPressGestureRecognizer.checkForPress(_:)(v1);

  v2 = *(v0 + 8);

  return v2();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of (CIContextOption, Any)(a3, v22 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of (CIImageOption, Any)(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      outlined destroy of (CIImageOption, Any)(a3, &_sScPSgMd, &_sScPSgMR);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of (CIImageOption, Any)(a3, &_sScPSgMd, &_sScPSgMR);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

double @objc PKLongPressGestureRecognizer.touchesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t))
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x1E69DD190);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8);

  return result;
}

id PKLongPressGestureRecognizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKLongPressGestureRecognizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PKLongPressGestureRecognizer.PressStartLocation(uint64_t a1)
{
  result = type metadata singleton initialization cache for PKLongPressGestureRecognizer.PressStartLocation;
  if (!type metadata singleton initialization cache for PKLongPressGestureRecognizer.PressStartLocation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PKLongPressGestureRecognizer.PressStartLocation(uint64_t a1)
{
  type metadata accessor for CGPoint(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = specialized Clock.sleep(for:tolerance:);
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t outlined init with take of PKLongPressGestureRecognizer.PressStartLocation(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for PKLongPressGestureRecognizer.PressStartLocation(0);
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t partial apply for closure #1 in PKLongPressGestureRecognizer.addNewStartLocation(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = closure #1 in CanvasDataDetectorInteraction.setNeedsLayout()partial apply;

  return closure #1 in PKLongPressGestureRecognizer.addNewStartLocation(_:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of PKLongPressGestureRecognizer.PressStartLocation(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for PKLongPressGestureRecognizer.PressStartLocation(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t outlined destroy of PKLongPressGestureRecognizer.PressStartLocation(uint64_t a1)
{
  started = type metadata accessor for PKLongPressGestureRecognizer.PressStartLocation(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

unint64_t lazy protocol witness table accessor for type UITouch and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UITouch and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UITouch and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UITouch, 0x1E69DD190);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UITouch and conformance NSObject);
  }

  return result;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1CCA6D230](a1, a2, v7);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x1E69DD190);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x1E69DD190);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v15;
    v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

void specialized PKLongPressGestureRecognizer.touchesBegan(_:with:)(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      return;
    }
  }

  else if (*(a1 + 16) != 1)
  {
    return;
  }

  v3 = specialized Collection.first.getter(a1);
  if (v3)
  {
    v7 = v3;
    if (![v1 state])
    {
      [v7 locationInView_];
      v4 = &v1[OBJC_IVAR___PKLongPressGestureRecognizer_startLocation];
      *v4 = v5;
      *(v4 + 1) = v6;
      PKLongPressGestureRecognizer.addNewStartLocation(_:)(__PAIR128__(v6, v5));
    }
  }
}

void specialized PKLongPressGestureRecognizer.touchesMoved(_:with:)(uint64_t a1)
{
  started = type metadata accessor for PKLongPressGestureRecognizer.PressStartLocation(0);
  v4 = *(started - 8);
  v5 = MEMORY[0x1EEE9AC00](started - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v26 - v8);
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      return;
    }
  }

  else if (*(a1 + 16) != 1)
  {
    return;
  }

  v10 = specialized Collection.first.getter(a1);
  if (v10)
  {
    v30 = v10;
    if ([v1 state] == 1 || objc_msgSend(v1, sel_state) == 2)
    {
      [v1 setState_];
LABEL_9:
      v11 = v30;

      return;
    }

    if ([v1 state])
    {
      goto LABEL_9;
    }

    [v30 locationInView_];
    v13 = v12;
    v15 = v14;
    if (*&v1[OBJC_IVAR___PKLongPressGestureRecognizer_allowableTotalMovement] * *&v1[OBJC_IVAR___PKLongPressGestureRecognizer_allowableTotalMovement] < (*&v1[OBJC_IVAR___PKLongPressGestureRecognizer_startLocation] - v12) * (*&v1[OBJC_IVAR___PKLongPressGestureRecognizer_startLocation] - v12) + (*&v1[OBJC_IVAR___PKLongPressGestureRecognizer_startLocation + 8] - v14) * (*&v1[OBJC_IVAR___PKLongPressGestureRecognizer_startLocation + 8] - v14))
    {
      [v1 setState_];
      goto LABEL_9;
    }

    v27 = OBJC_IVAR___PKLongPressGestureRecognizer_pressStartLocations;
    v16 = *&v1[OBJC_IVAR___PKLongPressGestureRecognizer_pressStartLocations];
    v17 = *(v16 + 16);
    v29 = OBJC_IVAR___PKLongPressGestureRecognizer_allowableMovement;

    if (v17)
    {
      v18 = 0;
      v19 = MEMORY[0x1E69E7CC0];
      v28 = v17;
      while (v18 < *(v16 + 16))
      {
        v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v21 = *(v4 + 72);
        outlined init with copy of PKLongPressGestureRecognizer.PressStartLocation(v16 + v20 + v21 * v18, v9);
        if ((*v9 - v13) * (*v9 - v13) + (v9[1] - v15) * (v9[1] - v15) >= *&v1[v29] * *&v1[v29])
        {
          outlined destroy of PKLongPressGestureRecognizer.PressStartLocation(v9);
        }

        else
        {
          outlined init with take of PKLongPressGestureRecognizer.PressStartLocation(v9, v7);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v31 = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1);
            v19 = v31;
          }

          v24 = *(v19 + 16);
          v23 = *(v19 + 24);
          v25 = v24 + 1;
          if (v24 >= v23 >> 1)
          {
            v26 = v1;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
            v25 = v24 + 1;
            v1 = v26;
            v19 = v31;
          }

          *(v19 + 16) = v25;
          outlined init with take of PKLongPressGestureRecognizer.PressStartLocation(v7, v19 + v20 + v24 * v21);
          v17 = v28;
        }

        if (v17 == ++v18)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
LABEL_27:

      *&v1[v27] = v19;

      PKLongPressGestureRecognizer.addNewStartLocation(_:)(__PAIR128__(*&v15, *&v13));
    }
  }
}

double outlined consume of Set<UITouch>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  specialized Array.append<A>(contentsOf:)(a1, &_ss23_ContiguousArrayStorageCy9PencilKit13PKStrokePointVGMd, &_ss23_ContiguousArrayStorageCy9PencilKit13PKStrokePointVGMR, &type metadata for PKStrokePoint);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v8 + 32], (a1 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  specialized Array.append<A>(contentsOf:)(a1, &_ss23_ContiguousArrayStorageCy9PencilKit8PKStrokeVGMd, &_ss23_ContiguousArrayStorageCy9PencilKit8PKStrokeVGMR, &type metadata for PKStroke);
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, id a3)
{
  v8 = [a3 count];
  if (a1 < 0 || v8 < a1)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = [a3 count];
  if (a2 < 0 || v9 < a2)
  {
    goto LABEL_19;
  }

  v3 = *v4;
  v10 = *(*v4 + 2);
  v11 = v10 + a2 - a1;
  if (__OFADD__(v10, a2 - a1))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v13 = *(v3 + 3) >> 1, v13 < v11))
  {
    if (v10 <= v11)
    {
      v14 = v10 + a2 - a1;
    }

    else
    {
      v14 = v10;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v3, &_ss23_ContiguousArrayStorageCy9PencilKit13PKStrokePointVGMd, &_ss23_ContiguousArrayStorageCy9PencilKit13PKStrokePointVGMR, &type metadata for PKStrokePoint);
    v13 = *(v3 + 3) >> 1;
  }

  v15 = *(v3 + 2);
  v16 = v13 - v15;
  v17 = specialized Slice._copyContents(initializing:)(v38, &v3[8 * v15 + 32], v13 - v15, a1, a2, a3);
  if (v17 < a2 - a1)
  {
    goto LABEL_21;
  }

  if (v17 >= 1)
  {
    v18 = *(v3 + 2);
    v19 = __OFADD__(v18, v17);
    v20 = v18 + v17;
    if (v19)
    {
      __break(1u);
      goto LABEL_42;
    }

    *(v3 + 2) = v20;
  }

  if (v17 != v16)
  {
LABEL_17:

    *v4 = v3;
    return;
  }

LABEL_22:
  v21 = *v39;
  v22 = *v41;
  if (*v41 == *v39)
  {
    goto LABEL_17;
  }

  v16 = *(v3 + 2);
  v23 = v40;
  v24 = specialized Slice.subscript.read(v37, *v41, *v38, *v39, v40);
  v26 = *v25;
  (v24)(v37, 0);
  v27 = [v23 count];
  if ((v22 & 0x8000000000000000) == 0 && v22 < v27)
  {
    *v36 = v22 + 1;
    *v41 = v22 + 1;
    if (!v26)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v28 = *(v3 + 3);
      v29 = v28 >> 1;
      if ((v28 >> 1) < v16 + 1)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v16 + 1, 1, v3, &_ss23_ContiguousArrayStorageCy9PencilKit13PKStrokePointVGMd, &_ss23_ContiguousArrayStorageCy9PencilKit13PKStrokePointVGMR, &type metadata for PKStrokePoint);
        v29 = *(v3 + 3) >> 1;
      }

      if (v16 < v29)
      {
        break;
      }

      v30 = *v36;
LABEL_39:
      *(v3 + 2) = v16;
      *v36 = v30;
      if (!v26)
      {
        goto LABEL_17;
      }
    }

    v30 = *v36;
    while (1)
    {
      *&v3[8 * v16++ + 32] = v26;
      if (v30 == v21)
      {
        break;
      }

      v21 = *v39;
      v31 = v40;
      v32 = specialized Slice.subscript.read(v37, v30, *v38, *v39, v40);
      v26 = *v33;
      (v32)(v37, 0);
      v34 = [v31 count];
      if ((*v36 & 0x8000000000000000) != 0 || v30 >= v34)
      {
        __break(1u);
        goto LABEL_44;
      }

      *v41 = ++v30;
      if (v26)
      {
        v35 = v16 < v29;
      }

      else
      {
        v35 = 0;
      }

      if (!v35)
      {
        goto LABEL_39;
      }
    }

LABEL_42:
    *(v3 + 2) = v16;
    goto LABEL_17;
  }

LABEL_44:
  __break(1u);
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = *v4;
  v7 = *(*v4 + 2);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v8 <= *(v6 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v7 <= v8)
  {
    v17 = v7 + v5;
  }

  else
  {
    v17 = v7;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v17, 1, v6, a2, a3, a4);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v6 + 3) >> 1) - *(v6 + 2) < v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_14:
    *v4 = v6;
    return;
  }

  v14 = *(v6 + 2);
  v15 = __OFADD__(v14, v5);
  v16 = v14 + v5;
  if (!v15)
  {
    *(v6 + 2) = v16;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

double specialized RawRepresentable<>.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();

  return result;
}

{
  String.hash(into:)();

  return result;
}

{
  String.hash(into:)();

  return result;
}

uint64_t InkDescriptor.id.getter()
{
  v1 = *v0;

  return v1;
}

void InkDescriptor.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t InkDescriptor.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void InkDescriptor.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t InkDescriptor.rendering.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  v3 = *(v1 + 240);
  v35 = *(v1 + 224);
  v36[0] = v3;
  v4 = *(v1 + 144);
  v5 = *(v1 + 176);
  v31 = *(v1 + 160);
  v6 = v31;
  v32 = v5;
  v7 = *(v1 + 176);
  v8 = *(v1 + 208);
  v33 = *(v1 + 192);
  v9 = v33;
  v34 = v8;
  v10 = *(v1 + 80);
  v11 = *(v1 + 112);
  v27 = *(v1 + 96);
  v12 = v27;
  v28 = v11;
  v13 = *(v1 + 112);
  v14 = *(v1 + 144);
  v29 = *(v1 + 128);
  v15 = v29;
  v30 = v14;
  v16 = *(v1 + 48);
  v24[0] = *(v1 + 32);
  v24[1] = v16;
  v17 = *(v1 + 80);
  v19 = *(v1 + 32);
  v18 = *(v1 + 48);
  v25 = *(v1 + 64);
  v20 = v25;
  v26 = v17;
  v21 = *(v1 + 240);
  *(a1 + 192) = v35;
  *(a1 + 208) = v21;
  *(a1 + 128) = v6;
  *(a1 + 144) = v7;
  *(a1 + 160) = v9;
  *(a1 + 176) = v2;
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  *(a1 + 96) = v15;
  *(a1 + 112) = v4;
  *a1 = v19;
  *(a1 + 16) = v18;
  *(v36 + 15) = *(v1 + 255);
  *(a1 + 223) = *(v1 + 255);
  *(a1 + 32) = v20;
  *(a1 + 48) = v10;
  return outlined init with copy of InkRendering(v24, v23);
}

__n128 InkDescriptor.rendering.setter(uint64_t a1)
{
  v3 = *(v1 + 240);
  v17[12] = *(v1 + 224);
  v18[0] = v3;
  *(v18 + 15) = *(v1 + 255);
  v4 = *(v1 + 176);
  v17[8] = *(v1 + 160);
  v17[9] = v4;
  v5 = *(v1 + 208);
  v17[10] = *(v1 + 192);
  v17[11] = v5;
  v6 = *(v1 + 112);
  v17[4] = *(v1 + 96);
  v17[5] = v6;
  v7 = *(v1 + 144);
  v17[6] = *(v1 + 128);
  v17[7] = v7;
  v8 = *(v1 + 48);
  v17[0] = *(v1 + 32);
  v17[1] = v8;
  v9 = *(v1 + 80);
  v17[2] = *(v1 + 64);
  v17[3] = v9;
  outlined destroy of InkRendering(v17);
  v10 = *(a1 + 208);
  *(v1 + 224) = *(a1 + 192);
  *(v1 + 240) = v10;
  *(v1 + 255) = *(a1 + 223);
  v11 = *(a1 + 144);
  *(v1 + 160) = *(a1 + 128);
  *(v1 + 176) = v11;
  v12 = *(a1 + 176);
  *(v1 + 192) = *(a1 + 160);
  *(v1 + 208) = v12;
  v13 = *(a1 + 80);
  *(v1 + 96) = *(a1 + 64);
  *(v1 + 112) = v13;
  v14 = *(a1 + 112);
  *(v1 + 128) = *(a1 + 96);
  *(v1 + 144) = v14;
  v15 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v15;
  result = *(a1 + 48);
  *(v1 + 64) = *(a1 + 32);
  *(v1 + 80) = result;
  return result;
}

uint64_t InkDescriptor.behavior.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 264), 0x102uLL);
  memcpy(a1, (v1 + 264), 0x102uLL);
  return outlined init with copy of InkBehavior(__dst, v4);
}

void *InkDescriptor.behavior.setter(const void *a1)
{
  memcpy(v4, (v1 + 264), 0x102uLL);
  outlined destroy of InkBehavior(v4);
  return memcpy((v1 + 264), a1, 0x102uLL);
}

void *InkDescriptor.init(id:name:rendering:behavior:)@<X0>(void *__src@<X5>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X8>)
{
  *(a7 + 528) = &outlined read-only object #0 of InkDescriptor.init(id:name:rendering:behavior:);
  *(a7 + 536) = 0x403E000000000000;
  *(a7 + 544) = 0;
  *a7 = a2;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  v7 = *(a6 + 208);
  *(a7 + 224) = *(a6 + 192);
  *(a7 + 240) = v7;
  *(a7 + 255) = *(a6 + 223);
  v8 = *(a6 + 144);
  *(a7 + 160) = *(a6 + 128);
  *(a7 + 176) = v8;
  v9 = *(a6 + 176);
  *(a7 + 192) = *(a6 + 160);
  *(a7 + 208) = v9;
  v10 = *(a6 + 80);
  *(a7 + 96) = *(a6 + 64);
  *(a7 + 112) = v10;
  v11 = *(a6 + 112);
  *(a7 + 128) = *(a6 + 96);
  *(a7 + 144) = v11;
  v12 = *(a6 + 16);
  *(a7 + 32) = *a6;
  *(a7 + 48) = v12;
  v13 = *(a6 + 48);
  *(a7 + 64) = *(a6 + 32);
  *(a7 + 80) = v13;
  return memcpy((a7 + 264), __src, 0x102uLL);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance InkDescriptor.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized InkDescriptor.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InkDescriptor.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type InkDescriptor.CodingKeys and conformance InkDescriptor.CodingKeys(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InkDescriptor.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type InkDescriptor.CodingKeys and conformance InkDescriptor.CodingKeys(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t InkDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9PencilKit13InkDescriptorV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMd, &_ss22KeyedEncodingContainerVy9PencilKit13InkDescriptorV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - v5;
  v7 = *v1;
  v36 = v1[1];
  v37 = v7;
  v8 = v1[2];
  v34 = v1[3];
  v35 = v8;
  v9 = *(v1 + 14);
  v10 = *(v1 + 15);
  v11 = *(v1 + 12);
  v71 = *(v1 + 13);
  v72 = v9;
  *v73 = v10;
  *&v73[15] = *(v1 + 255);
  v12 = *(v1 + 11);
  v68 = *(v1 + 10);
  v69 = v12;
  v70 = v11;
  v13 = *(v1 + 7);
  v64 = *(v1 + 6);
  v65 = v13;
  v14 = *(v1 + 9);
  v66 = *(v1 + 8);
  v67 = v14;
  v15 = *(v1 + 3);
  v60 = *(v1 + 2);
  v61 = v15;
  v16 = *(v1 + 5);
  v62 = *(v1 + 4);
  v63 = v16;
  memcpy(v74, v1 + 33, 0x102uLL);
  v33 = v1[66];
  v17 = v1[67];
  HIDWORD(v32) = *(v1 + 544);
  v18 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InkDescriptor.CodingKeys and conformance InkDescriptor.CodingKeys(v18, v19, v20);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v42[0] = 0;
  v21 = v38;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v21)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v42[0] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v57 = v71;
  v58 = v72;
  v59[0] = *v73;
  *(v59 + 15) = *&v73[15];
  v54 = v68;
  v55 = v69;
  v56 = v70;
  v50 = v64;
  v51 = v65;
  v52 = v66;
  v53 = v67;
  v46 = v60;
  v47 = v61;
  v48 = v62;
  v49 = v63;
  v45 = 2;
  v23 = outlined init with copy of InkRendering(&v60, v42);
  lazy protocol witness table accessor for type InkRendering and conformance InkRendering(v23, v24, v25);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v43[11] = v57;
  v43[12] = v58;
  *v44 = v59[0];
  *&v44[15] = *(v59 + 15);
  v43[8] = v54;
  v43[9] = v55;
  v43[10] = v56;
  v43[4] = v50;
  v43[5] = v51;
  v43[6] = v52;
  v43[7] = v53;
  v43[0] = v46;
  v43[1] = v47;
  v43[2] = v48;
  v43[3] = v49;
  outlined destroy of InkRendering(v43);
  memcpy(v42, v74, 0x102uLL);
  v41[263] = 3;
  v26 = outlined init with copy of InkBehavior(v74, v41);
  lazy protocol witness table accessor for type InkBehavior and conformance InkBehavior(v26, v27, v28);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  memcpy(v41, v42, 0x102uLL);
  outlined destroy of InkBehavior(v41);
  v40 = v33;
  v39 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12CoreGraphics7CGFloatVGMd, &_sSay12CoreGraphics7CGFloatVGMR);
  lazy protocol witness table accessor for type [CGFloat] and conformance <A> [A](&lazy protocol witness table cache variable for type [CGFloat] and conformance <A> [A], lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E6300]);
  v29 = KeyedEncodingContainer.encode<A>(_:forKey:)();
  v40 = v17;
  v39 = 5;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat(v29, v30, v31);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v40) = BYTE4(v32);
  v39 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit16DecodableDefaultVySbGMd, &_s9PencilKit16DecodableDefaultVySbGMR);
  lazy protocol witness table accessor for type DecodableDefault<Bool> and conformance DecodableDefault<A>(&lazy protocol witness table cache variable for type DecodableDefault<Bool> and conformance DecodableDefault<A>, &_s9PencilKit16DecodableDefaultVySbGMd, &_s9PencilKit16DecodableDefaultVySbGMR, &protocol conformance descriptor for DecodableDefault<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, 0);
}

uint64_t protocol witness for Identifiable.id.getter in conformance InkDescriptor@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

PencilKit::InkRendering::BlendMode_optional __swiftcall InkRendering.BlendMode.init(rawValue:)(Swift::String rawValue)
{
  v2._rawValue = &outlined read-only object #0 of InkRendering.BlendMode.init(rawValue:);
  InkRendering.BlendMode.init(rawValue:)(rawValue, v2, v1);
  return result;
}

uint64_t InkRendering.BlendMode.rawValue.getter()
{
  if (*v0)
  {
    return 0x796C7069746C756DLL;
  }

  else
  {
    return 0x764F656372756F73;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance InkRendering.BlendMode(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x796C7069746C756DLL;
  }

  else
  {
    v3 = 0x764F656372756F73;
  }

  if (v2)
  {
    v4 = 0xEA00000000007265;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x796C7069746C756DLL;
  }

  else
  {
    v5 = 0x764F656372756F73;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InkRendering.BlendMode()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance InkRendering.BlendMode(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InkRendering.BlendMode()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance InkRendering.BlendMode(uint64_t *a1@<X8>)
{
  v2 = 0x764F656372756F73;
  if (*v1)
  {
    v2 = 0x796C7069746C756DLL;
  }

  v3 = 0xEA00000000007265;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t InkRendering.particle.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 56);
  v4 = *(v1 + 88);
  v13 = *(v1 + 72);
  v3 = v13;
  v14[0] = v4;
  *(v14 + 11) = *(v1 + 99);
  v5 = *(v14 + 11);
  v6 = *(v1 + 24);
  v10[0] = *(v1 + 8);
  v10[1] = v6;
  v11 = *(v1 + 40);
  v7 = v11;
  v12 = v2;
  *a1 = v10[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *(a1 + 91) = v5;
  return outlined init with copy of InkDescriptorParticles?(v10, &v9);
}

uint64_t outlined init with copy of InkDescriptorParticles?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit22InkDescriptorParticlesVSgMd, &_s9PencilKit22InkDescriptorParticlesVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 InkRendering.particle.setter(uint64_t a1)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 88);
  v10[4] = *(v1 + 72);
  v11[0] = v4;
  *(v11 + 11) = *(v1 + 99);
  v5 = *(v1 + 24);
  v10[0] = *(v1 + 8);
  v10[1] = v5;
  v10[2] = *(v1 + 40);
  v10[3] = v3;
  outlined destroy of InkDescriptorParticles?(v10);
  v6 = *(a1 + 32);
  *(v1 + 56) = *(a1 + 48);
  v7 = *(a1 + 80);
  *(v1 + 72) = *(a1 + 64);
  *(v1 + 88) = v7;
  *(v1 + 99) = *(a1 + 91);
  result = *a1;
  v9 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v9;
  *(v1 + 40) = v6;
  return result;
}

uint64_t InkRendering.secondaryParticle.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 168);
  v4 = *(v1 + 200);
  v13 = *(v1 + 184);
  v3 = v13;
  v14[0] = v4;
  *(v14 + 11) = *(v1 + 211);
  v5 = *(v14 + 11);
  v6 = *(v1 + 136);
  v10[0] = *(v1 + 120);
  v10[1] = v6;
  v11 = *(v1 + 152);
  v7 = v11;
  v12 = v2;
  *a1 = v10[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *(a1 + 91) = v5;
  return outlined init with copy of InkDescriptorParticles?(v10, &v9);
}

__n128 InkRendering.secondaryParticle.setter(uint64_t a1)
{
  v3 = *(v1 + 168);
  v4 = *(v1 + 200);
  v10[4] = *(v1 + 184);
  v11[0] = v4;
  *(v11 + 11) = *(v1 + 211);
  v5 = *(v1 + 136);
  v10[0] = *(v1 + 120);
  v10[1] = v5;
  v10[2] = *(v1 + 152);
  v10[3] = v3;
  outlined destroy of InkDescriptorParticles?(v10);
  v6 = *(a1 + 32);
  *(v1 + 168) = *(a1 + 48);
  v7 = *(a1 + 80);
  *(v1 + 184) = *(a1 + 64);
  *(v1 + 200) = v7;
  *(v1 + 211) = *(a1 + 91);
  result = *a1;
  v9 = *(a1 + 16);
  *(v1 + 120) = *a1;
  *(v1 + 136) = v9;
  *(v1 + 152) = v6;
  return result;
}

double InkRendering.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 99) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 211) = 0u;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance InkRendering.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized InkRendering.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InkRendering.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type InkRendering.CodingKeys and conformance InkRendering.CodingKeys(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InkRendering.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type InkRendering.CodingKeys and conformance InkRendering.CodingKeys(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t InkRendering.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9PencilKit12InkRenderingV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMd, &_ss22KeyedEncodingContainerVy9PencilKit12InkRenderingV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v27 - v5;
  v7 = *v1;
  v8 = *(v1 + 56);
  v9 = *(v1 + 88);
  v49 = *(v1 + 72);
  v50[0] = v9;
  *(v50 + 11) = *(v1 + 99);
  v10 = *(v1 + 24);
  v45 = *(v1 + 8);
  v46 = v10;
  v47 = *(v1 + 40);
  v48 = v8;
  v11 = *(v1 + 136);
  v12 = *(v1 + 152);
  v51 = *(v1 + 120);
  v52 = v11;
  v13 = *(v1 + 168);
  v14 = *(v1 + 184);
  *(v56 + 11) = *(v1 + 211);
  v15 = *(v1 + 200);
  v55 = v14;
  v56[0] = v15;
  v53 = v12;
  v54 = v13;
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InkRendering.CodingKeys and conformance InkRendering.CodingKeys(v16, v17, v18);
  v19 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v39) = v7;
  LOBYTE(v36[0]) = 0;
  lazy protocol witness table accessor for type InkRendering.BlendMode and conformance InkRendering.BlendMode(v19, v20, v21);
  v22 = v57;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v22)
  {
    v43 = v49;
    v44[0] = v50[0];
    *(v44 + 11) = *(v50 + 11);
    v39 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v38 = 1;
    v24 = outlined init with copy of InkDescriptorParticles?(&v45, v36);
    lazy protocol witness table accessor for type InkDescriptorParticles and conformance InkDescriptorParticles(v24, v25, v26);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v36[4] = v43;
    *v37 = v44[0];
    *&v37[11] = *(v44 + 11);
    v36[0] = v39;
    v36[1] = v40;
    v36[2] = v41;
    v36[3] = v42;
    outlined destroy of InkDescriptorParticles?(v36);
    v34 = v55;
    v35[0] = v56[0];
    *(v35 + 11) = *(v56 + 11);
    v30 = v51;
    v31 = v52;
    v32 = v53;
    v33 = v54;
    v29 = 2;
    outlined init with copy of InkDescriptorParticles?(&v51, v27);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27[4] = v34;
    *v28 = v35[0];
    *&v28[11] = *(v35 + 11);
    v27[0] = v30;
    v27[1] = v31;
    v27[2] = v32;
    v27[3] = v33;
    outlined destroy of InkDescriptorParticles?(v27);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t InkDescriptorParticles.textureName.getter()
{
  v1 = *v0;

  return v1;
}

void InkDescriptorParticles.textureName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t InkDescriptorParticles.mask.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = *(v1 + 40);
  v4 = *(v1 + 64);
  *(a1 + 8) = *(v1 + 48);
  *(a1 + 24) = v4;
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;
}

__n128 InkDescriptorParticles.mask.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);

  result = *a1;
  *(v1 + 56) = *(a1 + 16);
  *(v1 + 40) = result;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t InkDescriptorParticles.ParticleRotation.rawValue.getter()
{
  v1 = 0x657461746F72;
  if (*v0 != 1)
  {
    v1 = 0x6D6F646E6172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance InkDescriptorParticles.ParticleRotation(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x657461746F72;
  if (v2 != 1)
  {
    v3 = 0x6D6F646E6172;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1701736302;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = 0x657461746F72;
  if (*a2 != 1)
  {
    v6 = 0x6D6F646E6172;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1701736302;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InkDescriptorParticles.ParticleRotation()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance InkDescriptorParticles.ParticleRotation(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InkDescriptorParticles.ParticleRotation()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance InkDescriptorParticles.ParticleRotation(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x657461746F72;
  if (v2 != 1)
  {
    v4 = 0x6D6F646E6172;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1701736302;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

PencilKit::InkDescriptorParticles::ParticleBlendMode_optional __swiftcall InkDescriptorParticles.ParticleBlendMode.init(rawValue:)(Swift::String rawValue)
{
  v2._rawValue = &outlined read-only object #0 of InkDescriptorParticles.ParticleBlendMode.init(rawValue:);
  InkRendering.BlendMode.init(rawValue:)(rawValue, v2, v1);
  return result;
}

void InkRendering.BlendMode.init(rawValue:)(Swift::String string@<0:X0, 8:X1>, Swift::OpaquePointer cases@<0:X2>, char *a3@<X8>)
{
  object = string._object;
  v4._countAndFlagsBits = string._countAndFlagsBits;
  v4._object = object;
  v7 = _findStringSwitchCase(cases:string:)(cases, v4);

  if (v7 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v7)
  {
    v8 = 0;
  }

  *a3 = v8;
}

uint64_t InkDescriptorParticles.ParticleBlendMode.rawValue.getter()
{
  if (*v0)
  {
    return 7889261;
  }

  else
  {
    return 6579297;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance InkDescriptorParticles.ParticleBlendMode(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 7889261;
  }

  else
  {
    v2 = 6579297;
  }

  if (*a2)
  {
    v3 = 7889261;
  }

  else
  {
    v3 = 6579297;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InkDescriptorParticles.ParticleBlendMode()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance InkDescriptorParticles.ParticleBlendMode(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InkDescriptorParticles.ParticleBlendMode()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance InkDescriptorParticles.ParticleBlendMode(uint64_t *a1@<X8>)
{
  v2 = 6579297;
  if (*v1)
  {
    v2 = 7889261;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

double InkDescriptorParticles.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x80000001C8020CF0;
  *(a1 + 16) = xmmword_1C8019950;
  *(a1 + 32) = 0x3FF0000000000000;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 104) = 1;
  *(a1 + 106) = 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance InkDescriptorParticles.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized InkDescriptorParticles.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InkDescriptorParticles.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type InkDescriptorParticles.CodingKeys and conformance InkDescriptorParticles.CodingKeys(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InkDescriptorParticles.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type InkDescriptorParticles.CodingKeys and conformance InkDescriptorParticles.CodingKeys(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t InkDescriptorParticles.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9PencilKit22InkDescriptorParticlesV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMd, &_ss22KeyedEncodingContainerVy9PencilKit22InkDescriptorParticlesV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - v5;
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v36 = *(v1 + 56);
  v37 = v10;
  v11 = *(v1 + 72);
  v40 = *(v1 + 80);
  v41 = v11;
  v39 = *(v1 + 88);
  v38 = *(v1 + 96);
  LODWORD(v11) = *(v1 + 104);
  v34 = *(v1 + 105);
  v35 = v11;
  HIDWORD(v33) = *(v1 + 106);
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InkDescriptorParticles.CodingKeys and conformance InkDescriptorParticles.CodingKeys(v12, v13, v14);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v43) = 0;
  v15 = v42;
  v16 = KeyedEncodingContainer.encode(_:forKey:)();
  if (!v15)
  {
    v19 = v39;
    v21 = v40;
    v20 = v41;
    v22 = v38;
    *&v43 = v8;
    v48 = 1;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat(v16, v17, v18);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v43 = v7;
    *(&v43 + 1) = v9;
    v48 = 2;
    type metadata accessor for CGSize(0);
    lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
    v24 = KeyedEncodingContainer.encode<A>(_:forKey:)();
    v44 = v36;
    v43 = v37;
    v45 = v20;
    v46 = v21;
    v47 = v19;
    v48 = 3;
    lazy protocol witness table accessor for type InkMask and conformance InkMask(v24, v25, v26);

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    *&v43 = v22;
    v48 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit16DecodableDefaultVySiGMd, &_s9PencilKit16DecodableDefaultVySiGMR);
    lazy protocol witness table accessor for type DecodableDefault<Bool> and conformance DecodableDefault<A>(&lazy protocol witness table cache variable for type DecodableDefault<Int> and conformance DecodableDefault<A>, &_s9PencilKit16DecodableDefaultVySiGMd, &_s9PencilKit16DecodableDefaultVySiGMR, &protocol conformance descriptor for DecodableDefault<A>);
    v27 = KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v43) = v35;
    v48 = 5;
    lazy protocol witness table accessor for type InkDescriptorParticles.ParticleRotation and conformance InkDescriptorParticles.ParticleRotation(v27, v28, v29);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v43) = 6;
    v30 = KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v43) = BYTE4(v33);
    v48 = 7;
    lazy protocol witness table accessor for type InkDescriptorParticles.ParticleBlendMode and conformance InkDescriptorParticles.ParticleBlendMode(v30, v31, v32);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t InkMask.textureName.getter()
{
  v1 = *v0;

  return v1;
}

void InkMask.textureName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

double InkMask.init()@<D0>(uint64_t a1@<X8>)
{
  strcpy(a1, "default-mask");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  result = 8.0;
  *(a1 + 16) = xmmword_1C8019960;
  *(a1 + 32) = xmmword_1C8019970;
  *(a1 + 48) = 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance InkMask.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized InkMask.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InkMask.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type InkMask.CodingKeys and conformance InkMask.CodingKeys(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InkMask.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type InkMask.CodingKeys and conformance InkMask.CodingKeys(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t InkMask.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9PencilKit7InkMaskV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMd, &_ss22KeyedEncodingContainerVy9PencilKit7InkMaskV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - v5;
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  v19[3] = *(v1 + 48);
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InkMask.CodingKeys and conformance InkMask.CodingKeys(v11, v12, v13);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  v14 = v20;
  v15 = KeyedEncodingContainer.encode(_:forKey:)();
  if (!v14)
  {
    v22 = v8;
    v21 = 1;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat(v15, v16, v17);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v7;
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit16DecodableDefaultVy12CoreGraphics7CGFloatVGMd, &_s9PencilKit16DecodableDefaultVy12CoreGraphics7CGFloatVGMR);
    lazy protocol witness table accessor for type DecodableDefault<Bool> and conformance DecodableDefault<A>(&lazy protocol witness table cache variable for type DecodableDefault<CGFloat> and conformance DecodableDefault<A>, &_s9PencilKit16DecodableDefaultVy12CoreGraphics7CGFloatVGMd, &_s9PencilKit16DecodableDefaultVy12CoreGraphics7CGFloatVGMR, &protocol conformance descriptor for DecodableDefault<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v10;
    v21 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v9;
    v21 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v22) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t InkFunction.Input.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x797469636F6C6576;
    v7 = 0x6874756D697A61;
    if (v1 != 2)
    {
      v7 = 0x6563726F66;
    }

    if (*v0)
    {
      v6 = 0x6564757469746C61;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6E6F697461727564;
    v3 = 0x65636E6174736964;
    if (v1 != 7)
    {
      v3 = 0x756D697A416B6E69;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6F69746365726964;
    if (v1 != 4)
    {
      v4 = 0x6E6F697461727564;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InkFunction.Input()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InkFunction.Input()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance InkFunction.Input@<X0>(uint64_t *a1@<X8>)
{
  result = InkFunction.Input.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t InkFunction.Math.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x796C7069746C756DLL;
  v3 = 7235949;
  v4 = 7889261;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6579297;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InkFunction.Math()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance InkFunction.Math(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InkFunction.Math()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance InkFunction.Math(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x796C7069746C756DLL;
  v5 = 0xE300000000000000;
  v6 = 7235949;
  v7 = 0xE300000000000000;
  v8 = 7889261;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x80000001C801FF50;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 6579297;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t InkFunction.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InkFunction.id.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t InkFunction.input.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InkFunction(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t InkFunction.input.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for InkFunction(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t InkFunction.output.setter(double a1, double a2)
{
  result = type metadata accessor for InkFunction(0);
  v6 = (v2 + *(result + 24));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t InkFunction.maxOutput.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for InkFunction(0);
  v8 = v3 + *(result + 28);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t InkFunction.maxInput.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for InkFunction(0);
  v8 = v3 + *(result + 32);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t InkFunction.controls.getter()
{
  type metadata accessor for InkFunction(0);
}

void InkFunction.controls.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InkFunction(0) + 36);

  *(v1 + v3) = a1;
}

uint64_t InkFunction.excludeInputWith.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for InkFunction(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t InkFunction.excludeInputWith.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for InkFunction(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t InkFunction.math.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InkFunction(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t InkFunction.math.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for InkFunction(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t InkFunction.disabled.setter(char a1)
{
  result = type metadata accessor for InkFunction(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

double InkFunction.init()@<D0>(uint64_t a2@<X8>)
{
  UUID.init()();
  v3 = type metadata accessor for InkFunction(0);
  *(a2 + v3[5]) = 3;
  result = 0.0;
  *(a2 + v3[6]) = xmmword_1C8019980;
  v5 = a2 + v3[7];
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  v6 = a2 + v3[8];
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  *(a2 + v3[9]) = &outlined read-only object #0 of InkFunction.init();
  *(a2 + v3[10]) = 0;
  *(a2 + v3[11]) = 0;
  *(a2 + v3[12]) = 0;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance InkFunction.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized InkFunction.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance InkFunction.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7475706E69;
  v5 = 0xE400000000000000;
  v6 = 1752457581;
  v7 = 0xE800000000000000;
  if (v2 != 6)
  {
    v6 = 0x64656C6261736964;
    v5 = 0xE800000000000000;
  }

  v8 = 0x736C6F72746E6F63;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001C801FF90;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000074;
  v10 = 0x757074754F78616DLL;
  if (v2 != 2)
  {
    v10 = 0x7475706E4978616DLL;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x74757074756FLL;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance InkFunction.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized InkFunction.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InkFunction.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type InkFunction.CodingKeys and conformance InkFunction.CodingKeys(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InkFunction.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type InkFunction.CodingKeys and conformance InkFunction.CodingKeys(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t InkFunction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9PencilKit11InkFunctionV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy9PencilKit11InkFunctionV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InkFunction.CodingKeys and conformance InkFunction.CodingKeys(v9, v10, v11);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = type metadata accessor for InkFunction(0);
  LOBYTE(v23) = *(v3 + v12[5]);
  v25 = 0;
  lazy protocol witness table accessor for type InkFunction.Input and conformance InkFunction.Input(v12, v13, v14);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v23 = *(v3 + v12[6]);
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy12CoreGraphics7CGFloatVGMd, &_sSNy12CoreGraphics7CGFloatVGMR);
    lazy protocol witness table accessor for type ClosedRange<CGFloat> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<CGFloat> and conformance <> ClosedRange<A>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E5F98]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = (v3 + v12[7]);
    v16 = *(v15 + 16);
    v23 = *v15;
    v24 = v16;
    v25 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = (v3 + v12[8]);
    v18 = *(v17 + 16);
    v23 = *v17;
    v24 = v18;
    v25 = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v23 = *(v3 + v12[9]);
    v25 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7CGPointVGMd, &_sSaySo7CGPointVGMR);
    lazy protocol witness table accessor for type [CGPoint] and conformance <A> [A](&lazy protocol witness table cache variable for type [CGPoint] and conformance <A> [A], &lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, MEMORY[0x1E695EFA8], MEMORY[0x1E69E6300]);
    v19 = KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v23 = *(v3 + v12[10]);
    v25 = 5;
    lazy protocol witness table accessor for type InkFunction.InputProperties and conformance InkFunction.InputProperties(v19, v20, v21);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = *(v3 + v12[11]);
    v25 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit16DecodableDefaultVyAA11InkFunctionV4MathOGMd, &_s9PencilKit16DecodableDefaultVyAA11InkFunctionV4MathOGMR);
    lazy protocol witness table accessor for type DecodableDefault<Bool> and conformance DecodableDefault<A>(&lazy protocol witness table cache variable for type DecodableDefault<InkFunction.Math> and conformance DecodableDefault<A>, &_s9PencilKit16DecodableDefaultVyAA11InkFunctionV4MathOGMd, &_s9PencilKit16DecodableDefaultVyAA11InkFunctionV4MathOGMR, &protocol conformance descriptor for DecodableDefault<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = *(v3 + v12[12]);
    v25 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit16DecodableDefaultVySbGMd, &_s9PencilKit16DecodableDefaultVySbGMR);
    lazy protocol witness table accessor for type DecodableDefault<Bool> and conformance DecodableDefault<A>(&lazy protocol witness table cache variable for type DecodableDefault<Bool> and conformance DecodableDefault<A>, &_s9PencilKit16DecodableDefaultVySbGMd, &_s9PencilKit16DecodableDefaultVySbGMR, &protocol conformance descriptor for DecodableDefault<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t lazy protocol witness table accessor for type ClosedRange<CGFloat> and conformance <> ClosedRange<A>(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNy12CoreGraphics7CGFloatVGMd, &_sSNy12CoreGraphics7CGFloatVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance InkFunction@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InkBehavior.InkProperty.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x737569646172;
  v3 = 0x7974696361706FLL;
  v4 = 0x32737569646172;
  if (v1 != 3)
  {
    v4 = 0x6C6F687365726874;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6874756D697A61;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InkBehavior.InkProperty()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance InkBehavior.InkProperty(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance InkBehavior.InkProperty(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737569646172;
  v5 = 0xE700000000000000;
  v6 = 0x7974696361706FLL;
  v7 = 0xE700000000000000;
  v8 = 0x32737569646172;
  if (v2 != 3)
  {
    v8 = 0x6C6F687365726874;
    v7 = 0xE900000000000064;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6874756D697A61;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKeyRepresentable.codingKey.getter in conformance InkBehavior.InkProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = lazy protocol witness table accessor for type InkBehavior.InkProperty and conformance InkBehavior.InkProperty(a1, a2, a3);

  return MEMORY[0x1EEE693C8](a1, a2, v5);
}

double InkSmoothing.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.12;
  *a1 = xmmword_1C8019990;
  *(a1 + 16) = xmmword_1C80199A0;
  *(a1 + 32) = 0;
  return result;
}

double InkBehavior.smoothing.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v3;
  *(a1 + 32) = result;
  return result;
}

double InkBehavior.smoothing.setter(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 40) = result;
  return result;
}

__n128 InkBehavior.inkTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v2;
  result = *(v1 + 80);
  *(a1 + 32) = result;
  return result;
}

__n128 InkBehavior.inkTransform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v2;
  result = *(a1 + 32);
  *(v1 + 80) = result;
  return result;
}

__n128 InkBehavior.feathering.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *(a1 + 32) = *(v1 + 128);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 160);
  result = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 16) = result;
  return result;
}

__n128 InkBehavior.feathering.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 128) = *(a1 + 32);
  *(v1 + 144) = v2;
  *(v1 + 160) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 96) = *a1;
  *(v1 + 112) = result;
  return result;
}

__n128 InkBehavior.pencilFeathering.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 184);
  v3 = *(v1 + 216);
  *(a1 + 32) = *(v1 + 200);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 232);
  *a1 = *(v1 + 168);
  *(a1 + 16) = result;
  return result;
}

__n128 InkBehavior.pencilFeathering.setter(__int128 *a1)
{
  v2 = *a1;
  *(v1 + 184) = a1[1];
  result = a1[2];
  v4 = a1[3];
  *(v1 + 200) = result;
  *(v1 + 216) = v4;
  *(v1 + 232) = *(a1 + 64);
  *(v1 + 168) = v2;
  return result;
}

__n128 InkBehavior.animationDescriptor.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[16].n128_u8[0];
  result = v1[15];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 InkBehavior.animationDescriptor.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[15] = *a1;
  v1[16].n128_u8[0] = v2;
  return result;
}

double InkBehavior.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9PencilKit11InkBehaviorV0E8PropertyO_SayAC0E8FunctionVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a1 + 8) = xmmword_1C8019990;
  *(a1 + 24) = xmmword_1C80199A0;
  *(a1 + 40) = xmmword_1C8019980;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0x3FF0000000000000;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 1;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 232) = 1;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance InkBehavior.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized InkBehavior.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InkBehavior.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type InkBehavior.CodingKeys and conformance InkBehavior.CodingKeys(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InkBehavior.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type InkBehavior.CodingKeys and conformance InkBehavior.CodingKeys(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t InkBehavior.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9PencilKit11InkBehaviorV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMd, &_ss22KeyedEncodingContainerVy9PencilKit11InkBehaviorV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - v5;
  v7 = *v1;
  v41 = *(v1 + 3);
  v42 = *(v1 + 1);
  v8 = v1[5];
  v9 = *(v1 + 3);
  v37 = *(v1 + 4);
  v38 = v9;
  v10 = v1[10];
  v11 = v1[11];
  v12 = *(v1 + 9);
  v52 = *(v1 + 8);
  v53 = v12;
  v54 = *(v1 + 160);
  v13 = *(v1 + 7);
  v50 = *(v1 + 6);
  v51 = v13;
  v14 = *(v1 + 23);
  v15 = *(v1 + 27);
  v57 = *(v1 + 25);
  v58 = v15;
  v59 = *(v1 + 232);
  v55 = *(v1 + 21);
  v56 = v14;
  v16 = v1[31];
  v40 = v1[30];
  v39 = v16;
  v36 = *(v1 + 256);
  v17 = *(v1 + 257);
  v18 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InkBehavior.CodingKeys and conformance InkBehavior.CodingKeys(v18, v19, v20);

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v44 = v7;
  v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy9PencilKit11InkBehaviorV0C8PropertyOSayAA0C8FunctionVGGMd, &_sSDy9PencilKit11InkBehaviorV0C8PropertyOSayAA0C8FunctionVGGMR);
  lazy protocol witness table accessor for type [InkBehavior.InkProperty : [InkFunction]] and conformance <> [A : B]();
  v21 = v6;
  v22 = v43;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v22)
  {

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v24 = v39;
    v25 = v40;
    LODWORD(v43) = v17;

    v45 = v41;
    v44 = v42;
    *&v46 = v8;
    v49 = 1;
    lazy protocol witness table accessor for type InkSmoothing and conformance InkSmoothing(v26, v27, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v45 = v37;
    v44 = v38;
    *&v46 = v10;
    *(&v46 + 1) = v11;
    v49 = 2;
    type metadata accessor for CGAffineTransform(0);
    lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, type metadata accessor for CGAffineTransform, MEMORY[0x1E695EF50]);
    v29 = KeyedEncodingContainer.encode<A>(_:forKey:)();
    v46 = v52;
    v47 = v53;
    v48 = v54;
    v45 = v51;
    v44 = v50;
    v49 = 3;
    lazy protocol witness table accessor for type InkFeathering and conformance InkFeathering(v29, v30, v31);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v46 = v57;
    v47 = v58;
    v48 = v59;
    v45 = v56;
    v44 = v55;
    v49 = 4;
    v32 = KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v44 = v25;
    *(&v44 + 1) = v24;
    LOBYTE(v45) = v36;
    v49 = 5;
    lazy protocol witness table accessor for type InkAnimationDescriptor and conformance InkAnimationDescriptor(v32, v33, v34);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v44) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    return (*(v4 + 8))(v21, 0);
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance InkSmoothing.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized InkSmoothing.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InkSmoothing.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type InkSmoothing.CodingKeys and conformance InkSmoothing.CodingKeys(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InkSmoothing.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type InkSmoothing.CodingKeys and conformance InkSmoothing.CodingKeys(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t InkSmoothing.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9PencilKit12InkSmoothingV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMd, &_ss22KeyedEncodingContainerVy9PencilKit12InkSmoothingV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  v12 = v1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InkSmoothing.CodingKeys and conformance InkSmoothing.CodingKeys(v13, v14, v15);
  v16 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = v9;
  v21 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat(v16, v17, v18);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v22 = v8;
    v21 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v11;
    v21 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v10;
    v21 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v12;
    v21 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void protocol witness for CodingKey.init(stringValue:) in conformance InkAnimationDescriptor.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746C6544657A6973 && a2 == 0xE900000000000061)
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

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InkAnimationDescriptor.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type InkAnimationDescriptor.CodingKeys and conformance InkAnimationDescriptor.CodingKeys(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InkAnimationDescriptor.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type InkAnimationDescriptor.CodingKeys and conformance InkAnimationDescriptor.CodingKeys(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t InkAnimationDescriptor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9PencilKit22InkAnimationDescriptorV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMd, &_ss22KeyedEncodingContainerVy9PencilKit22InkAnimationDescriptorV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-v6];
  v8 = *(v1 + 8);
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InkAnimationDescriptor.CodingKeys and conformance InkAnimationDescriptor.CodingKeys(v9, v10, v11);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  v12 = KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v17 = v8;
    v16[15] = 1;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat(v12, v13, v14);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t InkFeathering.EndCap.encode(to:)(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9PencilKit13InkFeatheringV6EndCapV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMd, &_ss22KeyedEncodingContainerVy9PencilKit13InkFeatheringV6EndCapV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InkFeathering.EndCap.CodingKeys and conformance InkFeathering.EndCap.CodingKeys(v14, v15, v16);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v23) = 0;
  v17 = KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v23 = a3;
    v22 = 1;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat(v17, v18, v19);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = a4;
    v22 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = a5;
    v22 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance InkFeathering.EndCap.CodingKeys()
{
  v1 = 0x6E6F697461727564;
  v2 = 0x447974696361706FLL;
  if (*v0 != 2)
  {
    v2 = 0x6544737569646172;
  }

  if (*v0)
  {
    v1 = 0x65636E6174736964;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance InkFeathering.EndCap.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized InkFeathering.EndCap.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InkFeathering.EndCap.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type InkFeathering.EndCap.CodingKeys and conformance InkFeathering.EndCap.CodingKeys(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InkFeathering.EndCap.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type InkFeathering.EndCap.CodingKeys and conformance InkFeathering.EndCap.CodingKeys(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void protocol witness for Decodable.init(from:) in conformance InkFeathering.EndCap(double *a1@<X8>, void *a2@<X0>)
{
  v4 = specialized InkFeathering.EndCap.init(from:)(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
    *(a1 + 2) = v6;
    *(a1 + 3) = v7;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance InkFeathering.CodingKeys()
{
  if (*v0)
  {
    return 0x706143646E65;
  }

  else
  {
    return 0x7061437472617473;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance InkFeathering.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7061437472617473 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x706143646E65 && a2 == 0xE600000000000000)
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

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InkFeathering.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type InkFeathering.CodingKeys and conformance InkFeathering.CodingKeys(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InkFeathering.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type InkFeathering.CodingKeys and conformance InkFeathering.CodingKeys(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t InkFeathering.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9PencilKit13InkFeatheringV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMd, &_ss22KeyedEncodingContainerVy9PencilKit13InkFeatheringV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = v3[2];
  v18 = v3[3];
  v19 = v9;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InkFeathering.CodingKeys and conformance InkFeathering.CodingKeys(v10, v11, v12);
  v13 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v3[1];
  v21 = *v3;
  v22 = v14;
  v20 = 0;
  lazy protocol witness table accessor for type InkFeathering.EndCap and conformance InkFeathering.EndCap(v13, v15, v16);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v21 = v19;
    v22 = v18;
    v20 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t InkFeathering.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9PencilKit13InkFeatheringV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMd, &_ss22KeyedDecodingContainerVy9PencilKit13InkFeatheringV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InkFeathering.CodingKeys and conformance InkFeathering.CodingKeys(v9, v10, v11);
  v12 = dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v22 = 0;
    lazy protocol witness table accessor for type InkFeathering.EndCap and conformance InkFeathering.EndCap(v12, v13, v14);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v20;
    v19 = v21;
    v22 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v15 = v19;
    *a2 = v18;
    a2[1] = v15;
    v16 = v21;
    a2[2] = v20;
    a2[3] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

id InkDescriptorParticles.objc(textureLoader:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v11 = *(v1 + 56);
  v10 = *(v1 + 64);
  v12 = *(v1 + 72);
  v13 = *(v1 + 80);
  v14 = *(v1 + 88);
  v24 = *(v1 + 104);
  v25 = *(v1 + 96);
  v15 = *(v1 + 105);
  v16 = *(v1 + 106);
  v17 = a1(*v1, v3);
  if (v9)
  {
    v18 = a1(v8, v9);
  }

  else
  {
    v18 = 0;
  }

  v19 = MEMORY[0x1CCA6CE70](v4, v3);
  if (v9)
  {
    v20 = MEMORY[0x1CCA6CE70](v8, v9);
  }

  else
  {
    v14 = 0;
    v20 = 0;
    v10 = 0.0;
    v11 = 1.0;
    v12 = 0.0;
    v13 = 1.0;
  }

  BYTE2(v23) = 0;
  BYTE1(v23) = v14 & 1;
  LOBYTE(v23) = v15;
  v21 = [objc_allocWithZone(PKInkParticleDescriptor) initWithTextureName:v19 textureImage:v17 maskTextureName:v20 maskTextureImage:v18 particleSpacing:v25 particleCount:v24 particleSize:v6 particleRotation:v5 maskScale:v7 maskScaleConstant:v11 maskMovement:v10 maskDepth:v12 initialRandomRotation:v13 maskInitialRandomOffset:v23 adjustEndCapParticleAlpha:v16 particleBlendMode:?];

  return v21;
}

void InkDescriptor.objc(variant:textureLoader:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v83 = a3;
  v84 = a4;
  v96 = a1;
  v97 = a2;
  v5 = v4 + 39;
  v6 = type metadata accessor for InkFunction(0);
  v98 = *(v6 - 8);
  v99 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v4;
  v90 = v4[1];
  v91 = v9;
  v10 = *(v4 + 7);
  v127 = *(v4 + 6);
  v128 = v10;
  v11 = *(v4 + 11);
  v131 = *(v4 + 10);
  v132 = v11;
  v12 = *(v4 + 9);
  v129 = *(v4 + 8);
  v130 = v12;
  *(v136 + 15) = *(v4 + 255);
  v13 = *(v4 + 15);
  v135 = *(v4 + 14);
  v136[0] = v13;
  v14 = *(v4 + 13);
  v133 = *(v4 + 12);
  v134 = v14;
  v15 = *(v4 + 5);
  v125 = *(v4 + 4);
  v126 = v15;
  v16 = *(v4 + 3);
  v123 = *(v4 + 2);
  v124 = v16;
  v17 = v4[33];
  v18 = *(v4 + 34);
  v19 = *(v4 + 35);
  v20 = *(v4 + 36);
  v21 = *(v4 + 37);
  v22 = *(v4 + 38);
  v23 = *(v4 + 39);
  v94 = *(v4 + 41);
  v95 = v23;
  *&v16 = v4[43];
  v92 = v4[44];
  v93 = v16;
  *&v16 = v4[45];
  v69 = v4[46];
  *&v70 = v16;
  *&v16 = v4[47];
  v67 = v4[48];
  *&v68 = v16;
  v24 = *(v4 + 49);
  v25 = *(v4 + 50);
  v26 = *(v4 + 51);
  v66 = v4[52];
  LODWORD(v9) = *(v4 + 424);
  *&v16 = v4[54];
  v77 = v4[55];
  *&v78 = v16;
  *&v16 = v4[56];
  v75 = v4[57];
  *&v76 = v16;
  *&v16 = v4[58];
  v73 = v4[59];
  *&v74 = v16;
  *&v16 = v4[60];
  v71 = v4[61];
  *&v72 = v16;
  LODWORD(v7) = *(v4 + 496);
  v81 = v9;
  v82 = v7;
  *&v16 = v4[63];
  v79 = v4[64];
  *&v80 = v16;
  v85 = *(v4 + 520);
  v27 = *(v4 + 521);
  v28 = 1 << *(v17 + 32);
  v29 = -1;
  v86 = v4[66];
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v89 = v4[67];
  v30 = v17 + 64;
  v31 = v29 & *(v17 + 64);
  v32 = (v28 + 63) >> 6;
  v87 = *(v5 + 232);
  v88 = v27;
  v102 = v17;

  v33 = 0;
  v34 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  v100 = v32;
  v101 = v30;
  while (v31)
  {
    v105 = v35;
LABEL_12:
    v37 = __clz(__rbit64(v31)) | (v33 << 6);
    v38 = v102[7];
    v106 = *(v102[6] + v37);
    v39 = *(v38 + 8 * v37);
    *&v121[0] = v34;
    v40 = v39[2];
    v103 = v39;
    v104 = v31;
    if (v40)
    {
      v41 = v98;
      v42 = *(v99 + 48);
      v43 = v39 + ((*(v98 + 80) + 32) & ~*(v98 + 80));

      v44 = *(v41 + 72);
      do
      {
        outlined init with copy of InkFunction(v43, v8);
        if (v8[v42])
        {
          outlined destroy of InkFunction(v8);
        }

        else
        {
          InkFunction.objc(property:)(qword_1C801B898[v106]);
          v45 = outlined destroy of InkFunction(v8);
          MEMORY[0x1CCA6CF60](v45);
          if (*((*&v121[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v121[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v34 = *&v121[0];
        }

        v43 += v44;
        --v40;
      }

      while (v40);
    }

    else
    {
    }

    v31 = (v104 - 1) & v104;
    *&v121[0] = v105;

    specialized Array.append<A>(contentsOf:)(v34);

    v35 = *&v121[0];
    v32 = v100;
    v30 = v101;
    v34 = MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v36 >= v32)
    {

      v119 = v135;
      v120[0] = v136[0];
      *(v120 + 15) = *(v136 + 15);
      v115 = v131;
      v116 = v132;
      v117 = v133;
      v118 = v134;
      v111 = v127;
      v112 = v128;
      v113 = v129;
      v114 = v130;
      v107 = v123;
      v108 = v124;
      v109 = v125;
      v110 = v126;
      outlined init with copy of InkRendering(&v123, v121);
      v106 = InkRendering.objc(textureLoader:)(v83);
      v121[12] = v119;
      v122[0] = v120[0];
      *(v122 + 15) = *(v120 + 15);
      v121[8] = v115;
      v121[9] = v116;
      v121[10] = v117;
      v121[11] = v118;
      v121[4] = v111;
      v121[5] = v112;
      v121[6] = v113;
      v121[7] = v114;
      v121[0] = v107;
      v121[1] = v108;
      v121[2] = v109;
      v121[3] = v110;
      outlined destroy of InkRendering(v121);
      v105 = [objc_allocWithZone(PKInkSmoothingDescriptor) initWithStylusSmoothing:v18 touch:v19 velocity:v20 angle:v21 radius:v22];
      if (v81)
      {
        v104 = 0;
        if ((v82 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_25:
        v103 = 0;
        if (v85)
        {
          goto LABEL_26;
        }

LABEL_23:
        v47 = objc_allocWithZone(PKInkAnimationDescriptor);
        v48 = [v47 initWithDuration:v80 sizeDelta:*&v79];
      }

      else
      {
        v49 = objc_allocWithZone(PKInkFeatheringDescriptor);
        v104 = [v49 initWithStartCapTime:v70 startCapDistance:*&v69 startCapFade:v68 startCapShrink:*&v67 endCapTime:v24 endCapDistance:v25 endCapFade:v26 endCapShrink:*&v66];
        if (v82)
        {
          goto LABEL_25;
        }

LABEL_22:
        v46 = objc_allocWithZone(PKInkFeatheringDescriptor);
        v103 = [v46 initWithStartCapTime:v78 startCapDistance:*&v77 startCapFade:v76 startCapShrink:*&v75 endCapTime:v74 endCapDistance:*&v73 endCapFade:v72 endCapShrink:*&v71];
        if ((v85 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_26:
        v48 = 0;
      }

      specialized _arrayForceCast<A, B>(_:)(v86);
      v50 = objc_allocWithZone(PKInkBehavior);
      v51 = MEMORY[0x1CCA6CE70](v91, v90);
      v52 = MEMORY[0x1CCA6CE70](v96, v97);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      isa = Array._bridgeToObjectiveC()().super.isa;

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for PKInkFunction, off_1E82D42C8);
      v54 = Array._bridgeToObjectiveC()().super.isa;
      v102 = v54;

      v107 = v95;
      v108 = v94;
      *&v109 = v93;
      *(&v109 + 1) = v92;
      v65 = v54;
      BYTE2(v64) = v88;
      LOWORD(v64) = v87;
      v63 = isa;
      v55 = isa;
      v62 = v48;
      v56 = v50;
      v57 = v106;
      v58 = v48;
      v60 = v104;
      v59 = v105;
      v61 = v103;
      [v56 initWithRenderingDescriptor:v106 blendAlpha:&v107 targetMultiple:1 baseAlpha:v105 inkTransform:v104 useUnclampedWeight:v103 smoothingDescriptor:1.0 featheringDescriptor:0.0 pencilFeatheringDescriptor:1.0 animationDescriptor:*&v89 identifier:0.0 version:0.0 variant:v62 uiWidths:v51 defaultWidth:3 uiAzimuthControl:v52 showBrushIndicator:v63 supportsCombiningStrokes:v64 rulerOffsetScale:0 rulerOffsetConstant:v65 weightFunction:? inkFunctions:?];

      return;
    }

    v31 = *(v30 + 8 * v36);
    ++v33;
    if (v31)
    {
      v105 = v35;
      v33 = v36;
      goto LABEL_12;
    }
  }

  __break(1u);
}

id InkRendering.objc(textureLoader:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *v1;
  v4 = *(v1 + 2);
  v5 = *(v1 + 15);
  v6 = *(v1 + 16);
  if (!v4)
  {
    v8 = 0;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  *(&v13 + 1) = *(v1 + 2);
  v19 = *(v1 + 56);
  v21 = *(v1 + 72);
  *v23 = *(v1 + 88);
  v7 = *v23;
  *&v23[11] = *(v1 + 99);
  v15 = *(v1 + 24);
  v17 = *(v1 + 40);
  v25 = *(v1 + 1);
  *&v13 = v25;
  v26 = v4;
  v27 = v15;
  v28 = v17;
  *(v31 + 11) = *&v23[11];
  v30 = v21;
  v31[0] = v7;
  v29 = v19;
  outlined init with copy of InkDescriptorParticles(&v25, &v32);
  v8 = InkDescriptorParticles.objc(textureLoader:)(a1);
  v36 = v21;
  v37[0] = *v23;
  *(v37 + 11) = *&v23[11];
  v32 = v13;
  v33 = v15;
  v34 = v17;
  v35 = v19;
  outlined destroy of InkDescriptorParticles(&v32);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  *&v14 = v5;
  *(&v14 + 1) = v6;
  v20 = *(v1 + 168);
  v22 = *(v1 + 184);
  *v24 = *(v1 + 200);
  v9 = *v24;
  *&v24[11] = *(v1 + 211);
  v16 = *(v1 + 136);
  v18 = *(v1 + 152);
  v25 = v5;
  v26 = v6;
  v27 = v16;
  v28 = v18;
  *(v31 + 11) = *&v24[11];
  v30 = v22;
  v31[0] = v9;
  v29 = v20;
  outlined init with copy of InkDescriptorParticles(&v25, &v32);
  v10 = InkDescriptorParticles.objc(textureLoader:)(a1);
  v36 = v22;
  v37[0] = *v24;
  *(v37 + 11) = *&v24[11];
  v32 = v14;
  v33 = v16;
  v34 = v18;
  v35 = v20;
  outlined destroy of InkDescriptorParticles(&v32);
LABEL_6:
  v11 = [objc_allocWithZone(PKInkRenderingDescriptor) initWithType:v4 != 0 blendMode:v3 alternateMode:0 particleDescriptor:v8 secondaryParticleDescriptor:v10];

  return v11;
}

id InkDescriptor.ink(color:width:textureLoader:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, double a4)
{
  InkDescriptor.objc(variant:textureLoader:)(0x746C7561666564, 0xE700000000000000, a2, a3);
  v7 = v6;
  v8 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  v9 = objc_allocWithZone(PKInk);
  v10 = MEMORY[0x1CCA6CE70](0x746C7561666564, 0xE700000000000000);
  v11 = [v9 initWithBehavior:v7 color:v8 version:3 variant:v10 weight:a4 azimuth:0.0];

  return v11;
}

id InkDescriptor.ink(color:width:azimuth:textureLoader:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, double a4, double a5)
{
  InkDescriptor.objc(variant:textureLoader:)(0x746C7561666564, 0xE700000000000000, a2, a3);
  v9 = v8;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  v11 = objc_allocWithZone(PKInk);
  v12 = MEMORY[0x1CCA6CE70](0x746C7561666564, 0xE700000000000000);
  v13 = [v11 initWithBehavior:v9 color:v10 version:3 variant:v12 weight:a4 azimuth:a5];

  return v13;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCyySaySo18PKDataDetectorItemCGcGMd, &_ss23_ContiguousArrayStorageCyySaySo18PKDataDetectorItemCGcGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCyySaySo18PKProofreadingItemCGcGMd, &_ss23_ContiguousArrayStorageCyySaySo18PKProofreadingItemCGcGMR);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9PencilKit13PKStrokePointVGMd, &_ss23_ContiguousArrayStorageCy9PencilKit13PKStrokePointVGMR, &type metadata for PKStrokePoint);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9PencilKit8PKStrokeVGMd, &_ss23_ContiguousArrayStorageCy9PencilKit8PKStrokeVGMR, &type metadata for PKStroke);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay12CoreGraphics7CGFloatV_SitGGMd, &_ss23_ContiguousArrayStorageCySay12CoreGraphics7CGFloatV_SitGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12CoreGraphics7CGFloatV_SitGMd, &_sSay12CoreGraphics7CGFloatV_SitGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PencilKit28PKLongPressGestureRecognizerC0G13StartLocationVGMd, &_ss23_ContiguousArrayStorageCy9PencilKit28PKLongPressGestureRecognizerC0G13StartLocationVGMR);
  v10 = *(type metadata accessor for PKLongPressGestureRecognizer.PressStartLocation(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PKLongPressGestureRecognizer.PressStartLocation(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 3);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[8 * v11])
    {
      memmove(v16, v17, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9PencilKit13PKStrokePointV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PencilKit13PKStrokePointVGMd, &_ss23_ContiguousArrayStorageCy9PencilKit13PKStrokePointVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9PencilKit13PKRefineMorphV5MatchV0L2ToV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PencilKit13PKRefineMorphV5MatchV0H2ToVGMd, &_ss23_ContiguousArrayStorageCy9PencilKit13PKRefineMorphV5MatchV0H2ToVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1CCA6D280](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t specialized Slice._copyContents(initializing:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, id a6)
{
  if (!a2)
  {
LABEL_14:
    v10 = 0;
LABEL_15:
    v19 = a4;
LABEL_18:
    *a1 = a4;
    a1[1] = a5;
    a1[2] = a6;
    a1[3] = v19;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v21 = a5 - a4;
    v12 = a4 - a5;
    v13 = 1;
    while (1)
    {
      if (v12 + v13 == 1)
      {
        v19 = a5;
        v10 = v21;
        goto LABEL_18;
      }

      v14 = a4 + v13 - 1;
      if (v14 >= a5)
      {
        break;
      }

      v15 = [a6 objectAtIndexedSubscript_];
      if (!v15)
      {
        goto LABEL_22;
      }

      v16 = v15;
      v17 = [a6 count];
      if (a4 < 0 || v14 >= v17)
      {
        goto LABEL_20;
      }

      *v11 = v16;
      if (v10 == v13)
      {
        v19 = a4 + v13;
        goto LABEL_18;
      }

      ++v11;
      if (__OFADD__(v13++, 1))
      {
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
LABEL_22:
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "PencilKit/PKStrokePoint.swift", 29, 2, 92, 0);
  __break(1u);
  return result;
}

void (*specialized Slice.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5))(id *a1)
{
  if (a2 < a3 || a2 >= a4)
  {
    __break(1u);
  }

  else
  {
    v6 = [a5 objectAtIndexedSubscript_];
    if (v6)
    {
      *a1 = v6;
      return Slice.subscript.readspecialized ;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "PencilKit/PKStrokePoint.swift", 29, 2, 92, 0);
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type InkFeathering.CodingKeys and conformance InkFeathering.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type InkFeathering.CodingKeys and conformance InkFeathering.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkFeathering.CodingKeys and conformance InkFeathering.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFeathering.CodingKeys and conformance InkFeathering.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFeathering.CodingKeys and conformance InkFeathering.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkFeathering.CodingKeys and conformance InkFeathering.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFeathering.CodingKeys and conformance InkFeathering.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFeathering.CodingKeys and conformance InkFeathering.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkFeathering.CodingKeys and conformance InkFeathering.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFeathering.CodingKeys and conformance InkFeathering.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFeathering.CodingKeys and conformance InkFeathering.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkFeathering.CodingKeys and conformance InkFeathering.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFeathering.CodingKeys and conformance InkFeathering.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InkFeathering.EndCap and conformance InkFeathering.EndCap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type InkFeathering.EndCap and conformance InkFeathering.EndCap;
  if (!lazy protocol witness table cache variable for type InkFeathering.EndCap and conformance InkFeathering.EndCap)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFeathering.EndCap and conformance InkFeathering.EndCap);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFeathering.EndCap and conformance InkFeathering.EndCap;
  if (!lazy protocol witness table cache variable for type InkFeathering.EndCap and conformance InkFeathering.EndCap)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFeathering.EndCap and conformance InkFeathering.EndCap);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InkDescriptor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 545))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for InkDescriptor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 536) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 520) = 0u;
    *(result + 544) = 0;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 545) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 545) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy227_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 223) = *(a2 + 223);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InkRendering(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 227))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for InkRendering(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 226) = 0;
    *(result + 224) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 227) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 227) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy107_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 91) = *(a2 + 91);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DecodableDefault(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InkMask(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for InkFunction.Input(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InkFunction.InputProperties(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InkFunction.InputProperties(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for InkBehavior(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 258))
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

uint64_t storeEnumTagSinglePayload for InkBehavior(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 256) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 258) = 1;
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

    *(result + 258) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InkSmoothing(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InkSmoothing(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for InkFeathering(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t specialized InkDescriptor.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E697265646E6572 && a2 == 0xE900000000000067 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F697661686562 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7368746469576975 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x57746C7561666564 && a2 == 0xEC00000068746469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C8020D10 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t specialized InkRendering.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F4D646E656C62 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C636974726170 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C8020D30 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized InkDescriptorParticles.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E65727574786574 && a2 == 0xEB00000000656D61;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6963617073 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1802723693 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C636974726170 && a2 == 0xED0000746E756F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C8020D50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C8020D70 == a2)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

double specialized InkFeathering.EndCap.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9PencilKit13InkFeatheringV6EndCapV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMd, &_ss22KeyedDecodingContainerVy9PencilKit13InkFeatheringV6EndCapV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InkFeathering.EndCap.CodingKeys and conformance InkFeathering.EndCap.CodingKeys(v6, v7, v8);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  HIBYTE(v15) = 1;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat(v9, v12, v13);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  HIBYTE(v15) = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  HIBYTE(v15) = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

uint64_t specialized InkMask.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E65727574786574 && a2 == 0xEB00000000656D61;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F43656C616373 && a2 == 0xED0000746E617473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E656D65766F6DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6874706564 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C8020D90 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t specialized InkFunction.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InkFunction.CodingKeys.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized InkBehavior.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F6974636E7566 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6968746F6F6D73 && a2 == 0xE900000000000067 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6172546B6E69 && a2 == 0xEC0000006D726F66 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6972656874616566 && a2 == 0xEA0000000000676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C8020DB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C8020DD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001C8020DF0 == a2)
  {

    return 6;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t specialized InkSmoothing.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73756C797473 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6863756F74 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469636F6C6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t lazy protocol witness table accessor for type InkFeathering.EndCap.CodingKeys and conformance InkFeathering.EndCap.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type InkFeathering.EndCap.CodingKeys and conformance InkFeathering.EndCap.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkFeathering.EndCap.CodingKeys and conformance InkFeathering.EndCap.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFeathering.EndCap.CodingKeys and conformance InkFeathering.EndCap.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFeathering.EndCap.CodingKeys and conformance InkFeathering.EndCap.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkFeathering.EndCap.CodingKeys and conformance InkFeathering.EndCap.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFeathering.EndCap.CodingKeys and conformance InkFeathering.EndCap.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFeathering.EndCap.CodingKeys and conformance InkFeathering.EndCap.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkFeathering.EndCap.CodingKeys and conformance InkFeathering.EndCap.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFeathering.EndCap.CodingKeys and conformance InkFeathering.EndCap.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFeathering.EndCap.CodingKeys and conformance InkFeathering.EndCap.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkFeathering.EndCap.CodingKeys and conformance InkFeathering.EndCap.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFeathering.EndCap.CodingKeys and conformance InkFeathering.EndCap.CodingKeys);
  }

  return result;
}

uint64_t specialized InkFeathering.EndCap.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x447974696361706FLL && a2 == 0xEC00000061746C65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6544737569646172 && a2 == 0xEB0000000061746CLL)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t getEnumTagSinglePayload for InkFeathering.EndCap.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InkFeathering.EndCap.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t PKToolPicker.selectedTool.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 selectedTool];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v5 = &type metadata for PKInkingTool;
    v6 = &protocol witness table for PKInkingTool;
LABEL_11:
    a1[3] = v5;
    a1[4] = v6;
LABEL_12:
    *a1 = result;
    return result;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v5 = &type metadata for PKEraserTool;
    v6 = &protocol witness table for PKEraserTool;
    goto LABEL_11;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v5 = &type metadata for PKLassoTool;
    v6 = &protocol witness table for PKLassoTool;
    goto LABEL_11;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v5 = &type metadata for PKRulerTool;
    v6 = &protocol witness table for PKRulerTool;
    goto LABEL_11;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v5 = &type metadata for PKHandwritingTool;
    v6 = &protocol witness table for PKHandwritingTool;
    goto LABEL_11;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    a1[3] = &type metadata for PKCustomTool;
    a1[4] = &protocol witness table for PKCustomTool;
    a1[1] = 0;
    goto LABEL_12;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v5 = &type metadata for PKGenerationTool;
    v6 = &protocol witness table for PKGenerationTool;
    goto LABEL_11;
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x80000001C8020E50, "PencilKit/PKToolPicker.swift", 28, 2, 55, 0);
  __break(1u);
  return result;
}

void key path getter for PKToolPicker.selectedTool : PKToolPicker(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 selectedTool];
  PKToolPicker.toolFromToolReference(_:)(v3, a2);
}

uint64_t key path setter for PKToolPicker.selectedTool : PKToolPicker(uint64_t a1, void **a2)
{
  outlined init with copy of Decoder(a1, v6);
  v3 = *a2;
  v4 = specialized PKToolPicker.toolReferenceFromTool(_:)(v6);
  [v3 setSelectedTool_];

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t PKToolPicker.selectedTool.setter(void *a1)
{
  v3 = specialized PKToolPicker.toolReferenceFromTool(_:)(a1);
  [v1 setSelectedTool_];

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

id PKToolPicker.toolFromToolReference(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = &type metadata for PKInkingTool;
    v5 = &protocol witness table for PKInkingTool;
  }

  else
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = &type metadata for PKEraserTool;
      v5 = &protocol witness table for PKEraserTool;
    }

    else
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        v4 = &type metadata for PKLassoTool;
        v5 = &protocol witness table for PKLassoTool;
      }

      else
      {
        objc_opt_self();
        v3 = swift_dynamicCastObjCClass();
        if (v3)
        {
          v4 = &type metadata for PKRulerTool;
          v5 = &protocol witness table for PKRulerTool;
        }

        else
        {
          objc_opt_self();
          v3 = swift_dynamicCastObjCClass();
          if (v3)
          {
            v4 = &type metadata for PKHandwritingTool;
            v5 = &protocol witness table for PKHandwritingTool;
          }

          else
          {
            objc_opt_self();
            v3 = swift_dynamicCastObjCClass();
            if (v3)
            {
              a2[3] = &type metadata for PKCustomTool;
              a2[4] = &protocol witness table for PKCustomTool;
              a2[1] = 0;
              goto LABEL_12;
            }

            objc_opt_self();
            v3 = swift_dynamicCastObjCClass();
            if (!v3)
            {
              result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x80000001C8020E50, "PencilKit/PKToolPicker.swift", 28, 2, 55, 0);
              __break(1u);
              return result;
            }

            v4 = &type metadata for PKGenerationTool;
            v5 = &protocol witness table for PKGenerationTool;
          }
        }
      }
    }
  }

  a2[3] = v4;
  a2[4] = v5;
LABEL_12:
  *a2 = v3;

  return a1;
}

void (*PKToolPicker.selectedTool.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[10] = v1;
  v5 = [v1 selectedTool];
  PKToolPicker.toolFromToolReference(_:)(v5, v4);

  return PKToolPicker.selectedTool.modify;
}

void PKToolPicker.selectedTool.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    outlined init with copy of Decoder(*a1, (v2 + 5));
    v4 = specialized PKToolPicker.toolReferenceFromTool(_:)((v2 + 5));
    [v3 setSelectedTool_];

    __swift_destroy_boxed_opaque_existential_0(v2 + 5);
  }

  else
  {
    v5 = specialized PKToolPicker.toolReferenceFromTool(_:)(*a1);
    [v3 setSelectedTool_];
  }

  __swift_destroy_boxed_opaque_existential_0(v2);

  free(v2);
}

uint64_t PKToolPicker._tools.getter()
{
  v1 = [v0 _tools];
  type metadata accessor for PKTool();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_28:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_28;
  }

LABEL_3:
  v15 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v15;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCA6D280](v4, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
      }

      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v14 = &protocol witness table for PKInkingTool;
        v8 = &type metadata for PKInkingTool;
      }

      else
      {
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (v7)
        {
          v14 = &protocol witness table for PKEraserTool;
          v8 = &type metadata for PKEraserTool;
        }

        else
        {
          objc_opt_self();
          v7 = swift_dynamicCastObjCClass();
          if (v7)
          {
            v14 = &protocol witness table for PKLassoTool;
            v8 = &type metadata for PKLassoTool;
          }

          else
          {
            objc_opt_self();
            v7 = swift_dynamicCastObjCClass();
            if (v7)
            {
              v14 = &protocol witness table for PKRulerTool;
              v8 = &type metadata for PKRulerTool;
            }

            else
            {
              objc_opt_self();
              v7 = swift_dynamicCastObjCClass();
              if (v7)
              {
                v14 = &protocol witness table for PKHandwritingTool;
                v8 = &type metadata for PKHandwritingTool;
              }

              else
              {
                objc_opt_self();
                v7 = swift_dynamicCastObjCClass();
                if (v7)
                {
                  v13 = &type metadata for PKCustomTool;
                  v14 = &protocol witness table for PKCustomTool;
                  *(&v12 + 1) = 0;
                  goto LABEL_19;
                }

                objc_opt_self();
                v7 = swift_dynamicCastObjCClass();
                if (!v7)
                {
                  goto LABEL_31;
                }

                v14 = &protocol witness table for PKGenerationTool;
                v8 = &type metadata for PKGenerationTool;
              }
            }
          }
        }
      }

      v13 = v8;
LABEL_19:
      *&v12 = v7;
      v15 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v5 = v15;
      }

      ++v4;
      *(v5 + 16) = v10 + 1;
      outlined init with take of PKTool(&v12, v5 + 40 * v10 + 32);
      if (v3 == v4)
      {

        return v5;
      }
    }
  }

  __break(1u);
LABEL_31:
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x80000001C8020E50, "PencilKit/PKToolPicker.swift", 28, 2, 55, 0);
  __break(1u);
  return result;
}

void PKToolPicker._addTool(_:)(uint64_t a1)
{
  v2 = specialized PKToolPicker.toolReferenceFromTool(_:)(a1);
  [v1 _addTool_];
}

void PKToolPicker._insertTool(_:atIndex:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized PKToolPicker.toolReferenceFromTool(_:)(a1);
  [v2 _insertTool_atIndex_];
}

void PKToolPicker._removeTool(_:)(uint64_t a1)
{
  v2 = specialized PKToolPicker.toolReferenceFromTool(_:)(a1);
  [v1 _removeTool_];
}

uint64_t specialized PKToolPicker.toolReferenceFromTool(_:)(uint64_t a1)
{
  outlined init with copy of Decoder(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit6PKTool_pMd, &_s9PencilKit6PKTool_pMR);
  if (swift_dynamicCast())
  {
    return v3;
  }

  outlined init with copy of Decoder(a1, v5);
  if (swift_dynamicCast())
  {
    return v3;
  }

  outlined init with copy of Decoder(a1, v5);
  if (swift_dynamicCast())
  {
    return v3;
  }

  outlined init with copy of Decoder(a1, v5);
  if (swift_dynamicCast())
  {
    return v3;
  }

  outlined init with copy of Decoder(a1, v5);
  if (swift_dynamicCast())
  {
    return v3;
  }

  outlined init with copy of Decoder(a1, v5);
  if (swift_dynamicCast())
  {

    return v3;
  }

  outlined init with copy of Decoder(a1, v5);
  if (swift_dynamicCast())
  {
    return v3;
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x80000001C8020E50, "PencilKit/PKToolPicker.swift", 28, 2, 82, 0);
  __break(1u);
  return result;
}

unint64_t type metadata accessor for PKTool()
{
  result = lazy cache variable for type metadata for PKTool;
  if (!lazy cache variable for type metadata for PKTool)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PKTool);
  }

  return result;
}

uint64_t outlined init with take of PKTool(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t one-time initialization function for recognitionLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, recognitionLogger);
  __swift_project_value_buffer(v0, recognitionLogger);
  return Logger.init(subsystem:category:)();
}

Swift::Int RecognitionController.AutoRefineMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1CCA6D5B0](v1);
  return Hasher._finalize()();
}

uint64_t RecognitionController.__allocating_init(strokeProvider:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 152) = 0;
  *(v2 + 136) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 112) = a1;
  return v2;
}

uint64_t RecognitionController.init(strokeProvider:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 152) = 0;
  *(v1 + 136) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 112) = a1;
  return v1;
}

uint64_t RecognitionController.drawingBySnapping(strokes:inputScale:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](RecognitionController.drawingBySnapping(strokes:inputScale:), v3, 0);
}

uint64_t RecognitionController.drawingBySnapping(strokes:inputScale:)()
{
  v1 = *(v0 + 32);
  v2 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = [v2 _snapToShape_inputScale_];

  if (v4)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = objc_allocWithZone(PKDrawing);
    v6 = Array._bridgeToObjectiveC()().super.isa;

    v4 = [v5 initWithStrokes_];
  }

  **(v0 + 16) = v4;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t RecognitionController.supportsStraighteningForStrokes(_:)()
{
  v1 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3 = [(PKRecognitionController *)v1 supportsStraighteningForStrokes:?];

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t RecognitionController.drawingByStraighteningHandwriting(in:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return MEMORY[0x1EEE6DFA0](RecognitionController.drawingByStraighteningHandwriting(in:), v2, 0);
}

{
  v3 = v2[10];
  v5 = v2[7];
  v4 = v2[8];
  v6 = lazy protocol witness table accessor for type RecognitionController and conformance RecognitionController(&lazy protocol witness table cache variable for type RecognitionController and conformance RecognitionController, a2, type metadata accessor for RecognitionController, &protocol conformance descriptor for RecognitionController);
  v7 = swift_task_alloc();
  v2[11] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  v8 = swift_task_alloc();
  v2[12] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9PencilKit8PKStrokeVGSgMd, &_sSay9PencilKit8PKStrokeVGSgMR);
  *v8 = v2;
  v8[1] = RecognitionController.drawingByStraighteningHandwriting(in:);

  return MEMORY[0x1EEE6DDE0](v2 + 5, v4, v6, 0xD000000000000026, 0x80000001C8020E70, partial apply for closure #1 in RecognitionController.drawingByStraighteningHandwriting(in:), v7, v9);
}

uint64_t RecognitionController.drawingByStraighteningHandwriting(in:)()
{
  v1 = *(*(v0 + 64) + 112);
  *(v0 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](RecognitionController.drawingByStraighteningHandwriting(in:), v1, 0);
}

{
  v1 = v0[9];
  v2 = swift_beginAccess();
  if ((*(v1 + 152) & 1) == 0)
  {
    v5 = v0[9];
    v2 = *(v5 + 112);
    if (!v2)
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    v4 = *(v5 + 120);
    if (!v4)
    {
LABEL_11:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v2, v3, v4);
    }

    v2 = [v2 setDrawing_];
  }

  v6 = *(v0[9] + 112);
  v0[10] = v6;
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v0[8];
  v8 = v6;
  v2 = RecognitionController.drawingByStraighteningHandwriting(in:);
  v3 = v7;
  v4 = 0;

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  v1 = *(*v0 + 64);

  return MEMORY[0x1EEE6DFA0](RecognitionController.drawingByStraighteningHandwriting(in:), v1, 0);
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 80);
  if (v1)
  {
    v3 = objc_allocWithZone(PKDrawing);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v1 = [v3 initWithStrokes_];
  }

  else
  {
  }

  **(v0 + 48) = v1;
  v5 = *(v0 + 8);

  return v5();
}

void closure #1 in RecognitionController.drawingByStraighteningHandwriting(in:)(uint64_t a1, void *a2, Class isa)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay9PencilKit8PKStrokeVGSgs5NeverOGMd, &_sScCySay9PencilKit8PKStrokeVGSgs5NeverOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  if (isa)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v10 = [a2 drawing];
  if (!v10)
  {
    v10 = [objc_allocWithZone(PKDrawing) init];
  }

  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in RecognitionController.drawingByStraighteningHandwriting(in:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [@convention(block) (_:)]?, @guaranteed [[CHStrokeIdentifier]]?, @in_guaranteed PKDrawing?, @guaranteed [PKStroke]?) -> ();
  aBlock[3] = &block_descriptor_72;
  v13 = _Block_copy(aBlock);

  [a2 straightenStrokes:isa drawing:v10 completionBlockWithStrokeTransformInfo:v13];
  _Block_release(v13);
}

uint64_t closure #1 in closure #1 in RecognitionController.drawingByStraighteningHandwriting(in:)(objc_class *a1, Class a2, void **a3, Class a4)
{
  isa = a1;
  v7 = *a3;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7CGPointVABXBMd, &_sSo7CGPointVABXBMR);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18CHStrokeIdentifier_pGMd, &_sSaySo18CHStrokeIdentifier_pGMR);
    a2 = Array._bridgeToObjectiveC()().super.isa;
  }

  v8 = v7;
  if (a4)
  {
    a4 = Array._bridgeToObjectiveC()().super.isa;
  }

  v9 = [objc_opt_self() changeStrokesUsingTransformations:isa strokeGroups:a2 drawing:v7 originalStrokes:a4];

  if (v9)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay9PencilKit8PKStrokeVGSgs5NeverOGMd, &_sScCySay9PencilKit8PKStrokeVGSgs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t RecognitionController.supportsRefinementForStrokes(_:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](RecognitionController.supportsRefinementForStrokes(_:), v1, 0);
}

uint64_t RecognitionController.supportsRefinementForStrokes(_:)()
{
  v1 = *(*(v0 + 48) + 112);
  *(v0 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](RecognitionController.supportsRefinementForStrokes(_:), v1, 0);
}

{
  v1 = v0[7];
  v2 = swift_beginAccess();
  if ((*(v1 + 152) & 1) == 0)
  {
    v5 = v0[7];
    v2 = *(v5 + 112);
    if (!v2)
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    v4 = *(v5 + 120);
    if (!v4)
    {
LABEL_11:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v2, v3, v4);
    }

    v2 = [v2 setDrawing_];
  }

  v6 = *(v0[7] + 112);
  v0[8] = v6;
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v0[6];
  v8 = v6;
  v2 = RecognitionController.supportsRefinementForStrokes(_:);
  v3 = v7;
  v4 = 0;

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  v1 = *(*v0 + 48);

  return MEMORY[0x1EEE6DFA0](RecognitionController.supportsRefinementForStrokes(_:), v1, 0);
}

{

  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t RecognitionController.supportsRefinementForStrokes(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[8];
  v5 = v2[5];
  v4 = v2[6];
  v6 = lazy protocol witness table accessor for type RecognitionController and conformance RecognitionController(&lazy protocol witness table cache variable for type RecognitionController and conformance RecognitionController, a2, type metadata accessor for RecognitionController, &protocol conformance descriptor for RecognitionController);
  v7 = swift_task_alloc();
  v2[9] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  v8 = swift_task_alloc();
  v2[10] = v8;
  *v8 = v2;
  v8[1] = RecognitionController.supportsRefinementForStrokes(_:);
  v9 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v2 + 11, v4, v6, 0xD000000000000020, 0x80000001C8020EA0, partial apply for closure #1 in RecognitionController.supportsRefinementForStrokes(_:), v7, v9);
}

void closure #1 in RecognitionController.supportsRefinementForStrokes(_:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in RecognitionController.supportsRefinementForStrokes(_:);
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_66;
  v11 = _Block_copy(aBlock);

  [(PKRecognitionController *)a2 supportsRefinementForStrokes:v11 completionBlock:?];
  _Block_release(v11);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t RecognitionController.drawingByRefiningHandwriting(in:inputScale:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 72) = v3;
  *(v4 + 64) = a3;
  *(v4 + 48) = a1;
  *(v4 + 56) = a2;
  return MEMORY[0x1EEE6DFA0](RecognitionController.drawingByRefiningHandwriting(in:inputScale:), v3, 0);
}

uint64_t RecognitionController.drawingByRefiningHandwriting(in:inputScale:)()
{
  v1 = *(*(v0 + 72) + 112);
  *(v0 + 80) = v1;
  return MEMORY[0x1EEE6DFA0](RecognitionController.drawingByRefiningHandwriting(in:inputScale:), v1, 0);
}

{
  v1 = v0[10];
  v2 = swift_beginAccess();
  if ((*(v1 + 152) & 1) == 0)
  {
    v5 = v0[10];
    v2 = *(v5 + 112);
    if (!v2)
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    v4 = *(v5 + 120);
    if (!v4)
    {
LABEL_11:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v2, v3, v4);
    }

    v2 = [v2 setDrawing_];
  }

  v6 = *(v0[10] + 112);
  v0[11] = v6;
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v0[9];
  v8 = v6;
  v2 = RecognitionController.drawingByRefiningHandwriting(in:inputScale:);
  v3 = v7;
  v4 = 0;

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  v1 = *(*v0 + 72);

  return MEMORY[0x1EEE6DFA0](RecognitionController.drawingByRefiningHandwriting(in:inputScale:), v1, 0);
}

{
  v1 = *(v0 + 88);
  if (*(*(v0 + 40) + 16))
  {
    v2 = objc_allocWithZone(PKDrawing);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v4 = [v2 initWithStrokes_];
  }

  else
  {

    v4 = 0;
  }

  **(v0 + 48) = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t RecognitionController.drawingByRefiningHandwriting(in:inputScale:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[11];
  v4 = v2[9];
  v5 = v2[8];
  v6 = v2[7];
  v7 = lazy protocol witness table accessor for type RecognitionController and conformance RecognitionController(&lazy protocol witness table cache variable for type RecognitionController and conformance RecognitionController, a2, type metadata accessor for RecognitionController, &protocol conformance descriptor for RecognitionController);
  v8 = swift_task_alloc();
  v2[12] = v8;
  v8[2] = v3;
  v8[3] = v6;
  v8[4] = v5;
  v9 = swift_task_alloc();
  v2[13] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9PencilKit8PKStrokeVGMd, &_sSay9PencilKit8PKStrokeVGMR);
  *v9 = v2;
  v9[1] = RecognitionController.drawingByRefiningHandwriting(in:inputScale:);

  return MEMORY[0x1EEE6DDE0](v2 + 5, v4, v7, 0xD00000000000002CLL, 0x80000001C8020ED0, partial apply for closure #1 in RecognitionController.drawingByRefiningHandwriting(in:inputScale:), v8, v10);
}

void closure #1 in RecognitionController.drawingByRefiningHandwriting(in:inputScale:)(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay9PencilKit8PKStrokeVGs5NeverOGMd, &_sScCySay9PencilKit8PKStrokeVGs5NeverOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - v10;
  v12.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v13 = [a2 drawing];
  if (!v13)
  {
    v13 = [objc_allocWithZone(PKDrawing) init];
  }

  (*(v9 + 16))(v11, a1, v8);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  (*(v9 + 32))(v15 + v14, v11, v8);
  aBlock[4] = partial apply for closure #1 in closure #1 in RecognitionController.drawingByRefiningHandwriting(in:inputScale:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [PKStroke]?, @guaranteed [PKStroke]?) -> ();
  aBlock[3] = &block_descriptor_60;
  v16 = _Block_copy(aBlock);

  [a2 refineStrokes:v12.super.isa drawing:v13 inputScale:v16 completion:a4];
  _Block_release(v16);
}

void closure #1 in closure #1 in RecognitionController.drawingByRefiningHandwriting(in:inputScale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v51 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v55 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v45 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v45 - v14;
  v16 = MEMORY[0x1E69E7CC0];
  v59 = MEMORY[0x1E69E7CC0];
  if (a2 && *(a2 + 16))
  {
    v45[1] = a4;
    v46 = a2;
    if (a1 && (v17 = *(a1 + 16)) != 0)
    {
      v18 = a3;
      v57 = v13;
      v58 = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
      v19 = v58;
      v20 = (a1 + 32);
      do
      {
        v21 = *v20;
        v22 = [v21 _strokeUUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v58 = v19;
        v24 = *(v19 + 16);
        v23 = *(v19 + 24);
        if (v24 >= v23 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
          v19 = v58;
        }

        *(v19 + 16) = v24 + 1;
        (*(v51 + 32))(v19 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v24, v15, v8);
        ++v20;
        --v17;
      }

      while (v17);
      v13 = v57;
      a3 = v18;
    }

    else
    {

      v19 = MEMORY[0x1E69E7CC0];
    }

    v25 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v19);

    v26 = *(a3 + 16);
    if (v26)
    {
      v27 = 0;
      v49 = a3 + 32;
      v56 = v25 + 56;
      v54 = v51 + 16;
      v50 = MEMORY[0x1E69E7CC0];
      v57 = (v51 + 8);
      v47 = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v48 = v26;
      do
      {
        v28 = v27;
        while (1)
        {
          if (v28 >= v26)
          {
            __break(1u);
LABEL_35:
            __break(1u);
            return;
          }

          v27 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_35;
          }

          v29 = *(v49 + 8 * v28);
          v30 = [v29 _strokeUUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          if (!*(v25 + 16))
          {
            break;
          }

          lazy protocol witness table accessor for type RecognitionController and conformance RecognitionController(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
          v31 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v32 = -1 << *(v25 + 32);
          v33 = v31 & ~v32;
          if (((*(v56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            break;
          }

          v52 = v29;
          v53 = v27;
          v34 = v25;
          v35 = v13;
          v36 = ~v32;
          v37 = *(v51 + 72);
          v38 = *(v51 + 16);
          while (1)
          {
            v39 = v55;
            v38(v55, *(v34 + 48) + v37 * v33, v8);
            lazy protocol witness table accessor for type RecognitionController and conformance RecognitionController(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
            v40 = dispatch thunk of static Equatable.== infix(_:_:)();
            v41 = *v57;
            (*v57)(v39, v8);
            if (v40)
            {
              break;
            }

            v33 = (v33 + 1) & v36;
            if (((*(v56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              v13 = v35;
              v25 = v34;
              v26 = v48;
              v29 = v52;
              v27 = v53;
              v41(v13, v8);
              goto LABEL_24;
            }
          }

          v13 = v35;
          v41(v35, v8);
          v28 = v53;
          v26 = v48;
          v25 = v34;
          if (v53 == v48)
          {
            goto LABEL_32;
          }
        }

        (*v57)(v13, v8);
LABEL_24:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
        }

        v43 = *(v50 + 2);
        v42 = *(v50 + 3);
        if (v43 >= v42 >> 1)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v50);
        }

        v44 = v50;
        *(v50 + 2) = v43 + 1;
        *&v44[8 * v43 + 32] = v29;
      }

      while (v27 != v26);
    }

    else
    {
      v50 = MEMORY[0x1E69E7CC0];
    }

LABEL_32:

    specialized Array.append<A>(contentsOf:)(v50);
    specialized Array.append<A>(contentsOf:)(v46);
    v16 = v59;
  }

  v58 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay9PencilKit8PKStrokeVGs5NeverOGMd, &_sScCySay9PencilKit8PKStrokeVGs5NeverOGMR);
  CheckedContinuation.resume(returning:)();
}

double thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [PKStroke]?, @guaranteed [PKStroke]?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (a3)
  {
LABEL_3:
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:

  v4(v5, v3);

  return result;
}

uint64_t RecognitionController.recognizedText(strokes:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](RecognitionController.recognizedText(strokes:), v1, 0);
}

uint64_t RecognitionController.recognizedText(strokes:)()
{
  v1 = *(*(v0 + 64) + 112);
  *(v0 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](RecognitionController.recognizedText(strokes:), v1, 0);
}

{
  v1 = v0[9];
  v2 = swift_beginAccess();
  if ((*(v1 + 152) & 1) == 0)
  {
    v5 = v0[9];
    v2 = *(v5 + 112);
    if (!v2)
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    v4 = *(v5 + 120);
    if (!v4)
    {
LABEL_11:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v2, v3, v4);
    }

    v2 = [v2 setDrawing_];
  }

  v6 = *(v0[9] + 112);
  v0[10] = v6;
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v0[8];
  v8 = v6;
  v2 = RecognitionController.recognizedText(strokes:);
  v3 = v7;
  v4 = 0;

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  v1 = *(*v0 + 64);

  return MEMORY[0x1EEE6DFA0](RecognitionController.recognizedText(strokes:), v1, 0);
}

{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    v1 = 0;
    v2 = 0;
  }

  v4 = *(v0 + 8);

  return v4(v1, v2);
}

uint64_t RecognitionController.recognizedText(strokes:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[10];
  v5 = v2[7];
  v4 = v2[8];
  v6 = lazy protocol witness table accessor for type RecognitionController and conformance RecognitionController(&lazy protocol witness table cache variable for type RecognitionController and conformance RecognitionController, a2, type metadata accessor for RecognitionController, &protocol conformance descriptor for RecognitionController);
  v7 = swift_task_alloc();
  v2[11] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  v8 = swift_task_alloc();
  v2[12] = v8;
  *v8 = v2;
  v8[1] = RecognitionController.recognizedText(strokes:);
  v9 = MEMORY[0x1E69E6158];

  return MEMORY[0x1EEE6DDE0](v2 + 5, v4, v6, 0xD000000000000018, 0x80000001C8020F00, partial apply for closure #1 in RecognitionController.recognizedText(strokes:), v7, v9);
}

void closure #1 in RecognitionController.recognizedText(strokes:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSs5NeverOGMd, &_sScCySSs5NeverOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in RecognitionController.recognizedText(strokes:);
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed String) -> ();
  aBlock[3] = &block_descriptor_54;
  v11 = _Block_copy(aBlock);

  [(PKRecognitionController *)a2 fetchTranscriptionForStrokes:v11 withCompletion:?];
  _Block_release(v11);
}

uint64_t closure #1 in closure #1 in RecognitionController.recognizedText(strokes:)(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSs5NeverOGMd, &_sScCySSs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

double thunk for @escaping @callee_guaranteed @Sendable (@guaranteed String) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v2(v3, v5);

  return result;
}

uint64_t RecognitionController.indexableContent()()
{
  *(v1 + 48) = v0;
  return MEMORY[0x1EEE6DFA0](RecognitionController.indexableContent(), v0, 0);
}

{
  v1 = *(*(v0 + 48) + 112);
  *(v0 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](RecognitionController.indexableContent(), v1, 0);
}

{
  v1 = v0[7];
  v2 = swift_beginAccess();
  if ((*(v1 + 152) & 1) == 0)
  {
    v5 = v0[7];
    v2 = *(v5 + 112);
    if (!v2)
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    v4 = *(v5 + 120);
    if (!v4)
    {
LABEL_11:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v2, v3, v4);
    }

    v2 = [v2 setDrawing_];
  }

  v6 = *(v0[7] + 112);
  v0[8] = v6;
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v0[6];
  v8 = v6;
  v2 = RecognitionController.indexableContent();
  v3 = v7;
  v4 = 0;

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  v1 = *(*v0 + 48);

  return MEMORY[0x1EEE6DFA0](RecognitionController.indexableContent(), v1, 0);
}

{
  v1 = v0[5];
  v2 = [v1 indexableTextRepresentation];
  v3 = v0[8];
  if (v2)
  {
    v4 = v2;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = v7;
    v9 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v9 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v10 = v5;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v10 = 0;
  v8 = 0;
LABEL_9:
  v11 = v0[1];

  return v11(v10, v8);
}

uint64_t RecognitionController.indexableContent()(uint64_t a1, uint64_t a2)
{
  v3 = v2[8];
  v4 = v2[6];
  v5 = lazy protocol witness table accessor for type RecognitionController and conformance RecognitionController(&lazy protocol witness table cache variable for type RecognitionController and conformance RecognitionController, a2, type metadata accessor for RecognitionController, &protocol conformance descriptor for RecognitionController);
  v6 = swift_task_alloc();
  v2[9] = v6;
  *(v6 + 16) = v3;
  v7 = swift_task_alloc();
  v2[10] = v7;
  v8 = type metadata accessor for PKIndexableContent();
  *v7 = v2;
  v7[1] = RecognitionController.indexableContent();

  return MEMORY[0x1EEE6DDE0](v2 + 5, v4, v5, 0xD000000000000012, 0x80000001C8020F20, partial apply for closure #1 in RecognitionController.indexableContent(), v6, v8);
}

void closure #1 in RecognitionController.indexableContent()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo18PKIndexableContentCs5NeverOGMd, &_sScCySo18PKIndexableContentCs5NeverOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in RecognitionController.indexableContent();
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed PKProofreadingSettingsObserver) -> ();
  aBlock[3] = &block_descriptor_4;
  v10 = _Block_copy(aBlock);

  [(PKRecognitionController *)a2 fetchIndexableContentWithCompletion:v10];
  _Block_release(v10);
}

unint64_t type metadata accessor for PKIndexableContent()
{
  result = lazy cache variable for type metadata for PKIndexableContent;
  if (!lazy cache variable for type metadata for PKIndexableContent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PKIndexableContent);
  }

  return result;
}

uint64_t closure #1 in closure #1 in RecognitionController.indexableContent()(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo18PKIndexableContentCs5NeverOGMd, &_sScCySo18PKIndexableContentCs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t static RecognitionController.isAutoRefineAvailableForLocale(_:)()
{
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v2 = CHHasPersonalizedSynthesisModelReadyForLocale();

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t static RecognitionController.isRefineAvailableForLocale(_:)()
{
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v1 = CHHasPersonalizedSynthesisModelReadyForLocale();

  return v1;
}

Swift::Void __swiftcall RecognitionController.setAutoRefineUserInteractionDelay(_:)(Swift::Double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + 136);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = v6;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = v6;
  *(v10 + 40) = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in RecognitionController.setAutoRefineUserInteractionDelay(_:), v10);
}

uint64_t closure #1 in RecognitionController.setAutoRefineUserInteractionDelay(_:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a5;
  type metadata accessor for MainActor();
  *(v5 + 40) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in RecognitionController.setAutoRefineUserInteractionDelay(_:), v7, v6);
}

uint64_t closure #1 in RecognitionController.setAutoRefineUserInteractionDelay(_:)()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    [(PKAutoRefineTaskCoordinator *)*(v0 + 24) setUserInteractionDelay:?];
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t partial apply for closure #1 in RecognitionController.setAutoRefineUserInteractionDelay(_:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasDataDetectorInteraction.setNeedsLayout();

  return closure #1 in RecognitionController.setAutoRefineUserInteractionDelay(_:)(a1, v7, v4, v5, v6);
}

uint64_t RecognitionController.setAutoRefineMode(_:in:)(_BYTE *a1, uint64_t a2)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 176) = *a1;

  return MEMORY[0x1EEE6DFA0](RecognitionController.setAutoRefineMode(_:in:), v2, 0);
}

uint64_t RecognitionController.setAutoRefineMode(_:in:)()
{
  v1 = *(v0 + 176);
  *(*(v0 + 72) + 152) = v1;
  v2 = *(v0 + 72);
  if (v1)
  {
    if (*(v2 + 128))
    {

      v3 = *(v0 + 8);

      return v3();
    }

    v5 = *(v2 + 112);
    *(v0 + 88) = v5;
    v6 = RecognitionController.setAutoRefineMode(_:in:);
  }

  else
  {
    v5 = *(v2 + 112);
    *(v0 + 160) = v5;
    v6 = RecognitionController.setAutoRefineMode(_:in:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[11];
  v2 = swift_beginAccess();
  if ((*(v1 + 152) & 1) == 0)
  {
    v5 = v0[11];
    v2 = *(v5 + 112);
    if (!v2)
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    v4 = *(v5 + 120);
    if (!v4)
    {
LABEL_11:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v2, v3, v4);
    }

    v2 = [v2 setDrawing_];
  }

  v6 = *(v0[11] + 112);
  v0[12] = v6;
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v0[9];
  v8 = v6;
  v2 = RecognitionController.setAutoRefineMode(_:in:);
  v3 = v7;
  v4 = 0;

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  v1 = [(PKRecognitionController *)v0[12] sessionManager];
  [(PKRecognitionSessionManager *)v1 setWantsAutoRefine:?];

  v0[13] = type metadata accessor for MainActor();
  v0[14] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](RecognitionController.setAutoRefineMode(_:in:), v3, v2);
}

{
  v1 = *(v0 + 72);

  *(v0 + 120) = [objc_allocWithZone(PKAutoRefineController) init];

  return MEMORY[0x1EEE6DFA0](RecognitionController.setAutoRefineMode(_:in:), v1, 0);
}

{
  v1 = v0[15];
  v2 = v0[9];
  v3 = *(v2 + 128);
  *(v2 + 128) = v1;
  v4 = v1;

  v0[16] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](RecognitionController.setAutoRefineMode(_:in:), v6, v5);
}

{
  v1 = v0[15];
  v2 = v0[8];
  v3 = v0[9];

  objc_allocWithZone(type metadata accessor for AutoRefineTaskCoordinatorDelegate());
  v4 = v2;

  v0[17] = specialized AutoRefineTaskCoordinatorDelegate.init(recognitionController:autoRefineController:canvasView:)(v5, v1, v2);

  return MEMORY[0x1EEE6DFA0](RecognitionController.setAutoRefineMode(_:in:), v3, 0);
}

{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[9];
  v4 = *(v3 + 120);
  *(v3 + 120) = v1;
  v5 = v1;

  v6 = v2;
  v7 = v5;
  v0[18] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](RecognitionController.setAutoRefineMode(_:in:), v9, v8);
}

{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[9];

  v0[19] = [objc_allocWithZone(PKAutoRefineTaskCoordinator) initWithDelegate:v1 recognitionController:v2];

  return MEMORY[0x1EEE6DFA0](RecognitionController.setAutoRefineMode(_:in:), v3, 0);
}

{
  v1 = *(v0 + 152);
  v2 = *(v0 + 96);
  v3 = *(v0 + 176);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);
  v7 = *(v5 + 136);
  *(v5 + 136) = v1;
  v8 = v1;

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);

  v10 = v6;
  v11 = v8;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = v6;
  *(v13 + 40) = v11;
  *(v13 + 48) = v3;
  *(v13 + 56) = v5;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in RecognitionController.setAutoRefineMode(_:in:), v13);

  v15 = *(v0 + 8);

  return v15();
}

{
  v1 = v0[20];
  v2 = swift_beginAccess();
  if ((*(v1 + 152) & 1) == 0)
  {
    v5 = v0[20];
    v2 = *(v5 + 112);
    if (!v2)
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    v4 = *(v5 + 120);
    if (!v4)
    {
LABEL_11:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v2, v3, v4);
    }

    v2 = [v2 setDrawing_];
  }

  v6 = *(v0[20] + 112);
  v0[21] = v6;
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v0[9];
  v8 = v6;
  v2 = RecognitionController.setAutoRefineMode(_:in:);
  v3 = v7;
  v4 = 0;

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  v1 = v0[21];
  v2 = v0[9];
  v3 = v0[10];
  v4 = [(PKRecognitionController *)v1 sessionManager];
  [(PKRecognitionSessionManager *)v4 setWantsAutoRefine:?];

  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #2 in RecognitionController.setAutoRefineMode(_:in:), v7);

  v9 = v2[15];
  v2[15] = 0;

  v10 = v2[17];
  v2[17] = 0;

  v11 = v2[16];
  v2[16] = 0;

  v12 = v0[1];

  return v12();
}

uint64_t closure #1 in RecognitionController.setAutoRefineMode(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 24) = a5;
  *(v7 + 32) = a7;
  *(v7 + 80) = a6;
  *(v7 + 16) = a4;
  type metadata accessor for MainActor();
  *(v7 + 40) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 48) = v9;
  *(v7 + 56) = v8;

  return MEMORY[0x1EEE6DFA0](closure #1 in RecognitionController.setAutoRefineMode(_:in:), v9, v8);
}

uint64_t closure #1 in RecognitionController.setAutoRefineMode(_:in:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = [v1 _tiledView];
    [v3 setExternalAutoRefineTaskCoordinator_];
  }

  v4 = *(v0 + 32);
  if (*(v0 + 80) == 1)
  {
    v5 = closure #1 in RecognitionController.setAutoRefineMode(_:in:);
  }

  else
  {
    v5 = closure #1 in RecognitionController.setAutoRefineMode(_:in:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = *(v0[4] + 128);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[6];
    v3 = v0[7];
    v4 = v1;
    v5 = closure #1 in RecognitionController.setAutoRefineMode(_:in:);
    v6 = v2;
    v7 = v3;
  }

  else
  {
    v6 = v0[6];
    v7 = v0[7];
    v5 = closure #1 in RecognitionController.setAutoRefineMode(_:in:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 64);

  [(PKAutoRefineController *)v1 setIsAutoRefineOn:1 force:?];

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0[4] + 128);
  v0[9] = v1;
  if (v1)
  {
    v2 = v0[6];
    v3 = v0[7];
    v4 = v1;
    v5 = closure #1 in RecognitionController.setAutoRefineMode(_:in:);
    v6 = v2;
    v7 = v3;
  }

  else
  {
    v6 = v0[6];
    v7 = v0[7];
    v5 = closure #1 in RecognitionController.setAutoRefineMode(_:in:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

{
  v1 = *(v0 + 72);

  [(PKAutoRefineController *)v1 setIsAutoRefineOn:0 force:?];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #2 in RecognitionController.setAutoRefineMode(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in RecognitionController.setAutoRefineMode(_:in:), a4, 0);
}

uint64_t closure #2 in RecognitionController.setAutoRefineMode(_:in:)()
{
  v1 = *(*(v0 + 24) + 128);
  *(v0 + 48) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v6 = closure #2 in RecognitionController.setAutoRefineMode(_:in:);
  }

  else
  {
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v7;
    v6 = closure #2 in RecognitionController.setAutoRefineMode(_:in:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

{

  **(v0 + 16) = *(v0 + 48) == 0;
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 48);

  [(PKAutoRefineController *)v1 setIsAutoRefineOn:1 force:?];

  **(v0 + 16) = *(v0 + 48) == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t RecognitionController.addRefinableStroke(_:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](RecognitionController.addRefinableStroke(_:), v1, 0);
}

uint64_t RecognitionController.addRefinableStroke(_:)()
{
  v1 = *(v0[2] + 136);
  v0[4] = v1;
  if (v1)
  {
    v2 = v0[3];
    type metadata accessor for MainActor();
    v3 = v1;
    v4 = v2;
    v0[5] = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](RecognitionController.addRefinableStroke(_:), v6, v5);
  }

  else
  {
    if (one-time initialization token for recognitionLogger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, recognitionLogger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C7CCA000, v8, v9, "Tried to add a refinable stroke when auto-refine wasn't enabled.", v10, 2u);
      MEMORY[0x1CCA6FC30](v10, -1, -1);
    }

    v11 = v0[1];

    return v11();
  }
}

{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  [(PKAutoRefineTaskCoordinator *)v1 indexRefinableStroke:v2];

  return MEMORY[0x1EEE6DFA0](RecognitionController.addRefinableStroke(_:), v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RecognitionController.removeAsRefinableStrokes(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](RecognitionController.removeAsRefinableStrokes(_:), v1, 0);
}

uint64_t RecognitionController.removeAsRefinableStrokes(_:)()
{
  v1 = *(v0[3].super.isa + 16);
  v0[4].super.isa = v1;
  if (v1)
  {
    v2 = v1;
    v0[5].super.isa = Array._bridgeToObjectiveC()().super.isa;
    type metadata accessor for MainActor();
    v0[6].super.isa = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](RecognitionController.removeAsRefinableStrokes(_:), v4, v3);
  }

  else
  {
    if (one-time initialization token for recognitionLogger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, recognitionLogger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C7CCA000, v6, v7, "Tried to remove refinable strokes when auto-refine wasn't enabled.", v8, 2u);
      MEMORY[0x1CCA6FC30](v8, -1, -1);
    }

    isa = v0[1].super.isa;

    return isa();
  }
}

{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];

  [(PKAutoRefineController *)v2 removeAsRefinableStrokes:v1];

  return MEMORY[0x1EEE6DFA0](RecognitionController.removeAsRefinableStrokes(_:), v3, 0);
}

uint64_t RecognitionController.clearRefinableStrokes()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](RecognitionController.clearRefinableStrokes(), v0, 0);
}

{
  v1 = *(v0[2] + 128);
  v0[3] = v1;
  if (v1)
  {
    type metadata accessor for MainActor();
    v2 = v1;
    v0[4] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](RecognitionController.clearRefinableStrokes(), v4, v3);
  }

  else
  {
    if (one-time initialization token for recognitionLogger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, recognitionLogger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C7CCA000, v6, v7, "Tried to clear refinable strokes when auto-refine wasn't enabled.", v8, 2u);
      MEMORY[0x1CCA6FC30](v8, -1, -1);
    }

    v9 = v0[1];

    return v9();
  }
}

{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);

  [(PKAutoRefineController *)v1 clearRefinableStrokes];

  return MEMORY[0x1EEE6DFA0](RecognitionController.clearRefinableStrokes(), v2, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RecognitionController.setRefineStrokesBlock(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](RecognitionController.setRefineStrokesBlock(_:), v2, 0);
}

uint64_t RecognitionController.setRefineStrokesBlock(_:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v5 = *(v2 + 160);
  v4 = *(v2 + 168);
  *(v2 + 160) = v3;
  *(v2 + 168) = v1;
  outlined copy of (@escaping @callee_guaranteed @async (@guaranteed [PKStroke], @guaranteed [PKStroke]) -> ())?(v3, v1);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed [PKStroke], @guaranteed [PKStroke]) -> ())?(v5, v4);
  v6 = v0[1];

  return v6();
}

id one-time initialization function for welcomeController()
{
  result = [objc_allocWithZone(PKWelcomeController) init];
  static RecognitionController.welcomeController = result;
  return result;
}

id static RecognitionController.presentEducationPaneIfNecessary(in:features:)(id result, uint64_t *a2)
{
  v2 = result;
  if (one-time initialization token for welcomeController == -1)
  {
    if ((*a2 & 0x8000000000000000) == 0)
    {
      return [static RecognitionController.welcomeController presentHandwritingEducationPaneIfNecessaryIn:v2 withFeatures:?];
    }
  }

  else
  {
    v3 = *a2;
    result = swift_once();
    if ((v3 & 0x8000000000000000) == 0)
    {
      return [static RecognitionController.welcomeController presentHandwritingEducationPaneIfNecessaryIn:v2 withFeatures:?];
    }
  }

  __break(1u);
  return result;
}

uint64_t RecognitionController.deinit()
{

  outlined consume of (@escaping @callee_guaranteed (@guaranteed [PKStroke], @guaranteed [PKStroke]) -> ())?(*(v0 + 160), *(v0 + 168));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t RecognitionController.__deallocating_deinit()
{

  outlined consume of (@escaping @callee_guaranteed (@guaranteed [PKStroke], @guaranteed [PKStroke]) -> ())?(*(v0 + 160), *(v0 + 168));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t closure #1 in AutoRefineTaskCoordinatorDelegate.autoRefineTaskCoordinator(_:replace:withRefinedStrokes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  type metadata accessor for MainActor();
  v6[6] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[7] = v8;
  v6[8] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in AutoRefineTaskCoordinatorDelegate.autoRefineTaskCoordinator(_:replace:withRefinedStrokes:), v8, v7);
}

uint64_t closure #1 in AutoRefineTaskCoordinatorDelegate.autoRefineTaskCoordinator(_:replace:withRefinedStrokes:)()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in AutoRefineTaskCoordinatorDelegate.autoRefineTaskCoordinator(_:replace:withRefinedStrokes:), Strong, 0);
  }

  else
  {

    **(v0 + 16) = *(v0 + 72) == 0;
    v2 = *(v0 + 8);

    return v2();
  }
}

{
  v1 = v0[9];
  v2 = *(v1 + 160);
  v0[10] = v2;
  if (v2)
  {
    v0[11] = *(v1 + 168);

    v9 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = closure #1 in AutoRefineTaskCoordinatorDelegate.autoRefineTaskCoordinator(_:replace:withRefinedStrokes:);
    v5 = v0[4];
    v4 = v0[5];

    return v9(v5, v4);
  }

  else
  {

    v7 = v0[7];
    v8 = v0[8];

    return MEMORY[0x1EEE6DFA0](closure #1 in AutoRefineTaskCoordinatorDelegate.autoRefineTaskCoordinator(_:replace:withRefinedStrokes:), v7, v8);
  }
}

{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed [PKStroke], @guaranteed [PKStroke]) -> ())?(v2, v1);

  return MEMORY[0x1EEE6DFA0](closure #1 in AutoRefineTaskCoordinatorDelegate.autoRefineTaskCoordinator(_:replace:withRefinedStrokes:), v3, 0);
}

{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6DFA0](closure #1 in AutoRefineTaskCoordinatorDelegate.autoRefineTaskCoordinator(_:replace:withRefinedStrokes:), v1, v2);
}

{

  **(v0 + 16) = *(v0 + 72) == 0;
  v1 = *(v0 + 8);

  return v1();
}

id AutoRefineTaskCoordinatorDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AutoRefineTaskCoordinatorDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type RecognitionController and conformance RecognitionController(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
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
      lazy protocol witness table accessor for type RecognitionController and conformance RecognitionController(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
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
      lazy protocol witness table accessor for type RecognitionController and conformance RecognitionController(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
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

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
  }

  v12 = *v3;
  lazy protocol witness table accessor for type RecognitionController and conformance RecognitionController(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      lazy protocol witness table accessor for type RecognitionController and conformance RecognitionController(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
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
      lazy protocol witness table accessor for type RecognitionController and conformance RecognitionController(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
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

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type RecognitionController and conformance RecognitionController(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  result = MEMORY[0x1CCA6D0B0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

id specialized AutoRefineTaskCoordinatorDelegate.init(recognitionController:autoRefineController:canvasView:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_weakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v5.receiver = v3;
  v5.super_class = type metadata accessor for AutoRefineTaskCoordinatorDelegate();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t partial apply for closure #1 in RecognitionController.setAutoRefineMode(_:in:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in CanvasDataDetectorInteraction.setNeedsLayout();

  return closure #1 in RecognitionController.setAutoRefineMode(_:in:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #2 in RecognitionController.setAutoRefineMode(_:in:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in CanvasDataDetectorInteraction.setNeedsLayout()partial apply;

  return closure #2 in RecognitionController.setAutoRefineMode(_:in:)(a1, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type RecognitionController.AutoRefineMode and conformance RecognitionController.AutoRefineMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type RecognitionController.AutoRefineMode and conformance RecognitionController.AutoRefineMode;
  if (!lazy protocol witness table cache variable for type RecognitionController.AutoRefineMode and conformance RecognitionController.AutoRefineMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecognitionController.AutoRefineMode and conformance RecognitionController.AutoRefineMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RecognitionController.EducationPanelFeatures and conformance RecognitionController.EducationPanelFeatures(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type RecognitionController.EducationPanelFeatures and conformance RecognitionController.EducationPanelFeatures;
  if (!lazy protocol witness table cache variable for type RecognitionController.EducationPanelFeatures and conformance RecognitionController.EducationPanelFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecognitionController.EducationPanelFeatures and conformance RecognitionController.EducationPanelFeatures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RecognitionController.EducationPanelFeatures and conformance RecognitionController.EducationPanelFeatures;
  if (!lazy protocol witness table cache variable for type RecognitionController.EducationPanelFeatures and conformance RecognitionController.EducationPanelFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecognitionController.EducationPanelFeatures and conformance RecognitionController.EducationPanelFeatures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RecognitionController.EducationPanelFeatures and conformance RecognitionController.EducationPanelFeatures;
  if (!lazy protocol witness table cache variable for type RecognitionController.EducationPanelFeatures and conformance RecognitionController.EducationPanelFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecognitionController.EducationPanelFeatures and conformance RecognitionController.EducationPanelFeatures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RecognitionController.EducationPanelFeatures and conformance RecognitionController.EducationPanelFeatures;
  if (!lazy protocol witness table cache variable for type RecognitionController.EducationPanelFeatures and conformance RecognitionController.EducationPanelFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecognitionController.EducationPanelFeatures and conformance RecognitionController.EducationPanelFeatures);
  }

  return result;
}

uint64_t partial apply for closure #1 in AutoRefineTaskCoordinatorDelegate.autoRefineTaskCoordinator(_:replace:withRefinedStrokes:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in CanvasDataDetectorInteraction.setNeedsLayout();

  return closure #1 in AutoRefineTaskCoordinatorDelegate.autoRefineTaskCoordinator(_:replace:withRefinedStrokes:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in RecognitionController.indexableContent()(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo18PKIndexableContentCs5NeverOGMd, &_sScCySo18PKIndexableContentCs5NeverOGMR);

  return closure #1 in closure #1 in RecognitionController.indexableContent()(a1);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in closure #1 in RecognitionController.recognizedText(strokes:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSs5NeverOGMd, &_sScCySSs5NeverOGMR);

  return closure #1 in closure #1 in RecognitionController.recognizedText(strokes:)(a1, a2);
}

void partial apply for closure #1 in closure #1 in RecognitionController.drawingByRefiningHandwriting(in:inputScale:)(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay9PencilKit8PKStrokeVGs5NeverOGMd, &_sScCySay9PencilKit8PKStrokeVGs5NeverOGMR) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  closure #1 in closure #1 in RecognitionController.drawingByRefiningHandwriting(in:inputScale:)(a1, a2, v6, v7);
}

uint64_t lazy protocol witness table accessor for type RecognitionController and conformance RecognitionController(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t partial apply for closure #1 in closure #1 in RecognitionController.supportsRefinementForStrokes(_:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t objectdestroy_47Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in RecognitionController.drawingByStraighteningHandwriting(in:)(objc_class *a1, objc_class *a2, void **a3, objc_class *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay9PencilKit8PKStrokeVGSgs5NeverOGMd, &_sScCySay9PencilKit8PKStrokeVGSgs5NeverOGMR);

  return closure #1 in closure #1 in RecognitionController.drawingByStraighteningHandwriting(in:)(a1, a2, a3, a4);
}

uint64_t PKCanvasView.tool.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 tool];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v5 = &protocol witness table for PKInkingTool;
    v6 = &type metadata for PKInkingTool;
LABEL_7:
    a1[3] = v6;
    a1[4] = v5;
    *a1 = result;
    return result;
  }

  v7 = [v1 tool];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v5 = &protocol witness table for PKEraserTool;
    v6 = &type metadata for PKEraserTool;
    goto LABEL_7;
  }

  v8 = [v1 tool];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v5 = &protocol witness table for PKLassoTool;
    v6 = &type metadata for PKLassoTool;
    goto LABEL_7;
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x80000001C8020E50, "PencilKit/PKCanvasView.swift", 28, 2, 31, 0);
  __break(1u);
  return result;
}

uint64_t PKCanvasView.tool.setter(void *a1)
{
  outlined init with copy of Decoder(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit6PKTool_pMd, &_s9PencilKit6PKTool_pMR);
  if (swift_dynamicCast() || (outlined init with copy of Decoder(a1, v5), swift_dynamicCast()) || (outlined init with copy of Decoder(a1, v5), swift_dynamicCast()))
  {
    [v1 setTool_];

    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000014, 0x80000001C8020E50, "PencilKit/PKCanvasView.swift", 28, 2, 45, 0);
    __break(1u);
  }

  return result;
}

void (*PKCanvasView.tool.modify(uint64_t **a1))(uint64_t *a1, char a2)
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
  PKCanvasView.tool.getter(v3);
  return PKCanvasView.tool.modify;
}

void PKCanvasView.tool.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of Decoder(*a1, (v2 + 5));
    PKCanvasView.tool.setter(v2 + 5);
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    PKCanvasView.tool.setter(*a1);
  }

  free(v2);
}

id static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)@<X0>(id a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  if (!a1)
  {
    a1 = [objc_allocWithZone(PKStrokePath) init];
    v2 = 0;
  }

  *a2 = a1;

  return v2;
}

uint64_t PKStrokePath.init<A>(controlPoints:creationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a5@<X8>)
{
  v22 = a5;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 16))(&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  Array.init<A>(_:)();
  (*(v9 + 16))(v12, a2, v8);
  v15 = objc_allocWithZone(PKStrokePath);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = Date._bridgeToObjectiveC()().super.isa;
  v18 = [v15 initWithControlPoints:isa creationDate:v17];

  v19 = *(v9 + 8);
  v19(a2, v8);
  (*(v13 + 8))(a1, a3);
  result = (v19)(v12, v8);
  *v22 = v18;
  return result;
}

id PKStrokePath.interpolatedPoint(at:)@<X0>(void *a1@<X8>)
{
  result = [*v1 interpolatedPointAt_];
  if (result)
  {
    *a1 = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "PencilKit/PKStrokePoint.swift", 29, 2, 92, 0);
    __break(1u);
  }

  return result;
}

void PKStrokePath.creationDate.getter()
{
  v1 = [*v0 creationDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

int64_t PKStrokePath.interpolatedPoints(in:by:)@<X0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a4;
  v8 = *(a4 + 8);
  v9 = *v5;
  if ((a3 & 1) == 0)
  {
    v12 = a2;
    goto LABEL_8;
  }

  v13 = *v5;
  v10 = [*v5 count];
  result = [v13 count];
  if (result < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = [v13 count];
  if (v10 < 0 || result < v10)
  {
    goto LABEL_12;
  }

  if (!v10)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  a1 = 0;
  v12 = (v10 - 1);
  v9 = v13;
LABEL_8:
  *a5 = v9;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8;
  *(a5 + 24) = a1;
  *(a5 + 32) = v12;
  *(a5 + 40) = a1;

  return v9;
}

int64_t PKStrokePath.parametricValue(_:offsetBy:)(uint64_t a1, double a2)
{
  v3 = *a1;
  v4 = *v2;
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      v8 = [*v2 count];
      result = [v4 count];
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        result = [v4 count];
        if ((v8 & 0x8000000000000000) == 0 && result >= v8)
        {
          return result;
        }
      }

      __break(1u);
      return result;
    }

    v5 = sel_parametricValue_offsetByTime_;
  }

  else
  {
    v5 = sel_parametricValue_offsetByDistance_;
  }

  v6 = *v2;

  return [v6 v5];
}

id PKStrokePath.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*v2 objectAtIndexedSubscript_];
  if (result)
  {
    *a2 = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "PencilKit/PKStrokePoint.swift", 29, 2, 92, 0);
    __break(1u);
  }

  return result;
}

id specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(int64_t a1, uint64_t a2, int64_t a3, id a4)
{
  result = [a4 count];
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = [a4 count];
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v9 = a3 - a1;
  if (a2 >= 1)
  {
    if (v9 < 0 || v9 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v9 <= 0 && v9 > a2)
  {
    return 0;
  }

LABEL_12:
  v11 = __OFADD__(a1, a2);
  v10 = a1 + a2;
  if (v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = [a4 count];
  if ((v10 & 0x8000000000000000) == 0 && result >= v10)
  {
    return v10;
  }

LABEL_19:
  __break(1u);
  return result;
}