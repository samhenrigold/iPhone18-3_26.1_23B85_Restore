uint64_t closure #1 in static TextureResource.compressTextureWithEngineQueueCompletion(coreTextureAsset:compressOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x1C68FF210](a1, a2))
  {
    return RERelease();
  }

  lazy protocol witness table accessor for type TextureResource.TextureImportOperationError and conformance TextureResource.TextureImportOperationError();
  swift_allocError();
  *v4 = 0xD00000000000001ALL;
  *(v4 + 8) = 0x80000001C18DF8C0;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t specialized closure #1 in static TextureResource.createCubeWithCompletion(fromEquirectangular:named:quality:faceSize:options:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  if (!a2)
  {
LABEL_6:
    if (REAssetGetSwiftObject())
    {
      type metadata accessor for TextureResource();
      a3 = swift_dynamicCastClass();
      if (a3)
      {
LABEL_10:
        RERelease();
        return a3;
      }

      swift_unknownObjectRelease();
    }

    type metadata accessor for TextureResource();
    a3 = swift_allocObject();
    *(a3 + 16) = a1;
    *(a3 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
    goto LABEL_10;
  }

  a2(v7);
  if (!v3)
  {
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2, a3);
    goto LABEL_6;
  }

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2, a3);
  RERelease();
  return a3;
}

uint64_t TextureResource.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v16 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C189FFC0;
  *(v8 + 32) = 0x6369746E616D6573;
  *(v8 + 40) = 0xE800000000000000;
  *(v8 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15TextureResourceC8SemanticOSgMd, &_s10RealityKit15TextureResourceC8SemanticOSgMR);

  TextureResource.semantic.getter((v8 + 48));
  *(v8 + 80) = 0x746867696568;
  *(v8 + 88) = 0xE600000000000000;
  RETextureAssetGetSize();
  v10 = MEMORY[0x1E69E6530];
  *(v8 + 96) = v9;
  *(v8 + 120) = v10;
  *(v8 + 128) = 0x6874646977;
  *(v8 + 136) = 0xE500000000000000;
  RETextureAssetGetSize();
  *(v8 + 144) = v11;
  *(v8 + 168) = v10;
  *(v8 + 176) = 0xD000000000000010;
  *(v8 + 184) = 0x80000001C18DF4D0;
  MipmapLevelCount = RETextureAssetGetMipmapLevelCount();
  *(v8 + 216) = v10;
  *(v8 + 192) = MipmapLevelCount;
  v13 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  type metadata accessor for TextureResource();
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t TextureResource.DrawableQueue.Descriptor.timeout.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2;
  return result;
}

__n128 (*TextureResource.DrawableQueue.Descriptor.timeout.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 40);
  return TextureResource.DrawableQueue.Descriptor.timeout.modify;
}

__n128 TextureResource.DrawableQueue.Descriptor.timeout.modify(__n128 *a1)
{
  result = *a1;
  *(a1[1].n128_u64[0] + 40) = *a1;
  return result;
}

uint64_t TextureResource.DrawableQueue.Descriptor.init(pixelFormat:width:height:usage:mipmapsMode:timeout:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a5;
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = v8;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  *(a8 + 56) = 0;
  return result;
}

uint64_t TextureResource.init(image:withName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 56) = a3;
  *(v5 + 64) = v4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  HIDWORD(v6) = *a4;
  LODWORD(v6) = *a4;
  *(v5 + 128) = v6 >> 16;
  *(v5 + 132) = *(a4 + 4);
  type metadata accessor for MainActor();
  *(v5 + 72) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 80) = v8;
  *(v5 + 88) = v7;

  return MEMORY[0x1EEE6DFA0](TextureResource.init(image:withName:options:), v8, v7);
}

uint64_t TextureResource.init(image:withName:options:)(__n128 a1)
{
  v2 = *(v1 + 56);
  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();

  v3 = RETextureImportOperationCreateWithCGImage();
  if (v2)
  {
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  v4 = *(v1 + 132);
  HIDWORD(v5) = *(v1 + 128);
  LODWORD(v5) = HIDWORD(v5);
  v6 = *(v1 + 64);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  *(v7 + 32) = v5 >> 16;
  *(v7 + 36) = v4;
  *(v7 + 37) = 1;
  *(v7 + 40) = closure #1 in static TextureResource.generateAsyncInternal(from:named:options:);
  *(v7 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
  v9 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v9 + 16) = v10;
  *(v9 + 24) = 0;
  *(v9 + 32) = -1;
  *(v8 + 16) = v9;
  v11 = swift_allocObject();
  v11[2] = closure #1 in static TextureResource.createTextureLoadRequest(forRetained:options:disableNetworkSync:buildError:)partial apply;
  v11[3] = v7;
  v11[4] = v9;
  v11[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
  swift_allocObject();

  *(v8 + 24) = Future.init(_:)();
  v13 = specialized LoadRequest<A>.thenWaitForResourceSharing()(v12);
  *(v1 + 96) = v13;

  v14 = swift_task_alloc();
  *(v1 + 104) = v14;
  *v14 = v1;
  v14[1] = TextureResource.init(image:withName:options:);

  return _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v13);
}

uint64_t TextureResource.init(image:withName:options:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = TextureResource.init(image:withName:options:);
  }

  else
  {

    v4[15] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = TextureResource.init(image:withName:options:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t TextureResource.init(image:withName:options:)()
{
  v1 = v0[15];
  v2 = v0[5];

  v3 = *(v1 + 16);
  type metadata accessor for TextureResource();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();

  v5 = v0[1];

  return v5(v4);
}

{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t (*TextureResource.CreateOptions.reduceMemoryPeak.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return TextureResource.CreateOptions.reduceMemoryPeak.modify;
}

void *specialized closure #2 in LoadRequest<A>.thenWaitForResourceSharing()(void *result, uint64_t a2, uint64_t a3, void (*a4)(void (*)(void), uint64_t), void (*a5)(void (*)(void), uint64_t))
{
  if (result)
  {
    v5 = *(a2 + 16);
    if (!v5)
    {
      __break(1u);
      return result;
    }

    v7 = *(a2 + 24);
    *&v11[0] = result;
    BYTE8(v11[0]) = 1;
    v8 = result;
    (a4)(v5, v7, a3);
    v9 = v8;
    v5(v11);
    a5(v5, v7);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    memset(v11, 0, sizeof(v11));
    v10 = result;
    swift_beginAccess();
    outlined assign with take of Any?(v11, v10 + 16);
    swift_endAccess();
  }

  return result;
}

void *specialized closure #2 in LoadRequest<A>.thenWaitForResourceSharing()(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = *(a2 + 16);
    if (!v3)
    {
      __break(1u);
      return result;
    }

    v4 = *(a2 + 24);
    *&v15[0] = result;
    v5 = result;
    _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGWOi0_(v15);
    v12 = v15[4];
    v13 = v15[5];
    v14[0] = v16[0];
    *(v14 + 10) = *(v16 + 10);
    v8 = v15[0];
    v9 = v15[1];
    v10 = v15[2];
    v11 = v15[3];
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v3, v4);
    v6 = v5;
    v3(&v8);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v3, v4);
    v21 = v12;
    v22 = v13;
    v23[0] = v14[0];
    *(v23 + 10) = *(v14 + 10);
    v17 = v8;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    outlined destroy of BodyTrackingComponent?(&v17, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = 0u;
    v18 = 0u;
    v7 = result;
    swift_beginAccess();
    outlined assign with take of Any?(&v17, v7 + 16);
    swift_endAccess();
  }

  return result;
}

uint64_t specialized closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = a1;
  v6[4] = v5;
  aBlock[4] = partial apply for specialized closure #1 in closure #3 in LoadRequest<A>.thenWaitForResourceSharing();
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_478;
  v7 = _Block_copy(aBlock);
  v8 = _Block_copy(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v12[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v12[3] = &block_descriptor_485;
  v10 = _Block_copy(v12);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v10);
  _Block_release(v7);

  return REAssetLoadRequestAddAsset();
}

{
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = a1;
  v6[4] = v5;
  aBlock[4] = partial apply for specialized closure #1 in closure #3 in LoadRequest<A>.thenWaitForResourceSharing();
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_292;
  v7 = _Block_copy(aBlock);
  v8 = _Block_copy(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v12[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v12[3] = &block_descriptor_299;
  v10 = _Block_copy(v12);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v10);
  _Block_release(v7);

  if (*(a1 + 16))
  {
    REAssetLoadRequestAddAsset();
  }

  result = swift_beginAccess();
  if (*(a1 + 24))
  {
    return REAssetLoadRequestAddAsset();
  }

  return result;
}

uint64_t specialized closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v7 = a1[5];
  *(v6 + 88) = a1[4];
  *(v6 + 104) = v7;
  *(v6 + 120) = a1[6];
  *(v6 + 129) = *(a1 + 105);
  v8 = a1[1];
  *(v6 + 24) = *a1;
  *(v6 + 40) = v8;
  v9 = a1[3];
  *(v6 + 56) = a1[2];
  *(v6 + 16) = a3;
  *(v6 + 72) = v9;
  *(v6 + 152) = v5;
  aBlock[4] = partial apply for specialized closure #1 in closure #3 in LoadRequest<A>.thenWaitForResourceSharing();
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_2;
  v10 = _Block_copy(aBlock);
  v11 = _Block_copy(v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v16[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ();
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v16[3] = &block_descriptor_245;
  v13 = _Block_copy(v16);

  outlined init with copy of ShaderGraphMaterial(a1, &v15);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v13);
  _Block_release(v10);

  swift_beginAccess();
  return REAssetLoadRequestAddAsset();
}

void specialized closure #1 in closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = *(a2 + 24);
      aBlock = a3;
      LOBYTE(v18) = 0;
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v5, v6);

      v5(&aBlock);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v5, v6);

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_12;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  RequestCopyError = REAssetLoadRequestCopyError();

  if (!RequestCopyError)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = specialized static LoadUtilities.convertCFErrorToEntityLoadError(error:)(RequestCopyError);

  v9 = *(a2 + 16);
  if (!v9)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v10 = *(a2 + 24);
  aBlock = v8;
  LOBYTE(v18) = 1;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v9, v10);
  v11 = v8;
  v9(&aBlock);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v9, v10);

LABEL_8:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v21 = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
    v22 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v20 = &block_descriptor_488;
    v12 = _Block_copy(&aBlock);
    v13 = _Block_copy(v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v16[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
    v16[5] = v14;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v16[3] = &block_descriptor_495;
    v15 = _Block_copy(v16);

    REAssetLoadRequestSetCompletionHandler();
    _Block_release(v15);

    _Block_release(v12);
  }
}

{
  if (a1)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = *(a2 + 24);
      aBlock = a3;
      LOBYTE(v18) = 0;
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v5, v6);

      v5(&aBlock);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v5, v6);

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_12;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  RequestCopyError = REAssetLoadRequestCopyError();

  if (!RequestCopyError)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = specialized static LoadUtilities.convertCFErrorToEntityLoadError(error:)(RequestCopyError);

  v9 = *(a2 + 16);
  if (!v9)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v10 = *(a2 + 24);
  aBlock = v8;
  LOBYTE(v18) = 1;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v9, v10);
  v11 = v8;
  v9(&aBlock);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v9, v10);

LABEL_8:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v21 = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
    v22 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v20 = &block_descriptor_302;
    v12 = _Block_copy(&aBlock);
    v13 = _Block_copy(v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v16[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
    v16[5] = v14;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v16[3] = &block_descriptor_309;
    v15 = _Block_copy(v16);

    REAssetLoadRequestSetCompletionHandler();
    _Block_release(v15);

    _Block_release(v12);
  }
}

void specialized closure #1 in closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(char a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (a1)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = *(a2 + 24);
      v7 = a3[5];
      v31 = a3[4];
      v32 = v7;
      v33[0] = a3[6];
      *(v33 + 9) = *(a3 + 105);
      v8 = a3[1];
      v27 = *a3;
      v28 = v8;
      v9 = a3[3];
      v29 = a3[2];
      v30 = v9;
      _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGWOi_(&v27);
      v24 = v31;
      v25 = v32;
      v26[0] = v33[0];
      *(v26 + 10) = *(v33 + 10);
      v20 = v27;
      v21 = v28;
      v22 = v29;
      v23 = v30;
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v5, v6);
      outlined init with copy of ShaderGraphMaterial(a3, &aBlock);
      v5(&v20);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v5, v6);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_12;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  RequestCopyError = REAssetLoadRequestCopyError();

  if (!RequestCopyError)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = specialized static LoadUtilities.convertCFErrorToEntityLoadError(error:)(RequestCopyError);

  v13 = *(a2 + 16);
  if (!v13)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v14 = *(a2 + 24);
  *&v27 = v12;
  _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGWOi0_(&v27);
  v24 = v31;
  v25 = v32;
  v26[0] = v33[0];
  *(v26 + 10) = *(v33 + 10);
  v20 = v27;
  v21 = v28;
  v22 = v29;
  v23 = v30;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v13, v14);
  v15 = v12;
  v13(&v20);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v13, v14);

LABEL_8:
  v38 = v24;
  v39 = v25;
  v40[0] = v26[0];
  *(v40 + 10) = *(v26 + 10);
  aBlock = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  outlined destroy of BodyTrackingComponent?(&aBlock, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    *&v36 = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
    *(&v36 + 1) = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v35 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    *(&v35 + 1) = &block_descriptor_248;
    v16 = _Block_copy(&aBlock);
    v17 = _Block_copy(v16);
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *&v29 = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
    *(&v29 + 1) = v18;
    *&v27 = MEMORY[0x1E69E9820];
    *(&v27 + 1) = 1107296256;
    *&v28 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    *(&v28 + 1) = &block_descriptor_255;
    v19 = _Block_copy(&v27);

    REAssetLoadRequestSetCompletionHandler();
    _Block_release(v19);

    _Block_release(v16);
  }
}

uint64_t specialized closure #1 in LoadRequest.init(_:dependencies:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void *, __n128), uint64_t a4, uint64_t a5, uint64_t a6)
{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F0A58, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F09E0, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F09B8, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F0990, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F0710, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F0468, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F0968, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F0940, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F0760, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F0738, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F06C0, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F0698, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F0490, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

uint64_t specialized closure #1 in LoadRequest.init(_:dependencies:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void *, __n128), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a1;
  v14[5] = a2;

  (a3)(a8, v14);
}

uint64_t specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  outlined init with copy of [String : String](a1, v9, &_ss6ResultOy10RealityKit8Material_ps5Error_pGMd, &_ss6ResultOy10RealityKit8Material_ps5Error_pGMR);
  v7 = *(a2 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  outlined assign with copy of Result<Material, Error>?(v9, a2 + 24);
  swift_endAccess();
  os_unfair_lock_unlock(v7 + 4);
  outlined destroy of BodyTrackingComponent?(v9, &_ss6ResultOy10RealityKit8Material_ps5Error_pGSgMd, &_ss6ResultOy10RealityKit8Material_ps5Error_pGSgMR);
  return a4(a1);
}

uint64_t specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a2 + 16);
  outlined copy of Result<AUAudioUnit, Error>(*a1);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  v9 = *(a2 + 24);
  *(a2 + 24) = v6;
  v10 = *(a2 + 32);
  *(a2 + 32) = v7;
  outlined consume of Result<AUAudioUnit, Error>?(v9, v10);
  os_unfair_lock_unlock(v8 + 4);
  v12 = v6;
  v13 = v7;
  return a4(&v12);
}

{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a2 + 16);
  outlined copy of Result<[Entity], Error>(*a1, v7, MEMORY[0x1E69E7D00]);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  v9 = *(a2 + 24);
  *(a2 + 24) = v6;
  v10 = *(a2 + 32);
  *(a2 + 32) = v7;
  outlined consume of Result<[Entity], Error>?(v9, v10);
  os_unfair_lock_unlock(v8 + 4);
  v12 = v6;
  v13 = v7;
  return a4(&v12);
}

uint64_t specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *), uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a2 + 16);
  outlined copy of Result<ModelEntity, Error>(*a1, v10);
  os_unfair_lock_lock(v11 + 4);
  swift_beginAccess();
  v12 = *(a2 + 24);
  *(a2 + 24) = v9;
  v13 = *(a2 + 32);
  *(a2 + 32) = v10;
  a6(v12, v13);
  os_unfair_lock_unlock(v11 + 4);
  v15 = v9;
  v16 = v10;
  return a4(&v15);
}

uint64_t specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  v6 = a1[5];
  v27 = a1[4];
  v28 = v6;
  v29[0] = a1[6];
  v7 = v29[0];
  *(v29 + 10) = *(a1 + 106);
  v8 = a1[1];
  v23 = *a1;
  v24 = v8;
  v9 = a1[3];
  v25 = a1[2];
  v26 = v9;
  *(v36 + 10) = *(v29 + 10);
  v35 = v6;
  v36[0] = v7;
  v33 = v9;
  v34 = v27;
  v31 = v8;
  v32 = v25;
  v30 = v23;
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
  v10 = *(a2 + 16);
  outlined init with copy of [String : String](&v23, v37, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
  os_unfair_lock_lock(v10 + 4);
  swift_beginAccess();
  v11 = *(a2 + 104);
  v37[4] = *(a2 + 88);
  v37[5] = v11;
  v38[0] = *(a2 + 120);
  *(v38 + 10) = *(a2 + 130);
  v12 = *(a2 + 40);
  v37[0] = *(a2 + 24);
  v37[1] = v12;
  v13 = *(a2 + 72);
  v37[2] = *(a2 + 56);
  v37[3] = v13;
  v14 = v30;
  v15 = v31;
  v16 = v32;
  *(a2 + 72) = v33;
  *(a2 + 56) = v16;
  *(a2 + 40) = v15;
  *(a2 + 24) = v14;
  v17 = v34;
  v18 = v35;
  v19 = v36[0];
  *(a2 + 130) = *(v36 + 10);
  *(a2 + 120) = v19;
  *(a2 + 104) = v18;
  *(a2 + 88) = v17;
  outlined destroy of BodyTrackingComponent?(v37, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGSgMd, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGSgMR);
  os_unfair_lock_unlock(v10 + 4);
  v21[4] = v27;
  v21[5] = v28;
  v22[0] = v29[0];
  *(v22 + 10) = *(v29 + 10);
  v21[0] = v23;
  v21[1] = v24;
  v21[2] = v25;
  v21[3] = v26;
  return a4(v21);
}

BOOL specialized static TextureResource.Compression.Kind.== infix(_:_:)(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 8;
  if (v2 >> 8 == 4)
  {
    return (v3 & 0xFF00) == 0x400;
  }

  if (v4 == 5)
  {
    return (v3 & 0xFF00) == 0x500;
  }

  if ((v3 & 0xFE00) == 0x400)
  {
    return 0;
  }

  return v3 == v2 && v4 == v3 >> 8;
}

unint64_t specialized static TextureResource.tryCreate(from:disableNetworkSync:)(uint64_t a1, char a2)
{
  Asset = RETextureImportOperationCreateAsset();
  if (!Asset)
  {
    return 0xD000000000000017;
  }

  if (a2)
  {
    REAssetSetNetworkSharingMode();
  }

  if (!REAssetGetSwiftObject())
  {
    goto LABEL_7;
  }

  type metadata accessor for TextureResource();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_7:
    type metadata accessor for TextureResource();
    v4 = swift_allocObject();
    *(v4 + 16) = Asset;
    *(v4 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
  }

  RERelease();
  return v4;
}

uint64_t specialized TextureResource.init(image:withName:options:)(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, __n128 a5)
{
  inited = *a4;
  v8 = a4[1];
  v9 = *(a4 + 1);
  v10 = a4[4];
  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();

  v11 = RETextureImportOperationCreateWithCGImage();
  if (a3)
  {
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  else
  {
  }

  v22[0] = inited;
  v22[1] = v8;
  v23 = v9;
  v24 = v10;
  OpaquePointer.set(options:)(v22, v11);
  v12 = specialized static TextureResource.tryCreate(from:disableNetworkSync:)(v11, 1);
  v15 = v12;
  if ((v14 & 0x100) != 0)
  {
    outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(v12, v13, v14, 1);
    type metadata accessor for TextureResource.LoadError(0);
    lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type TextureResource.LoadError and conformance TextureResource.LoadError, type metadata accessor for TextureResource.LoadError, protocol conformance descriptor for TextureResource.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v16 = v13;
    v17 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v18 = type metadata accessor for TextureResource();
    *(inited + 32) = v15;
    *(inited + 56) = v18;
    *(inited + 64) = &protocol witness table for TextureResource;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    if (!v21)
    {
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((inited + 32));
      v20 = v15[2];
      inited = swift_allocObject();
      *(inited + 16) = v20;
      *(inited + 24) = 0;
      RERetain();
      REAssetSetSwiftObject();
      outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(v15, v16, v17, 0);
      RERelease();

      return inited;
    }

    outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(v15, v16, v17, 0);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
  }

  RERelease();

  return inited;
}

void *specialized static TextureResource.load(contentsOf:withName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v7 = *a4;
  v8 = *(a4 + 1);
  v9 = *(a4 + 2);
  v10 = *(a4 + 4);
  specialized static __ServiceLocator.shared.getter();

  v28 = a1;
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  swift_beginAccess();
  v14 = RETextureImportOperationCreateWithURL();

  if (a3)
  {
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  v29[0] = v7;
  v29[1] = v8;
  v30 = v9;
  v31 = v10;
  OpaquePointer.set(options:)(v29, v14);
  v15 = specialized static TextureResource.tryCreate(from:disableNetworkSync:)(v14, 1);
  Error = v15;
  if ((v17 & 0x100) != 0)
  {
    outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(v15, v16, v17, 1);
    Error = type metadata accessor for TextureResource.LoadError(0);
    lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type TextureResource.LoadError and conformance TextureResource.LoadError, type metadata accessor for TextureResource.LoadError, protocol conformance descriptor for TextureResource.LoadError);
    swift_allocError();
    v24 = v23;
    v25 = type metadata accessor for URL();
    (*(*(v25 - 8) + 16))(v24, v28, v25);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v19 = v16;
    v20 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v22 = type metadata accessor for TextureResource();
    *(inited + 32) = Error;
    *(inited + 56) = v22;
    *(inited + 64) = &protocol witness table for TextureResource;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    if (!v27)
    {
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((inited + 32));
      RERelease();
      return Error;
    }

    outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(Error, v19, v20, 0);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
  }

  RERelease();
  return Error;
}

uint64_t specialized static TextureResource.findBundledFileExtension(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = &unk_1F40E3E80;
  v9 = 15;
  while (1)
  {
    v11 = *(v8 - 1);
    v10 = *v8;

    v12 = MEMORY[0x1C68F3280](a1, a2);
    if (v10)
    {

      v13 = MEMORY[0x1C68F3280](v11, v10);
    }

    else
    {
      v13 = 0;
    }

    v14 = [v19 URLForResource:v12 withExtension:v13];

    if (v14)
    {
      break;
    }

    v8 += 2;

    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    outlined destroy of BodyTrackingComponent?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (!--v9)
    {
      return 0;
    }
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  outlined destroy of BodyTrackingComponent?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v11;
}

uint64_t specialized static TextureResource.createTextureAssetDataFor(texture:options:)(uint64_t a1, unsigned __int8 *a2, __n128 a3)
{
  v3 = *a2;
  if (v3 == 2)
  {
    v4 = MEMORY[0x1E6998F28];
  }

  else
  {
    if (v3 != 3)
    {
      v10.super.isa = 0;
      goto LABEL_7;
    }

    v4 = MEMORY[0x1E6998F30];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_ADtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_ADtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v6 = *MEMORY[0x1E6998F20];
  *(inited + 32) = *MEMORY[0x1E6998F20];
  v7 = *v4;
  *(inited + 40) = v7;
  v8 = v6;
  v9 = v7;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ADTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of BodyTrackingComponent?(inited + 32, &_sSo11CFStringRefa_ABtMd, &_sSo11CFStringRefa_ABtMR);
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, protocol conformance descriptor for CFStringRef);
  v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_7:
  v11 = RETextureAssetDataCreateWithTexture();

  return v11;
}

uint64_t specialized static TextureResource.load(named:in:options:textureLoader:)(uint64_t a1, uint64_t a2, void *a3, char *a4, void *a5)
{
  v47 = a2;
  v8 = *a4;
  v9 = a4[4];
  v42 = *(a4 + 1);
  v43 = a4[1];
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = [objc_opt_self() mainBundle];
  }

  v11 = a3;
  v12 = specialized static __ServiceLocator.shared.getter();

  v13 = specialized static TextureResource.findBundledFileExtension(named:in:)(a1, v47, v10);
  v15 = v14;
  v41 = a1;
  v16 = MEMORY[0x1C68F3280](a1, v47);
  if (v15)
  {
    v17 = MEMORY[0x1C68F3280](v13, v15);
  }

  else
  {
    v17 = 0;
  }

  swift_beginAccess();
  v18 = RETextureImportOperationCreateWithBundleResource();

  if (!v18)
  {
    v38 = v9;
    v36 = v5;
    v37 = v12;
    goto LABEL_12;
  }

  LOBYTE(v44[0]) = v8;
  BYTE1(v44[0]) = v43;
  WORD1(v44[0]) = v42;
  BYTE4(v44[0]) = v9;
  OpaquePointer.set(options:)(v44, v18);
  v19 = specialized static TextureResource.tryCreate(from:disableNetworkSync:)(v18, 0);
  v22 = v19;
  if ((v21 & 0x100) != 0)
  {
    v38 = v9;
    v36 = v5;
    v37 = v12;
    outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(v19, v20, v21, 1);
    RERelease();
LABEL_12:
    v22 = a5[3];
    v23 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v22);
    v24 = v8;
    LOBYTE(v44[0]) = v8;
    BYTE1(v44[0]) = v43;
    WORD1(v44[0]) = v42;
    BYTE4(v44[0]) = v38;
    v25 = *(v23 + 8);
    v40 = v10;
    v26 = v25(v41, v47, v10, v44, v22, v23);
    if (v36)
    {

      return v22;
    }

    v27 = v26;

    LOBYTE(v44[0]) = v24;
    BYTE1(v44[0]) = v43;
    WORD1(v44[0]) = v42;
    BYTE4(v44[0]) = v38;
    specialized static TextureResource.createTextureAssetDataFor(texture:options:)(v27, v44, v28);
    swift_beginAccess();
    outlined init with copy of __REAssetService(v37 + 120, v44);
    v29 = v45;
    v30 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    (*(v30 + 32))(v29, v30);
    TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
    __swift_destroy_boxed_opaque_existential_1(v44);
    RERelease();
    if (REAssetGetSwiftObject())
    {
      v32 = type metadata accessor for TextureResource();
      v33 = swift_dynamicCastClass();
      if (v33)
      {
        v22 = v33;
LABEL_19:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C1887600;
        type metadata accessor for TextureResource();
        *(inited + 32) = v22;
        *(inited + 56) = v32;
        *(inited + 64) = &protocol witness table for TextureResource;

        specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_1((inited + 32));
        RERelease();

        swift_unknownObjectRelease();
        return v22;
      }

      swift_unknownObjectRelease();
    }

    v32 = type metadata accessor for TextureResource();
    v22 = swift_allocObject();
    *(v22 + 16) = TextureAssetFromData;
    *(v22 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
    goto LABEL_19;
  }

  RERelease();

  return v22;
}

uint64_t partial apply for specialized closure #1 in LoadRequest.init(_:dependencies:)(uint64_t a1, uint64_t a2)
{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &unk_1F40F1188, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &unk_1F40F0698, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &unk_1F40F0940, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

uint64_t objectdestroyTm_0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t partial apply for closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:)(uint64_t a1, uint64_t a2)
{
  v3 = 0x100000000;
  if (!*(v2 + 52))
  {
    v3 = 0;
  }

  return closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), v3 | (*(v2 + 50) << 16) | (*(v2 + 49) << 8) | *(v2 + 48), (v2 + 56));
}

uint64_t partial apply for closure #1 in static TextureResource.loadAsync(contentsOf:withName:options:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in static TextureResource.loadAsync(contentsOf:withName:options:)(v4, a1);
}

void outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(void *a1, void *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    outlined consume of TextureResource.TextureImportOperationError(a1, a2, a3 & 1);
  }

  else
  {
  }
}

void outlined consume of TextureResource.TextureImportOperationError(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t type metadata accessor for TextureResource.LoadError(uint64_t a1)
{
  result = type metadata singleton initialization cache for TextureResource.LoadError;
  if (!type metadata singleton initialization cache for TextureResource.LoadError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double outlined copy of Result<TextureResource, TextureResource.TextureImportOperationError>(void *a1, void *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    outlined copy of TextureResource.TextureImportOperationError(a1, a2, a3 & 1);
  }

  else
  {
  }

  return result;
}

id outlined copy of TextureResource.TextureImportOperationError(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return a1;
  }
}

unint64_t lazy protocol witness table accessor for type TextureResource.CopyError and conformance TextureResource.CopyError()
{
  result = lazy protocol witness table cache variable for type TextureResource.CopyError and conformance TextureResource.CopyError;
  if (!lazy protocol witness table cache variable for type TextureResource.CopyError and conformance TextureResource.CopyError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.CopyError, &unk_1F40F0448, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.CopyError and conformance TextureResource.CopyError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextureResource.CopyError and conformance TextureResource.CopyError;
  if (!lazy protocol witness table cache variable for type TextureResource.CopyError and conformance TextureResource.CopyError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.CopyError, &unk_1F40F0448, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.CopyError and conformance TextureResource.CopyError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.DrawableQueue.InitError and conformance TextureResource.DrawableQueue.InitError()
{
  result = lazy protocol witness table cache variable for type TextureResource.DrawableQueue.InitError and conformance TextureResource.DrawableQueue.InitError;
  if (!lazy protocol witness table cache variable for type TextureResource.DrawableQueue.InitError and conformance TextureResource.DrawableQueue.InitError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.DrawableQueue.InitError, &unk_1F40F03B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.DrawableQueue.InitError and conformance TextureResource.DrawableQueue.InitError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextureResource.DrawableQueue.InitError and conformance TextureResource.DrawableQueue.InitError;
  if (!lazy protocol witness table cache variable for type TextureResource.DrawableQueue.InitError and conformance TextureResource.DrawableQueue.InitError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.DrawableQueue.InitError, &unk_1F40F03B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.DrawableQueue.InitError and conformance TextureResource.DrawableQueue.InitError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.DrawableQueue.NextDrawableError and conformance TextureResource.DrawableQueue.NextDrawableError()
{
  result = lazy protocol witness table cache variable for type TextureResource.DrawableQueue.NextDrawableError and conformance TextureResource.DrawableQueue.NextDrawableError;
  if (!lazy protocol witness table cache variable for type TextureResource.DrawableQueue.NextDrawableError and conformance TextureResource.DrawableQueue.NextDrawableError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.DrawableQueue.NextDrawableError, &unk_1F40F0328, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.DrawableQueue.NextDrawableError and conformance TextureResource.DrawableQueue.NextDrawableError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextureResource.DrawableQueue.NextDrawableError and conformance TextureResource.DrawableQueue.NextDrawableError;
  if (!lazy protocol witness table cache variable for type TextureResource.DrawableQueue.NextDrawableError and conformance TextureResource.DrawableQueue.NextDrawableError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.DrawableQueue.NextDrawableError, &unk_1F40F0328, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.DrawableQueue.NextDrawableError and conformance TextureResource.DrawableQueue.NextDrawableError);
  }

  return result;
}

uint64_t partial apply for closure #1 in TextureResource.init(contentsOf:withName:options:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 28) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = v1 + v6;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v14 = *(v10 + 17);
  v15 = *(v10 + 18);
  v16 = *(v10 + 20) == 0;
  v17 = 0x100000000;
  if (v16)
  {
    v17 = 0;
  }

  v18 = v17 | (v15 << 16) | (v14 << 8);
  v19 = *(v1 + v7);
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return closure #1 in TextureResource.init(contentsOf:withName:options:)(a1, v8, v9, v1 + v5, v11, v12, v18 | v13, v19);
}

uint64_t partial apply for closure #1 in TextureResource.init<A>(named:in:options:textureLoader:)(uint64_t a1)
{
  v2 = 0x100000000;
  if (!*(v1 + 60))
  {
    v2 = 0;
  }

  return closure #1 in TextureResource.init<A>(named:in:options:textureLoader:)(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), v2 | (*(v1 + 58) << 16) | (*(v1 + 57) << 8) | *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 16), *(v1 + 24));
}

uint64_t partial apply for closure #1 in TextureResource.replaceAsyncInternal(using:options:)(uint64_t a1, uint64_t a2)
{
  v3 = 0x100000000;
  if (!*(v2 + 36))
  {
    v3 = 0;
  }

  return closure #1 in TextureResource.replaceAsyncInternal(using:options:)(a1, a2, *(v2 + 16), *(v2 + 24), v3 | (*(v2 + 34) << 16) | (*(v2 + 33) << 8) | *(v2 + 32), *(v2 + 40));
}

unint64_t specialized static TextureResource.createImportOperation(fromSlices:named:options:textureType:)(unint64_t a1, char a2, uint64_t *a3, uint64_t a4, __n128 a5, uint64_t a6, uint64_t a7)
{
  specialized static __ServiceLocator.shared.getter();
  if (a7 <= 4)
  {
    if (a7 != 2)
    {
      if (a7 != 3)
      {
        return 0xD00000000000001CLL;
      }

      goto LABEL_23;
    }

    if (a2)
    {
      if (*(a1 + 16) == 1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_11:
        if (a2)
        {
          if (*(a1 + 16) == 6)
          {
            goto LABEL_23;
          }
        }

        else if (a1 >> 62)
        {
          if (__CocoaSet.count.getter() == 6)
          {
            goto LABEL_23;
          }
        }

        else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 6)
        {
          goto LABEL_23;
        }

        return 0xD00000000000002CLL;
      }

      return 0xD000000000000030;
    }

    if (a1 >> 62)
    {
      if (__CocoaSet.count.getter() != 1)
      {
        return 0xD000000000000030;
      }

      if (!__CocoaSet.count.getter())
      {
        __break(1u);
        return 0xD000000000000030;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      return 0xD000000000000030;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {

      v13 = MEMORY[0x1C68F41F0](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v12 = *(a1 + 32);

      v13 = v12;
    }

    v14 = v13;
    swift_beginAccess();
    v11 = RETextureImportOperationCreateWithCGImage();

    if (!v11)
    {
      v11 = 0xD000000000000015;

      return v11;
    }

    goto LABEL_37;
  }

  if (a7 == 5)
  {
    goto LABEL_11;
  }

  if (a7 != 7)
  {
    return 0xD00000000000001CLL;
  }

LABEL_23:
  if (a2)
  {
    v15 = MEMORY[0x1E69E7CC0];
    v27 = MEMORY[0x1E69E7CC0];
    v16 = *(a1 + 16);

    if (v16)
    {
      v26 = a4;
      v17 = (a1 + 40);
      a4 = 0x7FFFFFFFLL;
      while (1)
      {
        v18 = *v17;
        v19 = *(v17 - 1);
        MEMORY[0x1C68F3650](v19, v20);
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        if (v18 < 0xFFFFFFFF80000000)
        {
          break;
        }

        if (v18 > 0x7FFFFFFF)
        {
          goto LABEL_44;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
        }

        v22 = *(v15 + 2);
        v21 = *(v15 + 3);
        if (v22 >= v21 >> 1)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v15);
        }

        v17 += 2;

        *(v15 + 2) = v22 + 1;
        *&v15[4 * v22 + 32] = v18;
        if (!--v16)
        {
          a4 = v26;
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
    }

    else
    {
LABEL_40:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_41;
      }
    }

    specialized _ArrayBuffer._consumeAndCreateNew()(v15);
LABEL_41:
    type metadata accessor for CGImageSourceRef(0);

    isa = Array._bridgeToObjectiveC()().super.isa;

    swift_beginAccess();
    v11 = RETextureImportOperationCreateFromImageSourceArray();

    if (!v11)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  type metadata accessor for CGImageRef(0);

  v23 = Array._bridgeToObjectiveC()().super.isa;
  swift_beginAccess();
  v11 = RETextureImportOperationCreateFromImageArray();

  if (!v11)
  {
LABEL_42:

    return 0xD000000000000017;
  }

LABEL_37:
  if (a4)
  {
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  return v11;
}

void *specialized static TextureResource.createTextureResourceSync(fromSlices:named:options:textureType:)(unint64_t a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v8 = *a5;
  v9 = *(a5 + 1);
  v10 = *(a5 + 2);
  v11 = *(a5 + 4);
  v26 = *a5;
  v27 = v9;
  v28 = v10;
  v29 = v11;
  v14 = specialized static TextureResource.createImportOperation(fromSlices:named:options:textureType:)(a1, a2 & 1, a3, a4, a7, &v26, a6);
  if ((v13 & 0x100) != 0)
  {
    Error = v12;
    v23 = v13;
    lazy protocol witness table accessor for type TextureResource.TextureImportOperationError and conformance TextureResource.TextureImportOperationError();
    swift_allocError();
    *v24 = v14;
    *(v24 + 8) = Error;
    *(v24 + 16) = v23 & 1;
    swift_willThrow();
  }

  else
  {
    v26 = v8;
    v27 = v9;
    v28 = v10;
    v29 = v11;
    OpaquePointer.set(options:)(&v26, v14);
    v15 = specialized static TextureResource.tryCreate(from:disableNetworkSync:)(v14, 1);
    Error = v15;
    if ((v17 & 0x100) != 0)
    {
      outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(v15, v16, v17, 1);
      Error = type metadata accessor for TextureResource.LoadError(0);
      lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type TextureResource.LoadError and conformance TextureResource.LoadError, type metadata accessor for TextureResource.LoadError, protocol conformance descriptor for TextureResource.LoadError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      v19 = v16;
      v20 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1887600;
      v22 = type metadata accessor for TextureResource();
      *(inited + 32) = Error;
      *(inited + 56) = v22;
      *(inited + 64) = &protocol witness table for TextureResource;

      specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
      if (!v7)
      {
        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_1((inited + 32));
        RERelease();
        return Error;
      }

      outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(Error, v19, v20, 0);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((inited + 32));
    }

    RERelease();
  }

  return Error;
}

uint64_t specialized static TextureResource.texture2DArray(slices:named:options:)(unint64_t a1, uint64_t *a2, uint64_t a3, int *a4, uint64_t a5, __n128 a6)
{
  v8 = *(a4 + 4);
  v12 = *a4;
  v13 = v8;
  v9 = specialized static TextureResource.createTextureResourceSync(fromSlices:named:options:textureType:)(a1, 0, a2, a3, &v12, a5, a6);
  if (!v7)
  {
    v10 = v9[2];
    type metadata accessor for TextureResource();
    v6 = swift_allocObject();
    *(v6 + 16) = v10;
    *(v6 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
  }

  return v6;
}

size_t specialized static TextureResource.getCubeLayout(_:)(CGImage *a1)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  result = CGImageGetHeight(a1);
  v5 = result;
  if (Height >= Width)
  {
    result = CGImageGetWidth(a1);
    if ((result * 6) >> 64 == (6 * result) >> 63)
    {
      if (v5 == 6 * result)
      {
        return 1;
      }

LABEL_12:
      lazy protocol witness table accessor for type TextureResource.CubeLayoutError and conformance TextureResource.CubeLayoutError();
      swift_allocError();
      *v6 = 0;
      return swift_willThrow();
    }

    goto LABEL_14;
  }

  if ((result - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = CGImageGetWidth(a1);
  if ((result * 3) >> 64 != (3 * result) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (4 * v5 == 3 * result)
  {
    return 2;
  }

  result = CGImageGetHeight(a1);
  if ((result * 6) >> 64 == (6 * result) >> 63)
  {
    if (6 * result == CGImageGetWidth(a1))
    {
      return 0;
    }

    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t specialized static TextureResource.sliceCube(cgImage:)(CGImage *a1)
{
  v16 = MEMORY[0x1E69E7CC0];
  v5 = specialized static TextureResource.getCubeLayout(_:)(a1);
  if (v2)
  {
    return v1;
  }

  if (v5)
  {
    if (v5 != 1)
    {
      v3 = CGImageGetHeight(a1) / 3;
      v8 = v3;
      v19.origin.x = 0.0;
      v19.origin.y = v3;
      v19.size.width = v3;
      v19.size.height = v3;
      if (!CGImageCreateWithImageInRect(a1, v19))
      {
        lazy protocol witness table accessor for type TextureResource.CubeLayoutError and conformance TextureResource.CubeLayoutError();
        swift_allocError();
        *v15 = 2;
        swift_willThrow();
        return v1;
      }

      MEMORY[0x1C68F3650]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_20;
      }

      goto LABEL_41;
    }

    Width = CGImageGetWidth(a1);
    v7 = 0;
    v8 = Width;
    v1 = MEMORY[0x1E69E7CC0];
    while ((v7 * Width) >> 64 == (v7 * Width) >> 63)
    {
      v17.origin.y = (v7 * Width);
      v17.origin.x = 0.0;
      v17.size.width = Width;
      v17.size.height = Width;
      v9 = CGImageCreateWithImageInRect(a1, v17);
      if (!v9)
      {
        goto LABEL_36;
      }

      v3 = v9;
      MEMORY[0x1C68F3650]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v7;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1 = v16;
      if (v7 == 6)
      {
        return v1;
      }
    }

    __break(1u);
  }

  else
  {
    Height = CGImageGetHeight(a1);
    v11 = 0;
    v8 = Height;
    v1 = MEMORY[0x1E69E7CC0];
    while ((v11 * Height) >> 64 == (v11 * Height) >> 63)
    {
      v18.origin.x = (v11 * Height);
      v18.origin.y = 0.0;
      v18.size.width = Height;
      v18.size.height = Height;
      v12 = CGImageCreateWithImageInRect(a1, v18);
      if (!v12)
      {
        goto LABEL_36;
      }

      v3 = v12;
      MEMORY[0x1C68F3650]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v11;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1 = v16;
      if (v11 == 6)
      {
        return v1;
      }
    }
  }

  __break(1u);
LABEL_41:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_20:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v1 = v16;
  v20.origin.x = (2 * v3);
  v20.origin.y = v8;
  v20.size.width = v8;
  v20.size.height = v8;
  if (!CGImageCreateWithImageInRect(a1, v20))
  {
    goto LABEL_36;
  }

  MEMORY[0x1C68F3650]();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v1 = v16;
  v21.origin.y = 0.0;
  v21.origin.x = v8;
  v21.size.width = v8;
  v21.size.height = v8;
  if (!CGImageCreateWithImageInRect(a1, v21))
  {
    goto LABEL_36;
  }

  MEMORY[0x1C68F3650]();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v1 = v16;
  v22.origin.x = v8;
  v22.origin.y = (2 * v3);
  v22.size.width = v8;
  v22.size.height = v8;
  if (!CGImageCreateWithImageInRect(a1, v22))
  {
    goto LABEL_36;
  }

  MEMORY[0x1C68F3650]();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v1 = v16;
  v23.origin.x = (3 * v3);
  v23.origin.y = v8;
  v23.size.width = v8;
  v23.size.height = v8;
  if (!CGImageCreateWithImageInRect(a1, v23))
  {
    goto LABEL_36;
  }

  MEMORY[0x1C68F3650]();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v1 = v16;
  v24.origin.x = v8;
  v24.origin.y = v8;
  v24.size.width = v8;
  v24.size.height = v8;
  if (CGImageCreateWithImageInRect(a1, v24))
  {
    MEMORY[0x1C68F3650]();
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return v16;
  }

  else
  {
LABEL_36:
    lazy protocol witness table accessor for type TextureResource.CubeLayoutError and conformance TextureResource.CubeLayoutError();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type TextureResource.Semantic and conformance TextureResource.Semantic()
{
  result = lazy protocol witness table cache variable for type TextureResource.Semantic and conformance TextureResource.Semantic;
  if (!lazy protocol witness table cache variable for type TextureResource.Semantic and conformance TextureResource.Semantic)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.Semantic, &type metadata for TextureResource.Semantic, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.Semantic and conformance TextureResource.Semantic);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.MipmapsMode and conformance TextureResource.MipmapsMode()
{
  result = lazy protocol witness table cache variable for type TextureResource.MipmapsMode and conformance TextureResource.MipmapsMode;
  if (!lazy protocol witness table cache variable for type TextureResource.MipmapsMode and conformance TextureResource.MipmapsMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.MipmapsMode, &type metadata for TextureResource.MipmapsMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.MipmapsMode and conformance TextureResource.MipmapsMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.Compression.ASTCBlockSize and conformance TextureResource.Compression.ASTCBlockSize()
{
  result = lazy protocol witness table cache variable for type TextureResource.Compression.ASTCBlockSize and conformance TextureResource.Compression.ASTCBlockSize;
  if (!lazy protocol witness table cache variable for type TextureResource.Compression.ASTCBlockSize and conformance TextureResource.Compression.ASTCBlockSize)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.Compression.ASTCBlockSize, &type metadata for TextureResource.Compression.ASTCBlockSize, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.Compression.ASTCBlockSize and conformance TextureResource.Compression.ASTCBlockSize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.Compression.ASTCQuality and conformance TextureResource.Compression.ASTCQuality()
{
  result = lazy protocol witness table cache variable for type TextureResource.Compression.ASTCQuality and conformance TextureResource.Compression.ASTCQuality;
  if (!lazy protocol witness table cache variable for type TextureResource.Compression.ASTCQuality and conformance TextureResource.Compression.ASTCQuality)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.Compression.ASTCQuality, &type metadata for TextureResource.Compression.ASTCQuality, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.Compression.ASTCQuality and conformance TextureResource.Compression.ASTCQuality);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.Compression and conformance TextureResource.Compression()
{
  result = lazy protocol witness table cache variable for type TextureResource.Compression and conformance TextureResource.Compression;
  if (!lazy protocol witness table cache variable for type TextureResource.Compression and conformance TextureResource.Compression)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.Compression, &type metadata for TextureResource.Compression, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.Compression and conformance TextureResource.Compression);
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TextureResource.CreateOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureResource.CreateOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TextureResource.DrawableQueue.Descriptor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureResource.DrawableQueue.Descriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextureResource.Compression(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 65285 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65285 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65285;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65285;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65285;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = v7 - 6;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureResource.Compression(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65285 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65285 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 16) + 1;
    *result = a2 - 251;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextureResource.Compression.Kind(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65285;
  if (a2 + 65285 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
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
      v5 = a1[1];
      if (!a1[1])
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

    return (*a1 | (v5 << 16)) - 65285;
  }

  if (v4)
  {
    v5 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v5 << 16)) - 65285;
    }
  }

LABEL_20:
  v7 = *(a1 + 1);
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TextureResource.Compression.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65285;
  if (a3 + 65285 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
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
    v6 = ((a2 - 251) >> 16) + 1;
    *result = a2 - 251;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 2) = v6;
      }

      else
      {
        *(result + 2) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *(result + 1) = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for TextureResource.Compression.Kind(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for TextureResource.Compression.Kind(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
  }

  else if (a2)
  {
    *(result + 1) = a2 + 3;
  }

  return result;
}

uint64_t type metadata completion function for TextureResource.LoadError(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.Compression.Kind and conformance TextureResource.Compression.Kind()
{
  result = lazy protocol witness table cache variable for type TextureResource.Compression.Kind and conformance TextureResource.Compression.Kind;
  if (!lazy protocol witness table cache variable for type TextureResource.Compression.Kind and conformance TextureResource.Compression.Kind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.Compression.Kind, &type metadata for TextureResource.Compression.Kind, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.Compression.Kind and conformance TextureResource.Compression.Kind);
  }

  return result;
}

uint64_t outlined init with copy of TextureResource.LoadError(uint64_t a1, uint64_t a2)
{
  Error = type metadata accessor for TextureResource.LoadError(0);
  (*(*(Error - 8) + 16))(a2, a1, Error);
  return a2;
}

uint64_t partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:)(uint64_t *a1)
{
  return specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), outlined consume of Result<AudioFileResource, Error>?);
}

{
  return specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

{
  return specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

void outlined consume of Result<[Entity], Error>?(void *result, char a2)
{
  if (a2 != -1)
  {
    outlined consume of Result<ModelEntity, Error>(result, a2 & 1, MEMORY[0x1E69E7CF8]);
  }
}

double _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGSgWOi0_(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = -256;
  return result;
}

void *partial apply for specialized closure #2 in LoadRequest<A>.thenWaitForResourceSharing()(void **a1)
{
  return specialized closure #2 in LoadRequest<A>.thenWaitForResourceSharing()(*a1, *(v1 + 16), *(v1 + 24));
}

{
  return specialized closure #2 in LoadRequest<A>.thenWaitForResourceSharing()(*a1, *(v1 + 16), *(v1 + 24), _ss6ResultOyxs5Error_pGRi_zRi0_zly10RealityKit19EnvironmentResourceCIsegn_SgWOy, outlined consume of (@escaping @callee_guaranteed () -> ())?);
}

uint64_t partial apply for specialized closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[5];
  v8[4] = a1[4];
  v8[5] = v4;
  v9[0] = a1[6];
  *(v9 + 9) = *(a1 + 105);
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v6 = a1[3];
  v8[2] = a1[2];
  v8[3] = v6;
  return specialized closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(v8, v2, v3);
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void partial apply for specialized closure #1 in closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 152);
  v4 = *(v1 + 104);
  v7[4] = *(v1 + 88);
  v7[5] = v4;
  v8[0] = *(v1 + 120);
  *(v8 + 9) = *(v1 + 129);
  v5 = *(v1 + 40);
  v7[0] = *(v1 + 24);
  v7[1] = v5;
  v6 = *(v1 + 72);
  v7[2] = *(v1 + 56);
  v7[3] = v6;
  specialized closure #1 in closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(a1, v2, v7, v3);
}

{
  specialized closure #1 in closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

{
  specialized closure #1 in closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

double block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.TextureImportOperationError and conformance TextureResource.TextureImportOperationError()
{
  result = lazy protocol witness table cache variable for type TextureResource.TextureImportOperationError and conformance TextureResource.TextureImportOperationError;
  if (!lazy protocol witness table cache variable for type TextureResource.TextureImportOperationError and conformance TextureResource.TextureImportOperationError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.TextureImportOperationError, &unk_1F40F13A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.TextureImportOperationError and conformance TextureResource.TextureImportOperationError);
  }

  return result;
}

uint64_t partial apply for specialized closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(uint64_t *a1)
{
  return specialized closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(*a1, *(v1 + 16), *(v1 + 24));
}

{
  return specialized closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(*a1, *(v1 + 16), *(v1 + 24));
}

uint64_t outlined assign with copy of Result<Material, Error>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10RealityKit8Material_ps5Error_pGSgMd, &_ss6ResultOy10RealityKit8Material_ps5Error_pGSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void outlined consume of Result<OpaquePointer, TextureResource.TextureImportOperationError>(void *a1, void *a2, char a3, char a4)
{
  if (a4)
  {
    outlined consume of TextureResource.TextureImportOperationError(a1, a2, a3 & 1);
  }
}

uint64_t partial apply for closure #1 in static TextureResource.createTextureLoadRequest(forRetained:options:disableNetworkSync:buildError:)(uint64_t a1, uint64_t a2)
{
  v3 = 0x100000000;
  if (!*(v2 + 36))
  {
    v3 = 0;
  }

  return closure #1 in static TextureResource.createTextureLoadRequest(forRetained:options:disableNetworkSync:buildError:)(a1, a2, *(v2 + 16), *(v2 + 24), v3 | (*(v2 + 34) << 16) | (*(v2 + 33) << 8) | *(v2 + 32), *(v2 + 37), *(v2 + 40), *(v2 + 48));
}

void outlined consume of Result<AUAudioUnit, Error>?(id result, char a2)
{
  if (a2 != -1)
  {
    outlined consume of Result<AUAudioUnit, Error>(result);
  }
}

unint64_t lazy protocol witness table accessor for type TextureResource.CubeLayoutError and conformance TextureResource.CubeLayoutError()
{
  result = lazy protocol witness table cache variable for type TextureResource.CubeLayoutError and conformance TextureResource.CubeLayoutError;
  if (!lazy protocol witness table cache variable for type TextureResource.CubeLayoutError and conformance TextureResource.CubeLayoutError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.CubeLayoutError, &unk_1F40F1310, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.CubeLayoutError and conformance TextureResource.CubeLayoutError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextureResource.CubeLayoutError and conformance TextureResource.CubeLayoutError;
  if (!lazy protocol witness table cache variable for type TextureResource.CubeLayoutError and conformance TextureResource.CubeLayoutError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.CubeLayoutError, &unk_1F40F1310, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.CubeLayoutError and conformance TextureResource.CubeLayoutError);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)(uint64_t a1, uint64_t a2)
{
  v3 = 0x100000000;
  if (!*(v2 + 61))
  {
    v3 = 0;
  }

  return closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v3 | (*(v2 + 59) << 16) | (*(v2 + 58) << 8) | *(v2 + 57), *(v2 + 64), *(v2 + 72), *(v2 + 80));
}

uint64_t partial apply for doGenerateAsync #1 @Sendable () in closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)()
{
  v1 = 0x100000000;
  if (!*(v0 + 61))
  {
    v1 = 0;
  }

  return doGenerateAsync #1 @Sendable () in closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v1 | (*(v0 + 59) << 16) | (*(v0 + 58) << 8) | *(v0 + 57), *(v0 + 64), *(v0 + 72), *(v0 + 80));
}

unint64_t lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError()
{
  result = lazy protocol witness table cache variable for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError;
  if (!lazy protocol witness table cache variable for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnvironmentResource.LoadError, &type metadata for EnvironmentResource.LoadError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in TextureResource.copy(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);

  return closure #1 in closure #1 in TextureResource.copy(to:)(a1);
}

uint64_t partial apply for closure #3 in closure #1 in TextureResource.init<A>(named:in:options:textureLoader:)(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10RealityKit15TextureResourceCs5Error_pGMd, &_sScCy10RealityKit15TextureResourceCs5Error_pGMR) - 8);
  v6 = (*(v5 + 80) + 29) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = 0x100000000;
  if (!*(v2 + 28))
  {
    v8 = 0;
  }

  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = v8 | (*(v2 + 26) << 16) | (*(v2 + 25) << 8) | *(v2 + 24);

  return closure #3 in closure #1 in TextureResource.init<A>(named:in:options:textureLoader:)(a1, a2 & 1, v7, v10, v2 + v6, v9);
}

uint64_t objectdestroy_364Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t partial apply for closure #1 in closure #3 in closure #1 in TextureResource.init<A>(named:in:options:textureLoader:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10RealityKit15TextureResourceCs5Error_pGMd, &_sScCy10RealityKit15TextureResourceCs5Error_pGMR);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = 0x100000000;
  if (!*(v0 + 29))
  {
    v3 = 0;
  }

  v4 = *(v0 + 32);
  v5 = v3 | (*(v0 + 27) << 16) | (*(v0 + 26) << 8) | *(v0 + 25);

  return closure #1 in closure #3 in closure #1 in TextureResource.init<A>(named:in:options:textureLoader:)(v1, v2, v5, v4);
}

id outlined copy of Result<[Entity], Error>(id a1, char a2, uint64_t (*a3)(id))
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return a3(a1);
  }
}

uint64_t lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in TextureResource.init(contentsOf:withName:options:)(uint64_t a1)
{
  v2 = 0x100000000;
  if (!*(v1 + 44))
  {
    v2 = 0;
  }

  return closure #1 in closure #1 in TextureResource.init(contentsOf:withName:options:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v2 | (*(v1 + 42) << 16) | (*(v1 + 41) << 8) | *(v1 + 40), *(v1 + 48));
}

uint64_t objectdestroy_370Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in TextureResource.replaceAsyncInternal(using:options:)()
{
  v1 = 0x100000000;
  if (!*(v0 + 28))
  {
    v1 = 0;
  }

  return closure #1 in closure #1 in TextureResource.replaceAsyncInternal(using:options:)(*(v0 + 16), v1 | (*(v0 + 26) << 16) | (*(v0 + 25) << 8) | *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
}

uint64_t objectdestroy_361Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t objectdestroy_31Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for specialized closure #1 in LoadRequest<A>.thenWaitForResourceSharing()(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;

  return a3(v4, v5);
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_229Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroy_288Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_209Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

double outlined copy of Result<ModelEntity, Error>(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
  }

  return result;
}

void outlined consume of Result<ModelEntity, Error>(id a1, char a2, void (*a3)(id))
{
  if (a2)
  {
  }

  else
  {
    a3(a1);
  }
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ()(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t partial apply for closure #2 in closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:)(void *a1, char a2)
{
  v3 = 0x100000000;
  if (!*(v2 + 36))
  {
    v3 = 0;
  }

  return closure #2 in closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:)(a1, a2 & 1, *(v2 + 16), *(v2 + 24), v3 | (*(v2 + 34) << 16) | (*(v2 + 33) << 8) | *(v2 + 32), *(v2 + 40), *(v2 + 48));
}

uint64_t partial apply for closure #1 in closure #1 in TextureResource.init<A>(named:in:options:textureLoader:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for TextureResource.LoadError(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t objectdestroy_384Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t partial apply for closure #1 in static TextureResource.createTextureResourceAsync(for:options:disableNetworkSync:buildError:fulfill:)()
{
  v1 = 0x100000000;
  if (!*(v0 + 28))
  {
    v1 = 0;
  }

  return closure #1 in static TextureResource.createTextureResourceAsync(for:options:disableNetworkSync:buildError:fulfill:)(*(v0 + 16), v1 | (*(v0 + 26) << 16) | (*(v0 + 25) << 8) | *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
}

void partial apply for closure #1 in closure #2 in closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:)(__n128 a1)
{
  v2 = 0x100000000;
  if (!*(v1 + 44))
  {
    v2 = 0;
  }

  closure #1 in closure #2 in closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:)(*(v1 + 16), *(v1 + 24), *(v1 + 32), v2 | (*(v1 + 42) << 16) | (*(v1 + 41) << 8) | *(v1 + 40), *(v1 + 48), *(v1 + 56), a1);
}

uint64_t getEnumTagSinglePayload for TextureResource.TextureImportOperationError(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TextureResource.TextureImportOperationError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t static TextureResource.cube(slices:named:options:)()
{

  return static TextureResource.texture2DArray(slices:named:options:)();
}

{

  return static TextureResource.texture2DArray(slices:named:options:)();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t RealityRenderer.EntityCollection.count.getter()
{

  result = REEntityGetChildCount();
  if ((result & 0x8000000000000000) == 0)
  {
    v1 = result;
    if (!result)
    {
LABEL_6:

      return v1;
    }

    v2 = 0;
    while (1)
    {
      result = REEntityGetChildCount();
      if (v2 >= result)
      {
        break;
      }

      if (v1 == ++v2)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t RealityRenderer.EntityCollection.subscript.getter(uint64_t a1)
{

  v2 = Entity.ChildCollection.subscript.getter(a1);

  return v2;
}

Swift::Int __swiftcall RealityRenderer.EntityCollection.index(after:)(Swift::Int after)
{
  if (after < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = after;
    after = REEntityGetChildCount();
    if (after > v1)
    {
      return v1 + 1;
    }
  }

  __break(1u);
  return after;
}

uint64_t RealityRenderer.EntityCollection.insert<A>(contentsOf:beforeIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  Entity.ChildCollection.insert<A>(contentsOf:beforeIndex:)(a1, a2, a3, a4);
}

uint64_t RealityRenderer.EntityCollection.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  swift_retain_n();
  v4 = specialized HasHierarchy.parent.getter();
  if (!v4)
  {
  }

  v5 = *(v4 + 16);

  v6 = *(v3 + 16);

  if (v5 == v6)
  {
    REEntitySetParent();
    type metadata accessor for Entity();
    static Entity.updateInteractions(root:)(a1);
  }
}

Swift::Void __swiftcall RealityRenderer.EntityCollection.remove(at:)(Swift::Int at)
{
  v3 = *v1;

  v4 = Entity.ChildCollection.subscript.getter(at);

  v5 = specialized HasHierarchy.parent.getter();
  if (v5)
  {
    v6 = *(v5 + 16);

    v7 = *(v3 + 16);

    if (v6 == v7)
    {
      REEntitySetParent();
      type metadata accessor for Entity();
      static Entity.updateInteractions(root:)(v4);
    }
  }

  else
  {
  }
}

uint64_t RealityRenderer.EntityCollection.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{

  a4(a1, a2, a3);
}

uint64_t protocol witness for EntityCollection.remove(_:) in conformance RealityRenderer.EntityCollection(uint64_t a1)
{

  Entity.ChildCollection.doRemove(_:preservingWorldTransform:)(a1, 0);
}

uint64_t protocol witness for EntityCollection.remove(at:) in conformance RealityRenderer.EntityCollection(uint64_t a1)
{

  v2 = Entity.ChildCollection.subscript.getter(a1);
  Entity.ChildCollection.doRemove(_:preservingWorldTransform:)(v2, 0);
}

uint64_t protocol witness for Collection.endIndex.getter in conformance RealityRenderer.EntityCollection@<X0>(uint64_t *a1@<X8>)
{
  result = REEntityGetChildCount();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance RealityRenderer.EntityCollection(uint64_t *a1, uint64_t *a2))()
{
  v3 = *a2;

  v4 = Entity.ChildCollection.subscript.getter(v3);
  a1[1] = v4;

  *a1 = v4;
  return protocol witness for Collection.subscript.read in conformance RealityRenderer.EntityCollection;
}

void protocol witness for Collection.subscript.getter in conformance RealityRenderer.EntityCollection(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  ChildCount = REEntityGetChildCount();
  if (ChildCount < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (ChildCount < v4)
  {
LABEL_9:
    __break(1u);
    return;
  }

  a2[1] = v4;
  a2[2] = v6;
  *a2 = v5;
}

uint64_t protocol witness for Collection.indices.getter in conformance RealityRenderer.EntityCollection@<X0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = 0;

  result = REEntityGetChildCount();
  a1[2] = result;
  return result;
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance RealityRenderer.EntityCollection@<X0>(uint64_t *a3@<X8>)
{
  result = specialized Collection.index(_:offsetBy:)();
  *a3 = result;
  return result;
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance RealityRenderer.EntityCollection@<X0>(uint64_t a4@<X8>)
{
  result = specialized Collection.index(_:offsetBy:limitedBy:)();
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

void specialized Collection.distance(from:to:)(int64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_36;
  }

  v7 = a4;
  v8 = a1;
  if (a4 < a1)
  {
    goto LABEL_34;
  }

  v9 = a5;
  v10 = a2;
  if (a5 != a2)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  if (a1 != a4)
  {
    v11 = v6;
    v12 = *v6;
    v13 = v11[1];
    v32 = v13;
    v14 = a5;
    v15 = 1;
    v30 = v12;
    if (!v13)
    {
      goto LABEL_9;
    }

    while ((v8 & 0x8000000000000000) == 0)
    {
      v16 = 1 << *(v13 + 32);
      if (v8 >= v16)
      {
        break;
      }

      v17 = v8 >> 6;
      v18 = v13[(v8 >> 6) + 8];
      if (((v18 >> v8) & 1) == 0)
      {
        goto LABEL_30;
      }

      if (*(v13 + 9) != v10)
      {
        goto LABEL_31;
      }

      v19 = v18 & (-2 << (v8 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
        outlined init with copy of [String : String](&v32, v31, &_sSDySS10RealityKit17AnimationResourceCGSgMd, &_sSDySS10RealityKit17AnimationResourceCGSgMR);
      }

      else
      {
        v20 = v7;
        v21 = v9;
        v22 = v14;
        v23 = v17 << 6;
        v24 = v17 + 1;
        v25 = &v13[v17 + 9];
        while (v24 < (v16 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            outlined init with copy of [String : String](&v32, v31, &_sSDySS10RealityKit17AnimationResourceCGSgMd, &_sSDySS10RealityKit17AnimationResourceCGSgMR);
            outlined consume of [String : AudioResource].Index._Variant(v8, v10, 0);
            v8 = __clz(__rbit64(v26)) + v23;
            goto LABEL_22;
          }
        }

        outlined init with copy of [String : String](&v32, v31, &_sSDySS10RealityKit17AnimationResourceCGSgMd, &_sSDySS10RealityKit17AnimationResourceCGSgMR);
        outlined consume of [String : AudioResource].Index._Variant(v8, v10, 0);
        v8 = v16;
LABEL_22:
        v14 = v22;
        v9 = v21;
        v7 = v20;
        v12 = v30;
      }

      v28 = *(v13 + 9);

      if (v28 != v9)
      {
        goto LABEL_32;
      }

      if (v8 == v7)
      {
        return;
      }

      if (__OFADD__(v15++, 1))
      {
        goto LABEL_33;
      }

      v13 = v32;
      v10 = v14;
      if (v32)
      {
        continue;
      }

LABEL_9:
      if (v12)
      {
        v13 = AnimationLibraryResource.keyedResources.getter();
        continue;
      }

      v13 = MEMORY[0x1E69E7CC8];
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  outlined consume of [String : AudioResource].Index._Variant(a4, a2, 0);
}

uint64_t specialized Collection.distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < result)
  {
    goto LABEL_14;
  }

  if (a2 != result)
  {
    v4 = result;
    v3 = a2 - result;
    if (a2 <= result)
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v5 = 0;
    while (!__OFADD__(v5, 1))
    {
      if (v4 < 0)
      {
        goto LABEL_12;
      }

      result = REEntityGetChildCount();
      if (v4 + v5 >= result)
      {
        goto LABEL_13;
      }

      if (v3 == ++v5)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  return 0;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance RealityRenderer.EntityCollection(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance RealityRenderer.EntityCollection(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

uint64_t *protocol witness for Collection.index(after:) in conformance RealityRenderer.EntityCollection@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  if (*result < 0)
  {
    __break(1u);
  }

  else
  {
    result = REEntityGetChildCount();
    if (v2 < result)
    {
      *a2 = v2 + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.formIndex(after:) in conformance RealityRenderer.EntityCollection(uint64_t *result)
{
  v1 = *result;
  if (*result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    result = REEntityGetChildCount();
    if (v1 < result)
    {
      *v2 = v1 + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance RealityRenderer.EntityCollection()
{
  v1 = *v0;

  ChildCount = REEntityGetChildCount();
  v3 = specialized Collection.distance(from:to:)(0, ChildCount, v1);

  return v3;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance RealityRenderer.EntityCollection()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t (*RealityRenderer.CameraSettings.__proto_antialiasingMode_v1.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 1);
  return RealityRenderer.CameraSettings.__proto_antialiasingMode_v1.modify;
}

CGColorRef one-time initialization function for _blackTransparent()
{
  result = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.0);
  static RealityRenderer.CameraSettings.ColorBackground._blackTransparent = result;
  return result;
}

id RealityRenderer.CameraSettings.colorBackground.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return v2;
}

void RealityRenderer.CameraSettings.colorBackground.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance RealityRenderer.CameraOutput.InitError()
{
  v1 = 0xD000000000000035;
  v2 = *v0;
  v3 = 0xD00000000000003ELL;
  if (v2 == 3)
  {
    v3 = 0xD000000000000035;
  }

  if (v2 != 2)
  {
    v1 = v3;
  }

  if (*v0 <= 1u)
  {
    return 0xD00000000000003BLL;
  }

  else
  {
    return v1;
  }
}

RealityFoundation::RealityRenderer::CameraOutput::RelativeViewport __swiftcall RealityRenderer.CameraOutput.RelativeViewport.init(originX:originY:width:height:)(Swift::Double originX, Swift::Double originY, Swift::Double width, Swift::Double height)
{
  *v4 = originX;
  v4[1] = originY;
  v4[2] = width;
  v4[3] = height;
  result.height = height;
  result.width = width;
  result.originY = originY;
  result.originX = originX;
  return result;
}

uint64_t RealityRenderer.CameraOutput.init(_:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X8>)
{
  v4 = a1[1];
  v21 = *a1;
  v22 = v4;
  v5 = a1[3];
  v23 = a1[2];
  v24 = v5;
  v6 = v21 >> 62;
  if (v21 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  if (*(&v21 + 1) >> 62)
  {
    goto LABEL_70;
  }

  if (*((*(&v21 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    v7 = 0;
    if (v23)
    {
LABEL_11:
      if (v6)
      {
        result = __CocoaSet.count.getter();
        if (result)
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_17;
        }
      }

      v9 = *(&v21 + 1);
      if (!(*(&v21 + 1) >> 62))
      {
        result = *((*(&v21 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }

LABEL_78:
      result = __CocoaSet.count.getter();
      if (result)
      {
LABEL_21:
        if (v9 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
LABEL_29:
            v9 = v22;
            if (!(v22 >> 62))
            {
              result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (result)
              {
                goto LABEL_31;
              }

LABEL_65:
              result = swift_unknownObjectRelease();
              v19 = a1[1];
              *a2 = *a1;
              a2[1] = v19;
              v20 = a1[3];
              a2[2] = a1[2];
              a2[3] = v20;
              return result;
            }

LABEL_86:
            result = __CocoaSet.count.getter();
            if (!result)
            {
              goto LABEL_65;
            }

LABEL_31:
            if ((v9 & 0xC000000000000001) == 0)
            {
              if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v11 = *(v9 + 32);
                swift_unknownObjectRetain();
                goto LABEL_34;
              }

              __break(1u);
              goto LABEL_92;
            }

LABEL_90:
            v11 = MEMORY[0x1C68F41F0](0, v9);
LABEL_34:
            if ([v11 layerCount] != 2)
            {
LABEL_35:
              outlined destroy of RealityRenderer.CameraOutput.Descriptor(&v21);
              lazy protocol witness table accessor for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError();
              swift_allocError();
              v13 = 4;
LABEL_67:
              *v12 = v13;
              swift_willThrow();
              swift_unknownObjectRelease();
              return swift_unknownObjectRelease();
            }

            goto LABEL_64;
          }
        }

        else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        if ((v9 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1C68F41F0](0, v9);
        }

        else
        {
          if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_86;
          }

          v10 = *(v9 + 32);
          swift_unknownObjectRetain();
        }

        if (([v10 usage] & 4) != 0)
        {
          if ([v10 arrayLength] == 2)
          {
            swift_unknownObjectRelease();
            goto LABEL_29;
          }

LABEL_66:
          outlined destroy of RealityRenderer.CameraOutput.Descriptor(&v21);
          lazy protocol witness table accessor for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError();
          swift_allocError();
          v13 = 3;
          goto LABEL_67;
        }

LABEL_55:
        outlined destroy of RealityRenderer.CameraOutput.Descriptor(&v21);
        lazy protocol witness table accessor for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError();
        swift_allocError();
        v13 = 1;
        goto LABEL_67;
      }

LABEL_17:
      if (!v7)
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      if (([v7 usage] & 4) != 0)
      {
        if ([v7 arrayLength] == 2)
        {
          v9 = *(&v21 + 1);
          goto LABEL_21;
        }

        outlined destroy of RealityRenderer.CameraOutput.Descriptor(&v21);
        lazy protocol witness table accessor for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError();
        swift_allocError();
        *v14 = 2;
LABEL_47:
        swift_willThrow();
        return swift_unknownObjectRelease();
      }

LABEL_46:
      outlined destroy of RealityRenderer.CameraOutput.Descriptor(&v21);
      lazy protocol witness table accessor for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError();
      swift_allocError();
      *v16 = 0;
      goto LABEL_47;
    }
  }

  else
  {
LABEL_3:
    while ((v21 & 0xC000000000000001) == 0)
    {
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v7 = *(v21 + 32);
        swift_unknownObjectRetain();
        if (v23)
        {
          goto LABEL_11;
        }

        goto LABEL_38;
      }

      __break(1u);
LABEL_70:
      if (__CocoaSet.count.getter())
      {
        goto LABEL_10;
      }
    }

    v7 = MEMORY[0x1C68F41F0](0, v21);
    if (v23)
    {
      goto LABEL_11;
    }
  }

LABEL_38:
  if (v6)
  {
    result = __CocoaSet.count.getter();
    v15 = &property descriptor for UnlitMaterial.readsDepth;
    if (result)
    {
      goto LABEL_44;
    }
  }

  else
  {
    result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = &property descriptor for UnlitMaterial.readsDepth;
    if (result)
    {
      goto LABEL_44;
    }
  }

  v9 = *(&v21 + 1);
  if (*(&v21 + 1) >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_49;
    }
  }

  else
  {
    result = *((*(&v21 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_49;
    }
  }

LABEL_44:
  if (v7)
  {
    if (([v7 v15[429]] & 4) == 0)
    {
      goto LABEL_46;
    }

    v9 = *(&v21 + 1);
LABEL_49:
    if (v9 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_58;
      }
    }

    else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_58;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1C68F41F0](0, v9);
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_78;
      }

      v17 = *(v9 + 32);
      swift_unknownObjectRetain();
    }

    if (([v17 v15[429]] & 4) == 0)
    {
      goto LABEL_55;
    }

    if ([v17 arrayLength] != 1)
    {
      goto LABEL_66;
    }

    swift_unknownObjectRelease();
LABEL_58:
    v9 = v22;
    if (v22 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_65;
      }
    }

    else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_65;
    }

    if ((v22 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1C68F41F0](0, v22);
    }

    else
    {
      if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_90;
      }

      v18 = *(v22 + 32);
      swift_unknownObjectRetain();
    }

    if ([v18 layerCount] != 1)
    {
      goto LABEL_35;
    }

LABEL_64:
    swift_unknownObjectRelease();
    goto LABEL_65;
  }

LABEL_93:
  __break(1u);
  return result;
}

void RealityRenderer.scene.getter()
{
  if (*(v0 + 16))
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t key path getter for RealityRenderer.entities : RealityRenderer@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 24);
  memset(v5, 0, sizeof(v5));
  v6 = xmmword_1C1898F00;
  swift_retain_n();
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA015SynchronizationD0V_TtB5(v5, 0, v3);

  *a2 = v3;
  return result;
}

uint64_t RealityRenderer.entities.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  memset(v4, 0, sizeof(v4));
  v5 = xmmword_1C1898F00;
  swift_retain_n();
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA015SynchronizationD0V_TtB5(v4, 0, v2);
}

uint64_t RealityRenderer.entities.setter(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(*a1 + 16);

  if (v3 != *(v2 + 16))
  {
    __break(1u);
  }

  return result;
}

void (*RealityRenderer.entities.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *(v1 + 24);
  *(v3 + 48) = v5;
  *(v3 + 40) = v5;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *v3 = 0;
  *(v3 + 24) = xmmword_1C1898F00;
  swift_retain_n();
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA015SynchronizationD0V_TtB5(v4, 0, v5);

  return RealityRenderer.entities.modify;
}

void RealityRenderer.entities.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*(*a1 + 40) + 16);
  v4 = *(*a1 + 48);
  if ((a2 & 1) == 0)
  {

    if (v3 == *(v4 + 16))
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  if (v3 != *(v4 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:

  free(v2);
}

void RealityRenderer.subscribe<A>(to:on:componentType:_:)(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, ValueMetadata *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v24 = a9;
  v25 = a8;
  v23 = a7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine5EmptyVyyts5NeverOGMd, &_s7Combine5EmptyVyyts5NeverOGMR);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  if (*(v9 + 16))
  {

    Scene.subscribe<A>(to:on:componentType:_:)(a2, a3, a4, a5, a6, v23, v25, v27);

    outlined init with copy of __REAssetService(v27, v26);
    type metadata accessor for StoredEventSubscription();
    v19 = swift_allocObject();
    Empty.init(completeImmediately:)();
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Empty<(), Never> and conformance Empty<A, B>, &_s7Combine5EmptyVyyts5NeverOGMd, &_s7Combine5EmptyVyyts5NeverOGMR, MEMORY[0x1E695C018]);
    v20 = Publisher<>.sink(receiveValue:)();
    (*(v16 + 8))(v18, v15);
    v21 = type metadata accessor for AnyCancellable();
    v22 = MEMORY[0x1E695BF08];
    v19[5] = v21;
    v19[6] = v22;
    v19[2] = v20;
    __swift_destroy_boxed_opaque_existential_1(v27);
    *v24 = v19;
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1(v19 + 2);
    outlined init with take of ForceEffectBase(v26, (v19 + 2));
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t RealityRenderer.ImageBasedLight.resource.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t key path setter for RealityRenderer.lighting : RealityRenderer(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;

  return RealityRenderer.updateIBL()();
}

double RealityRenderer.lighting.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v3;

  return result;
}

uint64_t RealityRenderer.lighting.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  swift_beginAccess();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;

  return RealityRenderer.updateIBL()();
}

uint64_t (*RealityRenderer.lighting.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return RealityRenderer.lighting.modify;
}

uint64_t RealityRenderer.lighting.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return RealityRenderer.updateIBL()();
  }

  return result;
}

uint64_t key path setter for RealityRenderer.activeCamera : RealityRenderer(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
}

double RealityRenderer.activeCamera.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t RealityRenderer.activeCamera.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

id key path getter for RealityRenderer.cameraSettings : RealityRenderer@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 57);
  v5 = *(v3 + 58);
  v6 = *(v3 + 60);
  v7 = *(v3 + 64);
  *a2 = *(v3 + 56);
  *(a2 + 1) = v4;
  *(a2 + 2) = v5;
  *(a2 + 4) = v6;
  *(a2 + 8) = v7;

  return v7;
}

void key path setter for RealityRenderer.cameraSettings : RealityRenderer(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 1);
  v6 = *(a1 + 1);
  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 64);
  *(v7 + 56) = v2;
  *(v7 + 57) = v3;
  *(v7 + 58) = v4;
  *(v7 + 60) = v5;
  *(v7 + 64) = v6;
  v9 = v6;
}

id RealityRenderer.cameraSettings.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 57);
  v4 = *(v1 + 58);
  v5 = *(v1 + 60);
  v6 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 1) = v3;
  *(a1 + 2) = v4;
  *(a1 + 4) = v5;
  *(a1 + 8) = v6;

  return v6;
}

void RealityRenderer.cameraSettings.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 1);
  v6 = *(a1 + 1);
  swift_beginAccess();
  v7 = *(v1 + 64);
  *(v1 + 56) = v2;
  *(v1 + 57) = v3;
  *(v1 + 58) = v4;
  *(v1 + 60) = v5;
  *(v1 + 64) = v6;
}

uint64_t static RealityRenderer.MetalEventAction.wait(for:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return swift_unknownObjectRetain();
}

float closure #1 in RealityRenderer.extendedDynamicRangeOutput.didset(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 1.0;
  }

  v2 = Strong;
  swift_beginAccess();
  v3 = *(v2 + 76);

  return v3;
}

float thunk for @escaping @callee_guaranteed () -> (@unowned Float)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

void RealityRenderer.extendedDynamicRangeOutput.setter(char a1)
{
  v3 = a1 & 1;
  swift_beginAccess();
  v4 = *(v1 + 72);
  *(v1 + 72) = a1;
  if (v4 != v3)
  {
    v5 = *(v1 + 16);
    if (a1)
    {
      if (v5)
      {
        RESceneAddEDRColorManagementComponent();
        v6 = swift_allocObject();
        swift_weakInit();
        aBlock[4] = partial apply for closure #1 in RealityRenderer.extendedDynamicRangeOutput.didset;
        aBlock[5] = v6;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@unowned Float);
        aBlock[3] = &block_descriptor_3;
        v7 = _Block_copy(aBlock);

        REEDRColorManagementComponentSetHeadroomCallback();
        _Block_release(v7);
        return;
      }

      __break(1u);
      goto LABEL_9;
    }

    if (!v5)
    {
LABEL_9:
      __break(1u);
      return;
    }

    RESceneRemoveEDRColorManagementComponent();
  }
}

void (*RealityRenderer.extendedDynamicRangeOutput.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 72);
  return RealityRenderer.extendedDynamicRangeOutput.modify;
}

void RealityRenderer.extendedDynamicRangeOutput.modify(uint64_t a1)
{
  v1 = *a1;
  RealityRenderer.extendedDynamicRangeOutput.setter(*(*a1 + 32));

  free(v1);
}

uint64_t RealityRenderer.extendedDynamicRangeHeadroom.setter(float a1)
{
  v3 = (v1 + 76);
  result = swift_beginAccess();
  if (a1 < 1.0 || a1 > 16.0)
  {
    a1 = *v3;
  }

  *v3 = a1;
  return result;
}

void (*RealityRenderer.extendedDynamicRangeHeadroom.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 76);
  return RealityRenderer.extendedDynamicRangeHeadroom.modify;
}

void RealityRenderer.extendedDynamicRangeHeadroom.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);
  if (v2 < 1.0 || v2 > 16.0)
  {
    v2 = *(v3 + 76);
  }

  *(v3 + 76) = v2;
  free(v1);
}

dispatch_semaphore_t one-time initialization function for uniqueTokenGenerator()
{
  result = dispatch_semaphore_create(1);
  static RealityRenderer.uniqueTokenGenerator = 0;
  qword_1EBEA6210 = result;
  return result;
}

{
  result = dispatch_semaphore_create(1);
  static VideoPlayerComponent.uniqueTokenGenerator = 0;
  qword_1EBEB0F40 = result;
  return result;
}

void RealityRenderer.PostProcessRenderGraphAndMaterial.ensurePostProcessRenderGraphAndMaterial(postProcessRenderGraphOriginalHandle:backgroundMaterialDefinitionHandle:)(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = v3;
  if (!*(v3 + 16) || !*(v3 + 24))
  {
    v5 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    v6 = *(v5 + 24);
    swift_unownedRetainStrong();
    swift_beginAccess();
    v7 = *(v6 + 40);

    if (v7)
    {
      swift_beginAccess();
      outlined init with copy of __REAssetService(v7 + 120, v16);

      v8 = v17;
      v9 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v9 + 32))(v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v16);
      v10 = RERenderGraphAssetClone();
      v11 = *(v5 + 24);
      swift_unownedRetainStrong();
      swift_beginAccess();
      v12 = *(v11 + 40);

      if (v12)
      {
        swift_beginAccess();
        outlined init with copy of __REAssetService(v12 + 120, v16);

        REMaterialAssetBuilderCreate();
        REMaterialAssetBuilderSetMaterialDefinition();
        v13 = v17;
        v14 = v18;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        (*(v14 + 32))(v13, v14);
        v15 = REAssetManagerMaterialAssetBuilderBuild();
        RERelease();
        __swift_destroy_boxed_opaque_existential_1(v16);
        RERenderGraphAssetSetRuntimeNodeAssetHandleSetting();

        *(v4 + 16) = v10;
        *(v4 + 24) = v15;
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

uint64_t RealityRenderer.PostProcessRenderGraphAndMaterial.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void RealityRenderer.nextPostProcessRenderGraphAndMaterial()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = MEMORY[0x1E69E6530];
  while (1)
  {
    v3 = *(v1 + 168);
    v4 = *(v1 + 176);
    if (v3 >> 62)
    {
      break;
    }

    if (v4 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_4:
    type metadata accessor for Entity();
    v5 = swift_allocObject();
    *(v5 + 16) = REEntityCreate();
    MEMORY[0x1C68F9740]();
    RERelease();
    specialized setupEntityTraits<A>(_:)(v5);
    REEntityGetOrAddComponent();

    __EntityInfoComponent.init(entity:)(&v14);
    v6 = v14;
    v7 = v15;

    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA02__c4InfoD0V_TtB5Tf4ndn_n(v6, v7, v5);

    v8 = *(v5 + 16);

    if (v8 != *(v5 + 16))
    {
      __break(1u);
LABEL_15:

      MEMORY[0x1C68F41F0](v8, v2);

      v13 = *(v1 + 176);
      v12 = v13 + 1;
      if (!__OFADD__(v13, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    v14 = 0;
    v15 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v14 = 0xD000000000000018;
    v15 = 0x80000001C18E0540;
    v16 = *(v1 + 176);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v9);

    Entity.name.setter(v14, v15);
    type metadata accessor for RealityRenderer.PostProcessRenderGraphAndMaterial();
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v5;
    swift_beginAccess();

    MEMORY[0x1C68F3650](v11);
    if (*((*(v1 + 168) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 168) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  if (v4 >= __CocoaSet.count.getter())
  {
    goto LABEL_4;
  }

LABEL_9:
  v2 = *(v1 + 168);
  v8 = *(v1 + 176);
  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  if (v8 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  v12 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
LABEL_13:
    *(v1 + 176) = v12;
    return;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance RealityRenderer.InitError()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD00000000000003BLL;
  }
}

double RealityRenderer.oneCameraClearColorGamutCache.getter()
{
  if ((*(v0 + 305) & 1) == 0)
  {
    return *(v0 + 288);
  }

  RECGColorToColorGamut();
  result = 0.0;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0;
  return result;
}

uint64_t RealityRenderer.__allocating_init()()
{
  v0 = swift_allocObject();
  RealityRenderer.init()();
  return v0;
}

uint64_t RealityRenderer.init()()
{
  v1 = v0;
  *(v0 + 96) = 0;
  v2 = v0 + 96;
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 72) = 0;
  *(v0 + 76) = 0x40000000;
  *(v0 + 152) = 0;
  v45 = (v0 + 152);
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.0);
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  *(v2 + 208) = 256;
  *(v2 + 352) = v3;
  *(v2 + 360) = 0;
  *(v2 + 368) = 0;
  *(v2 + 376) = v3;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  *(v2 + 264) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 328) = v3;
  *(v2 + 336) = v3;
  *(v2 + 344) = 0;
  if (one-time initialization token for _blackTransparent != -1)
  {
    swift_once();
  }

  v4 = static RealityRenderer.CameraSettings.ColorBackground._blackTransparent;
  *(v1 + 56) = 257;
  *(v1 + 58) = 0;
  *(v1 + 60) = -1;
  *(v1 + 64) = v4;
  v5 = v4;
  GenericRGB = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.0);
  *(v1 + 480) = 0;
  *(v1 + 488) = GenericRGB;
  v7 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v8 = *(v7 + 24);
  swift_unownedRetainStrong();
  v9 = *(v8 + 24);

  swift_beginAccess();
  outlined init with copy of __REAssetService(v7 + 80, &v49);
  v10 = *(&v50 + 1);
  v11 = v51;
  __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
  (*(v11 + 32))(&v46, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(&v49);
  MEMORY[0x1C68F9230](v9);
  OverlayForRealityRenderer = REEngineCreateOverlayForRealityRenderer();
  if (!OverlayForRealityRenderer)
  {
    lazy protocol witness table accessor for type RealityRenderer.InitError and conformance RealityRenderer.InitError();
    swift_allocError();
    *v16 = 1;
    goto LABEL_7;
  }

  v13 = OverlayForRealityRenderer;
  if (REEngineOverlayIsEngineInsideTick())
  {
    RERelease();
    lazy protocol witness table accessor for type RealityRenderer.InitError and conformance RealityRenderer.InitError();
    swift_allocError();
    *v15 = 0;
LABEL_7:
    swift_willThrow();
LABEL_8:

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v1 + 152), *(v1 + 160));

    outlined destroy of BodyTrackingComponent?(v2 + 96, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    outlined destroy of BodyTrackingComponent?(v2 + 136, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

    v17 = *(v2 + 328);
    v55 = *(v2 + 312);
    v56 = v17;
    v57 = *(v2 + 344);
    v18 = *(v2 + 264);
    v51 = *(v2 + 248);
    v52 = v18;
    v19 = *(v2 + 296);
    v53 = *(v2 + 280);
    v54 = v19;
    v20 = *(v2 + 232);
    v49 = *(v2 + 216);
    v50 = v20;
    outlined destroy of RealityRenderer.RenderContext(&v49);

    type metadata accessor for RealityRenderer();
    swift_deallocPartialClassInstance();
    return v1;
  }

  specialized static RealityRenderer.createEmitterAsset()(v14);
  swift_beginAccess();
  result = outlined init with copy of [String : String](v7 + 40, &v46, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (!*(&v47 + 1))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  outlined init with take of ForceEffectBase(&v46, &v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__RenderService_pMd, &_s10RealityKit15__RenderService_pMR);
  type metadata accessor for RERenderManager();
  swift_dynamicCast();
  RERenderGraphEmitterPreloadProvidersAssets();
  *(v1 + 80) = v13;
  RealityRendererSceneGroup = REECSManagerCreateRealityRendererSceneGroup();
  if (!RealityRendererSceneGroup)
  {
    RERelease();
    lazy protocol witness table accessor for type RealityRenderer.InitError and conformance RealityRenderer.InitError();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();

    RERelease();
    goto LABEL_8;
  }

  *(v1 + 88) = RealityRendererSceneGroup;
  REEngineOverlaySetRealityRendererSceneGroup();
  closure #1 in RealityRenderer.init()();
  *(v1 + 16) = v23;

  type metadata accessor for AnchorEntity();
  v24 = swift_allocObject();
  result = Entity.init()(v24);
  *(v1 + 24) = result;
  v25 = *(v1 + 16);
  if (!v25)
  {
    goto LABEL_52;
  }

  v26 = result;

  specialized Scene.AnchorCollection.append(_:)(v26, v25);

  if (!*(v1 + 16))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  REECSManagerAddSceneToRealityRendererSceneGroup();
  v27 = *(v7 + 24);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v28 = *(v27 + 40);

  if (!v28)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  swift_beginAccess();
  outlined init with copy of __REAssetService(v28 + 120, &v49);

  v29 = *(&v50 + 1);
  v30 = v51;
  __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
  v31 = (*(v30 + 32))(v29, v30);
  __swift_destroy_boxed_opaque_existential_1(&v49);
  result = REAssetManagerCreateAssetHandle();
  if (!result)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  *(v1 + 120) = result;
  result = REAssetManagerCreateAssetHandle();
  if (!result)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  *(v1 + 128) = result;
  result = REAssetManagerCreateAssetHandle();
  if (!result)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  *(v1 + 136) = result;
  result = REAssetManagerCreateAssetHandle();
  if (!result)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  *(v1 + 144) = result;
  result = REAssetManagerCreateAssetHandle();
  if (!result)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  *(v1 + 184) = result;
  REAssetHandleLoadAsync();
  REAssetHandleLoadAsync();
  swift_unownedRetainStrong();

  EnablePreloadEngineAssets = REEngineConfigurationGetEnablePreloadEngineAssets();

  if (EnablePreloadEngineAssets)
  {
    REAssetHandleLoadAsync();
    REAssetHandleLoadAsync();
    REAssetHandleLoadAsync();
  }

  swift_unownedRetainStrong();

  IsSolariumLeanModeEnabled = REEngineConfigurationIsSolariumLeanModeEnabled();

  if (IsSolariumLeanModeEnabled)
  {
    REAnchorComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    REAnchorComponentSetAnchoredLocally();
    goto LABEL_31;
  }

  swift_beginAccess();
  v35 = static RealityFusionSession.sharedSession;
  if (static RealityFusionSession.sharedSession)
  {
    result = swift_beginAccess();
    v36 = v35[3];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (!v37)
    {
      v35[3] = v38;

      RealityFusionSession.sharedCount.didset();
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_51;
  }

  specialized static __ServiceLocator.shared.getter();
  type metadata accessor for RealityFusionSession();
  swift_allocObject();
  v35 = specialized RealityFusionSession.init(_:)();
LABEL_29:
  *(v1 + 104) = v35;

  REEntityCreate();
  REEntitySetName();
  REAnchorComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  REAnchorComponentSetAnchoredLocally();
  RESceneUnderstandingRootComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RESceneUnderstandingRenderOptionsComponentGetComponentType();
  result = REEntityGetOrAddComponentByClass();
  if (*(v1 + 16))
  {
    RESceneAddEntity();
    REHideEntity();
LABEL_31:
    type metadata accessor for Entity();
    v39 = swift_allocObject();
    *v2 = Entity.init()(v39);

    Entity.name.setter(0xD00000000000001BLL, 0x80000001C18DFCE0);

    if (*v2)
    {

      Entity.turnIntoNinja()();

      if (*(v1 + 16))
      {
        *&v49 = *(v1 + 16);
        v40 = *v2;
        if (*v2)
        {

          Scene.AnchorCollection.appendNinja(_:)(v40);

          result = RealityRenderer.updateIBL()();
          if (*(v1 + 16))
          {
            v48 = 0;
            v47 = 0u;
            v46 = 0u;
            v41 = swift_allocObject();
            swift_weakInit();

            _s10RealityKit5SceneC9subscribe2to2on_7Combine11Cancellable_pxm_AA11EventSource_pSgyxctAA0I0RzlFAA0C6EventsO6UpdateV_Tt0g5(&v46, partial apply for closure #2 in RealityRenderer.init(), v41, &v49);

            outlined destroy of BodyTrackingComponent?(&v46, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
            swift_beginAccess();
            outlined assign with take of Cancellable?(&v49, v2 + 96);
            result = swift_endAccess();
            if (*(v1 + 16))
            {
              v48 = 0;
              v47 = 0u;
              v46 = 0u;
              v42 = swift_allocObject();
              swift_weakInit();

              _s10RealityKit5SceneC9subscribe2to2on_7Combine11Cancellable_pxm_AA11EventSource_pSgyxctAA0I0RzlFAA0C6EventsO6RenderV_Tt0g5(&v46, partial apply for closure #3 in RealityRenderer.init(), v42, &v49);

              outlined destroy of BodyTrackingComponent?(&v46, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
              swift_beginAccess();
              outlined assign with take of Cancellable?(&v49, v2 + 136);
              swift_endAccess();
              v43 = *(v1 + 152);
              v44 = *(v1 + 160);
              *v45 = 0;
              v45[1] = 0;
              outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v43, v44);
              swift_unownedRetainStrong();

              LODWORD(v42) = REEngineConfigurationGetEnablePreloadMXIAssets();

              if (v42)
              {
                if (MEMORY[0x1C68F68B0](v31))
                {
                  REAssetManagerUpdate();
                  if (MEMORY[0x1C68F68B0](v31))
                  {
                    usleep(0x3E8u);
                    REAssetManagerUpdate();
                    if (MEMORY[0x1C68F68B0](v31))
                    {
                      usleep(0x3E8u);
                      REAssetManagerUpdate();
                      if (MEMORY[0x1C68F68B0](v31))
                      {
                        usleep(0x3E8u);
                        REAssetManagerUpdate();
                        if (MEMORY[0x1C68F68B0](v31))
                        {
                          usleep(0x3E8u);
                          REAssetManagerUpdate();
                          if (MEMORY[0x1C68F68B0](v31))
                          {
                            usleep(0x3E8u);
                            REAssetManagerUpdate();
                            if (MEMORY[0x1C68F68B0](v31))
                            {
                              usleep(0x3E8u);
                              REAssetManagerUpdate();
                              if (MEMORY[0x1C68F68B0](v31))
                              {
                                usleep(0x3E8u);
                                REAssetManagerUpdate();
                                if (MEMORY[0x1C68F68B0](v31))
                                {
                                  usleep(0x3E8u);
                                  REAssetManagerUpdate();
                                  if (MEMORY[0x1C68F68B0](v31))
                                  {
                                    usleep(0x3E8u);
                                    REAssetManagerUpdate();
                                    if (MEMORY[0x1C68F68B0](v31))
                                    {
                                      usleep(0x3E8u);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              RERelease();

              return v1;
            }

            goto LABEL_64;
          }

LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_65:
  __break(1u);
  return result;
}

void closure #1 in RealityRenderer.init()()
{
  if (one-time initialization token for uniqueTokenGenerator != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  OS_dispatch_semaphore.wait()();
  if (__OFADD__(static RealityRenderer.uniqueTokenGenerator, 1))
  {
    __break(1u);
  }

  else
  {
    ++static RealityRenderer.uniqueTokenGenerator;
    OS_dispatch_semaphore.signal()();
    swift_endAccess();
    _StringGuts.grow(_:)(24);

    v0 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v0);

    String.utf8CString.getter();

    v1 = RESceneCreate();

    type metadata accessor for Scene();
    swift_allocObject();
    Scene.init(coreScene:)(v1);
    RERelease();
  }
}

uint64_t closure #2 in RealityRenderer.init()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = v2;
    RealityRenderer.doUpdateCallback(deltaTime:)(v4);
  }

  return result;
}

uint64_t closure #3 in RealityRenderer.init()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    RealityRenderer.doRenderCallback()();
  }

  return result;
}

uint64_t RealityRenderer.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29.i8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29.i8[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  RERelease();
  RERelease();
  RERelease();
  RERelease();
  RERelease();
  result = specialized static __ServiceLocator.__sharedEngine.getter();
  if (result)
  {
    v32 = v7;
    v33 = v5;
    v34 = v6;
    v35 = v3;
    v36 = v2;
    v11 = *(result + 32);
    result = swift_beginAccess();
    v12 = *(v1 + 16);
    if (v12)
    {
      v13 = *(v1 + 72);
      v14 = *(v1 + 104);
      v15 = *(v1 + 112);
      v29 = *(v1 + 80);
      swift_beginAccess();
      outlined init with copy of [String : String](v1 + 192, v42, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      swift_beginAccess();
      outlined init with copy of [String : String](v42, v40, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      outlined init with copy of [String : String](v1 + 232, v38, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      v16 = swift_allocObject();
      v17 = v40[0];
      v18 = v40[1];
      *(v16 + 48) = vextq_s8(v29, v29, 8uLL);
      *(v16 + 64) = v17;
      *(v16 + 80) = v18;
      v19 = v38[1];
      *(v16 + 104) = v38[0];
      *(v16 + 16) = v13;
      *(v16 + 24) = v12;
      *(v16 + 32) = v15;
      v30 = v15;
      v31 = v14;
      *(v16 + 40) = v14;
      *(v16 + 96) = v41;
      *(v16 + 120) = v19;
      *(v16 + 136) = v39;
      *&v45 = partial apply for closure #1 in RealityRenderer.deinit;
      *(&v45 + 1) = v16;
      *&v43 = MEMORY[0x1E69E9820];
      *(&v43 + 1) = 1107296256;
      *&v44 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v44 + 1) = &block_descriptor_11;
      v20 = _Block_copy(&v43);
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v21 = v11;
      static DispatchQoS.unspecified.getter();
      v37 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      v22 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
      v23 = v33;
      v24 = v36;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1C68F3CA0](0, v22, v23, v20);
      _Block_release(v20);

      (*(v35 + 8))(v23, v24);
      (*(v32 + 8))(v22, v34);
      outlined destroy of BodyTrackingComponent?(v42, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v1 + 152), *(v1 + 160));

      outlined destroy of BodyTrackingComponent?(v1 + 192, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      outlined destroy of BodyTrackingComponent?(v1 + 232, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

      v25 = *(v1 + 424);
      v49 = *(v1 + 408);
      v50 = v25;
      v51 = *(v1 + 440);
      v26 = *(v1 + 360);
      v45 = *(v1 + 344);
      v46 = v26;
      v27 = *(v1 + 392);
      v47 = *(v1 + 376);
      v48 = v27;
      v28 = *(v1 + 328);
      v43 = *(v1 + 312);
      v44 = v28;
      outlined destroy of RealityRenderer.RenderContext(&v43);

      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in RealityRenderer.deinit(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  v14 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of [String : String](v14 + 40, &v32, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (v33)
  {
    outlined init with take of ForceEffectBase(&v32, aBlock);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__RenderService_pMd, &_s10RealityKit15__RenderService_pMR);
    type metadata accessor for RERenderManager();
    swift_dynamicCast();
    v16 = v32;
    if (a1)
    {
      RESceneRemoveEDRColorManagementComponent();
    }

    if (!a3)
    {
      goto LABEL_8;
    }

    v26 = a2;
    if (one-time initialization token for dispatchQueue != -1)
    {
      swift_once();
    }

    v17 = static __RERenderGraphEmitter.dispatchQueue;
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = a3;
    v19 = swift_allocObject();
    *(v19 + 16) = partial apply for closure #1 in __RERenderGraphEmitter.unsetup(mgr:);
    *(v19 + 24) = v18;
    v30 = thunk for @callee_guaranteed () -> ()partial apply;
    v31 = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    v29 = &block_descriptor_348;
    v20 = _Block_copy(aBlock);

    dispatch_sync(v17, v20);
    _Block_release(v20);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    a2 = v26;
    if (v17)
    {
      __break(1u);
    }

    else
    {
LABEL_8:
      outlined init with copy of [String : String](a7, aBlock, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      if (v29)
      {
        __swift_project_boxed_opaque_existential_1(aBlock, v29);
        dispatch thunk of Cancellable.cancel()();
        __swift_destroy_boxed_opaque_existential_1(aBlock);
      }

      else
      {
        outlined destroy of BodyTrackingComponent?(aBlock, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      }

      outlined init with copy of [String : String](a8, aBlock, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      if (v29)
      {
        __swift_project_boxed_opaque_existential_1(aBlock, v29);
        dispatch thunk of Cancellable.cancel()();
        __swift_destroy_boxed_opaque_existential_1(aBlock);
      }

      else
      {
        outlined destroy of BodyTrackingComponent?(aBlock, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      }

      swift_beginAccess();
      outlined init with copy of __REAssetService(v14 + 80, aBlock);
      v21 = v29;
      v22 = v30;
      __swift_project_boxed_opaque_existential_1(aBlock, v29);
      (*(v22 + 3))(a2, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      if (!a4)
      {
        goto LABEL_17;
      }

      result = swift_beginAccess();
      v23 = *(a4 + 24);
      v24 = __OFSUB__(v23, 1);
      v25 = v23 - 1;
      if (!v24)
      {
        *(a4 + 24) = v25;

        RealityFusionSession.sharedCount.didset();

LABEL_17:
        RERelease();
        RERelease();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t RealityRenderer.__deallocating_deinit()
{
  RealityRenderer.deinit();

  return swift_deallocClassInstance();
}

uint64_t RealityRenderer.updateIBL()()
{
  result = swift_beginAccess();
  v2 = *(v0 + 32);
  v3 = *(v0 + 96);
  if (v2)
  {
    if (!v3)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v4 = *(v0 + 40);
    swift_retain_n();
    swift_retain_n();
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation017__ImageBasedLightD0V_TtB5(v2, v4, 0, v3);

    v5 = *(v3 + 16);

    v6 = *(v3 + 16);

    if (v5 == v6)
    {
      return result;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  swift_retain_n();
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation017__ImageBasedLightD0V_TtB5(0, 0, 0, v3);
  v7 = *(v3 + 16);

  v8 = *(v3 + 16);

  if (v7 != v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

void RealityRenderer.setupOneCamera(cam:cameraOutput:cameraSettings:renderGraphAndMaterial:)(uint64_t a1, unint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = *a2;
  v39 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = *(a2 + 32);
  v8 = a2[6];
  v36 = *a3;
  v9 = a3[1];
  v32 = a3[2];
  v35 = *(a3 + 1);
  v10 = *(a3 + 1);
  RERenderGraphFileProviderArrayComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RERenderGraphFileProviderArrayComponentRemoveAll();
  RECameraViewDescriptorsComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RECameraViewDescriptorsComponentClearCameraViewDescriptors();
  RECameraViewDescriptorsComponentAddViewDescriptor();
  v37 = v4 >> 62;
  if (v4 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_7;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_77;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_80;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    RECameraViewDescriptorsComponentAddSpecifyCommandFromTexture();
    swift_unknownObjectRelease();
LABEL_7:
    v34 = v39 >> 62;
    if (v39 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_13;
      }
    }

    else if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    if ((v39 & 0xC000000000000001) != 0)
    {

      MEMORY[0x1C68F41F0](0, v39);
    }

    else
    {
      if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:

        MEMORY[0x1C68F41F0](0, v4);

        v11 = MEMORY[0x1C68F41F0](0, v4);

        goto LABEL_29;
      }

      swift_unknownObjectRetain();
    }

    RECameraViewDescriptorsComponentAddSpecifyCommandFromTexture();
    swift_unknownObjectRelease();
LABEL_13:
    if (v5 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_19;
      }
    }

    else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
LABEL_80:

      MEMORY[0x1C68F41F0](0, v5);
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_82;
      }

      swift_unknownObjectRetain();
    }

    RECameraViewDescriptorsComponentSetRasterizationRateMap();
    swift_unknownObjectRelease();
LABEL_19:
    if (v7)
    {
      RECameraViewDescriptorsComponentSetViewMode();
    }

    if (*(v6 + 2))
    {
      break;
    }

    __break(1u);
LABEL_77:

    MEMORY[0x1C68F41F0](0, v4);
  }

  RECameraViewDescriptorsComponentCameraViewDescriptorSetViewport();
  if (v37)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_32;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_83;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_85;
  }

  v11 = *(v4 + 32);
  swift_unknownObjectRetain_n();
LABEL_29:
  v12 = [v11 arrayLength];
  swift_unknownObjectRelease();
  if (v12 >= 2)
  {
    RECameraViewDescriptorsComponentCameraViewDescriptorSetViewport();
  }

  swift_unknownObjectRelease();
LABEL_32:
  RenderGraphDataStruct = RERenderGraphCreateRenderGraphDataStruct();
  RERenderGraphDataStructAddFloat4();
  MEMORY[0x1C68FD860](RenderGraphDataStruct, "disableAA", v9 ^ 1u);
  v14 = RELinkedOnOrAfterFall2025OSVersions();
  v15 = v10;
  if (v10)
  {
    v16 = v14;
    v17 = *(v38 + 272);
    type metadata accessor for CGColorRef(0);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef, protocol conformance descriptor for CGColorRef);
    v18 = v10;
    v19 = v17;
    v20 = static _CFObject.== infix(_:_:)();

    if ((v20 & 1) == 0)
    {
      v21 = *(v38 + 272);
      *(v38 + 272) = v18;
      v22 = v18;

      RECGColorToColorGamut();
      *(v38 + 288) = 0;
      *(v38 + 296) = 0;
      *(v38 + 304) = 0;
    }

    *v23.i64 = RealityRenderer.oneCameraClearColorGamutCache.getter();
    v24 = vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(v23))));
    v25 = (v24 ^ (v24 | v36 ^ 1)) & v16;
    if ((v24 | v36 ^ 1))
    {
      v15 = v10;
    }

    else
    {
      v15 = v10;
      if (((v32 ^ 1) & 1) == 0)
      {
        RERenderGraphFileProviderArrayComponentAdd();
        v25 = 1;
      }
    }
  }

  else
  {
    v25 = 0;
  }

  MEMORY[0x1C68FD880](RenderGraphDataStruct, "meshSceneFilterMask", v35);
  MEMORY[0x1C68FD860](RenderGraphDataStruct, "disableTonemapping", 1);
  if (v25)
  {

    if (!v8)
    {
      goto LABEL_66;
    }

LABEL_49:
    if (v37)
    {
      v6 = &property descriptor for UnlitMaterial.readsDepth;
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_58;
      }
    }

    else
    {
      v6 = &property descriptor for UnlitMaterial.readsDepth;
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_58:
        RERenderGraphFileProviderArrayComponentAdd();
        v29 = 1;
        goto LABEL_59;
      }
    }

    if ((v4 & 0xC000000000000001) == 0)
    {
      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v27 = *(v4 + 32);
        swift_unknownObjectRetain();
LABEL_56:
        v28 = [v27 *(v6 + 439)];
        swift_unknownObjectRelease();
        if (!v28)
        {
          goto LABEL_58;
        }

        v29 = 0;
LABEL_59:
        if (!v34)
        {
          if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

LABEL_68:
          if (v29)
          {
LABEL_66:
            RECameraViewDescriptorsComponentCameraViewDescriptorSetSettingStruct();
            RERelease();
            RECameraViewDescriptorsComponentSetForceWaitOnPipelineCompilation();
            RECameraViewDescriptorsComponentSetRenderCommandEncoder();
            RECameraViewDescriptorsComponentSetRenderCommandEncoderCommandMask();
            return;
          }

LABEL_65:
          RERenderGraphFileProviderArrayComponentAdd();
          goto LABEL_66;
        }

        if (!__CocoaSet.count.getter())
        {
          goto LABEL_68;
        }

LABEL_61:
        if ((v39 & 0xC000000000000001) != 0)
        {

          v30 = MEMORY[0x1C68F41F0](0, v39);

LABEL_64:
          v31 = [v30 *(v6 + 439)];
          swift_unknownObjectRelease();
          if (v29 & 1 | (v31 != 0))
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        }

        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v30 = *(v39 + 32);
          swift_unknownObjectRetain();
          goto LABEL_64;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

LABEL_85:

    v27 = MEMORY[0x1C68F41F0](0, v4);

    goto LABEL_56;
  }

  RealityRenderer.PostProcessRenderGraphAndMaterial.ensurePostProcessRenderGraphAndMaterial(postProcessRenderGraphOriginalHandle:backgroundMaterialDefinitionHandle:)(*(v38 + 136), *(v38 + 144), v26);
  if (*(a4 + 16))
  {
    if (*(a4 + 24))
    {
      RERenderGraphAssetSetRuntimeNodeSettingBool();
      RERenderGraphAssetSetRuntimeNodeSettingBool();
      REMaterialAssetSetBool();
      if (v15)
      {
        REMaterialAssetSetColor4F();
      }

      RERenderGraphAssetSetRuntimeNodeSettingBool();
      String.utf8CString.getter();

      RERenderGraphAssetSetRuntimeNodeStringSetting();

      RERenderGraphFileProviderArrayComponentAdd();
      if (v8)
      {
        goto LABEL_49;
      }

      goto LABEL_66;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *RealityRenderer.CameraOutput.renderPassDescritptor.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void RealityRenderer.doUpdateCallback(deltaTime:)(float a1)
{
  v2 = v1;
  v3 = *(v1 + 104);
  if (v3)
  {
    swift_beginAccess();
    v4 = *(v3 + 16);
    if (!v4)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v5 = v4;
    specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    if (!REServiceLocatorGetECSService())
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    RFServiceManagerGenerateSnapshot();
    v6 = RFServiceManagerGetAnchorManagementService();
    if (v6)
    {
      if (!*(v2 + 16))
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v7 = v6;
      RFAnchorManagementServiceUpdateByDeltaTime();
    }
  }

  *(v2 + 176) = 0;
  swift_beginAccess();
  if (*(v2 + 440))
  {
    if (*(v2 + 440) == 1)
    {
      RealityRenderer.nextPostProcessRenderGraphAndMaterial()();
      v9 = v8;
      swift_beginAccess();
      v10 = *(v2 + 48);
      if (v10)
      {
        v11 = *(v2 + 328);
        v81 = *(v2 + 312);
        v82 = v11;
        v12 = *(v2 + 360);
        v83 = *(v2 + 344);
        v84 = v12;
        if (v81.n128_u64[0])
        {
          *v56 = v81.n128_u64[0];
          v13 = *(v2 + 336);
          *&v56[8] = *(v2 + 320);
          *&v56[24] = v13;
          *&v56[40] = *(v2 + 352);
          *&v56[56] = *(v2 + 368);
          swift_beginAccess();
          v14 = *(v2 + 57);
          v15 = *(v2 + 58);
          v16 = *(v2 + 60);
          v17 = *(v2 + 64);
          v72 = *(v2 + 56);
          v73 = v14;
          v74 = v15;
          v75 = v16;
          v76 = v17;

          outlined init with copy of [String : String](&v81, &v62, &_s17RealityFoundation0A8RendererC12CameraOutputVSgMd, &_s17RealityFoundation0A8RendererC12CameraOutputVSgMR);
          v18 = v17;
          RealityRenderer.setupOneCamera(cam:cameraOutput:cameraSettings:renderGraphAndMaterial:)(v10, v56, &v72, v9);

          v62 = *v56;
          v63 = *&v56[16];
          v64 = *&v56[32];
          v65 = *&v56[48];
          outlined destroy of RealityRenderer.CameraOutput(&v62);
          return;
        }

        goto LABEL_47;
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return;
    }

    v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit6EntityC_SbTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v20 = *(*(v2 + 472) + 16);
    if (v20)
    {
      RealityRenderer.nextPostProcessRenderGraphAndMaterial()();
      v22 = *(v2 + 472);
      if (*(v22 + 16))
      {
        v23 = v21;
        v24 = 0;
        v25 = 0;
        v26 = v20 - 1;
        do
        {
          v27 = *(v22 + v24 + 112);
          if (!v19[2] || (specialized __RawDictionaryStorage.find<A>(_:)(), (v28 & 1) == 0))
          {

            v29 = v27;
            goto LABEL_27;
          }

          v29 = *(v23 + 32);
          swift_retain_n();

          _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA017PerspectiveCameraD0V_Tt0B5(&v62);

          v30 = v62.n128_u32[2] | (v62.n128_u8[12] << 32);
          if ((v30 & 0xFF00000000) == 0x200000000)
          {

            if (REEntityGetComponent())
            {
              REOrthographicCameraComponentGetNear();
              v32 = v31;
              REOrthographicCameraComponentGetFar();
              v34 = v33;
              REOrthographicCameraComponentGetScale();
              v36 = v35;
              v37 = REOrthographicCameraComponentGetScaleDirection() == 0;

              _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation018OrthographicCameraD0V_TtB5Tf4ndn_n(v32 | (v34 << 32), v36 | (v37 << 32), v29);
            }

            else
            {

              RECustomMatrixCameraComponentGetComponentType();
              if (!REEntityGetComponentByClass())
              {
                goto LABEL_24;
              }

              if (RECustomMatrixCameraComponentGetEyeCount() != 1)
              {

                _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation038_proto_StereoProjectiveTransformCameraD3_v1V_Tt0B5(&v62);

                v53 = v62.n128_u64[0];
                if (v62.n128_u64[0])
                {
                  v54 = v62.n128_i64[1];
                  v55 = v63;

                  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation038_proto_StereoProjectiveTransformCameraD3_v1V_TtB5(v53, v54, v55, 0, v29);

                  outlined consume of _proto_StereoProjectiveTransformCameraComponent_v1?(v53, v54, v55);
                }

                goto LABEL_24;
              }

              Component = REEntityGetComponent();
              if (Component)
              {
                v77.n128_u64[0] = Component;
                static ProjectiveTransformCameraComponent.__fromCore(_:)(v56);

                v68 = v59;
                v69 = v60;
                v70 = v61;
                v64 = *&v56[32];
                v65 = *&v56[48];
                v66 = v57;
                v67 = v58;
                v62 = *v56;
                v63 = *&v56[16];
                destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
                v87 = v68;
                v88 = v69;
                v89 = v70;
                v83 = v64;
                v84 = v65;
                v85 = v66;
                v86 = v67;
                v81 = v62;
                v82 = v63;

                _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation025ProjectiveTransformCameraD0V_TtB5Tf4ndn_n(&v81, v29);
              }
            }
          }

          else
          {
            v38 = v62.n128_u64[0];

            _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA017PerspectiveCameraD0V_TtB5Tf4ndn_n(v38, v30, v29);
          }

LABEL_24:
          specialized HasHierarchy.setParent(_:preservingWorldTransform:)(v27, 0);
          swift_beginAccess();

          MEMORY[0x1C68F3650](v39);
          if (*((*(v2 + 448) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 448) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();

LABEL_27:

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v77.n128_u64[0] = v19;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(1, v29, isUniquelyReferenced_nonNull_native);

          v41 = *(v2 + 472);
          if (v25 >= *(v41 + 16))
          {
            goto LABEL_42;
          }

          v19 = v77.n128_u64[0];
          v42 = v41 + v24;
          v43 = *(v42 + 32);
          v44 = *(v42 + 48);
          v45 = *(v42 + 80);
          *&v56[32] = *(v42 + 64);
          *&v56[48] = v45;
          *v56 = v43;
          *&v56[16] = v44;
          v77 = *(v42 + 32);
          v78 = *(v42 + 48);
          v79 = *(v42 + 64);
          v80 = *(v42 + 80);
          v46 = *(v42 + 97);
          v47 = *(v42 + 98);
          v48 = *(v42 + 100);
          v49 = *(v42 + 104);
          v72 = *(v42 + 96);
          v73 = v46;
          v74 = v47;
          v75 = v48;
          v76 = v49;
          outlined init with copy of RealityRenderer.CameraOutput(v56, v71);
          v50 = v49;
          RealityRenderer.setupOneCamera(cam:cameraOutput:cameraSettings:renderGraphAndMaterial:)(v29, v77.n128_u64, &v72, v23);

          v62 = v77;
          v63 = v78;
          v64 = v79;
          v65 = v80;
          outlined destroy of RealityRenderer.CameraOutput(&v62);
          if (v26 == v25)
          {

            return;
          }

          RealityRenderer.nextPostProcessRenderGraphAndMaterial()();
          v23 = v51;
          v22 = *(v2 + 472);
          ++v25;
          v24 += 88;
        }

        while (v25 < *(v22 + 16));
      }

      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }
  }
}

uint64_t specialized HasHierarchy.setParent(_:preservingWorldTransform:)(uint64_t a1, char a2)
{
  v3 = v2;
  result = REEntityGetParent();
  if (!result)
  {
    if (!a1)
    {
      return result;
    }

LABEL_9:

    Entity.ChildCollection.doAppend(_:preservingWorldTransform:)(v3, a2 & 1);
  }

  v7 = result;
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v8 = swift_dynamicCastClassUnconditional();
    if (a1)
    {
      goto LABEL_4;
    }

LABEL_13:

    Entity.ChildCollection.doRemove(_:preservingWorldTransform:)(v3, a2 & 1);
  }

  result = REEntityIsBeingDestroyed();
  if (result)
  {
    __break(1u);
    return result;
  }

  specialized static Entity.entityInfoType(_:)(v7);
  if (v9)
  {
    v8 = (*(v9 + 232))();
    v10 = *(v8 + 16);

    MEMORY[0x1C68F9740](v10, 0);
    *(v8 + 16) = v7;
    MEMORY[0x1C68F9740](v7, v8);

    if (!a1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = makeEntity(for:)(v7);
    if (!a1)
    {
      goto LABEL_13;
    }
  }

LABEL_4:
  if (*(v8 + 16) != *(a1 + 16))
  {
    goto LABEL_9;
  }
}

uint64_t RealityRenderer.doRenderCallback()()
{
  result = swift_beginAccess();
  if (*(v0 + 440))
  {
    v2 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    result = outlined init with copy of [String : String](v2 + 40, &v41, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
    if (v42)
    {
      outlined init with take of ForceEffectBase(&v41, &aBlock);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__RenderService_pMd, &_s10RealityKit15__RenderService_pMR);
      type metadata accessor for RERenderManager();
      swift_dynamicCast();
      RenderFrameSettings = RERenderManagerCreateRenderFrameSettings();
      v4 = *(v0 + 424);
      v5 = *(v4 + 16);
      if (v5)
      {

        v6 = v4 + 40;
        do
        {
          RERenderFrameSettingsAddGpuWaitEvent();
          v6 += 16;
          --v5;
        }

        while (v5);
      }

      v7 = *(v0 + 432);
      v8 = *(v7 + 16);
      if (v8)
      {

        v9 = v7 + 40;
        do
        {
          RERenderFrameSettingsAddGpuSignalEvent();
          v9 += 16;
          --v8;
        }

        while (v8);
      }

      REEngineOverlayGetCurrentTime();
      RERenderFrameSettingsSetTotalTime();
      RenderFrameWorkload = RERenderManagerCreateRenderFrameWorkload();
      type metadata accessor for RERenderFrameWorkload();
      v11 = swift_allocObject();
      *(v11 + 16) = RenderFrameWorkload;
      MEMORY[0x1C68FD7C0](RenderFrameWorkload, RenderFrameSettings);
      v12 = *(v0 + 408);
      if (v12)
      {
        v13 = *(v0 + 416);
        v14 = swift_allocObject();
        swift_weakInit();
        v15 = swift_allocObject();
        v15[2] = v14;
        v15[3] = v12;
        v15[4] = v13;
        v16 = swift_allocObject();
        v16[2] = partial apply for closure #4 in RealityRenderer.doRenderCallback();
        v16[3] = v15;
        v16[4] = v11;
        v39 = closure #1 in RERenderFrameWorkload.addCompletedHandler(handler:)partial apply;
        v40 = v16;
        aBlock = MEMORY[0x1E69E9820];
        v36 = 1107296256;
        v37 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer) -> ();
        v38 = &block_descriptor_329;
        v17 = _Block_copy(&aBlock);
        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v12, v13);
        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v12, v13);

        RERenderFrameWorkloadAddCompletedHandler();
        _Block_release(v17);

        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v12, v13);
      }

      v18 = *(v0 + 152);
      if (v18)
      {
        v19 = *(v0 + 160);
        v20 = swift_allocObject();
        *(v20 + 16) = v18;
        *(v20 + 24) = v19;
        v21 = swift_allocObject();
        v21[2] = partial apply for closure #2 in RealityRenderer.doRenderCallback();
        v21[3] = v20;
        v21[4] = v11;
        v39 = partial apply for closure #1 in RERenderFrameWorkload.addEncodedHandler(handler:);
        v40 = v21;
        aBlock = MEMORY[0x1E69E9820];
        v36 = 1107296256;
        v37 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer) -> ();
        v38 = &block_descriptor_318;
        v22 = _Block_copy(&aBlock);
        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v18, v19);

        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v18, v19);

        RERenderFrameWorkloadAddCompletedHandler();
        _Block_release(v22);

        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v18, v19);
      }

      v23 = *(v0 + 392);
      if (v23)
      {
        v24 = *(v0 + 400);
        v25 = swift_allocObject();
        swift_weakInit();
        v26 = swift_allocObject();
        v26[2] = v25;
        v26[3] = v23;
        v26[4] = v24;
        v27 = swift_allocObject();
        v27[2] = partial apply for closure #3 in RealityRenderer.doRenderCallback();
        v27[3] = v26;
        v27[4] = v11;
        v39 = partial apply for closure #1 in RERenderFrameWorkload.addEncodedHandler(handler:);
        v40 = v27;
        aBlock = MEMORY[0x1E69E9820];
        v36 = 1107296256;
        v37 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer) -> ();
        v38 = &block_descriptor_309_0;
        v28 = _Block_copy(&aBlock);
        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v23, v24);

        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v23, v24);

        RERenderFrameWorkloadAddScheduledHandler();
        _Block_release(v28);

        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v23, v24);
      }

      v29 = *(v0 + 376);
      if (v29)
      {
        v30 = *(v0 + 384);
        v31 = swift_allocObject();
        swift_weakInit();
        v32 = swift_allocObject();
        v32[2] = v31;
        v32[3] = v29;
        v32[4] = v30;
        v33 = swift_allocObject();
        v33[2] = partial apply for closure #4 in RealityRenderer.doRenderCallback();
        v33[3] = v32;
        v33[4] = v11;
        v39 = partial apply for closure #1 in RERenderFrameWorkload.addEncodedHandler(handler:);
        v40 = v33;
        aBlock = MEMORY[0x1E69E9820];
        v36 = 1107296256;
        v37 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer) -> ();
        v38 = &block_descriptor_299_0;
        v34 = _Block_copy(&aBlock);
        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v29, v30);

        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v29, v30);

        RERenderFrameWorkloadAddEncodedHandler();
        _Block_release(v34);

        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v29, v30);
      }

      result = RERenderFrameWorkloadSetExternalEncoderOperation();
      if (*(v0 + 441))
      {
        goto LABEL_22;
      }

      if (*(v0 + 112))
      {
        RERenderGraphEmitterAssetExecute();
LABEL_22:
        RERenderFrameWorkloadCommit();

        RERelease();
        *(v0 + 456) = v11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void closure #2 in RealityRenderer.doRenderCallback()(uint64_t a1, void (*a2)(uint64_t), __n128 a3)
{
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v4 = *(v3 + 16);

  if (MEMORY[0x1C68FE2A0](v4))
  {
    if (!REProfilerServiceRenderFrameWorkloadHasStatistics())
    {

      return;
    }

    REProfilerServiceProcessData();
    REProfilerServiceCopyRenderFrameWorkloadStatistics();
    static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #1 in RealityRenderer.doRenderCallback()(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

void RealityRenderer.lazyInitEmitter()(__n128 a1)
{
  if (!*(v1 + 112))
  {
    v2 = v1;
    v3 = specialized static __ServiceLocator.shared.getter();
    type metadata accessor for __RERenderGraphEmitter();

    *(v1 + 112) = static __RERenderGraphEmitter.firstUsedEmitter()();

    if (!*(v1 + 112))
    {
      v5 = specialized static RealityRenderer.createEmitterAsset()(v4);
      v17 = MEMORY[0x1E69E6B70];
      v16[0] = v5;
      outlined init with copy of Any(v16, &v21);
      swift_dynamicCast();
      v6 = v20;
      __swift_destroy_boxed_opaque_existential_1(v16);
      type metadata accessor for __REAsset();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v1 + 112) = v8;
    }

    swift_beginAccess();
    outlined init with copy of [String : String](v3 + 40, &v21, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
    if (!v22)
    {
      __break(1u);
      return;
    }

    outlined init with take of ForceEffectBase(&v21, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__RenderService_pMd, &_s10RealityKit15__RenderService_pMR);
    type metadata accessor for RERenderManager();
    swift_dynamicCast();
    v9 = v21;
    v10 = *(v2 + 112);
    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = one-time initialization token for dispatchQueue;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = static __RERenderGraphEmitter.dispatchQueue;
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    *(v13 + 24) = v10;
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for closure #1 in __RERenderGraphEmitter.setup(mgr:);
    *(v14 + 24) = v13;
    v18 = _sIg_Ieg_TRTA_0;
    v19 = v14;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed () -> ();
    v17 = &block_descriptor_338;
    v15 = _Block_copy(v16);

    dispatch_sync(v12, v15);
    _Block_release(v15);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      __break(1u);
LABEL_10:
    }
  }
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance RealityRenderer.UpdateAndRenderError()
{
  if (*v0)
  {
    return 0xD00000000000005ALL;
  }

  else
  {
    return 0xD00000000000003BLL;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RealityRenderer.update(_:)(Swift::Double a1)
{
  if (REEngineOverlayIsEngineInsideTick())
  {
    lazy protocol witness table accessor for type RealityRenderer.UpdateAndRenderError and conformance RealityRenderer.UpdateAndRenderError();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 424);
    v8[6] = *(v1 + 408);
    v8[7] = v3;
    v9 = *(v1 + 440);
    v4 = *(v1 + 360);
    v8[2] = *(v1 + 344);
    v8[3] = v4;
    v5 = *(v1 + 392);
    v8[4] = *(v1 + 376);
    v8[5] = v5;
    v6 = *(v1 + 328);
    v8[0] = *(v1 + 312);
    v8[1] = v6;
    *(v1 + 392) = 0u;
    *(v1 + 408) = 0u;
    *(v1 + 360) = 0u;
    *(v1 + 376) = 0u;
    *(v1 + 328) = 0u;
    *(v1 + 344) = 0u;
    *(v1 + 312) = 0u;
    v7 = MEMORY[0x1E69E7CC0];
    *(v1 + 424) = MEMORY[0x1E69E7CC0];
    *(v1 + 432) = v7;
    *(v1 + 440) = 0;
    outlined destroy of RealityRenderer.RenderContext(v8);
    REEngineOverlayEnterFrame();
    REEngineOverlayFramePrepare();
    REEngineOverlayFrameSimulate();
    REEngineOverlayFrameCommit();
    REEngineOverlayFrameExit();
  }
}

uint64_t RealityRenderer.updateAndRender(deltaTime:cameraOutput:whenScheduled:onComplete:actionsBeforeRender:actionsAfterRender:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v15 = a1[1];
  v46 = *a1;
  v47 = v15;
  v16 = a1[3];
  v48 = a1[2];
  v49 = v16;
  result = REEngineOverlayIsEngineInsideTick();
  if (result)
  {
    lazy protocol witness table accessor for type RealityRenderer.UpdateAndRenderError and conformance RealityRenderer.UpdateAndRenderError();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }

  v38 = a6;
  if ((v46 & 0xC000000000000001) != 0)
  {

    v19 = MEMORY[0x1C68F41F0](0, v46);
  }

  else
  {
    if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(v46 + 32);
    swift_unknownObjectRetain();
  }

  swift_beginAccess();
  if (*(v8 + 64) || ![v19 isFramebufferOnly])
  {
    v41 = v46;
    v42 = v47;
    v43 = v48;
    v44 = v49;
    v21 = (v8 + 312);
    swift_beginAccess();
    v22 = *(v8 + 328);
    v45[0] = *(v8 + 312);
    v45[1] = v22;
    v23 = *(v8 + 360);
    v45[2] = *(v8 + 344);
    v45[3] = v23;
    v24 = v47;
    *(v8 + 312) = v46;
    *(v8 + 328) = v24;
    v25 = v44;
    *(v8 + 344) = v43;
    *(v8 + 360) = v25;
    outlined init with copy of RealityRenderer.CameraOutput(&v46, v39);
    outlined destroy of BodyTrackingComponent?(v45, &_s17RealityFoundation0A8RendererC12CameraOutputVSgMd, &_s17RealityFoundation0A8RendererC12CameraOutputVSgMR);
    if (a2)
    {
      v26 = a3;
    }

    else
    {
      v26 = 0;
    }

    v27 = *(v8 + 392);
    v28 = *(v8 + 400);
    *(v8 + 392) = a2;
    *(v8 + 400) = v26;
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2, a3);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v27, v28);
    if (a4)
    {
      v29 = a5;
    }

    else
    {
      v29 = 0;
    }

    v30 = *(v8 + 408);
    v31 = *(v8 + 416);
    *(v8 + 408) = a4;
    *(v8 + 416) = v29;
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a4, a5);
    *(v8 + 424) = v38;
    *(v8 + 432) = a7;

    swift_endAccess();
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v30, v31);

    swift_beginAccess();
    if (*(v8 + 48))
    {
      *(v8 + 440) = 1;
      RealityRenderer.lazyInitEmitter()(v32);
    }

    else
    {
      *(v8 + 440) = 0;
    }

    REEngineOverlayEnterFrame();
    REEngineOverlayFramePrepare();
    REEngineOverlayFrameSimulate();
    REEngineOverlayFrameCommit();
    REEngineOverlayFrameExit();
    v33 = *(v8 + 424);
    v39[6] = *(v8 + 408);
    v39[7] = v33;
    v40 = *(v8 + 440);
    v34 = *(v8 + 360);
    v39[2] = *(v8 + 344);
    v39[3] = v34;
    v35 = *(v8 + 392);
    v39[4] = *(v8 + 376);
    v39[5] = v35;
    v36 = *(v8 + 328);
    v39[0] = *v21;
    v39[1] = v36;
    *(v8 + 392) = 0u;
    *(v8 + 408) = 0u;
    *(v8 + 360) = 0u;
    *(v8 + 376) = 0u;
    *(v8 + 328) = 0u;
    *(v8 + 344) = 0u;
    *v21 = 0u;
    v37 = MEMORY[0x1E69E7CC0];
    *(v8 + 424) = MEMORY[0x1E69E7CC0];
    *(v8 + 432) = v37;
    *(v8 + 440) = 0;
    outlined destroy of RealityRenderer.RenderContext(v39);
    if (*(v8 + 48))
    {

      RECameraViewDescriptorsComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      RECameraViewDescriptorsComponentClearCameraViewDescriptors();
      RERenderGraphFileProviderArrayComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      RERenderGraphFileProviderArrayComponentRemoveAll();
      swift_unknownObjectRelease();
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    lazy protocol witness table accessor for type RealityRenderer.UpdateAndRenderError and conformance RealityRenderer.UpdateAndRenderError();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }
}

id RealityRenderer.cameraRenderingSettings.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 488);
  *a1 = *(v1 + 480);
  *(a1 + 8) = v2;
  return v2;
}

void RealityRenderer.cameraRenderingSettings.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(v1 + 488);
  *(v1 + 480) = v2;
  *(v1 + 488) = v3;
}

void (*RealityRenderer.cameraRenderingSettings.modify(uint64_t a1))(char *a1)
{
  v2 = *(v1 + 488);
  *a1 = *(v1 + 480);
  *(a1 + 8) = v2;
  *(a1 + 16) = v1;
  v3 = v2;
  return RealityRenderer.cameraRenderingSettings.modify;
}

void RealityRenderer.cameraRenderingSettings.modify(char *a1)
{
  v1 = *a1;
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  v4 = *(v2 + 488);
  *(v2 + 480) = v1;
  *(v2 + 488) = v3;
}

uint64_t static CameraRenderingOutput.Descriptor.monoscopic(colorTexture:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1898160;
  *(v4 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation21CameraRenderingOutputV16RelativeViewportVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation21CameraRenderingOutputV16RelativeViewportVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C1887600;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v5 + 48) = _Q0;
  *a2 = v4;
  a2[1] = v5;

  return swift_unknownObjectRetain();
}

uint64_t *CameraRenderingOutput.init(_:)@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  if ((*result & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1C68F41F0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
    swift_unknownObjectRetain();
  }

  if (([v5 usage] & 4) != 0)
  {
    result = swift_unknownObjectRelease();
    *a2 = v3;
    a2[1] = v4;
  }

  else
  {

    lazy protocol witness table accessor for type CameraRenderingOutput.InitError and conformance CameraRenderingOutput.InitError();
    swift_allocError();
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*RealityRenderer.CameraOutput.Descriptor._proto_depthTextures_v1.modify(void *a1))()
{
  v3 = *(v1 + 8);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return RealityRenderer.CameraOutput.Descriptor._proto_depthTextures_v1.modify;
}

void RealityRenderer.CameraOutput.Descriptor._proto_depthTextures_v1.modify(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    *(v2 + 8) = v3;
  }

  else
  {

    *(v2 + 8) = v3;
  }
}

uint64_t (*RealityRenderer.CameraOutput.Descriptor._proto_rasterizationRateMaps_v1.modify(void *a1))()
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return RealityRenderer.CameraOutput.Descriptor._proto_rasterizationRateMaps_v1.modify;
}

void RealityRenderer.CameraOutput.Descriptor._proto_rasterizationRateMaps_v1.modify(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    *(v2 + 16) = v3;
  }

  else
  {

    *(v2 + 16) = v3;
  }
}

uint64_t static RealityRenderer.CameraOutput.Descriptor.singleProjection(colorTexture:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C1898160;
  *(v6 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation0D8RendererC12CameraOutputV16RelativeViewportVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation0D8RendererC12CameraOutputV16RelativeViewportVGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C1887600;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v7 + 48) = _Q0;
  v13 = MEMORY[0x1E69E7CC0];
  *a3 = v6;
  *(a3 + 8) = v13;
  *(a3 + 16) = v13;
  *(a3 + 24) = v7;
  *(a3 + 32) = a2;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = -1;

  return swift_unknownObjectRetain();
}

uint64_t (*RealityRenderer.CameraOutput.Descriptor._proto_layout_v1.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32);
  return RealityRenderer.CameraOutput.Descriptor._proto_layout_v1.modify;
}

uint64_t (*RealityRenderer.CameraSettings.antialiasing.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 1);
  return RealityRenderer.CameraSettings.antialiasing.modify;
}

uint64_t (*RealityRenderer.CameraSettings.allowInplaceTonemapping.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 2);
  return RealityRenderer.CameraSettings.allowInplaceTonemapping.modify;
}

uint64_t (*RealityRenderer.CameraSettings.modelFilter.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return RealityRenderer.CameraSettings.modelFilter.modify;
}

double RealityRenderer.viewDescriptors.setter(uint64_t a1)
{
  *(v1 + 472) = a1;

  return result;
}

double (*RealityRenderer.viewDescriptors.modify(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 472);
  a1[1] = v1;

  return RealityRenderer.viewDescriptors.modify;
}

double RealityRenderer.viewDescriptors.modify(uint64_t *a1)
{
  *(a1[1] + 472) = *a1;

  return result;
}

uint64_t RealityRenderer.CameraViewDescriptor.cameraOutput.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return outlined init with copy of RealityRenderer.CameraOutput(v7, &v6);
}

__n128 RealityRenderer.CameraViewDescriptor.cameraOutput.setter(uint64_t a1)
{
  v3 = v1[1];
  v8[0] = *v1;
  v8[1] = v3;
  v4 = v1[3];
  v8[2] = v1[2];
  v8[3] = v4;
  outlined destroy of RealityRenderer.CameraOutput(v8);
  v5 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v7;
  return result;
}

id RealityRenderer.CameraViewDescriptor.cameraSettings.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 65);
  v3 = *(v1 + 66);
  v4 = *(v1 + 68);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 4) = v4;
  *(a1 + 8) = v5;
  return v5;
}

void RealityRenderer.CameraViewDescriptor.cameraSettings.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 1);
  v6 = *(a1 + 1);

  *(v1 + 64) = v2;
  *(v1 + 65) = v3;
  *(v1 + 66) = v4;
  *(v1 + 68) = v5;
  *(v1 + 72) = v6;
}

uint64_t RealityRenderer.CameraViewDescriptor.camera.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t RealityRenderer.CameraViewDescriptor.init(cameraOutput:camera:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v4;
  v5 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v5;
  *(a3 + 80) = a2;
  v6 = one-time initialization token for _blackTransparent;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static RealityRenderer.CameraSettings.ColorBackground._blackTransparent;
  v8 = static RealityRenderer.CameraSettings.ColorBackground._blackTransparent;

  *(a3 + 64) = 257;
  *(a3 + 66) = 0;
  *(a3 + 68) = -1;
  *(a3 + 72) = v7;
  return result;
}

void RealityRenderer.updateAndRenderViewDescriptors(deltaTime:onEncoded:whenScheduled:onComplete:actionsBeforeRender:actionsAfterRender:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  if (REEngineOverlayIsEngineInsideTick())
  {
    lazy protocol witness table accessor for type RealityRenderer.UpdateAndRenderError and conformance RealityRenderer.UpdateAndRenderError();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    return;
  }

  v18 = a7;
  v19 = (v9 + 312);
  swift_beginAccess();
  v54 = *(v9 + 384);
  v56 = *(v9 + 376);
  *(v9 + 376) = a1;
  *(v9 + 384) = a2;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1, a2);
  v20 = *(v9 + 392);
  v21 = *(v9 + 400);
  *(v9 + 392) = a3;
  *(v9 + 400) = a4;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a3, a4);
  v22 = *(v9 + 408);
  v23 = *(v9 + 416);
  *(v9 + 408) = a5;
  *(v9 + 416) = a6;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a5, a6);
  *(v9 + 424) = v18;
  *(v9 + 432) = a8;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v56, v54);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v20, v21);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v22, v23);

  if (*(*(v9 + 472) + 16))
  {
    *(v9 + 440) = 2;
    RealityRenderer.lazyInitEmitter()(v24);
  }

  else
  {
    *(v9 + 440) = 0;
  }

  if (*(v9 + 441) == 1)
  {
    REEngineOverlaySetReuseLastFrameOnce();
    if (*(v9 + 441) == 1)
    {
      REEngineOverlaySkipFrameSimulateForNextFrame();
    }
  }

  REEngineOverlayEnterFrame();
  REEngineOverlayFramePrepare();
  if (*(v9 + 441) == 1)
  {
    RealityRenderer.doUpdateCallback(deltaTime:)(0.0);
  }

  REEngineOverlayFrameSimulate();
  REEngineOverlayFrameCommit();
  REEngineOverlayFrameExit();
  v25 = *(v9 + 424);
  v61[6] = *(v9 + 408);
  v61[7] = v25;
  v62 = *(v9 + 440);
  v26 = *(v9 + 360);
  v61[2] = *(v9 + 344);
  v61[3] = v26;
  v27 = *(v9 + 392);
  v61[4] = *(v9 + 376);
  v61[5] = v27;
  v28 = *(v9 + 328);
  v61[0] = *v19;
  v61[1] = v28;
  *(v9 + 392) = 0u;
  *(v9 + 408) = 0u;
  *(v9 + 360) = 0u;
  *(v9 + 376) = 0u;
  *(v9 + 328) = 0u;
  *(v9 + 344) = 0u;
  *v19 = 0u;
  v29 = MEMORY[0x1E69E7CC0];
  *(v9 + 424) = MEMORY[0x1E69E7CC0];
  *(v9 + 432) = v29;
  *(v9 + 440) = 0;
  outlined destroy of RealityRenderer.RenderContext(v61);
  v53 = v9;
  v30 = *(*(v9 + 472) + 16);
  if (v30)
  {
    v31 =  + 56;
    do
    {
      v55 = *(v31 + 24);
      v57 = *(v31 + 48);
      swift_retain_n();

      swift_unknownObjectRetain();
      v32 = v55;
      RECameraViewDescriptorsComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      RECameraViewDescriptorsComponentClearCameraViewDescriptors();
      RERenderGraphFileProviderArrayComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      RERenderGraphFileProviderArrayComponentRemoveAll();

      swift_unknownObjectRelease();

      v31 += 88;
      --v30;
    }

    while (v30);
  }

  swift_beginAccess();
  v33 = *(v9 + 448);
  if (v33 >> 62)
  {
    goto LABEL_52;
  }

  v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v34)
  {
LABEL_17:
    _s17RealityFoundation34ProjectiveTransformCameraComponentVSgWOi0_(v59);
    v63[6] = v59[6];
    v63[7] = v59[7];
    v64 = v60;
    v63[2] = v59[2];
    v63[3] = v59[3];
    v63[4] = v59[4];
    v63[5] = v59[5];
    v63[0] = v59[0];
    v63[1] = v59[1];
    if (v34 >= 1)
    {

      v35 = 0;
      while (1)
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x1C68F41F0](v35, v33);
        }

        else
        {
          v36 = *(v33 + 8 * v35 + 32);
        }

        _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA017PerspectiveCameraD0V_TtB5Tf4ndn_n(0, 0x200000000, v36);

        _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation018OrthographicCameraD0V_TtB5Tf4ndn_n(0, 0x200000000, v36);
        v37 = *(v36 + 16);

        if (v37 != *(v36 + 16))
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          v34 = __CocoaSet.count.getter();
          if (!v34)
          {
            goto LABEL_46;
          }

          goto LABEL_17;
        }

        _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation025ProjectiveTransformCameraD0V_TtB5Tf4ndn_n(v63, v36);
        v38 = *(v36 + 16);

        if (v38 != *(v36 + 16))
        {
          goto LABEL_48;
        }

        _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation038_proto_StereoProjectiveTransformCameraD3_v1V_TtB5(0, 0, 0, 0, v36);
        v9 = *(v36 + 16);

        if (v9 != *(v36 + 16))
        {
          goto LABEL_49;
        }

        RECameraViewDescriptorsComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        RECameraViewDescriptorsComponentClearCameraViewDescriptors();
        RERenderGraphFileProviderArrayComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        RERenderGraphFileProviderArrayComponentRemoveAll();
        Parent = REEntityGetParent();
        if (Parent)
        {
          break;
        }

LABEL_20:
        ++v35;

        if (v34 == v35)
        {

          v9 = v53;
          goto LABEL_46;
        }
      }

      v40 = Parent;
      v41 = type metadata accessor for Entity();
      if (REEntityGetSwiftObject())
      {
        v42 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        if (REEntityIsBeingDestroyed())
        {
          goto LABEL_50;
        }

        specialized static Entity.entityInfoType(_:)(v40);
        if (v44)
        {
          v9 = v44;
          v43 = (*(v44 + 232))();
          v45 = *(v43 + 16);

          MEMORY[0x1C68F9740](v45, 0);
          *(v43 + 16) = v40;
          MEMORY[0x1C68F9740](v40, v43);

          goto LABEL_34;
        }

        v42 = makeEntity(for:)(v40);
      }

      v43 = v42;
LABEL_34:
      swift_retain_n();
      v46 = REEntityGetParent();
      if (v46)
      {
        v47 = v46;
        if (REEntityGetSwiftObject())
        {
          v48 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          if (REEntityIsBeingDestroyed())
          {
            goto LABEL_51;
          }

          specialized static Entity.entityInfoType(_:)(v47);
          if (v49)
          {
            v50 = (*(v49 + 232))();
            v51 = *(v50 + 16);

            MEMORY[0x1C68F9740](v51, 0);
            *(v50 + 16) = v47;
            MEMORY[0x1C68F9740](v47, v50);

            v48 = v50;
          }

          else
          {
            v48 = makeEntity(for:)(v47);
          }
        }

        v52 = *(v48 + 16);

        v9 = *(v43 + 16);

        if (v52 == v9)
        {
          REEntitySetParent();
          v9 = v41;
          static Entity.updateInteractions(root:)(v36);
        }
      }

      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
LABEL_46:
    *(v9 + 448) = MEMORY[0x1E69E7CC0];
  }
}

Swift::Void __swiftcall RealityRenderer.waitForEncoded()()
{
  if (*(v0 + 456))
  {
    JUMPOUT(0x1C68FD7F0);
  }
}

Swift::Void __swiftcall RealityRenderer.waitForScheduled()()
{
  if (*(v0 + 456))
  {
    JUMPOUT(0x1C68FD800);
  }
}

Swift::Void __swiftcall RealityRenderer.waitForCompleted()()
{
  if (*(v0 + 456))
  {
    JUMPOUT(0x1C68FD7E0);
  }
}

void *static RealityRenderer.CameraOutput.RenderCommandEncoderCommands.setRenderPipelineState.getter@<X0>(void *result@<X0>, void *a2@<X1>, void *a4@<X8>)
{
  if (*result != -1)
  {
    v4 = a2;
    v5 = a4;
    result = swift_once();
    a4 = v5;
    a2 = v4;
  }

  *a4 = *a2;
  return result;
}

void static RealityRenderer.CameraOutput.Descriptor.singleProjection(descriptor:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = MEMORY[0x1E69E7CC0];
  v3 = [a1 colorAttachments];
  v4 = [v3 objectAtIndexedSubscript_];

  if (!v4)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v5 = [v4 texture];

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = swift_unknownObjectRetain();
    MEMORY[0x1C68F3650](v7);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_unknownObjectRelease();
    v8 = v23;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = [a1 depthAttachment];
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v9 texture];

  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v13 = swift_unknownObjectRetain();
    MEMORY[0x1C68F3650](v13);
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_unknownObjectRelease();
    v14 = v6;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation0D8RendererC12CameraOutputV16RelativeViewportVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation0D8RendererC12CameraOutputV16RelativeViewportVGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C1887600;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v15 + 48) = _Q0;
  *a2 = v8;
  *(a2 + 8) = v14;
  *(a2 + 16) = v12;
  *(a2 + 24) = v15;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = a1;
  *(a2 + 56) = -1;

  v21 = a1;
}

uint64_t RealityRenderer.CameraOutput.Descriptor.renderCommandEncoder.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 40) = a1;
  return result;
}

uint64_t (*RealityRenderer.CameraOutput.Descriptor.renderCommandEncoder.modify(void *a1))()
{
  v3 = *(v1 + 40);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;
  swift_unknownObjectRetain();
  return RealityRenderer.CameraOutput.Descriptor.renderCommandEncoder.modify;
}

uint64_t RealityRenderer.CameraOutput.Descriptor.renderCommandEncoder.modify(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v2 + 40) = v3;

    return swift_unknownObjectRelease();
  }

  else
  {
    result = swift_unknownObjectRelease();
    *(v2 + 40) = v3;
  }

  return result;
}

uint64_t (*RealityRenderer.CameraOutput.Descriptor.renderCommandEncoderCommandMask.modify(void *a1))()
{
  *a1 = *(v1 + 56);
  a1[1] = v1;
  return RealityRenderer.CameraOutput.Descriptor.renderCommandEncoderCommandMask.modify;
}

uint64_t (*RealityRenderer.externalEncoderOperation.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 464);
  return RealityRenderer.externalEncoderOperation.modify;
}

uint64_t EncodedFrame.render(whenScheduled:onComplete:actionsBeforeRender:actionsAfterRender:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v7;
  v9 = v6;
  v16 = *(v9 + 16);
  swift_beginAccess();
  *(v16 + 441) = 1;
  if (a1)
  {
    v17 = a2;
  }

  else
  {
    v17 = 0;
  }

  if (!a3)
  {
    a4 = 0;
  }

  RealityRenderer.updateAndRenderViewDescriptors(deltaTime:onEncoded:whenScheduled:onComplete:actionsBeforeRender:actionsAfterRender:)(0, 0, a1, v17, a3, a4, a5, a6, 0.0);

  if (!v8)
  {
    *(v9 + 24) = 1;
  }

  return result;
}

Swift::Void __swiftcall EncodedFrame.setCameraTransform(viewDescriptorIndex:_:)(Swift::Int viewDescriptorIndex, simd_float4x4 *_)
{
  if (viewDescriptorIndex < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*(*(v2 + 16) + 472) + 16) <= viewDescriptorIndex)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v10 = v6;
  v8 = v4;
  v9 = v5;
  v7 = v3;

  specialized HasTransform.setTransformMatrix(_:relativeTo:)(0, v7, v8, v9, v10);
}

uint64_t specialized HasTransform.setTransformMatrix(_:relativeTo:)(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v6 = v5;
  v31 = *MEMORY[0x1E69E9840];
  *v7.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix16fromLocalSpaceOf08toParentiJ0So13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v5);
  v18 = v7;
  v19 = v8;
  v21 = v9;
  v22 = v10;
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v25);
  if ((v25[48] & 1) != 0 && one-time initialization token for identity != -1)
  {
    goto LABEL_5;
  }

  while (1)
  {
    a2 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, a2.f32[0]), v19, *a2.f32, 1), v21, a2, 2), v22, a2, 3);
    v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, a3.f32[0]), v19, *a3.f32, 1), v21, a3, 2), v22, a3, 3);
    v12 = vmlaq_lane_f32(vmulq_n_f32(v18, a4.f32[0]), v19, *a4.f32, 1);
    v13 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, a5.f32[0]), v19, *a5.f32, 1), v21, a5, 2), v22, a5, 3);
    v19 = v13;
    a3 = v11;
    v13.i32[3] = 0;
    v26 = 0u;
    a5 = v13;
    a4 = vmlaq_laneq_f32(vmlaq_laneq_f32(v12, v21, a4, 2), v22, a4, 3);
    REDecomposeMatrix();
    *&v14 = simd_float4x4.scale.getter(a2, a3, a4);
    v26 = v14;
    v27 = 0;
    v28 = 0;
    v29 = a5;
    v30 = 0;

    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA9TransformV_Tt0g5(&v26);
    v15 = *(v6 + 16);

    if (v15 == *(v6 + 16))
    {
      break;
    }

    __break(1u);
LABEL_5:
    swift_once();
  }

  return result;
}

Swift::Void __swiftcall EncodedFrame.setCameraProjectiveTransform(viewDescriptorIndex:_:)(Swift::Int viewDescriptorIndex, simd_float4x4 *_)
{
  if (viewDescriptorIndex < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = *(*(v2 + 16) + 472);
  if (*(v8 + 16) <= viewDescriptorIndex)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v9 = v8 + 88 * viewDescriptorIndex;
  v10 = *(v9 + 80);
  v18 = *(v9 + 104);
  swift_retain_n();

  swift_unknownObjectRetain();
  v11 = v10;
  if (REEntityGetComponent())
  {
    static ProjectiveTransformCameraComponent.__fromCore(_:)(v24);

    swift_unknownObjectRelease();

    v21 = v27;
    v22 = v28;
    v23 = v29;
    v19 = v25;
    v20 = v26;
    v12 = *(*(v2 + 16) + 472);
    if (*(v12 + 16) > viewDescriptorIndex)
    {
      v13 = *(v12 + 88 * viewDescriptorIndex + 112);
      destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
      v27 = v21;
      v28 = v22;
      v29 = v23;
      v24[2] = v16;
      v24[3] = v17;
      v25 = v19;
      v26 = v20;
      v24[0] = v14;
      v24[1] = v15;

      _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation025ProjectiveTransformCameraD0V_TtB5Tf4ndn_n(v24, v13);

      return;
    }

    goto LABEL_8;
  }

LABEL_9:

  __break(1u);
}

Swift::Void __swiftcall EncodedFrame.setOutput(viewDescriptorIndex:colorTextures:)(Swift::Int viewDescriptorIndex, Swift::OpaquePointer colorTextures)
{
  v5 = *(v2 + 16);
  v6 = *(v5 + 472);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((viewDescriptorIndex & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  if (viewDescriptorIndex < 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(v6 + 2) <= viewDescriptorIndex)
  {
LABEL_9:
    __break(1u);
    return;
  }

  *&v6[88 * viewDescriptorIndex + 32] = colorTextures;

  *(v5 + 472) = v6;
}

Swift::Void __swiftcall EncodedFrame.setOutput(viewDescriptorIndex:depthTextures:)(Swift::Int viewDescriptorIndex, Swift::OpaquePointer depthTextures)
{
  v5 = *(v2 + 16);
  v6 = *(v5 + 472);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((viewDescriptorIndex & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  if (viewDescriptorIndex < 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(v6 + 2) <= viewDescriptorIndex)
  {
LABEL_9:
    __break(1u);
    return;
  }

  *&v6[88 * viewDescriptorIndex + 40] = depthTextures;

  *(v5 + 472) = v6;
}

void EncodedFrame.setOutput(viewDescriptorIndex:renderCommandEncoder:)(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v5 + 472);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(v6 + 2) <= a1)
  {
LABEL_9:
    __break(1u);
    return;
  }

  *&v6[88 * a1 + 72] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v5 + 472) = v6;
}

Swift::Void __swiftcall EncodedFrame.setOutput(viewDescriptorIndex:renderPassDescriptor:)(Swift::Int viewDescriptorIndex, MTLRenderPassDescriptor renderPassDescriptor)
{
  v5 = *(v2 + 16);
  v6 = *(v5 + 472);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((viewDescriptorIndex & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  if (viewDescriptorIndex < 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(v6 + 2) <= viewDescriptorIndex)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = &v6[88 * viewDescriptorIndex];
  v8 = *(v7 + 10);
  *(v7 + 10) = renderPassDescriptor;
  v9 = renderPassDescriptor.super.isa;

  *(v5 + 472) = v6;
}

uint64_t EncodedFrame.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t RealityRenderer.updateAndRenderViewDescriptorsToFrame(deltaTime:whenScheduled:onComplete:actionsBeforeRender:actionsAfterRender:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  if (a1)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0;
  }

  if (a3)
  {
    v12 = a4;
  }

  else
  {
    v12 = 0;
  }

  RealityRenderer.updateAndRenderViewDescriptors(deltaTime:onEncoded:whenScheduled:onComplete:actionsBeforeRender:actionsAfterRender:)(0, 0, a1, v11, a3, v12, a5, a6, a7);
  if (!v9)
  {
    type metadata accessor for EncodedFrame();
    v7 = swift_allocObject();
    *(v7 + 24) = 0;
    *(v7 + 16) = v8;
  }

  return v7;
}

uint64_t RealityRenderer.updateAndRenderViewDescriptorsToFrame(deltaTime:onEncoded:whenScheduled:onComplete:actionsBeforeRender:actionsAfterRender:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  if (!a1)
  {
    a2 = 0;
  }

  if (!a3)
  {
    a4 = 0;
  }

  if (!a5)
  {
    a6 = 0;
  }

  RealityRenderer.updateAndRenderViewDescriptors(deltaTime:onEncoded:whenScheduled:onComplete:actionsBeforeRender:actionsAfterRender:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  if (!v11)
  {
    type metadata accessor for EncodedFrame();
    v9 = swift_allocObject();
    *(v9 + 24) = 0;
    *(v9 + 16) = v10;
  }

  return v9;
}

void static RealityRenderer.setEmitterPreference(_:)(_BYTE *a1)
{
  if (static RealityRenderer.emitterPreference == 2)
  {
    static RealityRenderer.emitterPreference = (*a1 & 1) != 0;
  }

  else
  {
    type metadata accessor for OS_os_log();
    v3 = static OS_os_log.default.getter();
    v2 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Ignoring emitter preference, one is already active.", 51, 2, &dword_1C1358000, v3, v2, MEMORY[0x1E69E7CC0]);
  }
}

uint64_t RealityRenderer.setHandleFrameStatistics(handleFrameStatistics:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (a1)
  {
    v4 = a2;
    v5 = a1;
    specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    swift_unownedRetainStrong();

    REFrameStatisticsSetEnabled();

    a1 = v5;
    a2 = v4;
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + 152);
  v8 = *(v3 + 160);
  *(v3 + 152) = a1;
  *(v3 + 160) = v6;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1, a2);
  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v7, v8);
}

double _s10RealityKit12HasTransformPAAE16conversionMatrix16fromLocalSpaceOf08toParentiJ0So13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(uint64_t a1, uint64_t a2)
{
  v3 = *zmmword_1C1887630;
  v12 = *zmmword_1C1887630;
  if (!a1)
  {
LABEL_7:
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v4 = *(a1 + 16);

  if (MEMORY[0x1C69004D0](v4))
  {
    RETransformServiceGetWorldMatrix4x4F();
LABEL_6:
    v12 = v5;

    v3 = *zmmword_1C1887630;
    goto LABEL_7;
  }

  RETransformComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    RETransformComponentGetWorldMatrix4x4F();
    goto LABEL_6;
  }

  v3 = *zmmword_1C1887630;
  v12 = *zmmword_1C1887630;
  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_8:
  v6 = *(a2 + 16);

  if (MEMORY[0x1C69004D0](v6))
  {
    RETransformServiceGetParentWorldMatrix4x4F();
  }

  else
  {
    RETransformComponentGetComponentType();
    if (!REEntityGetComponentByClass())
    {

      v3 = *zmmword_1C1887630;
      goto LABEL_13;
    }

    RETransformComponentGetParentWorldMatrix4x4F();
  }

  v13.columns[0] = v7;
  v13.columns[1] = v8;
  v13.columns[2] = v9;
  v13.columns[3] = v10;

  v3 = v13;
LABEL_13:
  v14 = __invert_f4(v3);
  *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14.columns[0], v12.f32[0]), v14.columns[1], *v12.f32, 1), v14.columns[2], v12, 2), v14.columns[3], v12, 3).u64[0];
  return result;
}

unint64_t lazy protocol witness table accessor for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError()
{
  result = lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError;
  if (!lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RealityRenderer.CameraOutput.InitError, &unk_1F40F2280, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError;
  if (!lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RealityRenderer.CameraOutput.InitError, &unk_1F40F2280, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.InitError and conformance RealityRenderer.CameraOutput.InitError);
  }

  return result;
}

double block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C68F41F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C68F41F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type RealityRenderer.InitError and conformance RealityRenderer.InitError()
{
  result = lazy protocol witness table cache variable for type RealityRenderer.InitError and conformance RealityRenderer.InitError;
  if (!lazy protocol witness table cache variable for type RealityRenderer.InitError and conformance RealityRenderer.InitError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RealityRenderer.InitError, &unk_1F40F21F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.InitError and conformance RealityRenderer.InitError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityRenderer.InitError and conformance RealityRenderer.InitError;
  if (!lazy protocol witness table cache variable for type RealityRenderer.InitError and conformance RealityRenderer.InitError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RealityRenderer.InitError, &unk_1F40F21F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.InitError and conformance RealityRenderer.InitError);
  }

  return result;
}

uint64_t specialized static RealityRenderer.createEmitterAsset()(__n128 a1)
{
  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, v7);
  v2 = v8;
  v3 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v4 = *(v3 + 32);

  v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (static RealityRenderer.emitterPreference == 2)
  {
    static RealityRenderer.emitterPreference = 0;
  }

  String.utf8CString.getter();

  AssetHandle = REAssetManagerCreateAssetHandle();

  if (AssetHandle)
  {

    return AssetHandle;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RealityRenderer.UpdateAndRenderError and conformance RealityRenderer.UpdateAndRenderError()
{
  result = lazy protocol witness table cache variable for type RealityRenderer.UpdateAndRenderError and conformance RealityRenderer.UpdateAndRenderError;
  if (!lazy protocol witness table cache variable for type RealityRenderer.UpdateAndRenderError and conformance RealityRenderer.UpdateAndRenderError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RealityRenderer.UpdateAndRenderError, &unk_1F40F20C8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.UpdateAndRenderError and conformance RealityRenderer.UpdateAndRenderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityRenderer.UpdateAndRenderError and conformance RealityRenderer.UpdateAndRenderError;
  if (!lazy protocol witness table cache variable for type RealityRenderer.UpdateAndRenderError and conformance RealityRenderer.UpdateAndRenderError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RealityRenderer.UpdateAndRenderError, &unk_1F40F20C8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.UpdateAndRenderError and conformance RealityRenderer.UpdateAndRenderError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CameraRenderingOutput.InitError and conformance CameraRenderingOutput.InitError()
{
  result = lazy protocol witness table cache variable for type CameraRenderingOutput.InitError and conformance CameraRenderingOutput.InitError;
  if (!lazy protocol witness table cache variable for type CameraRenderingOutput.InitError and conformance CameraRenderingOutput.InitError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CameraRenderingOutput.InitError, &unk_1F40F2038, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CameraRenderingOutput.InitError and conformance CameraRenderingOutput.InitError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CameraRenderingOutput.InitError and conformance CameraRenderingOutput.InitError;
  if (!lazy protocol witness table cache variable for type CameraRenderingOutput.InitError and conformance CameraRenderingOutput.InitError)
  {
    result = swift_getWitnessTable("yr_-", &unk_1F40F2038, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CameraRenderingOutput.InitError and conformance CameraRenderingOutput.InitError);
  }

  return result;
}

double _s17RealityFoundation34ProjectiveTransformCameraComponentVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 512;
  return result;
}

unint64_t instantiation function for generic protocol witness table for RealityRenderer.EntityCollection(uint64_t a1)
{
  result = lazy protocol witness table accessor for type RealityRenderer.EntityCollection and conformance RealityRenderer.EntityCollection();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type RealityRenderer.EntityCollection and conformance RealityRenderer.EntityCollection()
{
  result = lazy protocol witness table cache variable for type RealityRenderer.EntityCollection and conformance RealityRenderer.EntityCollection;
  if (!lazy protocol witness table cache variable for type RealityRenderer.EntityCollection and conformance RealityRenderer.EntityCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RealityRenderer.EntityCollection, &type metadata for RealityRenderer.EntityCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.EntityCollection and conformance RealityRenderer.EntityCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityRenderer.EntityCollection and conformance RealityRenderer.EntityCollection;
  if (!lazy protocol witness table cache variable for type RealityRenderer.EntityCollection and conformance RealityRenderer.EntityCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RealityRenderer.EntityCollection, &type metadata for RealityRenderer.EntityCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.EntityCollection and conformance RealityRenderer.EntityCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RealityRenderer.CameraOutput._proto_Layout_v1 and conformance RealityRenderer.CameraOutput._proto_Layout_v1()
{
  result = lazy protocol witness table cache variable for type RealityRenderer.CameraOutput._proto_Layout_v1 and conformance RealityRenderer.CameraOutput._proto_Layout_v1;
  if (!lazy protocol witness table cache variable for type RealityRenderer.CameraOutput._proto_Layout_v1 and conformance RealityRenderer.CameraOutput._proto_Layout_v1)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RealityRenderer.CameraOutput._proto_Layout_v1, &type metadata for RealityRenderer.CameraOutput._proto_Layout_v1, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.CameraOutput._proto_Layout_v1 and conformance RealityRenderer.CameraOutput._proto_Layout_v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup()
{
  result = lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup;
  if (!lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RealityRenderer.CameraSettings.ModelRenderingGroup, &type metadata for RealityRenderer.CameraSettings.ModelRenderingGroup, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup;
  if (!lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RealityRenderer.CameraSettings.ModelRenderingGroup, &type metadata for RealityRenderer.CameraSettings.ModelRenderingGroup, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup;
  if (!lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RealityRenderer.CameraSettings.ModelRenderingGroup, &type metadata for RealityRenderer.CameraSettings.ModelRenderingGroup, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup;
  if (!lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RealityRenderer.CameraSettings.ModelRenderingGroup, &type metadata for RealityRenderer.CameraSettings.ModelRenderingGroup, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.CameraSettings.ModelRenderingGroup and conformance RealityRenderer.CameraSettings.ModelRenderingGroup);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands()
{
  result = lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands;
  if (!lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RealityRenderer.CameraOutput.RenderCommandEncoderCommands, &type metadata for RealityRenderer.CameraOutput.RenderCommandEncoderCommands, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands;
  if (!lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RealityRenderer.CameraOutput.RenderCommandEncoderCommands, &type metadata for RealityRenderer.CameraOutput.RenderCommandEncoderCommands, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands;
  if (!lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RealityRenderer.CameraOutput.RenderCommandEncoderCommands, &type metadata for RealityRenderer.CameraOutput.RenderCommandEncoderCommands, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands;
  if (!lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RealityRenderer.CameraOutput.RenderCommandEncoderCommands, &type metadata for RealityRenderer.CameraOutput.RenderCommandEncoderCommands, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.CameraOutput.RenderCommandEncoderCommands and conformance RealityRenderer.CameraOutput.RenderCommandEncoderCommands);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RealityRenderer.ExternalEncoderOperation and conformance RealityRenderer.ExternalEncoderOperation()
{
  result = lazy protocol witness table cache variable for type RealityRenderer.ExternalEncoderOperation and conformance RealityRenderer.ExternalEncoderOperation;
  if (!lazy protocol witness table cache variable for type RealityRenderer.ExternalEncoderOperation and conformance RealityRenderer.ExternalEncoderOperation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RealityRenderer.ExternalEncoderOperation, &type metadata for RealityRenderer.ExternalEncoderOperation, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.ExternalEncoderOperation and conformance RealityRenderer.ExternalEncoderOperation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RealityRenderer.EmitterPreference and conformance RealityRenderer.EmitterPreference()
{
  result = lazy protocol witness table cache variable for type RealityRenderer.EmitterPreference and conformance RealityRenderer.EmitterPreference;
  if (!lazy protocol witness table cache variable for type RealityRenderer.EmitterPreference and conformance RealityRenderer.EmitterPreference)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RealityRenderer.EmitterPreference, &type metadata for RealityRenderer.EmitterPreference, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.EmitterPreference and conformance RealityRenderer.EmitterPreference);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RealityRenderer.CameraOutput(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for RealityRenderer.CameraOutput(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RealityRenderer.CameraSettings(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for RealityRenderer.CameraSettings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RealityRenderer.CameraSettings.ColorBackground(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for RealityRenderer.CameraSettings.ColorBackground(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RealityRenderer.CameraViewDescriptor(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for RealityRenderer.CameraViewDescriptor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CameraRenderingSettings.ColorBackground.Value(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CameraRenderingSettings.ColorBackground.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy130_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RealityRenderer.RenderContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 130))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RealityRenderer.RenderContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 130) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 130) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_295Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

double outlined consume of _proto_StereoProjectiveTransformCameraComponent_v1?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RealityRenderer.RenderContext.RenderAction and conformance RealityRenderer.RenderContext.RenderAction()
{
  result = lazy protocol witness table cache variable for type RealityRenderer.RenderContext.RenderAction and conformance RealityRenderer.RenderContext.RenderAction;
  if (!lazy protocol witness table cache variable for type RealityRenderer.RenderContext.RenderAction and conformance RealityRenderer.RenderContext.RenderAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RealityRenderer.RenderContext.RenderAction, &unk_1F40F25E0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RealityRenderer.RenderContext.RenderAction and conformance RealityRenderer.RenderContext.RenderAction);
  }

  return result;
}

Swift::Int __RKEntityActionGroup.Ordering.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

double key path setter for __RKEntityActionGroup.actions : __RKEntityActionGroup(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 112) = v2;

  return result;
}

uint64_t __RKEntityActionGroup.ordering.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 120);
  return result;
}

uint64_t __RKEntityActionGroup.init(actions:ordering:loopCount:)(uint64_t a1, char *a2, uint64_t a3, char a4, __n128 a5)
{
  v6 = *a2;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 152) = 0;
  *(v5 + 112) = a1;
  *(v5 + 120) = v6;
  if (a4)
  {
    a3 = 1;
  }

  *(v5 + 128) = a3;
  v8 = __RKEntityAction.init(targetEntity:)(0);

  v9 = __RKEntityActionGroup.collapseRedundantGroups()();
  swift_beginAccess();
  *(v8 + 112) = v9;

  swift_beginAccess();
  if (*(v8 + 120))
  {
  }

  else
  {
    *(v8 + 112) = __RKEntityActionGroup.reorderConcurrentActions()();
  }

  return v8;
}

uint64_t __RKEntityActionGroup.collapseRedundantGroups()()
{
  v13 = MEMORY[0x1E69E7CC0];
  result = swift_beginAccess();
  v2 = *(v0 + 112);
  if (v2 >> 62)
  {
LABEL_32:
    result = __CocoaSet.count.getter();
    v3 = result;
    if (result)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  if (v3 >= 1)
  {

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68F41F0](v4, v2);
      }

      else
      {
      }

      type metadata accessor for __RKEntityActionGroup();
      v6 = swift_dynamicCastClass();

      if (!v6)
      {
        goto LABEL_6;
      }

      v7 = __RKEntityActionGroup.allActions()();
      v8 = v7 >> 62 ? __CocoaSet.count.getter() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v8 != 1)
      {
        goto LABEL_6;
      }

      v5 = swift_beginAccess();
      if (*(v6 + 128) != 1)
      {
        goto LABEL_6;
      }

      v9 = __RKEntityActionGroup.allActions()();
      v10 = v9;
      if (v9 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
LABEL_5:

LABEL_6:
          MEMORY[0x1C68F3650](v5);
          if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          goto LABEL_9;
        }
      }

      else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_5;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68F41F0](0, v10);
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_32;
        }
      }

      MEMORY[0x1C68F3650](v11);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_9:
      ++v4;

      if (v3 == v4)
      {
        v12 = v13;

        return v12;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t __RKEntityActionGroup.reorderConcurrentActions()()
{
  v12 = MEMORY[0x1E69E7CC0];
  result = swift_beginAccess();
  v2 = *(v0 + 112);
  if (v2 >> 62)
  {
LABEL_31:
    result = __CocoaSet.count.getter();
    v3 = result;
    if (result)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  if (v3 >= 1)
  {

    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1C68F41F0](v4, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
      }

      if (((*(*v6 + 488))() & 1) == 0)
      {

        MEMORY[0x1C68F3650](v10);
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v5 = v12;
        goto LABEL_8;
      }

      v7 = v5 >> 62;
      if (v5 >> 62)
      {
        result = __CocoaSet.count.getter();
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_35;
        }

        result = __CocoaSet.count.getter();
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }

        v11 = __CocoaSet.count.getter();
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      else
      {
        v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_30;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v7)
        {
          if (v9 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }
      }

      else if (!v7)
      {
        goto LABEL_6;
      }

      __CocoaSet.count.getter();
LABEL_6:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_7:
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v6);

      v12 = v5;
LABEL_8:
      if (v3 == ++v4)
      {

        return v5;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __RKEntityActionGroup.preloadAssets()()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1C68F41F0](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      (*(*v4 + 400))();
    }
  }
}

void __RKEntityActionGroup.checkForCompletion(with:)(uint64_t *a1)
{
  if (*(v1 + 152) == 1)
  {
    *(v1 + 136) = 0;
    *(v1 + 144) = 0;
    swift_beginAccess();
    v2 = *(v1 + 96);
    v3 = *(v1 + 104);
    *(v1 + 96) = 2;
    *(v1 + 104) = 1;
    v22 = v2;
    v23 = v3;
    __RKEntityAction.state.didset(&v22);
    *(v1 + 152) = 0;
    return;
  }

  v5 = *a1;
  v4 = a1[1];
  v6 = *(v1 + 136);
  swift_beginAccess();
  v7 = *(v1 + 112);
  if (v7 >> 62)
  {
    if (v6 != __CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (v6 != *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v8 = *(v1 + 144);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_24:
    if (__CocoaSet.count.getter())
    {
      goto LABEL_18;
    }

    return;
  }

  *(v1 + 144) = v9;
  swift_beginAccess();
  v10 = *(v1 + 128);
  v12 = v10 > 1 && v9 < v10;
  if (v10 && !v12)
  {
    *(v1 + 144) = 0;
    swift_beginAccess();
    v13 = *(v1 + 96);
    v14 = *(v1 + 104);
    *(v1 + 96) = 2;
    *(v1 + 104) = 1;
    v20 = v13;
    v21 = v14;
    __RKEntityAction.state.didset(&v20);
    return;
  }

  swift_beginAccess();
  v15 = *(v1 + 96);
  v16 = *(v1 + 104);
  *(v1 + 96) = 0;
  *(v1 + 104) = 1;
  v20 = v15;
  v21 = v16;
  __RKEntityAction.state.didset(&v20);
  swift_beginAccess();
  if ((*(v1 + 120) & 1) == 0)
  {
    v18 = v5;
    v19 = v4;
    __RKEntityActionGroup.performConcurrentActions(with:)(&v18);
    return;
  }

  v17 = *(v1 + 112);
  if (v17 >> 62)
  {
    goto LABEL_24;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    *(v1 + 136) = 0;
    v18 = v5;
    v19 = v4;
    __RKEntityActionGroup.performSequentialAction(at:context:)(0, &v18);
  }
}