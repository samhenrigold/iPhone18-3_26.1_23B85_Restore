void closure #3 in finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:)(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  MEMORY[0x1C68F3410](a5, a6);

  lazy protocol witness table accessor for type AudioResource.CoreREError and conformance AudioResource.CoreREError();
  v9 = swift_allocError();
  *v10 = a3;
  v10[1] = a4;
  a1(v9, 1);
}

uint64_t closure #1 in static AudioFileResource.loadFromBundleAsync(named:in:configuration:legacyInputMode:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  _s17RealityFoundation16LoadableResourcePAAE012getAssetFromA12FileInBundle4name2in0eF0qd__SS_So8NSBundleCSgqd__SS_0B03URLVtKXEtKlFZ0A3Kit05AudiohD0C_APTt3g504_s17a12Foundation16cd12PAAE04loadd4g3A12hi22Bundle5named2inxSS_So8m8CSgtKFZxV38_0B03URLVtKcfu_0A3Kit05AudiogD0C_Tt2G5Tf1nnc_n(a3, a4, a5);
  v8 = v6;
  v9 = 0;

  a1(&v8);
}

uint64_t closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7, int a8, uint64_t a9, uint64_t a10)
{
  v41 = a8;
  v43 = a7;
  v39 = a6;
  v38 = a5;
  v44 = a3;
  v42 = a2;
  v40 = a9;
  v13 = type metadata accessor for URL();
  v35 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v36 = a10;
  swift_beginAccess();
  v37 = *(a10 + 16);
  (*(v14 + 16))(v16, a4, v13);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 69) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v44;
  (*(v14 + 32))(v23 + v18, v16, v35);
  v24 = (v23 + v19);
  v25 = v39;
  *v24 = v38;
  v24[1] = v25;
  v26 = v23 + v20;
  v27 = v43;
  *(v26 + 45) = *(v43 + 45);
  v28 = v27[2];
  *(v26 + 16) = v27[1];
  *(v26 + 32) = v28;
  *v26 = *v27;
  *(v26 + 61) = v41;
  *(v23 + v21) = v40;
  v29 = (v23 + v22);
  *v29 = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  v29[1] = v17;
  *(v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8)) = v36;
  aBlock[4] = partial apply for finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_83_1;
  v30 = _Block_copy(aBlock);
  v31 = _Block_copy(v30);
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  v46[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v46[5] = v32;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 1107296256;
  v46[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v46[3] = &block_descriptor_90_0;
  v33 = _Block_copy(v46);

  outlined init with copy of AudioFileResource.Configuration(v43, v45);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v33);

  _Block_release(v30);

  swift_beginAccess();
  return REAssetLoadRequestAddAsset();
}

void finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v55 = a7;
  v57 = a5;
  v56 = a4;
  v59 = a2;
  v66 = a11;
  v60 = a10;
  v58 = a9;
  v62 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v54[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = type metadata accessor for DispatchQoS();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v17 = &v54[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v54[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v54[-v23];
  if (a1)
  {
    v26 = v58;
    v27 = v60;
    (*(v19 + 16))(&v54[-v23], a3, v18, v24);
    v28 = a6[1];
    aBlock = *a6;
    v69 = v28;
    v70[0] = a6[2];
    *(v70 + 13) = *(a6 + 45);
    v71[0] = v55;
    type metadata accessor for AudioFileResource();
    swift_allocObject();
    outlined init with copy of AudioFileResource.Configuration(a6, v67);
    v29 = v57;

    v43 = AudioFileResource.init(assetRef:url:name:configuration:legacyInputMode:)(v59, v25, v56, v29, &aBlock, v71);
    swift_beginAccess();
    v44 = *(a8 + 24);
    swift_unownedRetainStrong();
    v45 = *(v44 + 32);

    v46 = swift_allocObject();
    v46[2] = v26;
    v46[3] = v27;
    v46[4] = v43;
    *&v70[0] = partial apply for closure #1 in finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:);
    *(&v70[0] + 1) = v46;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v69 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v69 + 1) = &block_descriptor_118_0;
    v47 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v67[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v48 = v61;
    v49 = v62;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v17, v48, v47);
    _Block_release(v47);

    (*(v65 + 8))(v48, v49);
  }

  else
  {
    FailedMessage = REAssetHandleCopyLoadFailedMessage();
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    swift_beginAccess();
    v33 = *(a8 + 24);
    swift_unownedRetainStrong();
    v34 = *(v33 + 32);

    (*(v19 + 16))(v21, a3, v18);
    v35 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v36 = (v20 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    v38 = v60;
    *(v37 + 16) = v58;
    *(v37 + 24) = v38;
    (*(v19 + 32))(v37 + v35, v21, v18);
    v39 = (v37 + v36);
    *v39 = v59;
    v39[1] = v32;
    *&v70[0] = partial apply for closure #3 in finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:);
    *(&v70[0] + 1) = v37;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v69 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v69 + 1) = &block_descriptor_96;
    v40 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v67[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v41 = v61;
    v42 = v62;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v17, v41, v40);
    _Block_release(v40);

    (*(v65 + 8))(v41, v42);
  }

  (*(v63 + 8))(v17, v64);

  swift_beginAccess();
  *&v70[0] = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  *(&v70[0] + 1) = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v69 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  *(&v69 + 1) = &block_descriptor_99_1;
  v50 = _Block_copy(&aBlock);
  v51 = _Block_copy(v50);
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  v67[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v67[5] = v52;
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 1107296256;
  v67[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v67[3] = &block_descriptor_106;
  v53 = _Block_copy(v67);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v53);

  _Block_release(v50);
}

void closure #3 in finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:)(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = URL.path.getter();
  v12 = v8;

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  MEMORY[0x1C68F3410](a4, a5);

  lazy protocol witness table accessor for type AudioResource.CoreREError and conformance AudioResource.CoreREError();
  v9 = swift_allocError();
  *v10 = v11;
  v10[1] = v12;
  a1(v9, 1);
}

uint64_t partial apply for closure #1 in static AudioFileResource.loadAsync(named:in:inputMode:loadingStrategy:shouldLoop:)(uint64_t (*a1)(uint64_t *))
{
  v3 = *(v1 + 16);
  v4 = 1;
  return a1(&v3);
}

uint64_t partial apply for closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:)(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v7 + 16), *(v2 + v7 + 17), *(v2 + v7 + 18), *(v2 + ((v7 + 26) & 0xFFFFFFFFFFFFFFF8)));
}

double block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void partial apply for specialized finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:)(char a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 10) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  specialized finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:)(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v5 + 1), *(v1 + v5 + 2), *(v1 + v6), *(v1 + v7), *(v1 + v7 + 8), *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t partial apply for closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:)(a1, a2, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), (v2 + v8), *(v2 + v8 + 61), *(v2 + ((v8 + 69) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 69) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void partial apply for finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:)(char a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 69) & 0xFFFFFFFFFFFFFFF8;
  finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:)(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), (v1 + v6), *(v1 + v6 + 61), *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

void partial apply for closure #3 in finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  closure #3 in finishAudioFileLoad #1 (_:) in closure #1 in static AudioFileResource.loadAsync(assetRef:url:resourceName:configuration:legacyInputMode:)(v3, v4, v0 + v2, v6, v7);
}

uint64_t objectdestroy_15Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

double ClippingPrimitiveComponent.Feather.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

__n128 ClippingPrimitiveComponent.feather.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 48);
  v3 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

__n128 ClippingPrimitiveComponent.feather.setter(uint64_t a1)
{
  result = *(a1 + 16);
  v3 = *(a1 + 32);
  *(v1 + 32) = *a1;
  *(v1 + 48) = result;
  *(v1 + 64) = v3;
  return result;
}

double ClippingPrimitiveComponent.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1C189A7F0;
  *(a1 + 16) = xmmword_1C189A800;
  *(a1 + 32) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 256;
  return result;
}

__n128 static ClippingPrimitiveComponent.__fromCore(_:)@<Q0>(uint64_t a2@<X8>)
{
  REClippingPrimitiveComponentGetLocalBounds();
  v13 = v4;
  v14 = v3;
  FeatherUseCubicFalloff = REClippingPrimitiveComponentGetFeatherUseCubicFalloff();
  REClippingPrimitiveComponentGetFeatherIntervalFractionPerPositiveEdge();
  v12 = v6;
  REClippingPrimitiveComponentGetFeatherIntervalFractionPerNegativeEdge();
  v11 = v7;
  ShouldClipChildren = REClippingPrimitiveComponentGetShouldClipChildren();
  ShouldClipSelf = REClippingPrimitiveComponentGetShouldClipSelf();
  *a2 = v14;
  *(a2 + 16) = v13;
  *(a2 + 32) = FeatherUseCubicFalloff;
  result = v11;
  *(a2 + 48) = v12;
  *(a2 + 64) = v11;
  *(a2 + 80) = ShouldClipChildren;
  *(a2 + 81) = ShouldClipSelf;
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance ClippingPrimitiveComponent(void *a1)
{
  REClippingPrimitiveComponentClipToBox();
  REClippingPrimitiveComponentSetFeatherUseCubicFalloff();
  REClippingPrimitiveComponentSetFeatherIntervalFractionPerEdge();
  REClippingPrimitiveComponentSetShouldClipChildren();
  REClippingPrimitiveComponentSetShouldClipSelf();

  return RENetworkMarkComponentDirty();
}

uint64_t ClippingPrimitiveComponent.__toCore(_:)(void *a1)
{
  REClippingPrimitiveComponentClipToBox();
  REClippingPrimitiveComponentSetFeatherUseCubicFalloff();
  REClippingPrimitiveComponentSetFeatherIntervalFractionPerEdge();
  REClippingPrimitiveComponentSetShouldClipChildren();
  REClippingPrimitiveComponentSetShouldClipSelf();

  return RENetworkMarkComponentDirty();
}

uint64_t specialized static ClippingPrimitiveComponent.Feather.== infix(_:_:)(int8x16_t *a1, int8x16_t *a2)
{
  v2 = 0;
  if (a1->u8[0] == a2->u8[0])
  {
    v3 = a1[1];
    v4 = a2[1];
    if ((vmovn_s32(vmvnq_s8(vceqq_f32(v3, v4))).u8[0] & 1) == 0)
    {
      v5 = a1[2];
      v6 = a2[2];
      if ((vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(vextq_s8(v3, v3, 0xCuLL), v5, 8uLL), vextq_s8(vextq_s8(v4, v4, 0xCuLL), v6, 8uLL)))) & 1) == 0)
      {
        return 0;
      }

      v2 = vmovn_s32(vceqq_f32(*&v5, *&v6)).i8[4];
    }
  }

  return v2 & 1;
}

uint64_t specialized static ClippingPrimitiveComponent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v13 = *(a1 + 48);
  v3 = *(a1 + 80);
  v4 = *(a1 + 81);
  v5 = *(a2 + 32);
  v11 = *(a1 + 64);
  v12 = *(a2 + 48);
  v10 = *(a2 + 64);
  v6 = *(a2 + 80);
  v7 = *(a2 + 81);
  v8 = specialized static BoundingBox.== infix(_:_:)(*a1, *(a1 + 16), *a2, *(a2 + 16));
  result = 0;
  if ((v8 & 1) != 0 && ((v2 ^ v5) & 1) == 0 && (vmovn_s32(vmvnq_s8(vceqq_f32(v13, v12))).u8[0] & 1) == 0)
  {
    if (vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(vextq_s8(v13, v13, 0xCuLL), v11, 8uLL), vextq_s8(vextq_s8(v12, v12, 0xCuLL), v10, 8uLL)))) & 1) == 0 || (vmovn_s32(vmvnq_s8(vceqq_f32(*&v11, *&v10))).i32[1])
    {
      return 0;
    }

    else if ((v3 ^ v6))
    {
      return 0;
    }

    else
    {
      return v4 ^ v7 ^ 1u;
    }
  }

  return result;
}

__n128 __swift_memcpy82_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ClippingPrimitiveComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 82))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ClippingPrimitiveComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClippingPrimitiveComponent.Feather(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ClippingPrimitiveComponent.Feather(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClippingPrimitiveComponent.Feather.Falloff and conformance ClippingPrimitiveComponent.Feather.Falloff()
{
  result = lazy protocol witness table cache variable for type ClippingPrimitiveComponent.Feather.Falloff and conformance ClippingPrimitiveComponent.Feather.Falloff;
  if (!lazy protocol witness table cache variable for type ClippingPrimitiveComponent.Feather.Falloff and conformance ClippingPrimitiveComponent.Feather.Falloff)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClippingPrimitiveComponent.Feather.Falloff, &type metadata for ClippingPrimitiveComponent.Feather.Falloff, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ClippingPrimitiveComponent.Feather.Falloff and conformance ClippingPrimitiveComponent.Feather.Falloff);
  }

  return result;
}

CGColorRef HasSpotLight.light.getter@<X0>(uint64_t a1@<X8>)
{
  (*(*v1 + 96))(&v15);
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA09SpotLightD0V_Tt0B5(&v9);

  result = v9;
  if (v9)
  {
    v4 = v14;
    v6 = v12;
    v5 = v13;
    v8 = v10;
    v7 = v11;
  }

  else
  {
    result = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    v4 = 2.0;
    v5 = 1092616192;
    v6 = 1114636288;
    v7 = 1110704128;
    v8 = 1171433349;
  }

  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 12) = v7;
  *(a1 + 16) = v6;
  *(a1 + 20) = v5;
  *(a1 + 24) = v4;
  return result;
}

float key path getter for HasSpotLight.light : <A>A@<S0>(uint64_t a1@<X8>)
{
  HasSpotLight.light.getter(&v3);
  result = v5;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = result;
  return result;
}

uint64_t key path setter for HasSpotLight.light : <A>A(uint64_t a1)
{
  v1 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v1;
  v2 = v4;
  return HasSpotLight.light.setter(&v4);
}

uint64_t HasSpotLight.light.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = (*(*v1 + 112))(v8);
  _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA09SpotLightD0V_Tt0B5(v2, v3, v4, v5);
  return v6(v8, 0);
}

void (*HasSpotLight.light.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 64) = v1;
  HasSpotLight.light.getter(v3 + 32);
  return HasSpotLight.light.modify;
}

void HasSpotLight.light.modify(id **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[6];
  v6 = *(*a1 + 14);
  v7 = *(*(*a1)[8] + 112);
  if (a2)
  {
    v8 = v3;
    v9 = v7(v2);
    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA09SpotLightD0V_Tt0B5(v3, v4, v5, v6);
    v9(v2, 0);
  }

  else
  {
    v10 = v7(*a1);
    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA09SpotLightD0V_Tt0B5(v3, v4, v5, v6);
    v10(v2, 0);
  }

  free(v2);
}

uint64_t HasSpotLight.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  (*(*v1 + 96))(&v22);
  Component = REEntityGetComponent();
  if (Component)
  {
    v21 = Component;
    static SpotLightComponent.Shadow.__fromCore(_:)(&v15);
    v4 = v15;
    v5 = v16;
    v6 = v17;
    v7 = v18;
    v8 = v19;
    v9 = v20;

    v11 = v4 | (v5 << 32);
    v12 = 0x100000000;
    if (v7)
    {
      v13 = 0x100000000;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13 | v6;
    if (!v9)
    {
      v12 = 0;
    }
  }

  else
  {

    v8 = 0;
    v12 = 0x100000000;
    v11 = 0x33F800000;
    v14 = 0x100000000;
  }

  *a1 = v11;
  *(a1 + 8) = v14;
  *(a1 + 20) = BYTE4(v12);
  *(a1 + 16) = v12 | v8;
  return result;
}

uint64_t HasSpotLight.shadow.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) | (*(a1 + 20) << 32);
  v5 = (*(*v1 + 112))(v8);
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09SpotLightD0V6ShadowV_TtB5Tf4ndn_n(v2, v3, v4, *v6);
  return v5(v8, 0);
}

void (*HasSpotLight.shadow.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  HasSpotLight.shadow.getter((v7 + 3));
  return HasSpotLight.shadow.modify;
}

void HasSpotLight.shadow.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 40) | (*(*a1 + 44) << 32);
  v4[0] = *(*a1 + 24);
  v4[1] = v2;
  v5 = v3;
  v6 = BYTE4(v3);
  HasSpotLight.shadow.setter(v4);

  free(v1);
}

void __swiftcall USDImportedScene.init(name:assetName:active:)(RealityFoundation::USDImportedScene *__return_ptr retstr, Swift::String name, Swift::String assetName, Swift::Bool active)
{
  retstr->name = name;
  retstr->assetName = assetName;
  retstr->active = active;
}

uint64_t getEnumTagSinglePayload for USDImportedScene(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for USDImportedScene(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t (*VideoPlayerComponent.desiredViewingMode.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return VideoPlayerComponent.desiredViewingMode.modify;
}

Swift::Int VideoPlayerComponent.RenderingStatus.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t (*VideoPlayerComponent.isPassthroughTintingEnabled.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  return VideoPlayerComponent.isPassthroughTintingEnabled.modify;
}

uint64_t (*VideoPlayerComponent.isMediaTintingEnabled.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 25);
  return VideoPlayerComponent.isMediaTintingEnabled.modify;
}

void VideoPlayerComponent.maxGlowIntensity.setter(float a1)
{
  if (a1 <= 0.0)
  {
    a1 = 0.0;
  }

  if (a1 > 1.0)
  {
    a1 = 1.0;
  }

  *(v1 + 28) = a1;
}

float *(*VideoPlayerComponent.maxGlowIntensity.modify(uint64_t a1))(float *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 28);
  return VideoPlayerComponent.maxGlowIntensity.modify;
}

float *VideoPlayerComponent.maxGlowIntensity.modify(float *result)
{
  v1 = result[2];
  if (v1 <= 0.0)
  {
    v1 = 0.0;
  }

  if (v1 > 1.0)
  {
    v1 = 1.0;
  }

  *(*result + 28) = v1;
  return result;
}

Swift::Void __swiftcall VideoPlayerComponent.startVideoBlurFadeIn(targetAspectRatio:fadeTime:)(Swift::Float targetAspectRatio, Swift::Float fadeTime)
{
  *(v2 + 32) = 1;
  *(v2 + 36) = targetAspectRatio;
  *(v2 + 40) = fadeTime;
}

id VideoPlayerComponent.avPlayer.getter()
{
  AVPlayer = REVideoAssetGetAVPlayer();

  return AVPlayer;
}

void VideoPlayerComponent.init(with:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(&outlined read-only object #0 of VideoPlayerComponent.init(with:));
  v5 = v4;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(&outlined read-only object #1 of VideoPlayerComponent.init(with:));
  v7 = v6;
  LODWORD(v46) = getpid();
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  v10 = v9;
  if (one-time initialization token for uniqueTokenGenerator != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  OS_dispatch_semaphore.wait()();
  if (static VideoPlayerComponent.uniqueTokenGenerator == -1)
  {
    __break(1u);
LABEL_73:

    goto LABEL_68;
  }

  ++static VideoPlayerComponent.uniqueTokenGenerator;
  OS_dispatch_semaphore.signal()();
  swift_endAccess();
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v12;
  v46 = v8;
  v47 = v10;

  MEMORY[0x1C68F3410](v11, v13);

  v14 = HIBYTE(v10) & 0xF;
  v15 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v47) & 0xF;
  }

  else
  {
    v16 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    goto LABEL_73;
  }

  if ((v47 & 0x1000000000000000) != 0)
  {
    specialized _parseInteger<A, B>(ascii:radix:)(v46, v47, 10);
    v20 = v42;
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if ((v47 & 0x2000000000000000) != 0)
  {
    v47 = v10 & 0xFFFFFFFFFFFFFFLL;
    if (v46 == 43)
    {
      if (!v14)
      {
LABEL_80:
        __break(1u);
        return;
      }

      v17 = (v14 - 1);
      if (v14 != 1)
      {
        v20 = 0;
        v29 = &v46 + 1;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            break;
          }

          if (!is_mul_ok(v20, 0xAuLL))
          {
            break;
          }

          v23 = __CFADD__(10 * v20, v30);
          v20 = 10 * v20 + v30;
          if (v23)
          {
            break;
          }

          ++v29;
          if (!--v17)
          {
            goto LABEL_67;
          }
        }
      }
    }

    else if (v46 == 45)
    {
      if (!v14)
      {
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v17 = (v14 - 1);
      if (v14 != 1)
      {
        v20 = 0;
        v24 = &v46 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          if (!is_mul_ok(v20, 0xAuLL))
          {
            break;
          }

          v23 = 10 * v20 >= v25;
          v20 = 10 * v20 - v25;
          if (!v23)
          {
            break;
          }

          ++v24;
          if (!--v17)
          {
            goto LABEL_67;
          }
        }
      }
    }

    else if (v14)
    {
      v20 = 0;
      v32 = &v46;
      while (1)
      {
        v33 = *v32 - 48;
        if (v33 > 9)
        {
          break;
        }

        if (!is_mul_ok(v20, 0xAuLL))
        {
          break;
        }

        v23 = __CFADD__(10 * v20, v33);
        v20 = 10 * v20 + v33;
        if (v23)
        {
          break;
        }

        v32 = (v32 + 1);
        if (!--v14)
        {
LABEL_65:
          LOBYTE(v17) = 0;
          goto LABEL_67;
        }
      }
    }
  }

  else
  {
    if ((v46 & 0x1000000000000000) != 0)
    {
      v17 = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v17 = _StringObject.sharedUTF8.getter();
    }

    v18 = *v17;
    if (v18 == 43)
    {
      if (v15 >= 1)
      {
        v26 = v15 - 1;
        if (v15 != 1)
        {
          v20 = 0;
          if (!v17)
          {
            goto LABEL_67;
          }

          v27 = v17 + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            if (!is_mul_ok(v20, 0xAuLL))
            {
              break;
            }

            v23 = __CFADD__(10 * v20, v28);
            v20 = 10 * v20 + v28;
            if (v23)
            {
              break;
            }

            ++v27;
            if (!--v26)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_66;
      }

      goto LABEL_79;
    }

    if (v18 == 45)
    {
      if (v15 >= 1)
      {
        v19 = v15 - 1;
        if (v15 != 1)
        {
          v20 = 0;
          if (!v17)
          {
            goto LABEL_67;
          }

          v21 = v17 + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            if (!is_mul_ok(v20, 0xAuLL))
            {
              break;
            }

            v23 = 10 * v20 >= v22;
            v20 = 10 * v20 - v22;
            if (!v23)
            {
              break;
            }

            ++v21;
            if (!--v19)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_66;
      }

      __break(1u);
      goto LABEL_78;
    }

    if (v15)
    {
      v20 = 0;
      if (!v17)
      {
        goto LABEL_67;
      }

      while (1)
      {
        v31 = *v17 - 48;
        if (v31 > 9)
        {
          break;
        }

        if (!is_mul_ok(v20, 0xAuLL))
        {
          break;
        }

        v23 = __CFADD__(10 * v20, v31);
        v20 = 10 * v20 + v31;
        if (v23)
        {
          break;
        }

        ++v17;
        if (!--v15)
        {
          goto LABEL_65;
        }
      }
    }
  }

LABEL_66:
  v20 = 0;
  LOBYTE(v17) = 1;
LABEL_67:
  v34 = v17;

  if (v34)
  {
LABEL_68:
    v20 = arc4random();
  }

LABEL_69:
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of VideoPlayerComponent.init(with:));
  v45 = v35;
  type metadata accessor for __VideoResource();
  v36 = swift_allocObject();
  *(v36 + 24) = MEMORY[0x1E69E7CC0];
  v37 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v37 + 120, &v46);
  v38 = v48;
  v39 = v49;
  __swift_project_boxed_opaque_existential_1(&v46, v48);
  v40 = *(v39 + 32);

  v40(v38, v39);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  *(v36 + 16) = REAssetManagerVideoMemoryAssetCreateWithoutTarget();
  REAssetSetSwiftObject();

  type metadata accessor for VideoPlayerController();
  v41 = swift_allocObject();
  *(v41 + 16) = v20;
  if (one-time initialization token for sVPCNetworkSystemObserver != -1)
  {
    swift_once();
  }

  VPCNetworkSystemObserver.setupRENetworkCallbacks()();

  *a2 = 0;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = 256;
  *(a2 + 28) = 1055286886;
  *(a2 + 32) = 0;
  *(a2 + 36) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = v36;
  *(a2 + 80) = v41;
  *(a2 + 88) = v20;
  *(a2 + 96) = 16843009;
  *(a2 + 100) = 0;
  *(a2 + 112) = v45;
  *(a2 + 128) = -1082130432;
  *(a2 + 132) = 0;
}

uint64_t VideoPlayerComponent.init()@<X0>(uint64_t a1@<X8>)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(&outlined read-only object #0 of VideoPlayerComponent.init());
  v3 = v2;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(&outlined read-only object #1 of VideoPlayerComponent.init());
  v5 = v4;
  LODWORD(v45) = getpid();
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  v8 = v7;
  if (one-time initialization token for uniqueTokenGenerator != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  OS_dispatch_semaphore.wait()();
  if (static VideoPlayerComponent.uniqueTokenGenerator == -1)
  {
    __break(1u);
LABEL_73:

    goto LABEL_68;
  }

  ++static VideoPlayerComponent.uniqueTokenGenerator;
  OS_dispatch_semaphore.signal()();
  swift_endAccess();
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  v11 = v10;
  v45 = v6;
  v46 = v8;

  MEMORY[0x1C68F3410](v9, v11);

  result = v8;
  v13 = HIBYTE(v8) & 0xF;
  v14 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v46) & 0xF;
  }

  else
  {
    v15 = v45 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    goto LABEL_73;
  }

  if ((v46 & 0x1000000000000000) != 0)
  {
    specialized _parseInteger<A, B>(ascii:radix:)(v45, v46, 10);
    v19 = v41;
    v43 = v42;

    if ((v43 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if ((v46 & 0x2000000000000000) != 0)
  {
    v46 = v8 & 0xFFFFFFFFFFFFFFLL;
    if (v45 == 43)
    {
      if (!v13)
      {
LABEL_80:
        __break(1u);
        return result;
      }

      v16 = (v13 - 1);
      if (v13 != 1)
      {
        v19 = 0;
        v28 = &v45 + 1;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          if (!is_mul_ok(v19, 0xAuLL))
          {
            break;
          }

          v22 = __CFADD__(10 * v19, v29);
          v19 = 10 * v19 + v29;
          if (v22)
          {
            break;
          }

          ++v28;
          if (!--v16)
          {
            goto LABEL_67;
          }
        }
      }
    }

    else if (v45 == 45)
    {
      if (!v13)
      {
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v16 = (v13 - 1);
      if (v13 != 1)
      {
        v19 = 0;
        v23 = &v45 + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          if (!is_mul_ok(v19, 0xAuLL))
          {
            break;
          }

          v22 = 10 * v19 >= v24;
          v19 = 10 * v19 - v24;
          if (!v22)
          {
            break;
          }

          ++v23;
          if (!--v16)
          {
            goto LABEL_67;
          }
        }
      }
    }

    else if (v13)
    {
      v19 = 0;
      v31 = &v45;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          break;
        }

        if (!is_mul_ok(v19, 0xAuLL))
        {
          break;
        }

        v22 = __CFADD__(10 * v19, v32);
        v19 = 10 * v19 + v32;
        if (v22)
        {
          break;
        }

        v31 = (v31 + 1);
        if (!--v13)
        {
LABEL_65:
          LOBYTE(v16) = 0;
          goto LABEL_67;
        }
      }
    }
  }

  else
  {
    if ((v45 & 0x1000000000000000) != 0)
    {
      v16 = ((v46 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v16 = _StringObject.sharedUTF8.getter();
      result = v46;
    }

    v17 = *v16;
    if (v17 == 43)
    {
      if (v14 >= 1)
      {
        v25 = v14 - 1;
        if (v14 != 1)
        {
          v19 = 0;
          if (!v16)
          {
            goto LABEL_67;
          }

          v26 = v16 + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            if (!is_mul_ok(v19, 0xAuLL))
            {
              break;
            }

            v22 = __CFADD__(10 * v19, v27);
            v19 = 10 * v19 + v27;
            if (v22)
            {
              break;
            }

            ++v26;
            if (!--v25)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_66;
      }

      goto LABEL_79;
    }

    if (v17 == 45)
    {
      if (v14 >= 1)
      {
        v18 = v14 - 1;
        if (v14 != 1)
        {
          v19 = 0;
          if (!v16)
          {
            goto LABEL_67;
          }

          v20 = v16 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            if (!is_mul_ok(v19, 0xAuLL))
            {
              break;
            }

            v22 = 10 * v19 >= v21;
            v19 = 10 * v19 - v21;
            if (!v22)
            {
              break;
            }

            ++v20;
            if (!--v18)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_66;
      }

      __break(1u);
      goto LABEL_78;
    }

    if (v14)
    {
      v19 = 0;
      if (!v16)
      {
        goto LABEL_67;
      }

      while (1)
      {
        v30 = *v16 - 48;
        if (v30 > 9)
        {
          break;
        }

        if (!is_mul_ok(v19, 0xAuLL))
        {
          break;
        }

        v22 = __CFADD__(10 * v19, v30);
        v19 = 10 * v19 + v30;
        if (v22)
        {
          break;
        }

        ++v16;
        if (!--v14)
        {
          goto LABEL_65;
        }
      }
    }
  }

LABEL_66:
  v19 = 0;
  LOBYTE(v16) = 1;
LABEL_67:
  v33 = v16;

  if (v33)
  {
LABEL_68:
    v19 = arc4random();
  }

LABEL_69:
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of VideoPlayerComponent.init());
  v44 = v34;
  type metadata accessor for __VideoResource();
  v35 = swift_allocObject();
  *(v35 + 24) = MEMORY[0x1E69E7CC0];
  v36 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v36 + 120, &v45);
  v37 = v47;
  v38 = v48;
  __swift_project_boxed_opaque_existential_1(&v45, v47);
  v39 = *(v38 + 32);

  v39(v37, v38);
  __swift_destroy_boxed_opaque_existential_1(&v45);
  *(v35 + 16) = REAssetManagerVideoMemoryAssetCreateWithoutTarget();
  REAssetSetSwiftObject();

  type metadata accessor for VideoPlayerController();
  v40 = swift_allocObject();
  *(v40 + 16) = v19;
  if (one-time initialization token for sVPCNetworkSystemObserver != -1)
  {
    swift_once();
  }

  VPCNetworkSystemObserver.setupRENetworkCallbacks()();

  *a1 = 0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = 256;
  *(a1 + 28) = 1055286886;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v35;
  *(a1 + 80) = v40;
  *(a1 + 88) = v19;
  *(a1 + 96) = 16843009;
  *(a1 + 100) = 0;
  *(a1 + 112) = v44;
  *(a1 + 128) = -1082130432;
  *(a1 + 132) = 0;
  return result;
}

uint64_t static VideoPlayerComponent.__fromCore(_:)@<X0>(uint64_t a2@<X8>)
{
  VideoAsset = REVideoPlayerComponentGetVideoAsset();
  type metadata accessor for __VideoResource();
  if (VideoAsset)
  {
    v61 = VideoAsset;
    static __VideoResource.__fromCore(_:)(&v61);
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 24) = MEMORY[0x1E69E7CC0];
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    v6 = v5;
    swift_beginAccess();
    outlined init with copy of __REAssetService(v6 + 120, &v61);
    v7 = v63;
    v8 = v64;
    __swift_project_boxed_opaque_existential_1(&v61, v63);
    (*(v8 + 32))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(&v61);
    *(v4 + 16) = REAssetManagerVideoMemoryAssetCreate();
    REAssetSetSwiftObject();
  }

  VideoPlayerComponent.init(videoResource:)(v9, &v53);
  Guid = REVideoPlayerComponentGetGuid();
  *(&v58 + 1) = Guid;
  if (!Guid)
  {
    LODWORD(v61) = getpid();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    if (one-time initialization token for uniqueTokenGenerator != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    OS_dispatch_semaphore.wait()();
    v14 = static VideoPlayerComponent.uniqueTokenGenerator + 1;
    if (static VideoPlayerComponent.uniqueTokenGenerator == -1)
    {
      __break(1u);
    }

    else
    {
      ++static VideoPlayerComponent.uniqueTokenGenerator;
      OS_dispatch_semaphore.signal()();
      swift_endAccess();
      v61 = v14;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v61 = v11;
      v62 = v13;

      MEMORY[0x1C68F3410](v15, v17);

      result = v62;
      v19 = HIBYTE(v62) & 0xF;
      v20 = v61 & 0xFFFFFFFFFFFFLL;
      if ((v62 & 0x2000000000000000) != 0)
      {
        v21 = HIBYTE(v62) & 0xF;
      }

      else
      {
        v21 = v61 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        if ((v62 & 0x1000000000000000) != 0)
        {
          specialized _parseInteger<A, B>(ascii:radix:)(v61, v62, 10);
          Guid = v48;
          v50 = v49;

          if ((v50 & 1) == 0)
          {
            goto LABEL_73;
          }

          goto LABEL_72;
        }

        if ((v62 & 0x2000000000000000) != 0)
        {
          v62 &= 0xFFFFFFFFFFFFFFuLL;
          if (v61 == 43)
          {
            if (!v19)
            {
LABEL_86:
              __break(1u);
              return result;
            }

            v22 = (v19 - 1);
            if (v19 != 1)
            {
              Guid = 0;
              v33 = &v61 + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  break;
                }

                if (!is_mul_ok(Guid, 0xAuLL))
                {
                  break;
                }

                v27 = __CFADD__(10 * Guid, v34);
                Guid = 10 * Guid + v34;
                if (v27)
                {
                  break;
                }

                ++v33;
                if (!--v22)
                {
                  goto LABEL_71;
                }
              }
            }
          }

          else if (v61 == 45)
          {
            if (!v19)
            {
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

            v22 = (v19 - 1);
            if (v19 != 1)
            {
              Guid = 0;
              v28 = &v61 + 1;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  break;
                }

                if (!is_mul_ok(Guid, 0xAuLL))
                {
                  break;
                }

                v27 = 10 * Guid >= v29;
                Guid = 10 * Guid - v29;
                if (!v27)
                {
                  break;
                }

                ++v28;
                if (!--v22)
                {
                  goto LABEL_71;
                }
              }
            }
          }

          else if (v19)
          {
            Guid = 0;
            v36 = &v61;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              if (!is_mul_ok(Guid, 0xAuLL))
              {
                break;
              }

              v27 = __CFADD__(10 * Guid, v37);
              Guid = 10 * Guid + v37;
              if (v27)
              {
                break;
              }

              v36 = (v36 + 1);
              if (!--v19)
              {
LABEL_69:
                LOBYTE(v22) = 0;
                goto LABEL_71;
              }
            }
          }
        }

        else
        {
          if ((v61 & 0x1000000000000000) != 0)
          {
            v22 = ((v62 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v51 = v62;
            v22 = _StringObject.sharedUTF8.getter();
            result = v51;
          }

          v23 = *v22;
          if (v23 == 43)
          {
            if (v20 >= 1)
            {
              v30 = v20 - 1;
              if (v20 != 1)
              {
                Guid = 0;
                if (!v22)
                {
                  goto LABEL_71;
                }

                v31 = v22 + 1;
                while (1)
                {
                  v32 = *v31 - 48;
                  if (v32 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(Guid, 0xAuLL))
                  {
                    break;
                  }

                  v27 = __CFADD__(10 * Guid, v32);
                  Guid = 10 * Guid + v32;
                  if (v27)
                  {
                    break;
                  }

                  ++v31;
                  if (!--v30)
                  {
                    goto LABEL_69;
                  }
                }
              }

              goto LABEL_70;
            }

            goto LABEL_85;
          }

          if (v23 == 45)
          {
            if (v20 >= 1)
            {
              v24 = v20 - 1;
              if (v20 != 1)
              {
                Guid = 0;
                if (!v22)
                {
                  goto LABEL_71;
                }

                v25 = v22 + 1;
                while (1)
                {
                  v26 = *v25 - 48;
                  if (v26 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(Guid, 0xAuLL))
                  {
                    break;
                  }

                  v27 = 10 * Guid >= v26;
                  Guid = 10 * Guid - v26;
                  if (!v27)
                  {
                    break;
                  }

                  ++v25;
                  if (!--v24)
                  {
                    goto LABEL_69;
                  }
                }
              }

              goto LABEL_70;
            }

            __break(1u);
            goto LABEL_84;
          }

          if (v20)
          {
            Guid = 0;
            if (!v22)
            {
              goto LABEL_71;
            }

            while (1)
            {
              v35 = *v22 - 48;
              if (v35 > 9)
              {
                break;
              }

              if (!is_mul_ok(Guid, 0xAuLL))
              {
                break;
              }

              v27 = __CFADD__(10 * Guid, v35);
              Guid = 10 * Guid + v35;
              if (v27)
              {
                break;
              }

              ++v22;
              if (!--v20)
              {
                goto LABEL_69;
              }
            }
          }
        }

LABEL_70:
        Guid = 0;
        LOBYTE(v22) = 1;
LABEL_71:
        v38 = v22;

        if ((v38 & 1) == 0)
        {
LABEL_73:
          *(&v58 + 1) = Guid;
          goto LABEL_74;
        }

LABEL_72:
        Guid = arc4random();
        goto LABEL_73;
      }
    }

    goto LABEL_72;
  }

LABEL_74:
  type metadata accessor for VideoPlayerController();
  v39 = swift_allocObject();
  *(v39 + 16) = Guid;

  *&v58 = v39;
  LOBYTE(v59) = REVideoPlayerComponentGetEnableReflections();
  BYTE1(v59) = REVideoPlayerComponentGetScreenRoundedCornerEnabled();
  BYTE2(v59) = REVideoPlayerComponentGetScaleRoundedCornerEnabled();
  BYTE3(v59) = REVideoPlayerComponentGetScreenAspectRatioAnimationEnabled();
  BYTE4(v59) = REVideoPlayerComponentGetScreenDeferAspectRatioTransitionToApp();
  REVideoPlayerComponentGetDesiredViewingMode();
  LOBYTE(v53) = 0;
  BYTE5(v59) = REVideoPlayerComponentGetLowLatencyEnabled();
  REComponentGetEntity();
  REVideoPlayerStatusComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REVideoPlayerStatusComponentGetCurrentPlayerScreenSize();
    *(&v53 + 1) = v40;
    REVideoPlayerStatusComponentGetCurrentPlayerScreenVideoDimension();
    *&v54 = v41;
    REVideoPlayerStatusComponentGetSafeZoneRadius();
    *&v60[16] = v42;
    REVideoPlayerStatusComponentGetCurrentSceneSize();
    v52 = v43;

    *v60 = v52;
  }

  else
  {
  }

  v44 = *v60;
  *(a2 + 96) = v59;
  *(a2 + 112) = v44;
  *(a2 + 125) = *&v60[13];
  v45 = v56;
  *(a2 + 32) = v55;
  *(a2 + 48) = v45;
  v46 = v58;
  *(a2 + 64) = v57;
  *(a2 + 80) = v46;
  v47 = v54;
  *a2 = v53;
  *(a2 + 16) = v47;
  return result;
}

uint64_t VideoPlayerComponent.init(videoResource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(&outlined read-only object #0 of VideoPlayerComponent.init(videoResource:));
  v5 = v4;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(&outlined read-only object #1 of VideoPlayerComponent.init(videoResource:));
  v7 = v6;
  LODWORD(v40) = getpid();
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  v10 = v9;
  if (one-time initialization token for uniqueTokenGenerator != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  OS_dispatch_semaphore.wait()();
  if (static VideoPlayerComponent.uniqueTokenGenerator == -1)
  {
    __break(1u);
LABEL_71:

    goto LABEL_68;
  }

  ++static VideoPlayerComponent.uniqueTokenGenerator;
  OS_dispatch_semaphore.signal()();
  swift_endAccess();
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v12;
  v40 = v8;
  v41 = v10;

  MEMORY[0x1C68F3410](v11, v13);

  result = v10;
  v15 = HIBYTE(v10) & 0xF;
  v16 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v41) & 0xF;
  }

  else
  {
    v17 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    goto LABEL_71;
  }

  if ((v41 & 0x1000000000000000) != 0)
  {
    specialized _parseInteger<A, B>(ascii:radix:)(v40, v41, 10);
    v21 = v37;
    v39 = v38;

    if ((v39 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if ((v41 & 0x2000000000000000) == 0)
  {
    if ((v40 & 0x1000000000000000) != 0)
    {
      v18 = ((v41 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v18 = _StringObject.sharedUTF8.getter();
      result = v41;
    }

    v19 = *v18;
    if (v19 == 43)
    {
      if (v16 >= 1)
      {
        v27 = v16 - 1;
        if (v16 != 1)
        {
          v21 = 0;
          if (!v18)
          {
            goto LABEL_67;
          }

          v28 = v18 + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              break;
            }

            v24 = __CFADD__(10 * v21, v29);
            v21 = 10 * v21 + v29;
            if (v24)
            {
              break;
            }

            ++v28;
            if (!--v27)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_66;
      }

      goto LABEL_77;
    }

    if (v19 == 45)
    {
      if (v16 >= 1)
      {
        v20 = v16 - 1;
        if (v16 != 1)
        {
          v21 = 0;
          if (!v18)
          {
            goto LABEL_67;
          }

          v22 = v18 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              break;
            }

            v24 = 10 * v21 >= v23;
            v21 = 10 * v21 - v23;
            if (!v24)
            {
              break;
            }

            ++v22;
            if (!--v20)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_66;
      }

      __break(1u);
      goto LABEL_76;
    }

    if (v16)
    {
      v21 = 0;
      if (!v18)
      {
        goto LABEL_67;
      }

      while (1)
      {
        v32 = *v18 - 48;
        if (v32 > 9)
        {
          break;
        }

        if (!is_mul_ok(v21, 0xAuLL))
        {
          break;
        }

        v24 = __CFADD__(10 * v21, v32);
        v21 = 10 * v21 + v32;
        if (v24)
        {
          break;
        }

        ++v18;
        if (!--v16)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_66;
  }

  v41 = v10 & 0xFFFFFFFFFFFFFFLL;
  if (v40 != 43)
  {
    if (v40 == 45)
    {
      if (!v15)
      {
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v18 = (v15 - 1);
      if (v15 != 1)
      {
        v21 = 0;
        v25 = &v40 + 1;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          if (!is_mul_ok(v21, 0xAuLL))
          {
            break;
          }

          v24 = 10 * v21 >= v26;
          v21 = 10 * v21 - v26;
          if (!v24)
          {
            break;
          }

          ++v25;
          if (!--v18)
          {
            goto LABEL_67;
          }
        }
      }
    }

    else if (v15)
    {
      v21 = 0;
      v33 = &v40;
      while (1)
      {
        v34 = *v33 - 48;
        if (v34 > 9)
        {
          break;
        }

        if (!is_mul_ok(v21, 0xAuLL))
        {
          break;
        }

        v24 = __CFADD__(10 * v21, v34);
        v21 = 10 * v21 + v34;
        if (v24)
        {
          break;
        }

        v33 = (v33 + 1);
        if (!--v15)
        {
LABEL_65:
          LOBYTE(v18) = 0;
          goto LABEL_67;
        }
      }
    }

LABEL_66:
    v21 = 0;
    LOBYTE(v18) = 1;
LABEL_67:
    v35 = v18;

    if ((v35 & 1) == 0)
    {
LABEL_69:
      result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of VideoPlayerComponent.init(videoResource:));
      *a2 = 0;
      *(a2 + 8) = v5;
      *(a2 + 16) = v7;
      *(a2 + 24) = 256;
      *(a2 + 28) = 1055286886;
      *(a2 + 32) = 0;
      *(a2 + 36) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 72) = a1;
      *(a2 + 80) = 0;
      *(a2 + 88) = v21;
      *(a2 + 96) = 16843009;
      *(a2 + 100) = 0;
      *(a2 + 112) = v36;
      *(a2 + 128) = -1082130432;
      *(a2 + 132) = 0;
      return result;
    }

LABEL_68:
    v21 = arc4random();
    goto LABEL_69;
  }

  if (v15)
  {
    v18 = (v15 - 1);
    if (v15 != 1)
    {
      v21 = 0;
      v30 = &v40 + 1;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        if (!is_mul_ok(v21, 0xAuLL))
        {
          break;
        }

        v24 = __CFADD__(10 * v21, v31);
        v21 = 10 * v21 + v31;
        if (v24)
        {
          break;
        }

        ++v30;
        if (!--v18)
        {
          goto LABEL_67;
        }
      }
    }

    goto LABEL_66;
  }

LABEL_78:
  __break(1u);
  return result;
}

uint64_t VideoPlayerComponent.__toCore(_:)(void *a1)
{
  v6 = *(v1 + 33);
  v7 = *(v1 + 32);
  REComponentGetEntity();
  REVideoPlayerStatusComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RESpatialMediaComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RESpatialMediaStatusComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  REVideoPlayerComponentSetVideoAsset();
  REVideoPlayerComponentSetScreenRoundedCornerEnabled();
  REVideoPlayerComponentSetScaleRoundedCornerEnabled();
  REVideoPlayerComponentSetScreenAspectRatioAnimationEnabled();
  REVideoPlayerComponentSetScreenDeferAspectRatioTransitionToApp();
  REVideoPlayerComponentSetGuid();
  REVideoPlayerComponentSetEnableReflections();
  REVideoPlayerComponentSetLowLatencyEnabled();
  RENetworkMarkComponentDirty();
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v8);
  v3 = v9;
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v4 + 32))(v3, v4);
  REVideoPlayerComponentPreloadVideoAsset();
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  if (v7 == 1)
  {
    return REVideoPlayerComponentStartBlurVideoFadeIn();
  }

  if (v6)
  {
    return REVideoPlayerComponentStartBlurVideoFadeOut();
  }

  return result;
}

uint64_t VideoPlayerComponent.videoReceiverEndpointInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v2;
  return swift_unknownObjectRetain();
}

__n128 VideoPlayerComponent.videoReceiverEndpointInfo.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  swift_unknownObjectRelease();
  result = v4;
  v1[3] = v4;
  v1[4].n128_u64[0] = v2;
  return result;
}

uint64_t (*VideoPlayerComponent.videoReceiverEndpointInfo.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
  swift_unknownObjectRetain();
  return VideoPlayerComponent.videoReceiverEndpointInfo.modify;
}

uint64_t VideoPlayerComponent.videoReceiverEndpointInfo.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v4[6] = v2;
    v4[7] = v3;
    v4[8] = v5;

    return swift_unknownObjectRelease();
  }

  else
  {
    result = swift_unknownObjectRelease();
    v4[6] = v2;
    v4[7] = v3;
    v4[8] = v5;
  }

  return result;
}

void one-time initialization function for sVPCNetworkSystemObserver()
{
  type metadata accessor for VPCNetworkSystemObserver();
  v0 = swift_allocObject();
  v0[2] = 0;
  v0[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCys6UInt64V_s13OpaquePointerVSgts5NeverOGMd, &_s7Combine19CurrentValueSubjectCys6UInt64V_s13OpaquePointerVSgts5NeverOGMR);
  swift_allocObject();
  v0[4] = CurrentValueSubject.init(_:)();
  VPCNetworkSystemObserver.setupRENetworkCallbacks()();
  static VideoPlayerComponent.sVPCNetworkSystemObserver = v0;
}

uint64_t VPCNetworkSystemObserver.__deallocating_deinit()
{
  if (*(v0 + 16) && *(v0 + 24))
  {
    RENetworkSystemRemoveObserver();
    *(v0 + 16) = 0;
  }

  if (*(v0 + 24))
  {
    RERelease();
    *(v0 + 24) = 0;
  }

  return swift_deallocClassInstance();
}

void VPCNetworkSystemObserver.setupRENetworkCallbacks()()
{
  if (!*(v0 + 24))
  {
    v1 = v0;
    v2 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    v3 = *(v2 + 24);
    swift_unownedRetainStrong();
    swift_beginAccess();
    v4 = *(v3 + 40);

    if (!v4)
    {
      __break(1u);
      return;
    }

    swift_beginAccess();
    outlined init with copy of __REAssetService(v4 + 80, v27);

    v5 = v28;
    v6 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    (*(v6 + 32))(&v21, v5, v6);
    if (REECSManagerSceneCount() < 1)
    {
      if (one-time initialization token for VideoLogger != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, VideoLogger);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_16;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "App VideoPlayer+Component Caption: setupRENetworkCallbacks failed - scene count is zero";
    }

    else
    {
      ServiceLocator = REECSManagerGetServiceLocator();
      v8 = v1;
      *(v1 + 16) = MEMORY[0x1C68FE270](ServiceLocator);
      v9 = RENetworkSystemObserverCreateEx();
      *(v1 + 24) = v9;
      if (*(v1 + 16) && v9)
      {
        v25 = partial apply for implicit closure #2 in implicit closure #1 in VPCNetworkSystemObserver.setupRENetworkCallbacks();
        v26 = v1;
        v21 = MEMORY[0x1E69E9820];
        v22 = 1107296256;
        v23 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
        v24 = &block_descriptor_43;
        v10 = _Block_copy(&v21);

        RENetworkSystemObserverOnLocalComponentWillRemove();
        _Block_release(v10);
        v25 = partial apply for implicit closure #4 in implicit closure #3 in VPCNetworkSystemObserver.setupRENetworkCallbacks();
        v26 = v8;
        v21 = MEMORY[0x1E69E9820];
        v22 = 1107296256;
        v23 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
        v24 = &block_descriptor_87;
        v11 = _Block_copy(&v21);

        RENetworkSystemObserverOnLocalEntityDidCreate();
        _Block_release(v11);
        v25 = partial apply for implicit closure #6 in implicit closure #5 in VPCNetworkSystemObserver.setupRENetworkCallbacks();
        v26 = v8;
        v21 = MEMORY[0x1E69E9820];
        v22 = 1107296256;
        v23 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
        v24 = &block_descriptor_90_1;
        v12 = _Block_copy(&v21);

        RENetworkSystemObserverOnLocalEntityWillDestroy();
        _Block_release(v12);
        v25 = partial apply for implicit closure #8 in implicit closure #7 in VPCNetworkSystemObserver.setupRENetworkCallbacks();
        v26 = v8;
        v21 = MEMORY[0x1E69E9820];
        v22 = 1107296256;
        v23 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
        v24 = &block_descriptor_93;
        v13 = _Block_copy(&v21);

        RENetworkSystemObserverOnComponentDidUpdate();
        _Block_release(v13);
        v25 = partial apply for implicit closure #10 in implicit closure #9 in VPCNetworkSystemObserver.setupRENetworkCallbacks();
        v26 = v8;
        v21 = MEMORY[0x1E69E9820];
        v22 = 1107296256;
        v23 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
        v24 = &block_descriptor_96_0;
        v14 = _Block_copy(&v21);

        RENetworkSystemObserverOnLocalComponentDidUpdate();
        _Block_release(v14);
        RENetworkSystemAddObserver();
LABEL_17:
        __swift_destroy_boxed_opaque_existential_1(v27);
        return;
      }

      if (one-time initialization token for VideoLogger != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, VideoLogger);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v16, v17))
      {
LABEL_16:

        goto LABEL_17;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "App VideoPlayer+Component Caption: setupRENetworkCallbacks failed - no network system or observer";
    }

    _os_log_impl(&dword_1C1358000, v16, v17, v19, v18, 2u);
    MEMORY[0x1C6902A30](v18, -1, -1);
    goto LABEL_16;
  }
}

void VPCNetworkSystemObserver.onComponentDidUpdate(componentRef:)(uint64_t a1)
{
  Entity = REComponentGetEntity();
  REVideoPlayerStatusComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass && ComponentByClass == a1 || (REVideoPlayerComponentGetComponentType(), (v4 = REEntityGetComponentByClass()) != 0) && v4 == a1)
  {
    REVideoPlayerStatusComponentGetComponentType();
    v5 = REEntityGetComponentByClass();
    if (v5)
    {
      v6 = v5;
      REVideoPlayerComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        REVideoPlayerStatusComponentDidUpdateInApp();

        *&v28[0] = REVideoPlayerComponentGetGuid();
        *(&v28[0] + 1) = v6;
        CurrentValueSubject.send(_:)();

        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          swift_dynamicCastClassUnconditional();
        }

        else
        {
          if (REEntityIsBeingDestroyed())
          {
            __break(1u);
            return;
          }

          specialized static Entity.entityInfoType(_:)(Entity);
          if (v10)
          {
            v11 = (*(v10 + 232))();
            v12 = *(v11 + 16);

            MEMORY[0x1C68F9740](v12, 0);
            *(v11 + 16) = Entity;
            MEMORY[0x1C68F9740](Entity, v11);
          }

          else
          {
            makeEntity(for:)(Entity);
          }
        }

        _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation011VideoPlayerD0V_Tt0B5(&v18);

        v26[6] = v24;
        v27[0] = v25[0];
        v26[2] = v20;
        v26[3] = v21;
        v26[4] = v22;
        v26[5] = v23;
        v26[0] = v18;
        v26[1] = v19;
        v28[6] = v24;
        v29[0] = v25[0];
        v28[2] = v20;
        v28[3] = v21;
        v28[4] = v22;
        v28[5] = v23;
        *(v27 + 13) = *(v25 + 13);
        *(v29 + 13) = *(v25 + 13);
        v28[0] = v18;
        v28[1] = v19;
        if (_s17RealityFoundation20VideoPlayerComponentVSgWOg(v28) == 1)
        {
          if (one-time initialization token for VideoLogger != -1)
          {
            swift_once();
          }

          v13 = type metadata accessor for Logger();
          __swift_project_value_buffer(v13, VideoLogger);
          v14 = Logger.logObject.getter();
          v15 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            _os_log_impl(&dword_1C1358000, v14, v15, "App VideoPlayer+Component VPCNetworkSystemObserver onComponentDidUpdate failed - there is no videoplayercomponent object", v16, 2u);
            MEMORY[0x1C6902A30](v16, -1, -1);
          }
        }

        else
        {

          outlined destroy of VideoPlayerComponent?(v26);
        }
      }
    }

    else
    {
      if (one-time initialization token for VideoLogger != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, VideoLogger);
      oslog = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1C1358000, oslog, v8, "App VideoPlayer+Component VPCNetworkSystemObserver onComponentDidUpdate failed - there is no Video Player Status Component", v9, 2u);
        MEMORY[0x1C6902A30](v9, -1, -1);
      }
    }
  }
}

uint64_t VideoPlayerComponent.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v25 - v6;
  v8 = v0[5];
  v9 = v0[7];
  v33 = v0[6];
  *v34 = v9;
  v10 = v0[1];
  v11 = v0[3];
  v29 = v0[2];
  v30 = v11;
  v12 = v0[3];
  v13 = v0[5];
  v31 = v0[4];
  v32 = v13;
  v14 = v0[1];
  v27 = *v0;
  v28 = v14;
  v15 = v0[7];
  v25[15] = v33;
  v26[0] = v15;
  v25[11] = v29;
  v25[12] = v12;
  v25[13] = v31;
  v25[14] = v8;
  *&v34[13] = *(v0 + 125);
  *(v26 + 13) = *(v0 + 125);
  v25[9] = v27;
  v25[10] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C1897F90;
  *(v16 + 32) = 0x726579616C507661;
  *(v16 + 40) = 0xE800000000000000;
  outlined init with copy of VideoPlayerComponent(&v27, v25);
  v17 = REVideoAssetGetAVPlayer();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8AVPlayerCSgMd, &_sSo8AVPlayerCSgMR);
  *(v16 + 48) = v17;
  *(v16 + 72) = v18;
  *(v16 + 80) = 0xD000000000000012;
  *(v16 + 88) = 0x80000001C18ED140;
  *(v16 + 96) = v27;
  *(v16 + 120) = &type metadata for VideoPlaybackController.ViewingMode;
  *(v16 + 128) = 0x4D676E6977656976;
  *(v16 + 136) = 0xEB0000000065646FLL;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit23VideoPlaybackControllerC0A10FoundationE11ViewingModeOSgMd, &_s10RealityKit23VideoPlaybackControllerC0A10FoundationE11ViewingModeOSgMR);
  *(v16 + 144) = 2 * (v34[20] != 1);
  *(v16 + 168) = v19;
  *(v16 + 176) = 0xD000000000000010;
  *(v16 + 184) = 0x80000001C18ED160;
  v20 = *(&v27 + 1);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  *(v16 + 192) = v20;
  *(v16 + 216) = v21;
  *(v16 + 224) = 0xD000000000000014;
  *(v16 + 232) = 0x80000001C18ED180;
  v22 = v28;
  *(v16 + 264) = v21;
  *(v16 + 240) = v22;
  v23 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

id VideoPlayerComponent.videoRenderer.getter()
{
  AVSampleBufferVideoRenderer = REVideoAssetGetAVSampleBufferVideoRenderer();

  return AVSampleBufferVideoRenderer;
}

void VideoPlayerComponent.init(avPlayer:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, id)@<X4>, uint64_t a6@<X8>)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(a2);
  v12 = v11;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(a3);
  v14 = v13;
  LODWORD(v56) = getpid();
  v15 = dispatch thunk of CustomStringConvertible.description.getter();
  v17 = v16;
  if (one-time initialization token for uniqueTokenGenerator != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  OS_dispatch_semaphore.wait()();
  if (static VideoPlayerComponent.uniqueTokenGenerator == -1)
  {
    __break(1u);
LABEL_73:

    goto LABEL_68;
  }

  ++static VideoPlayerComponent.uniqueTokenGenerator;
  OS_dispatch_semaphore.signal()();
  swift_endAccess();
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  v20 = v19;
  v56 = v15;
  v57 = v17;

  MEMORY[0x1C68F3410](v18, v20);

  v21 = HIBYTE(v17) & 0xF;
  v22 = v15 & 0xFFFFFFFFFFFFLL;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v57) & 0xF;
  }

  else
  {
    v23 = v56 & 0xFFFFFFFFFFFFLL;
  }

  v55 = a5;
  if (!v23)
  {
    goto LABEL_73;
  }

  if ((v57 & 0x1000000000000000) != 0)
  {
    specialized _parseInteger<A, B>(ascii:radix:)(v56, v57, 10);
    v27 = v51;
    v53 = v52;

    if ((v53 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if ((v57 & 0x2000000000000000) != 0)
  {
    v57 = v17 & 0xFFFFFFFFFFFFFFLL;
    if (v56 == 43)
    {
      if (!v21)
      {
LABEL_80:
        __break(1u);
        return;
      }

      v24 = (v21 - 1);
      if (v21 != 1)
      {
        v27 = 0;
        v36 = &v56 + 1;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          if (!is_mul_ok(v27, 0xAuLL))
          {
            break;
          }

          v30 = __CFADD__(10 * v27, v37);
          v27 = 10 * v27 + v37;
          if (v30)
          {
            break;
          }

          ++v36;
          if (!--v24)
          {
            goto LABEL_67;
          }
        }
      }
    }

    else if (v56 == 45)
    {
      if (!v21)
      {
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v24 = (v21 - 1);
      if (v21 != 1)
      {
        v27 = 0;
        v31 = &v56 + 1;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          if (!is_mul_ok(v27, 0xAuLL))
          {
            break;
          }

          v30 = 10 * v27 >= v32;
          v27 = 10 * v27 - v32;
          if (!v30)
          {
            break;
          }

          ++v31;
          if (!--v24)
          {
            goto LABEL_67;
          }
        }
      }
    }

    else if (v21)
    {
      v27 = 0;
      v39 = &v56;
      while (1)
      {
        v40 = *v39 - 48;
        if (v40 > 9)
        {
          break;
        }

        if (!is_mul_ok(v27, 0xAuLL))
        {
          break;
        }

        v30 = __CFADD__(10 * v27, v40);
        v27 = 10 * v27 + v40;
        if (v30)
        {
          break;
        }

        v39 = (v39 + 1);
        if (!--v21)
        {
LABEL_65:
          LOBYTE(v24) = 0;
          goto LABEL_67;
        }
      }
    }
  }

  else
  {
    if ((v56 & 0x1000000000000000) != 0)
    {
      v24 = ((v57 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v24 = _StringObject.sharedUTF8.getter();
    }

    v25 = *v24;
    if (v25 == 43)
    {
      if (v22 >= 1)
      {
        v33 = v22 - 1;
        if (v22 != 1)
        {
          v27 = 0;
          if (!v24)
          {
            goto LABEL_67;
          }

          v34 = v24 + 1;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              break;
            }

            if (!is_mul_ok(v27, 0xAuLL))
            {
              break;
            }

            v30 = __CFADD__(10 * v27, v35);
            v27 = 10 * v27 + v35;
            if (v30)
            {
              break;
            }

            ++v34;
            if (!--v33)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_66;
      }

      goto LABEL_79;
    }

    if (v25 == 45)
    {
      if (v22 >= 1)
      {
        v26 = v22 - 1;
        if (v22 != 1)
        {
          v27 = 0;
          if (!v24)
          {
            goto LABEL_67;
          }

          v28 = v24 + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            if (!is_mul_ok(v27, 0xAuLL))
            {
              break;
            }

            v30 = 10 * v27 >= v29;
            v27 = 10 * v27 - v29;
            if (!v30)
            {
              break;
            }

            ++v28;
            if (!--v26)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_66;
      }

      __break(1u);
      goto LABEL_78;
    }

    if (v22)
    {
      v27 = 0;
      if (!v24)
      {
        goto LABEL_67;
      }

      while (1)
      {
        v38 = *v24 - 48;
        if (v38 > 9)
        {
          break;
        }

        if (!is_mul_ok(v27, 0xAuLL))
        {
          break;
        }

        v30 = __CFADD__(10 * v27, v38);
        v27 = 10 * v27 + v38;
        if (v30)
        {
          break;
        }

        ++v24;
        if (!--v22)
        {
          goto LABEL_65;
        }
      }
    }
  }

LABEL_66:
  v27 = 0;
  LOBYTE(v24) = 1;
LABEL_67:
  v41 = v24;

  if (v41)
  {
LABEL_68:
    v27 = arc4random();
  }

LABEL_69:
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(a4);
  v54 = v42;
  type metadata accessor for __VideoResource();
  v43 = swift_allocObject();
  *(v43 + 24) = MEMORY[0x1E69E7CC0];
  v44 = a1;
  v45 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v45 + 120, &v56);
  v46 = v58;
  v47 = v59;
  __swift_project_boxed_opaque_existential_1(&v56, v58);
  v48 = *(v47 + 32);

  v49 = v48(v46, v47);
  __swift_destroy_boxed_opaque_existential_1(&v56);
  *(v43 + 16) = v55(v49, v44);
  REAssetSetSwiftObject();

  type metadata accessor for VideoPlayerController();
  v50 = swift_allocObject();
  *(v50 + 16) = v27;
  if (one-time initialization token for sVPCNetworkSystemObserver != -1)
  {
    swift_once();
  }

  VPCNetworkSystemObserver.setupRENetworkCallbacks()();

  *a6 = 0;
  *(a6 + 8) = v12;
  *(a6 + 16) = v14;
  *(a6 + 24) = 256;
  *(a6 + 28) = 1055286886;
  *(a6 + 32) = 0;
  *(a6 + 36) = 0;
  *(a6 + 40) = 0;
  *(a6 + 48) = 0;
  *(a6 + 56) = 0;
  *(a6 + 64) = 0;
  *(a6 + 72) = v43;
  *(a6 + 80) = v50;
  *(a6 + 88) = v27;
  *(a6 + 96) = 16843009;
  *(a6 + 100) = 0;
  *(a6 + 112) = v54;
  *(a6 + 128) = -1082130432;
  *(a6 + 132) = 0;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = String.init<A>(_:)();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = _StringObject.sharedUTF8.getter();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

void specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, int64_t a3)
{
  v72 = a1;
  v73 = a2;

  v4 = String.init<A>(_:)();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(v4, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = _StringObject.sharedUTF8.getter();
      v8 = v71;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (v7)
          {
            v25 = 0;
            v26 = v7 + 1;
            while (1)
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (is_mul_ok(v25, a3))
              {
                v29 = v25 * a3;
                v30 = v27 + v28;
                v20 = __CFADD__(v29, v30);
                v25 = v29 + v30;
                if (!v20)
                {
                  ++v26;
                  if (--v21)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_127;
            }
          }
        }

        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (v7)
        {
          v34 = 0;
          while (1)
          {
            v35 = *v7;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (is_mul_ok(v34, a3))
            {
              v37 = v34 * a3;
              v38 = v35 + v36;
              v20 = __CFADD__(v37, v38);
              v34 = v37 + v38;
              if (!v20)
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_127;
          }
        }
      }

      goto LABEL_127;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (is_mul_ok(v14, a3))
            {
              v18 = v14 * a3;
              v19 = v16 + v17;
              v20 = v18 >= v19;
              v14 = v18 - v19;
              if (v20)
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_127:

      return;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v72 = v6;
  v73 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v62 = 0;
        v63 = a3 + 48;
        v64 = a3 + 55;
        v65 = a3 + 87;
        if (a3 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          if (is_mul_ok(v62, a3))
          {
            v69 = v62 * a3;
            v70 = v67 + v68;
            v20 = __CFADD__(v69, v70);
            v62 = v69 + v70;
            if (!v20)
            {
              v66 = (v66 + 1);
              if (--v41)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v72 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (is_mul_ok(v43, a3))
          {
            v50 = v43 * a3;
            v51 = v48 + v49;
            v20 = v50 >= v51;
            v43 = v50 - v51;
            if (v20)
            {
              ++v47;
              if (--v42)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v53 = 0;
      v54 = a3 + 48;
      v55 = a3 + 55;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v54 = 58;
      }

      else
      {
        v56 = 97;
        v55 = 65;
      }

      v57 = &v72 + 1;
      while (1)
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_127;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }
        }

        else
        {
          v59 = -48;
        }

        if (is_mul_ok(v53, a3))
        {
          v60 = v53 * a3;
          v61 = v58 + v59;
          v20 = __CFADD__(v60, v61);
          v53 = v60 + v61;
          if (!v20)
          {
            ++v57;
            if (--v52)
            {
              continue;
            }
          }
        }

        goto LABEL_127;
      }
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1C68F3460](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t lazy protocol witness table accessor for type VideoPlayerDefaults and conformance VideoPlayerDefaults()
{
  result = lazy protocol witness table cache variable for type VideoPlayerDefaults and conformance VideoPlayerDefaults;
  if (!lazy protocol witness table cache variable for type VideoPlayerDefaults and conformance VideoPlayerDefaults)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoPlayerDefaults, &type metadata for VideoPlayerDefaults, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VideoPlayerDefaults and conformance VideoPlayerDefaults);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VideoPlayerComponent.ImmersiveViewingMode and conformance VideoPlayerComponent.ImmersiveViewingMode()
{
  result = lazy protocol witness table cache variable for type VideoPlayerComponent.ImmersiveViewingMode and conformance VideoPlayerComponent.ImmersiveViewingMode;
  if (!lazy protocol witness table cache variable for type VideoPlayerComponent.ImmersiveViewingMode and conformance VideoPlayerComponent.ImmersiveViewingMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoPlayerComponent.ImmersiveViewingMode, &type metadata for VideoPlayerComponent.ImmersiveViewingMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VideoPlayerComponent.ImmersiveViewingMode and conformance VideoPlayerComponent.ImmersiveViewingMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VideoPlayerComponent.VideoComfortMitigation and conformance VideoPlayerComponent.VideoComfortMitigation()
{
  result = lazy protocol witness table cache variable for type VideoPlayerComponent.VideoComfortMitigation and conformance VideoPlayerComponent.VideoComfortMitigation;
  if (!lazy protocol witness table cache variable for type VideoPlayerComponent.VideoComfortMitigation and conformance VideoPlayerComponent.VideoComfortMitigation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoPlayerComponent.VideoComfortMitigation, &type metadata for VideoPlayerComponent.VideoComfortMitigation, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VideoPlayerComponent.VideoComfortMitigation and conformance VideoPlayerComponent.VideoComfortMitigation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VideoPlayerComponent.RenderingStatus and conformance VideoPlayerComponent.RenderingStatus()
{
  result = lazy protocol witness table cache variable for type VideoPlayerComponent.RenderingStatus and conformance VideoPlayerComponent.RenderingStatus;
  if (!lazy protocol witness table cache variable for type VideoPlayerComponent.RenderingStatus and conformance VideoPlayerComponent.RenderingStatus)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoPlayerComponent.RenderingStatus, &type metadata for VideoPlayerComponent.RenderingStatus, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VideoPlayerComponent.RenderingStatus and conformance VideoPlayerComponent.RenderingStatus);
  }

  return result;
}

__n128 __swift_memcpy133_16(uint64_t a1, uint64_t a2)
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
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VideoPlayerComponent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 133))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoPlayerComponent(uint64_t result, int a2, int a3)
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
    *(result + 132) = 0;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 133) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 133) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s17RealityFoundation20VideoPlayerComponentVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t outlined destroy of VideoPlayerComponent?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20VideoPlayerComponentVSgMd, &_s17RealityFoundation20VideoPlayerComponentVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void specialized VPCNetworkSystemObserver.onLocalVideoComponentRemove(componentRef:)(uint64_t a1)
{
  Entity = REComponentGetEntity();
  REVideoPlayerComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass && ComponentByClass == a1)
  {
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      if (REEntityIsBeingDestroyed())
      {
        __break(1u);
        return;
      }

      specialized static Entity.entityInfoType(_:)(Entity);
      if (v4)
      {
        v5 = (*(v4 + 232))();
        v6 = *(v5 + 16);

        MEMORY[0x1C68F9740](v6, 0);
        *(v5 + 16) = Entity;
        MEMORY[0x1C68F9740](Entity, v5);
      }

      else
      {
        makeEntity(for:)(Entity);
      }
    }

    _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation011VideoPlayerD0V_Tt0B5(v11);

    v13[6] = v11[6];
    v14[0] = v12[0];
    *(v14 + 13) = *(v12 + 13);
    v13[2] = v11[2];
    v13[3] = v11[3];
    v13[4] = v11[4];
    v13[5] = v11[5];
    v13[0] = v11[0];
    v13[1] = v11[1];
    if (_s17RealityFoundation20VideoPlayerComponentVSgWOg(v13) == 1)
    {
      if (one-time initialization token for VideoLogger != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, VideoLogger);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1C1358000, v8, v9, "App VideoPlayer+Component VPCNetworkSystemObserver onLocalVideoComponentRemove failed - there is no videoplayercomponent object", v10, 2u);
        MEMORY[0x1C6902A30](v10, -1, -1);
      }
    }

    else
    {

      outlined destroy of VideoPlayerComponent?(v11);
    }
  }
}

void specialized VPCNetworkSystemObserver.onLocalVideoEntityDidCreate(entityRef:)(uint64_t a1, const char *a2)
{
  REVideoPlayerComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      if (REEntityIsBeingDestroyed())
      {
        __break(1u);
        return;
      }

      specialized static Entity.entityInfoType(_:)(a1);
      if (v4)
      {
        v5 = (*(v4 + 232))();
        v6 = *(v5 + 16);

        MEMORY[0x1C68F9740](v6, 0);
        *(v5 + 16) = a1;
        MEMORY[0x1C68F9740](a1, v5);
      }

      else
      {
        makeEntity(for:)(a1);
      }
    }

    _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation011VideoPlayerD0V_Tt0B5(v11);

    v13[6] = v11[6];
    v14[0] = v12[0];
    *(v14 + 13) = *(v12 + 13);
    v13[2] = v11[2];
    v13[3] = v11[3];
    v13[4] = v11[4];
    v13[5] = v11[5];
    v13[0] = v11[0];
    v13[1] = v11[1];
    if (_s17RealityFoundation20VideoPlayerComponentVSgWOg(v13) == 1)
    {
      if (one-time initialization token for VideoLogger != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, VideoLogger);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1C1358000, v8, v9, a2, v10, 2u);
        MEMORY[0x1C6902A30](v10, -1, -1);
      }
    }

    else
    {

      outlined destroy of VideoPlayerComponent?(v11);
    }
  }
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformer.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static _Proto_MeshDeformation_v1.CustomDeformer.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t _Proto_MeshDeformation_v1.VertexType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *a2 = v2;
  return result;
}

Swift::Int _Proto_MeshDeformation_v1.Cadence.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

void static _Proto_MeshDeformation_v1.VertexTypeOptions.tangentFrame.setter(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static _Proto_MeshDeformation_v1.VertexTypeOptions.tangentFrame = v1;
}

void static _Proto_MeshDeformation_v1.VertexTypeOptions.all.setter(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static _Proto_MeshDeformation_v1.VertexTypeOptions.all = v1;
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.positions.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.Data(255, a1[2], a1[3], a1[4]);
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.normals.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.Data(255, *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.tangents.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.Data(255, *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.bitangents.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.Data(255, *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerParameter.inputBuffers.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers(0, *(a1 + 16), *(a1 + 24), *(a1 + 16));
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerParameter.inputBuffers.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers(0, *(a2 + 16), *(a2 + 24), *(a2 + 16));
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerParameter.outputBuffers.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers(0, *(a1 + 16), *(a1 + 24), *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerParameter.outputBuffers.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers(0, *(a2 + 16), *(a2 + 24), *(a2 + 24));
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

unint64_t instantiation function for generic protocol witness table for _Proto_MeshDeformation_v1.CustomDeformer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.CustomDeformer and conformance _Proto_MeshDeformation_v1.CustomDeformer();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.VertexType and conformance _Proto_MeshDeformation_v1.VertexType()
{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexType and conformance _Proto_MeshDeformation_v1.VertexType;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexType and conformance _Proto_MeshDeformation_v1.VertexType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _Proto_MeshDeformation_v1.VertexType, &type metadata for _Proto_MeshDeformation_v1.VertexType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexType and conformance _Proto_MeshDeformation_v1.VertexType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [_Proto_MeshDeformation_v1.VertexType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [_Proto_MeshDeformation_v1.VertexType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [_Proto_MeshDeformation_v1.VertexType] and conformance [A])
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay17RealityFoundation25_Proto_MeshDeformation_v1V10VertexTypeOGMd, &_sSay17RealityFoundation25_Proto_MeshDeformation_v1V10VertexTypeOGMR);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [_Proto_MeshDeformation_v1.VertexType] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.Cadence and conformance _Proto_MeshDeformation_v1.Cadence()
{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.Cadence and conformance _Proto_MeshDeformation_v1.Cadence;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.Cadence and conformance _Proto_MeshDeformation_v1.Cadence)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _Proto_MeshDeformation_v1.Cadence, &type metadata for _Proto_MeshDeformation_v1.Cadence, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.Cadence and conformance _Proto_MeshDeformation_v1.Cadence);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions()
{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _Proto_MeshDeformation_v1.VertexTypeOptions, &type metadata for _Proto_MeshDeformation_v1.VertexTypeOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _Proto_MeshDeformation_v1.VertexTypeOptions, &type metadata for _Proto_MeshDeformation_v1.VertexTypeOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _Proto_MeshDeformation_v1.VertexTypeOptions, &type metadata for _Proto_MeshDeformation_v1.VertexTypeOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _Proto_MeshDeformation_v1.VertexTypeOptions, &type metadata for _Proto_MeshDeformation_v1.VertexTypeOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.VertexTypeOptions and conformance _Proto_MeshDeformation_v1.VertexTypeOptions);
  }

  return result;
}

void type metadata completion function for _Proto_MeshDeformation_v1.CustomDeformerParameter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers(319, v2, v1, v2);
  if (v3 <= 0x3F)
  {
    type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers(319, v2, v1, v1);
    if (v4 <= 0x3F)
    {
      type metadata accessor for Any?();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for _Proto_MeshDeformation_v1.CustomDeformerParameter(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  if (v5)
  {
    v8 = v5 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v7 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  if (v5)
  {
    v12 = 8;
  }

  else
  {
    v12 = 9;
  }

  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  if (v9)
  {
    v15 = 8;
  }

  else
  {
    v15 = 9;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = ((((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12;
  v17 = *(v4 + 80) & 0xF8 | 7;
  v18 = v13 & 0xF8 | 7;
  v19 = ((v16 + ((v16 + v17 + ((v16 + v17 + ((v16 + v17) & ~v17)) & ~v17)) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + v18 + 8;
  v20 = ((((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v15;
  v21 = ((v20 + ((v20 + v18 + ((v20 + v18 + ((v20 + v18) & ~v18)) & ~v18)) & ~v18) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 < a2)
  {
    v22 = (v19 & ~v18) + v21 + 32;
    v23 = a2 - v11;
    if (v22 <= 3)
    {
      v24 = v23 + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = *(a1 + v22);
        if (!*(a1 + v22))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v27 = *(a1 + v22);
        if (!v27)
        {
          goto LABEL_42;
        }
      }

LABEL_34:
      v28 = v27 - 1;
      if (v22 > 3)
      {
        v28 = 0;
      }

      if ((v19 & ~v18) + v21 == -32)
      {
        v29 = 0;
      }

      else
      {
        v29 = *a1;
      }

      return v11 + (v29 | v28) + 1;
    }

    if (v26)
    {
      v27 = *(a1 + v22);
      if (*(a1 + v22))
      {
        goto LABEL_34;
      }
    }
  }

LABEL_42:
  if (v8 == v11)
  {
    if (v5 >= 2)
    {
      v30 = (*(v4 + 48))(a1);
      goto LABEL_54;
    }

    return 0;
  }

  v31 = (a1 + v19) & ~v18;
  if (v10 == v11)
  {
    if (v9 >= 2)
    {
      v30 = (*(*(v6 - 8) + 48))(v31, v9, v6);
LABEL_54:
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v33 = *(v31 + v21 + 24);
  if (v33 >= 0xFFFFFFFF)
  {
    LODWORD(v33) = -1;
  }

  if ((v33 + 1) >= 2)
  {
    return v33;
  }

  else
  {
    return 0;
  }
}

double storeEnumTagSinglePayload for _Proto_MeshDeformation_v1.CustomDeformerParameter(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  v14 = (((((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = v14 + 8;
  v16 = v14 + 9;
  if (v7)
  {
    v16 = v15;
  }

  v17 = *(v6 + 80) & 0xF8 | 7;
  v18 = (((v16 + v17 + ((v16 + v17 + ((v16 + v17) & ~v17)) & ~v17)) & ~v17) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v10 + 80) & 0xF8 | 7;
  v20 = v18 + v19 + 8;
  v21 = (((((*(*(v9 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = v21 + 8;
  v23 = v21 + 9;
  if (v11)
  {
    v23 = v22;
  }

  v24 = ((((v23 + v19 + ((v23 + v19 + ((v23 + v19) & ~v19)) & ~v19)) & ~v19) + v23 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v25 = (v20 & ~v19) + v24 + 32;
  if (v13 < a3)
  {
    v26 = a3 - v13;
    if (v25 <= 3)
    {
      v27 = v26 + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v5 = v28;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v13)
  {
    if (v25 > 3)
    {
      v29 = 1;
    }

    else
    {
      v29 = a2 - v13;
    }

    if ((v20 & ~v19) + v24 != -32)
    {
      if (v25 <= 3)
      {
        v30 = 0;
      }

      else
      {
        v30 = ~v13 + a2;
      }

      v31 = a1;
      bzero(a1, v25);
      a1 = v31;
      *v31 = v30;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v25) = v29;
      }

      else
      {
        *(a1 + v25) = v29;
      }
    }

    else if (v5)
    {
      *(a1 + v25) = v29;
    }

    return result;
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_49;
    }

LABEL_48:
    if (!a2)
    {
      return result;
    }

    goto LABEL_49;
  }

  if (v5 == 2)
  {
    *(a1 + v25) = 0;
    goto LABEL_48;
  }

  *(a1 + v25) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_49:
  if (v8 == v13)
  {
    v33 = a2 - v7;
    if (a2 < v7)
    {
      v34 = *(v6 + 56);

      v34();
      return result;
    }

    if (!v15)
    {
      return result;
    }

    v37 = a1;
    v38 = v15;
LABEL_68:
    bzero(a1, v38);
    *v37 = v33;
    return result;
  }

  a1 = ((a1 + v20) & ~v19);
  if (v12 != v13)
  {
    v39 = a1 + v24;
    if (a2 > 0x7FFFFFFE)
    {
      result = 0.0;
      *v39 = 0u;
      *(v39 + 1) = 0u;
      *v39 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *(v39 + 3) = a2;
    }

    return result;
  }

  v33 = a2 - v11;
  if (a2 >= v11)
  {
    if (!v22)
    {
      return result;
    }

    v37 = a1;
    v38 = v22;
    goto LABEL_68;
  }

  v35 = *(v10 + 56);
  v36 = a2 + 1;

  v35(a1, v36, v11, v9);
  return result;
}

void type metadata accessor for Any?()
{
  if (!lazy cache variable for type metadata for Any?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Any?);
    }
  }
}

uint64_t type metadata completion function for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers(uint64_t *a1)
{
  type metadata accessor for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.Data(255, a1[2], a1[3], a1[4]);
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = 8;
  if (!v5)
  {
    v7 = 9;
  }

  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((*(*(*(a3 + 32) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7;
  v9 = *(v4 + 80) & 0xF8 | 7;
  v10 = ((v8 + ((v8 + v9 + ((v8 + v9 + ((v8 + v9) & ~v9)) & ~v9)) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v6;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (v16)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (v16)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_28;
  }

  if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v5 >= 2)
    {
      v19 = (*(v4 + 48))(a1);
      if (v19 >= 2)
      {
        return v19 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

LABEL_21:
  v17 = v16 - 1;
  if (v12)
  {
    v17 = 0;
    LODWORD(v12) = *a1;
  }

  return v6 + (v12 | v17) + 1;
}

void storeEnumTagSinglePayload for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 32) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = (((((*(*(*(a4 + 32) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  v11 = v9 + 9;
  if (v7)
  {
    v11 = v10;
  }

  v12 = *(v6 + 80) & 0xF8 | 7;
  v13 = ((v11 + ((v11 + v12 + ((v11 + v12 + ((v11 + v12) & ~v12)) & ~v12)) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 < a3)
  {
    v14 = a3 - v8;
    if (((v11 + ((v11 + v12 + ((v11 + v12 + ((v11 + v12) & ~v12)) & ~v12)) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v5 = v16;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v8)
  {
    if (v13)
    {
      v17 = 1;
    }

    else
    {
      v17 = a2 - v8;
    }

    if (v13)
    {
      v18 = ~v8 + a2;
      v19 = a1;
      bzero(a1, v13);
      a1 = v19;
      *v19 = v18;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v13) = v17;
      }

      else
      {
        *(a1 + v13) = v17;
      }
    }

    else if (v5)
    {
      *(a1 + v13) = v17;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *(a1 + v13) = 0;
  }

  else if (v5)
  {
    *(a1 + v13) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v7 >= 2)
  {
    v20 = a2 - v7;
    if (a2 >= v7)
    {
      if (v10)
      {
        v22 = a1;
        bzero(a1, v10);
        *v22 = v20;
      }
    }

    else
    {
      v21 = *(v6 + 56);

      v21();
    }
  }
}

void type metadata completion function for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.Data(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MTLVertexFormat(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.Data(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((((((*(*(*(a3 + 32) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *storeEnumTagSinglePayload for _Proto_MeshDeformation_v1.CustomDeformerParameter.VertexBuffers.Data(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 32) - 8);
  v6 = *(v5 + 84);
  v7 = ((((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t Entity.isAccessibilityElement.getter()
{
  result = REEntityGetComponent();
  if (result)
  {
    specialized __AccessibilityComponent.init(from:)(v1);
    outlined destroy of __AccessibilityComponent(v1);
    return BYTE1(v1[0]);
  }

  return result;
}

uint64_t Entity.isAccessibilityElement.setter(char a1)
{
  Entity.__accessibilityComponent.getter(v4);
  *&v9[2] = v5;
  *&v9[18] = v6;
  *&v9[34] = *v7;
  *&v9[48] = *&v7[14];
  v9[0] = v4[0];
  v9[1] = a1;
  v8[0] = *v9;
  v8[1] = *&v9[16];
  v8[2] = *&v9[32];
  v8[3] = *&v7[14];
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v8, 0, v1);
  return outlined destroy of __AccessibilityComponent(v9);
}

uint64_t (*Entity.isAccessibilityElement.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x190uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 384) = v1;
  if (REEntityGetComponent())
  {
    specialized __AccessibilityComponent.init(from:)((v4 + 256));
    outlined destroy of __AccessibilityComponent(v4 + 256);
    v5 = *(v4 + 257);
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 392) = v5;
  return Entity.isAccessibilityElement.modify;
}

uint64_t Entity.accessibilityLabel.getter()
{
  if (!REEntityGetComponent())
  {
    return 0;
  }

  specialized __AccessibilityComponent.init(from:)(&v2);
  v0 = *(&v3 + 1);
  v6[0] = v2;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = v5;

  outlined destroy of BodyTrackingComponent?(v6, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  return v0;
}

uint64_t Entity.accessibilityLabel.setter(uint64_t a1, uint64_t a2)
{
  Entity.__accessibilityComponent.getter(&v6);
  v11 = v8;
  outlined destroy of BodyTrackingComponent?(&v11, &_sSSSgMd, &_sSSSgMR);
  *&v15[24] = v10;
  *&v15[8] = v9;
  *&v14 = v7;
  *(&v14 + 1) = a1;
  *v15 = a2;
  v12[2] = *v15;
  v12[3] = *&v15[16];
  v13 = v6;
  v12[0] = v6;
  v12[1] = v14;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v12, 0, v2);
  return outlined destroy of __AccessibilityComponent(&v13);
}

uint64_t (*Entity.accessibilityLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1B8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 432) = v1;
  if (REEntityGetComponent())
  {
    specialized __AccessibilityComponent.init(from:)(&v10);
    v6 = *(&v11 + 1);
    v5 = v12;
    v7 = v11;
    *v4 = v10;
    *(v4 + 16) = v7;
    v8 = v13;
    *(v4 + 32) = v12;
    *(v4 + 48) = v8;

    outlined destroy of BodyTrackingComponent?(v4, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *(v4 + 416) = v6;
  *(v4 + 424) = v5;
  return Entity.accessibilityLabel.modify;
}

uint64_t Entity.accessibilityDescription.getter()
{
  if (!REEntityGetComponent())
  {
    return 0;
  }

  specialized __AccessibilityComponent.init(from:)(v2);
  v0 = *(&v3 + 1);
  v5[0] = v2[0];
  v5[1] = v2[1];
  v5[2] = v3;
  v5[3] = v4;

  outlined destroy of BodyTrackingComponent?(v5, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  return v0;
}

uint64_t Entity.accessibilityDescription.setter(uint64_t a1, uint64_t a2)
{
  Entity.__accessibilityComponent.getter(&v6);
  v11 = v9;
  outlined destroy of BodyTrackingComponent?(&v11, &_sSSSgMd, &_sSSSgMR);
  v13[0] = v6;
  v13[1] = v7;
  *&v14 = v8;
  *(&v14 + 1) = a1;
  *&v15 = a2;
  *(&v15 + 1) = v10;
  v12[0] = v6;
  v12[1] = v7;
  v12[2] = v14;
  v12[3] = v15;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v12, 0, v2);
  return outlined destroy of __AccessibilityComponent(v13);
}

uint64_t (*Entity.accessibilityDescription.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1B8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 432) = v1;
  if (REEntityGetComponent())
  {
    specialized __AccessibilityComponent.init(from:)(v10);
    v6 = *(&v11 + 1);
    v5 = v12;
    v7 = v10[1];
    *v4 = v10[0];
    *(v4 + 16) = v7;
    v8 = v12;
    *(v4 + 32) = v11;
    *(v4 + 48) = v8;

    outlined destroy of BodyTrackingComponent?(v4, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *(v4 + 416) = v6;
  *(v4 + 424) = v5;
  return Entity.accessibilityDescription.modify;
}

uint64_t Entity.__isAccessibilityRoot.getter()
{
  result = REEntityGetComponent();
  if (result)
  {
    specialized __AccessibilityComponent.init(from:)(v1);
    outlined destroy of __AccessibilityComponent(v1);
    return LOBYTE(v1[0]);
  }

  return result;
}

void key path getter for Entity.__isAccessibilityRoot : Entity(_BYTE *a2@<X8>)
{
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_Tt0B5(v4);
  if (v5)
  {
    v3 = v4[0];
    outlined destroy of BodyTrackingComponent?(v4, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3 & 1;
}

uint64_t key path setter for Entity.__isAccessibilityRoot : Entity(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  Entity.__accessibilityComponent.getter(v5);
  v9[0] = v2;
  *&v9[1] = *&v5[1];
  *&v9[17] = v6;
  *&v9[33] = *v7;
  *&v9[48] = *&v7[15];
  v8[0] = *v9;
  v8[1] = *&v9[16];
  v8[2] = *&v9[32];
  v8[3] = *&v7[15];
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v8, 0, v3);
  return outlined destroy of __AccessibilityComponent(v9);
}

uint64_t Entity.__isAccessibilityRoot.setter(char a1)
{
  Entity.__accessibilityComponent.getter(v4);
  v8[0] = a1;
  *&v8[1] = *&v4[1];
  *&v8[17] = v5;
  *&v8[33] = *v6;
  *&v8[48] = *&v6[15];
  v7[0] = *v8;
  v7[1] = *&v8[16];
  v7[2] = *&v8[32];
  v7[3] = *&v6[15];
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v7, 0, v1);
  return outlined destroy of __AccessibilityComponent(v8);
}

void *Entity.__accessibilityComponent.getter@<X0>(uint64_t a1@<X8>)
{
  if (REEntityGetComponent())
  {
    result = specialized __AccessibilityComponent.init(from:)(v17);
    v4 = *&v17[56];
    v5 = *&v17[40];
    v6 = *&v17[24];
    v7 = *&v17[8];
    v8 = v17[1];
    v9 = v17[0];
  }

  else
  {
    *v11 = 0;
    memset(&v11[8], 0, 48);
    *&v11[56] = MEMORY[0x1E69E7CC0];
    v12 = 0;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = MEMORY[0x1E69E7CC0];
    outlined init with copy of __AccessibilityComponent(v11, v17);
    outlined destroy of __AccessibilityComponent(&v12);
    *v17 = *v11;
    *&v17[16] = *&v11[16];
    *&v17[32] = *&v11[32];
    *&v17[48] = *&v11[48];
    outlined init with copy of __AccessibilityComponent(v11, &v10);
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v17, 0, v1);
    result = outlined destroy of __AccessibilityComponent(v11);
    v4 = *&v11[56];
    v5 = *&v11[40];
    v6 = *&v11[24];
    v7 = *&v11[8];
    v8 = v11[1];
    v9 = v11[0];
  }

  *a1 = v9;
  *(a1 + 1) = v8;
  *(a1 + 8) = v7;
  *(a1 + 24) = v6;
  *(a1 + 40) = v5;
  *(a1 + 56) = v4;
  return result;
}

void (*Entity.__isAccessibilityRoot.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x190uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 384) = v1;
  if (REEntityGetComponent())
  {
    specialized __AccessibilityComponent.init(from:)((v4 + 256));
    outlined destroy of __AccessibilityComponent(v4 + 256);
    v5 = *(v4 + 256);
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 392) = v5;
  return Entity.__isAccessibilityRoot.modify;
}

void Entity.__isAccessibilityRoot.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 128;
  v4 = *(*a1 + 384);
  v5 = *(*a1 + 392);
  v6 = (*a1 + 321);
  if (a2)
  {
    v7 = 129;
  }

  else
  {
    v3 = *a1 + 192;
    v7 = 193;
  }

  if (a2)
  {
    v8 = *a1;
  }

  else
  {
    v8 = (*a1 + 64);
  }

  Entity.__accessibilityComponent.getter(v3);
  *(v2 + 320) = v5;
  v9 = *(v2 + v7 + 16);
  *v6 = *(v2 + v7);
  v6[1] = v9;
  v6[2] = *(v2 + v7 + 32);
  *(v2 + 368) = *(v2 + v7 + 47);
  v10 = *(v2 + 336);
  *v8 = *(v2 + 320);
  v8[1] = v10;
  v11 = *(v2 + 368);
  v8[2] = *(v2 + 352);
  v8[3] = v11;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v8, 0, v4);
  outlined destroy of __AccessibilityComponent(v2 + 320);

  free(v2);
}

void key path getter for Entity.isAccessibilityElement : Entity(_BYTE *a2@<X8>)
{
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_Tt0B5(v4);
  if (v5)
  {
    v3 = BYTE1(v4[0]);
    outlined destroy of BodyTrackingComponent?(v4, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3 & 1;
}

uint64_t key path setter for Entity.isAccessibilityElement : Entity(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  Entity.__accessibilityComponent.getter(v5);
  *&v10[2] = v6;
  *&v10[18] = v7;
  *&v10[34] = *v8;
  *&v10[48] = *&v8[14];
  v10[0] = v5[0];
  v10[1] = v2;
  v9[0] = *v10;
  v9[1] = *&v10[16];
  v9[2] = *&v10[32];
  v9[3] = *&v8[14];
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v9, 0, v3);
  return outlined destroy of __AccessibilityComponent(v10);
}

uint64_t (*Entity.__isAccessibilityEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x190uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 384) = v1;
  if (REEntityGetComponent())
  {
    specialized __AccessibilityComponent.init(from:)((v4 + 256));
    outlined destroy of __AccessibilityComponent(v4 + 256);
    v5 = *(v4 + 257);
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 392) = v5;
  return Entity.__isAccessibilityEnabled.modify;
}

void Entity.isAccessibilityElement.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 128;
  v4 = *(*a1 + 384);
  v5 = (*a1 + 322);
  v6 = *(*a1 + 392);
  if (a2)
  {
    v7 = 128;
  }

  else
  {
    v7 = 192;
  }

  if (a2)
  {
    v8 = 130;
  }

  else
  {
    v3 = *a1 + 192;
    v8 = 194;
  }

  if (a2)
  {
    v9 = *a1;
  }

  else
  {
    v9 = (*a1 + 64);
  }

  Entity.__accessibilityComponent.getter(v3);
  v10 = *(v2 + v7);
  v11 = *(v2 + v8 + 16);
  *v5 = *(v2 + v8);
  v5[1] = v11;
  v5[2] = *(v2 + v8 + 32);
  *(v2 + 368) = *(v2 + v8 + 46);
  *(v2 + 320) = v10;
  *(v2 + 321) = v6;
  v12 = *(v2 + 336);
  *v9 = *(v2 + 320);
  v9[1] = v12;
  v13 = *(v2 + 368);
  v9[2] = *(v2 + 352);
  v9[3] = v13;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v9, 0, v4);
  outlined destroy of __AccessibilityComponent(v2 + 320);

  free(v2);
}

uint64_t Entity.__accessibilityIdentifier.getter()
{
  if (!REEntityGetComponent())
  {
    return 0;
  }

  specialized __AccessibilityComponent.init(from:)(v2);
  v0 = *(&v2[0] + 1);
  v3[0] = v2[0];
  v3[1] = v2[1];
  v3[2] = v2[2];
  v3[3] = v2[3];

  outlined destroy of BodyTrackingComponent?(v3, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  return v0;
}

void key path getter for Entity.__accessibilityIdentifier : Entity(void *a2@<X8>)
{
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_Tt0B5(&v5);
  if (v7)
  {
    v4 = *(&v5 + 1);
    v3 = v6;

    outlined destroy of BodyTrackingComponent?(&v5, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *a2 = v4;
  a2[1] = v3;
}

uint64_t key path setter for Entity.__accessibilityIdentifier : Entity(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;

  Entity.__accessibilityComponent.getter(&v6);
  v11 = v7;
  outlined destroy of BodyTrackingComponent?(&v11, &_sSSSgMd, &_sSSSgMR);
  *&v14[8] = v8;
  *&v14[24] = v9;
  *&v13 = v6;
  *(&v13 + 1) = v3;
  *&v14[40] = v10;
  *v14 = v2;
  v12[0] = v13;
  v12[1] = *v14;
  v12[2] = *&v14[16];
  v12[3] = *&v14[32];
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v12, 0, v4);
  return outlined destroy of __AccessibilityComponent(&v13);
}

uint64_t Entity.__accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  Entity.__accessibilityComponent.getter(&v6);
  v11 = v7;
  outlined destroy of BodyTrackingComponent?(&v11, &_sSSSgMd, &_sSSSgMR);
  *&v14[8] = v8;
  *&v14[24] = v9;
  *&v13 = v6;
  *(&v13 + 1) = a1;
  *&v14[40] = v10;
  *v14 = a2;
  v12[0] = v13;
  v12[1] = *v14;
  v12[2] = *&v14[16];
  v12[3] = *&v14[32];
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v12, 0, v2);
  return outlined destroy of __AccessibilityComponent(&v13);
}

void (*Entity.__accessibilityIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1B8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 432) = v1;
  if (REEntityGetComponent())
  {
    specialized __AccessibilityComponent.init(from:)(&v10);
    v6 = *(&v10 + 1);
    v5 = v11;
    v7 = v11;
    *v4 = v10;
    *(v4 + 16) = v7;
    v8 = v13;
    *(v4 + 32) = v12;
    *(v4 + 48) = v8;

    outlined destroy of BodyTrackingComponent?(v4, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *(v4 + 416) = v6;
  *(v4 + 424) = v5;
  return Entity.__accessibilityIdentifier.modify;
}

void Entity.__accessibilityIdentifier.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 424);
  v3 = *(*a1 + 432);
  v5 = *(*a1 + 416);
  if (a2)
  {

    Entity.__accessibilityComponent.getter(v2 + 192);
    *(v2 + 384) = *(v2 + 200);
    outlined destroy of BodyTrackingComponent?(v2 + 384, &_sSSSgMd, &_sSSSgMR);
    v6 = *(v2 + 192);
    v7 = *(v2 + 232);
    *(v2 + 344) = *(v2 + 216);
    *(v2 + 360) = v7;
    *(v2 + 376) = *(v2 + 248);
    *(v2 + 320) = v6;
    *(v2 + 328) = v5;
    *(v2 + 336) = v4;
    v8 = *(v2 + 336);
    *(v2 + 64) = *(v2 + 320);
    *(v2 + 80) = v8;
    v9 = *(v2 + 368);
    *(v2 + 96) = *(v2 + 352);
    *(v2 + 112) = v9;
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v2 + 64, 0, v3);
    outlined destroy of __AccessibilityComponent(v2 + 320);
  }

  else
  {
    Entity.__accessibilityComponent.getter(v2 + 256);
    *(v2 + 400) = *(v2 + 264);
    outlined destroy of BodyTrackingComponent?(v2 + 400, &_sSSSgMd, &_sSSSgMR);
    v10 = *(v2 + 256);
    v11 = *(v2 + 296);
    *(v2 + 344) = *(v2 + 280);
    *(v2 + 360) = v11;
    *(v2 + 376) = *(v2 + 312);
    *(v2 + 320) = v10;
    *(v2 + 328) = v5;
    *(v2 + 336) = v4;
    v12 = *(v2 + 336);
    *(v2 + 128) = *(v2 + 320);
    *(v2 + 144) = v12;
    v13 = *(v2 + 368);
    *(v2 + 160) = *(v2 + 352);
    *(v2 + 176) = v13;
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v2 + 128, 0, v3);
    outlined destroy of __AccessibilityComponent(v2 + 320);
  }

  free(v2);
}

void key path getter for Entity.accessibilityLabel : Entity(void *a2@<X8>)
{
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_Tt0B5(&v5);
  if (v8)
  {
    v4 = v6;
    v3 = v7;

    outlined destroy of BodyTrackingComponent?(&v5, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *a2 = v4;
  a2[1] = v3;
}

uint64_t key path setter for Entity.accessibilityLabel : Entity(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;

  Entity.__accessibilityComponent.getter(&v6);
  v11 = v8;
  outlined destroy of BodyTrackingComponent?(&v11, &_sSSSgMd, &_sSSSgMR);
  *&v15[24] = v10;
  *&v15[8] = v9;
  *&v14 = v7;
  *(&v14 + 1) = v3;
  *v15 = v2;
  v12[2] = *v15;
  v12[3] = *&v15[16];
  v13 = v6;
  v12[0] = v6;
  v12[1] = v14;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v12, 0, v4);
  return outlined destroy of __AccessibilityComponent(&v13);
}

uint64_t (*Entity.__accessibilityLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1B8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 432) = v1;
  if (REEntityGetComponent())
  {
    specialized __AccessibilityComponent.init(from:)(&v10);
    v6 = *(&v11 + 1);
    v5 = v12;
    v7 = v11;
    *v4 = v10;
    *(v4 + 16) = v7;
    v8 = v13;
    *(v4 + 32) = v12;
    *(v4 + 48) = v8;

    outlined destroy of BodyTrackingComponent?(v4, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *(v4 + 416) = v6;
  *(v4 + 424) = v5;
  return Entity.__accessibilityLabel.modify;
}

void Entity.accessibilityLabel.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 424);
  v3 = *(*a1 + 432);
  v5 = *(*a1 + 416);
  if (a2)
  {

    Entity.__accessibilityComponent.getter(v2 + 192);
    *(v2 + 384) = *(v2 + 216);
    outlined destroy of BodyTrackingComponent?(v2 + 384, &_sSSSgMd, &_sSSSgMR);
    v6 = *(v2 + 208);
    *(v2 + 376) = *(v2 + 248);
    *(v2 + 360) = *(v2 + 232);
    *(v2 + 336) = v6;
    *(v2 + 344) = v5;
    *(v2 + 352) = v4;
    v7 = *(v2 + 368);
    v8 = *(v2 + 336);
    *(v2 + 96) = *(v2 + 352);
    *(v2 + 112) = v7;
    v9 = *(v2 + 192);
    *(v2 + 320) = v9;
    *(v2 + 64) = v9;
    *(v2 + 80) = v8;
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v2 + 64, 0, v3);
    outlined destroy of __AccessibilityComponent(v2 + 320);
  }

  else
  {
    Entity.__accessibilityComponent.getter(v2 + 256);
    *(v2 + 400) = *(v2 + 280);
    outlined destroy of BodyTrackingComponent?(v2 + 400, &_sSSSgMd, &_sSSSgMR);
    v10 = *(v2 + 272);
    *(v2 + 376) = *(v2 + 312);
    *(v2 + 360) = *(v2 + 296);
    *(v2 + 336) = v10;
    *(v2 + 344) = v5;
    *(v2 + 352) = v4;
    v11 = *(v2 + 368);
    v12 = *(v2 + 336);
    *(v2 + 160) = *(v2 + 352);
    *(v2 + 176) = v11;
    v13 = *(v2 + 256);
    *(v2 + 320) = v13;
    *(v2 + 128) = v13;
    *(v2 + 144) = v12;
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v2 + 128, 0, v3);
    outlined destroy of __AccessibilityComponent(v2 + 320);
  }

  free(v2);
}

void key path getter for Entity.accessibilityDescription : Entity(void *a2@<X8>)
{
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_Tt0B5(v5);
  if (v8)
  {
    v4 = v6;
    v3 = v7;

    outlined destroy of BodyTrackingComponent?(v5, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *a2 = v4;
  a2[1] = v3;
}

uint64_t key path setter for Entity.accessibilityDescription : Entity(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;

  Entity.__accessibilityComponent.getter(&v6);
  v11 = v9;
  outlined destroy of BodyTrackingComponent?(&v11, &_sSSSgMd, &_sSSSgMR);
  v13[0] = v6;
  v13[1] = v7;
  *&v14 = v8;
  *(&v14 + 1) = v3;
  *&v15 = v2;
  *(&v15 + 1) = v10;
  v12[0] = v6;
  v12[1] = v7;
  v12[2] = v14;
  v12[3] = v15;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v12, 0, v4);
  return outlined destroy of __AccessibilityComponent(v13);
}

uint64_t (*Entity.__accessibilityDescription.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1B8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 432) = v1;
  if (REEntityGetComponent())
  {
    specialized __AccessibilityComponent.init(from:)(v10);
    v6 = *(&v11 + 1);
    v5 = v12;
    v7 = v10[1];
    *v4 = v10[0];
    *(v4 + 16) = v7;
    v8 = v12;
    *(v4 + 32) = v11;
    *(v4 + 48) = v8;

    outlined destroy of BodyTrackingComponent?(v4, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *(v4 + 416) = v6;
  *(v4 + 424) = v5;
  return Entity.__accessibilityDescription.modify;
}

void Entity.accessibilityDescription.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 424);
  v3 = *(*a1 + 432);
  v5 = *(*a1 + 416);
  if (a2)
  {

    Entity.__accessibilityComponent.getter(v2 + 192);
    *(v2 + 384) = *(v2 + 232);
    outlined destroy of BodyTrackingComponent?(v2 + 384, &_sSSSgMd, &_sSSSgMR);
    v6 = *(v2 + 224);
    v7 = *(v2 + 192);
    v8 = *(v2 + 208);
    *(v2 + 320) = v7;
    *(v2 + 336) = v8;
    v9 = *(v2 + 248);
    *(v2 + 352) = v6;
    *(v2 + 360) = v5;
    *(v2 + 368) = v4;
    *(v2 + 376) = v9;
    *(v2 + 64) = v7;
    *(v2 + 80) = v8;
    v10 = *(v2 + 368);
    *(v2 + 96) = *(v2 + 352);
    *(v2 + 112) = v10;
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v2 + 64, 0, v3);
    outlined destroy of __AccessibilityComponent(v2 + 320);
  }

  else
  {
    Entity.__accessibilityComponent.getter(v2 + 256);
    *(v2 + 400) = *(v2 + 296);
    outlined destroy of BodyTrackingComponent?(v2 + 400, &_sSSSgMd, &_sSSSgMR);
    v11 = *(v2 + 288);
    v12 = *(v2 + 256);
    v13 = *(v2 + 272);
    *(v2 + 320) = v12;
    *(v2 + 336) = v13;
    v14 = *(v2 + 312);
    *(v2 + 352) = v11;
    *(v2 + 360) = v5;
    *(v2 + 368) = v4;
    *(v2 + 376) = v14;
    *(v2 + 128) = v12;
    *(v2 + 144) = v13;
    v15 = *(v2 + 368);
    *(v2 + 160) = *(v2 + 352);
    *(v2 + 176) = v15;
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v2 + 128, 0, v3);
    outlined destroy of __AccessibilityComponent(v2 + 320);
  }

  free(v2);
}

uint64_t Entity.__accessibilityCustomContent.getter()
{
  if (!REEntityGetComponent())
  {
    return MEMORY[0x1E69E7CC0];
  }

  specialized __AccessibilityComponent.init(from:)(v2);
  v0 = *(&v3 + 1);
  v4[0] = v2[0];
  v4[1] = v2[1];
  v4[2] = v2[2];
  v4[3] = v3;

  outlined destroy of BodyTrackingComponent?(v4, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  return v0;
}

void key path getter for Entity.__accessibilityCustomContent : Entity(void *a2@<X8>)
{
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_Tt0B5(v4);
  v3 = v5;
  if (v5)
  {

    outlined destroy of BodyTrackingComponent?(v4, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v3;
}

uint64_t key path setter for Entity.__accessibilityCustomContent : Entity(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  Entity.__accessibilityComponent.getter(&v5);
  v10 = v9;
  outlined destroy of BodyTrackingComponent?(&v10, &_sSaySS_SSSutGMd, &_sSaySS_SSSutGMR);
  v12[0] = v5;
  v12[1] = v6;
  v12[2] = v7;
  *&v13 = v8;
  *(&v13 + 1) = v2;
  v11[0] = v5;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v13;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v11, 0, v3);
  return outlined destroy of __AccessibilityComponent(v12);
}

uint64_t Entity.__accessibilityCustomContent.setter(uint64_t a1)
{
  Entity.__accessibilityComponent.getter(&v4);
  v9 = v8;
  outlined destroy of BodyTrackingComponent?(&v9, &_sSaySS_SSSutGMd, &_sSaySS_SSSutGMR);
  v11[0] = v4;
  v11[1] = v5;
  v11[2] = v6;
  *&v12 = v7;
  *(&v12 + 1) = a1;
  v10[0] = v4;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v12;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v10, 0, v1);
  return outlined destroy of __AccessibilityComponent(v11);
}

void (*Entity.__accessibilityCustomContent.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 408) = v1;
  if (REEntityGetComponent())
  {
    specialized __AccessibilityComponent.init(from:)(v9);
    v5 = *(&v10 + 1);
    v6 = v9[1];
    *v4 = v9[0];
    *(v4 + 16) = v6;
    v7 = v10;
    *(v4 + 32) = v9[2];
    *(v4 + 48) = v7;

    outlined destroy of BodyTrackingComponent?(v4, &_s17RealityFoundation24__AccessibilityComponentVSgMd, &_s17RealityFoundation24__AccessibilityComponentVSgMR);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  *(v4 + 400) = v5;
  return Entity.__accessibilityCustomContent.modify;
}

void Entity.__accessibilityCustomContent.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 400);
  v3 = *(*a1 + 408);
  if (a2)
  {

    Entity.__accessibilityComponent.getter(v2 + 192);
    *(v2 + 384) = *(v2 + 248);
    outlined destroy of BodyTrackingComponent?(v2 + 384, &_sSaySS_SSSutGMd, &_sSaySS_SSSutGMR);
    v5 = *(v2 + 240);
    v6 = *(v2 + 192);
    v7 = *(v2 + 208);
    *(v2 + 320) = v6;
    *(v2 + 336) = v7;
    v8 = *(v2 + 224);
    *(v2 + 352) = v8;
    *(v2 + 368) = v5;
    *(v2 + 376) = v4;
    *(v2 + 64) = v6;
    *(v2 + 80) = v7;
    v9 = *(v2 + 368);
    *(v2 + 96) = v8;
    *(v2 + 112) = v9;
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v2 + 64, 0, v3);
    outlined destroy of __AccessibilityComponent(v2 + 320);
  }

  else
  {
    Entity.__accessibilityComponent.getter(v2 + 256);
    *(v2 + 392) = *(v2 + 312);
    outlined destroy of BodyTrackingComponent?(v2 + 392, &_sSaySS_SSSutGMd, &_sSaySS_SSSutGMR);
    v10 = *(v2 + 304);
    v11 = *(v2 + 256);
    v12 = *(v2 + 272);
    *(v2 + 320) = v11;
    *(v2 + 336) = v12;
    v13 = *(v2 + 288);
    *(v2 + 352) = v13;
    *(v2 + 368) = v10;
    *(v2 + 376) = v4;
    *(v2 + 128) = v11;
    *(v2 + 144) = v12;
    v14 = *(v2 + 368);
    *(v2 + 160) = v13;
    *(v2 + 176) = v14;
    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation015__AccessibilityD0V_TtB5(v2 + 128, 0, v3);
    outlined destroy of __AccessibilityComponent(v2 + 320);
  }

  free(v2);
}

uint64_t Entity._sendEvent<A>(_:)(uint64_t a1, uint64_t a2)
{
  result = REEntityGetSceneNullable();
  if (result)
  {
    v5 = result;
    v6 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v6)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v5);
    }

    Scene.eventService.getter(v11);

    v7 = v12;
    v8 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    EventService.publish<A>(_:on:componentType:)(a1, v9, 0, 0, v7, a2, v8);
    outlined destroy of BodyTrackingComponent?(v9, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return result;
}

uint64_t Entity._sendEvent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = REEntityGetSceneNullable();
  if (result)
  {
    v7 = result;
    v8 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v8)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v7);
    }

    Scene.eventService.getter(v13);

    v9 = v14;
    v10 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    EventService.publish<A>(_:on:componentType:)(a1, v11, 0, 0, v9, a2, v10, a3);
    outlined destroy of BodyTrackingComponent?(v11, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return result;
}

uint64_t Entity.sendEvent(_:)(void *a1)
{
  v1 = a1[3];
  v2 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return Entity._sendEvent<A>(_:)(v2, v1);
}

{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return Entity._sendEvent<A>(_:)(v3, v1, v2);
}

uint64_t Entity.sendEvent<A>(_:on:componentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = REEntityGetSceneNullable();
  if (result)
  {
    v11 = result;
    v12 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v12)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v11);
    }

    Scene.eventService.getter(v15);

    v13 = v16;
    v14 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    EventService.publish<A>(_:on:componentType:)(a1, a2, a3, a4, v13, a5, v14);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return result;
}

uint64_t Entity.sendEvent<A>(_:on:componentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = REEntityGetSceneNullable();
  if (result)
  {
    v13 = result;
    v14 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v14)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v13);
    }

    Scene.eventService.getter(v17);

    v15 = v18;
    v16 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    EventService.publish<A>(_:on:componentType:)(a1, a2, a3, a4, v15, a5, v16, a6);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  return result;
}

void __AccessibilityComponent.__toCore(_:)(void *a1)
{
  REAccessibilityComponentSetIsRoot();
  REAccessibilityComponentSetEnabled();
  if (v1[2])
  {
    String.utf8CString.getter();
  }

  REAccessibilityComponentSetIdentifier();
  swift_unknownObjectRelease();
  if (v1[4])
  {
    String.utf8CString.getter();
  }

  REAccessibilityComponentSetLabel();
  swift_unknownObjectRelease();
  if (v1[6])
  {
    String.utf8CString.getter();
  }

  REAccessibilityComponentSetDescription();
  swift_unknownObjectRelease();
  REAccessibilityComponentClearCustomContent();
  v2 = v1[7];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 64);
    while (1)
    {
      v5 = *(v4 - 4);
      v6 = *(v4 - 3);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;

      v10 = MEMORY[0x1C68F3280](v5, v6);

      v11 = MEMORY[0x1C68F3280](v7, v8);

      if (v9 >> 31)
      {
        break;
      }

      v4 += 5;
      REAccessibilityComponentAddCustomContent();

      if (!--v3)
      {
        return;
      }
    }

    __break(1u);
  }
}

double protocol witness for static Component.__fromCore(_:) in conformance __AccessibilityComponent@<D0>(_OWORD *a1@<X8>)
{
  specialized __AccessibilityComponent.init(from:)(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t LocalizedStringResource.init(stringRepresentation:)@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19[-v5];
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static String.Encoding.utf8.getter();
  v11 = String.data(using:allowLossyConversion:)();
  v13 = v12;

  (*(v8 + 8))(v10, v7);
  if (v13 >> 60 == 15)
  {
    v15 = type metadata accessor for LocalizedStringResource();
    return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }

  else
  {
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    v14 = type metadata accessor for LocalizedStringResource();
    lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource(&lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource, MEMORY[0x1E6968E28]);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    outlined consume of Data?(v11, v13);
    v16 = *(v14 - 8);
    v17 = *(v16 + 56);
    v17(v6, 0, 1, v14);
    (*(v16 + 32))(a3, v6, v14);
    return v17(a3, 0, 1, v14);
  }
}

uint64_t AccessibilityRotorNavigationEvent.publish(_:on:componentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, void (*a9)(char *, uint64_t, uint64_t, uint64_t))
{
  v27 = a6;
  v24 = a4;
  v14 = *(a5 - 8);
  v25 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v17[3];
  v18 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  (*(v18 + 16))(v28, v20, a2, a3, v24, v20, v19, v18);
  v21 = v28[4];
  (*(v14 + 16))(v16, v26, a5);
  v25(v16, v21, a5, v27);

  return (*(v14 + 8))(v16, a5);
}

uint64_t AccessibilityComponent.CustomContent.label.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AccessibilityComponent.CustomContent.label.setter(uint64_t a1)
{
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AccessibilityComponent.CustomContent.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessibilityComponent.CustomContent(0) + 20);
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AccessibilityComponent.CustomContent.value.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessibilityComponent.CustomContent(0) + 20);
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AccessibilityComponent.CustomContent.importance.setter(uint64_t a1)
{
  result = type metadata accessor for AccessibilityComponent.CustomContent(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t AccessibilityComponent.CustomContent.init(label:value:importance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(*(v8 - 8) + 32);
  v9(a4, a1, v8);
  v10 = type metadata accessor for AccessibilityComponent.CustomContent(0);
  result = (v9)(a4 + *(v10 + 20), a2, v8);
  *(a4 + *(v10 + 24)) = a3;
  return result;
}

BOOL static AccessibilityComponent.CustomContent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1C68F21E0]() & 1) != 0 && (v4 = type metadata accessor for AccessibilityComponent.CustomContent(0), (MEMORY[0x1C68F21E0](a1 + *(v4 + 20), a2 + *(v4 + 20))))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t AccessibilityComponent.init(from:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for AccessibilityComponent.RotorTypeInternal(0);
  v173 = *(v4 - 8);
  v174 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v158 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v165 = &v142 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v171 = &v142 - v9;
  v180 = type metadata accessor for String.Encoding();
  v150 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v179 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for AccessibilityComponent.CustomContent(0);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v149 = &v142 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v168 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v169 = &v142 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v151 = &v142 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v170 = &v142 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v172 = (&v142 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v167 = &v142 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v142 - v27;
  v29 = type metadata accessor for LocalizedStringResource();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v155 = &v142 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v164 = &v142 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v157 = &v142 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v156 = &v142 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v147 = &v142 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v146 = &v142 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v159 = &v142 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v166 = &v142 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v161 = &v142 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v142 - v49;
  v51 = type metadata accessor for AccessibilityComponent(0);
  v52 = v51[5];
  v163 = v30;
  v53 = *(v30 + 56);
  v53(&a2[v52], 1, 1, v29);
  v54 = v51[6];
  v175 = v53;
  v176 = v30 + 56;
  v53(&a2[v54], 1, 1, v29);
  v160 = v51;
  v148 = v51[10];
  *&a2[v148] = 0;
  IsEnabled = REAccessibilityComponentIsEnabled();
  v162 = a2;
  *a2 = IsEnabled;
  Label = REAccessibilityComponentGetLabel();
  v178 = a1;
  if (Label)
  {
    String.init(cString:)();
    LocalizedStringResource.init(stringRepresentation:)(v28);
    v57 = v163;
    if ((*(v163 + 48))(v28, 1, v29) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v28, &_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
      String.init(cString:)();
      v58 = v167;
      LocalizedStringResource.init(stringLiteral:)();
      v175(v58, 0, 1, v29);
      outlined assign with take of LocalizedStringResource?(v58, &v162[v52]);
    }

    else
    {
      v59 = *(v57 + 32);
      v59(v50, v28, v29);
      v60 = v162;
      outlined destroy of BodyTrackingComponent?(&v162[v52], &_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
      v59(&v60[v52], v50, v29);
      v175(&v60[v52], 0, 1, v29);
    }
  }

  v177 = v29;
  Value = REAccessibilityComponentGetValue();
  v62 = v171;
  if (Value)
  {
    String.init(cString:)();
    v63 = v172;
    LocalizedStringResource.init(stringRepresentation:)(v172);
    v64 = v163;
    v65 = v177;
    if ((*(v163 + 48))(v63, 1, v177) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v172, &_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
      String.init(cString:)();
      v66 = v167;
      LocalizedStringResource.init(stringLiteral:)();
      v175(v66, 0, 1, v65);
      outlined assign with take of LocalizedStringResource?(v66, &v162[v54]);
    }

    else
    {
      v67 = *(v64 + 32);
      v68 = v161;
      v67(v161, v172, v65);
      v69 = v162;
      outlined destroy of BodyTrackingComponent?(&v162[v54], &_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
      v67(&v69[v54], v68, v65);
      v175(&v69[v54], 0, 1, v65);
    }
  }

  v70 = v160[7];
  *&v162[v70] = REAccessibilityComponentGetTraits();
  result = REAccessibilityComponentGetCustomContentCount();
  if (result < 0)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v72 = result;
  if (result)
  {
    v73 = 0;
    v172 = (v150 + 8);
    v161 = (v163 + 32);
    v152 = (v163 + 8);
    v153 = MEMORY[0x1E69E7CC0];
    v167 = result;
    while (1)
    {
      v74 = REAccessibilityComponentGetCustomContentLabelAtIndex();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v75 = v179;
      static String.Encoding.utf8.getter();
      v76 = String.data(using:allowLossyConversion:)();
      v78 = v77;

      v79 = *v172;
      (*v172)(v75, v180);
      if (v78 >> 60 != 15)
      {
        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        PropertyListDecoder.init()();
        lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource(&lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource, MEMORY[0x1E6968E28]);
        v80 = v170;
        v81 = v177;
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

        outlined consume of Data?(v76, v78);
        v175(v80, 0, 1, v81);
        v82 = *v161;
        v83 = v159;
        (*v161)(v159, v80, v81);
        v154 = v82;
        v82(v166, v83, v81);
        v84 = REAccessibilityComponentGetCustomContentValueAtIndex();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v85 = v179;
        static String.Encoding.utf8.getter();
        v86 = String.data(using:allowLossyConversion:)();
        v88 = v87;

        v79(v85, v180);
        if (v88 >> 60 == 15)
        {
          (*v152)(v166, v81);
          v62 = v171;
          v72 = v167;
        }

        else
        {
          swift_allocObject();
          PropertyListDecoder.init()();
          v89 = v151;
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

          outlined consume of Data?(v86, v88);
          v175(v89, 0, 1, v81);
          v90 = v147;
          v91 = v154;
          v154(v147, v89, v81);
          v92 = v146;
          v91(v146, v90, v81);
          result = REAccessibilityComponentGetCustomContentImportanceAtIndex();
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_65;
          }

          v93 = result;
          v94 = v143;
          v91(v143, v166, v81);
          v95 = v92;
          v96 = v145;
          v91((v94 + *(v145 + 20)), v95, v81);
          *(v94 + *(v96 + 24)) = v93;
          outlined init with take of AccessibilityComponent.RotorTypeInternal(v94, v149, type metadata accessor for AccessibilityComponent.CustomContent);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v153 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v153[2] + 1, 1, v153);
          }

          v62 = v171;
          v72 = v167;
          v98 = v153[2];
          v97 = v153[3];
          if (v98 >= v97 >> 1)
          {
            v153 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1, v153);
          }

          v99 = v153;
          v153[2] = v98 + 1;
          outlined init with take of AccessibilityComponent.RotorTypeInternal(v149, v99 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v98, type metadata accessor for AccessibilityComponent.CustomContent);
        }
      }

      if (v72 == ++v73)
      {
        goto LABEL_24;
      }
    }
  }

  v153 = MEMORY[0x1E69E7CC0];
LABEL_24:
  *&v162[v160[8]] = v153;
  result = REAccessibilityComponentGetSystemRotorsCount();
  if (result < 0)
  {
    goto LABEL_61;
  }

  v100 = result;
  if (result)
  {
    v101 = 0;
    v102 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      result = REAccessibilityComponentGetSystemRotorAtIndex();
      if (result < 0)
      {
        break;
      }

      *v62 = result;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v102[2] + 1, 1, v102);
      }

      v104 = v102[2];
      v103 = v102[3];
      if (v104 >= v103 >> 1)
      {
        v102 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1, v102);
      }

      ++v101;
      v102[2] = v104 + 1;
      outlined init with take of AccessibilityComponent.RotorTypeInternal(v62, v102 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v104, type metadata accessor for AccessibilityComponent.RotorTypeInternal);
      if (v100 == v101)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_60;
  }

  v102 = MEMORY[0x1E69E7CC0];
LABEL_35:
  result = REAccessibilityComponentGetCustomRotorsCount();
  if (result < 0)
  {
    goto LABEL_62;
  }

  v105 = result;
  if (result)
  {
    v106 = 0;
    v107 = (v150 + 8);
    v171 = (v163 + 32);
    v172 = MEMORY[0x1E69E7CC0];
    v170 = result;
    do
    {
      CustomRotorAtIndex = REAccessibilityComponentGetCustomRotorAtIndex();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v109 = v179;
      static String.Encoding.utf8.getter();
      v110 = String.data(using:allowLossyConversion:)();
      v112 = v111;

      (*v107)(v109, v180);
      if (v112 >> 60 != 15)
      {
        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        PropertyListDecoder.init()();
        lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource(&lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource, MEMORY[0x1E6968E28]);
        v113 = v169;
        v114 = v177;
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

        outlined consume of Data?(v110, v112);
        v175(v113, 0, 1, v114);
        v115 = *v171;
        v116 = v157;
        (*v171)(v157, v113, v114);
        v117 = v156;
        v115(v156, v116, v114);
        v118 = v158;
        v115(v158, v117, v114);
        swift_storeEnumTagMultiPayload();
        outlined init with take of AccessibilityComponent.RotorTypeInternal(v118, v165, type metadata accessor for AccessibilityComponent.RotorTypeInternal);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v172[2] + 1, 1, v172);
        }

        v120 = v172[2];
        v119 = v172[3];
        v105 = v170;
        if (v120 >= v119 >> 1)
        {
          v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v120 + 1, 1, v172);
        }

        v122 = v172;
        v121 = v173;
        v172[2] = v120 + 1;
        outlined init with take of AccessibilityComponent.RotorTypeInternal(v165, v122 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v120, type metadata accessor for AccessibilityComponent.RotorTypeInternal);
      }

      ++v106;
    }

    while (v105 != v106);
  }

  else
  {
    v172 = MEMORY[0x1E69E7CC0];
  }

  v123 = v160[9];
  v181 = v102;
  specialized Array.append<A>(contentsOf:)(v172);
  v124 = v162;
  *&v162[v123] = v181;
  result = REAccessibilityComponentGetSystemActions();
  if (result < 0)
  {
    goto LABEL_63;
  }

  *&v124[v148] = result;
  result = REAccessibilityComponentGetCustomActionsCount();
  if ((result & 0x8000000000000000) == 0)
  {
    v125 = result;
    if (result)
    {
      v126 = 0;
      v127 = (v150 + 8);
      v174 = (v163 + 32);
      v128 = MEMORY[0x1E69E7CC0];
      do
      {
        CustomActionAtIndex = REAccessibilityComponentGetCustomActionAtIndex();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v130 = v179;
        static String.Encoding.utf8.getter();
        v131 = String.data(using:allowLossyConversion:)();
        v133 = v132;

        result = (*v127)(v130, v180);
        if (v133 >> 60 != 15)
        {
          type metadata accessor for PropertyListDecoder();
          swift_allocObject();
          PropertyListDecoder.init()();
          lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource(&lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource, MEMORY[0x1E6968E28]);
          v134 = v168;
          v135 = v177;
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

          outlined consume of Data?(v131, v133);
          v175(v134, 0, 1, v135);
          v136 = *v174;
          v137 = v155;
          (*v174)(v155, v134, v135);
          v136(v164, v137, v135);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v128 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v128[2] + 1, 1, v128);
          }

          v139 = v128[2];
          v138 = v128[3];
          v140 = v163;
          if (v139 >= v138 >> 1)
          {
            v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v138 > 1), v139 + 1, 1, v128);
            v140 = v163;
            v128 = v141;
          }

          v128[2] = v139 + 1;
          result = (v136)(v128 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v139, v164, v177);
        }

        ++v126;
      }

      while (v125 != v126);
    }

    else
    {
      v128 = MEMORY[0x1E69E7CC0];
    }

    *&v162[v160[11]] = v128;
    return result;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

void AccessibilityComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v101 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v98 = &v92 - v8;
  v97 = type metadata accessor for AccessibilityComponent.RotorTypeInternal(0);
  v93 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97 - 8);
  v96 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for AccessibilityComponent.CustomContent(0);
  v10 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v100 = (&v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v103 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v92 - v18;
  v104 = *a1;
  REAccessibilityComponentSetEnabled();
  v20 = type metadata accessor for AccessibilityComponent(0);
  outlined init with copy of LocalizedStringResource?(v2 + v20[5], v19);
  v105 = v5;
  v21 = *(v5 + 48);
  v22 = v21(v19, 1, v4);
  v106 = v4;
  v94 = v20;
  v95 = v2;
  if (v22 == 1)
  {
    outlined destroy of BodyTrackingComponent?(v19, &_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  }

  else
  {
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    dispatch thunk of PropertyListEncoder.outputFormat.setter();
    lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource(&lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource, MEMORY[0x1E6968E18]);
    v23 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v92 = v16;
    v102 = v10;
    v24 = v23;
    v26 = v25;
    static String.Encoding.utf8.getter();
    String.init(data:encoding:)();
    v28 = v27;
    v29 = v24;
    v4 = v106;
    outlined consume of Data._Representation(v29, v26);

    (*(v105 + 8))(v19, v4);
    if (v28)
    {
      String.utf8CString.getter();
    }

    v20 = v94;
    v2 = v95;
    v10 = v102;
    v16 = v92;
  }

  REAccessibilityComponentSetLabel();
  swift_unknownObjectRelease();
  outlined init with copy of LocalizedStringResource?(v2 + v20[6], v16);
  if (v21(v16, 1, v4) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v16, &_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  }

  else
  {
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    dispatch thunk of PropertyListEncoder.outputFormat.setter();
    lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource(&lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource, MEMORY[0x1E6968E18]);
    v30 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v32 = v31;
    static String.Encoding.utf8.getter();
    String.init(data:encoding:)();
    v34 = v33;
    v35 = v32;
    v4 = v106;
    outlined consume of Data._Representation(v30, v35);

    (*(v105 + 8))(v16, v4);
    if (v34)
    {
      String.utf8CString.getter();
    }

    v2 = v95;
  }

  REAccessibilityComponentSetValue();
  swift_unknownObjectRelease();
  REAccessibilityComponentClearCustomContent();
  v36 = *(v2 + v20[8]);
  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = v36 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v102 = v10[9];
    v39 = v100;
    do
    {
      outlined init with copy of AccessibilityComponent.CustomContent(v38, v39, type metadata accessor for AccessibilityComponent.CustomContent);
      type metadata accessor for PropertyListEncoder();
      swift_allocObject();
      PropertyListEncoder.init()();
      dispatch thunk of PropertyListEncoder.outputFormat.setter();
      lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource(&lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource, MEMORY[0x1E6968E18]);
      v40 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      v42 = v41;
      static String.Encoding.utf8.getter();
      v43 = String.init(data:encoding:)();
      v45 = v44;
      outlined consume of Data._Representation(v40, v42);

      if (v45)
      {
        v46 = v43;
        swift_allocObject();
        PropertyListEncoder.init()();
        dispatch thunk of PropertyListEncoder.outputFormat.setter();
        v47 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v49 = v48;
        static String.Encoding.utf8.getter();
        v50 = String.init(data:encoding:)();
        v52 = v51;
        outlined consume of Data._Representation(v47, v49);

        if (v52)
        {
          v53 = v50;
          v39 = v100;
          v54 = *(v100 + *(v99 + 24));
          v55 = MEMORY[0x1C68F3280](v46, v45);

          v56 = MEMORY[0x1C68F3280](v53, v52);

          if (v54 >> 31)
          {
            goto LABEL_41;
          }

          REAccessibilityComponentAddCustomContent();

          v4 = v106;
          goto LABEL_13;
        }
      }

      v4 = v106;
      v39 = v100;
LABEL_13:
      outlined destroy of AccessibilityComponent.CustomContent(v39, type metadata accessor for AccessibilityComponent.CustomContent);
      v38 += v102;
      --v37;
    }

    while (v37);
  }

  v58 = v94;
  v57 = v95;
  REAccessibilityComponentSetTraits();
  REAccessibilityComponentClearSystemRotors();
  REAccessibilityComponentClearCustomRotors();
  v59 = *(v57 + v58[9]);
  v60 = *(v59 + 16);
  if (v60)
  {
    v61 = v59 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
    v62 = *(v93 + 72);
    v102 = v105 + 32;
    v100 = (v105 + 8);
    v63 = v101;
    v64 = v98;
    v65 = v96;
    while (1)
    {
      outlined init with copy of AccessibilityComponent.CustomContent(v61, v65, type metadata accessor for AccessibilityComponent.RotorTypeInternal);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v102)(v64, v65, v4);
        type metadata accessor for PropertyListEncoder();
        swift_allocObject();
        PropertyListEncoder.init()();
        dispatch thunk of PropertyListEncoder.outputFormat.setter();
        lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource(&lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource, MEMORY[0x1E6968E18]);
        v66 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v68 = v67;
        static String.Encoding.utf8.getter();
        v69 = String.init(data:encoding:)();
        v71 = v70;
        outlined consume of Data._Representation(v66, v68);

        if (v71)
        {
          v72 = MEMORY[0x1C68F3280](v69, v71);

          REAccessibilityComponentAddCustomRotor();
        }

        v4 = v106;
        v63 = v101;
        v64 = v98;
        v65 = v96;
        (*v100)(v98, v106);
      }

      else
      {
        if ((*v65 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          return;
        }

        REAccessibilityComponentAddSystemRotor();
      }

      v61 += v62;
      if (!--v60)
      {
        goto LABEL_31;
      }
    }
  }

  v63 = v101;
LABEL_31:
  v74 = v94;
  v73 = v95;
  if ((*(v95 + v94[10]) & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

  REAccessibilityComponentSetSystemActions();
  REAccessibilityComponentClearCustomActions();
  v75 = *(v73 + v74[11]);
  v76 = *(v75 + 16);
  if (v76)
  {
    v77 = *(v105 + 16);
    v78 = v75 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
    v79 = *(v105 + 72);
    v105 += 16;
    v80 = (v105 - 8);
    v102 = v79;
    v77(v63, v78, v4);
    while (1)
    {
      type metadata accessor for PropertyListEncoder();
      swift_allocObject();
      PropertyListEncoder.init()();
      dispatch thunk of PropertyListEncoder.outputFormat.setter();
      lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource(&lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource, MEMORY[0x1E6968E18]);
      v81 = v77;
      v82 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      v84 = v83;
      static String.Encoding.utf8.getter();
      v85 = String.init(data:encoding:)();
      v87 = v86;
      outlined consume of Data._Representation(v82, v84);

      if (v87)
      {
        v88 = MEMORY[0x1C68F3280](v85, v87);

        REAccessibilityComponentAddCustomAction();
      }

      v89 = v106;
      v77 = v81;
      v91 = v101;
      v90 = v102;
      (*v80)(v101, v106);
      v78 += v90;
      if (!--v76)
      {
        break;
      }

      v77(v91, v78, v89);
    }
  }
}

uint64_t AccessibilityComponent.label.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + *(type metadata accessor for AccessibilityComponent(0) + 20);

  return outlined init with copy of LocalizedStringResource?(v4, a1);
}

uint64_t AccessibilityComponent.label.setter(uint64_t a1, __n128 a2)
{
  v4 = v2 + *(type metadata accessor for AccessibilityComponent(0) + 20);

  return outlined assign with take of LocalizedStringResource?(a1, v4);
}

uint64_t AccessibilityComponent.value.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + *(type metadata accessor for AccessibilityComponent(0) + 24);

  return outlined init with copy of LocalizedStringResource?(v4, a1);
}

uint64_t AccessibilityComponent.value.setter(uint64_t a1, __n128 a2)
{
  v4 = v2 + *(type metadata accessor for AccessibilityComponent(0) + 24);

  return outlined assign with take of LocalizedStringResource?(a1, v4);
}

uint64_t AccessibilityComponent.traitsRawValue.setter(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for AccessibilityComponent(0);
  *(v2 + *(result + 28)) = a1;
  return result;
}

double AccessibilityComponent.customContent.getter(__n128 a1)
{
  type metadata accessor for AccessibilityComponent(0);

  return result;
}

void AccessibilityComponent.customContent.setter(uint64_t a1, __n128 a2)
{
  v4 = *(type metadata accessor for AccessibilityComponent(0) + 32);

  *(v2 + v4) = a1;
}

double AccessibilityComponent.customRotorsRawValue.getter(__n128 a1)
{
  type metadata accessor for AccessibilityComponent(0);

  return result;
}

void AccessibilityComponent.customRotorsRawValue.setter(uint64_t a1, __n128 a2)
{
  v4 = *(type metadata accessor for AccessibilityComponent(0) + 36);

  *(v2 + v4) = a1;
}

uint64_t AccessibilityComponent.systemActions.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for AccessibilityComponent(0);
  *a1 = *(v2 + *(result + 40));
  return result;
}

uint64_t AccessibilityComponent.systemActions.setter(uint64_t *a1, __n128 a2)
{
  v3 = *a1;
  result = type metadata accessor for AccessibilityComponent(0);
  *(v2 + *(result + 40)) = v3;
  return result;
}

double AccessibilityComponent.customActions.getter(__n128 a1)
{
  type metadata accessor for AccessibilityComponent(0);

  return result;
}

void AccessibilityComponent.customActions.setter(uint64_t a1, __n128 a2)
{
  v4 = *(type metadata accessor for AccessibilityComponent(0) + 44);

  *(v2 + v4) = a1;
}

uint64_t AccessibilityComponent.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v3 = type metadata accessor for AccessibilityComponent(0);
  v4 = v3[5];
  v5 = type metadata accessor for LocalizedStringResource();
  v6 = *(*(v5 - 8) + 56);
  v6(&a1[v4], 1, 1, v5);
  result = (v6)(&a1[v3[6]], 1, 1, v5);
  *&a1[v3[7]] = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *&a1[v3[8]] = MEMORY[0x1E69E7CC0];
  *&a1[v3[9]] = v8;
  *&a1[v3[10]] = 0;
  *&a1[v3[11]] = v8;
  return result;
}

uint64_t specialized __AccessibilityComponent.init(from:)@<X0>(_OWORD *a2@<X8>)
{
  IsRoot = REAccessibilityComponentIsRoot();
  IsEnabled = REAccessibilityComponentIsEnabled();
  if (REAccessibilityComponentGetIdentifier())
  {
    v5 = String.init(cString:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  if (REAccessibilityComponentGetLabel())
  {
    v8 = String.init(cString:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  if (REAccessibilityComponentGetDescription())
  {
    v11 = String.init(cString:)();
    v40 = v12;
    v41 = v11;
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  v13 = MEMORY[0x1C68F3280](0x6D6F747375435841, 0xEF746E65746E6F43);
  v14 = NSClassFromString(v13);

  if (!v14)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  result = REAccessibilityComponentGetCustomContentCount();
  if ((result & 0x8000000000000000) == 0)
  {
    v16 = result;
    v17 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      v33 = v10;
      v34 = v8;
      v35 = v7;
      v36 = v5;
      v37 = IsEnabled;
      v38 = IsRoot;
      v39 = a2;
      v47[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
      v18 = 0;
      v17 = v47[0];
      while (1)
      {
        v19 = REAccessibilityComponentGetCustomContentLabelAtIndex();
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = REAccessibilityComponentGetCustomContentValueAtIndex();
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        result = REAccessibilityComponentGetCustomContentImportanceAtIndex();
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v27 = result;
        v47[0] = v17;
        v29 = *(v17 + 16);
        v28 = *(v17 + 24);
        if (v29 >= v28 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
          v17 = v47[0];
        }

        ++v18;
        *(v17 + 16) = v29 + 1;
        v30 = (v17 + 40 * v29);
        v30[4] = v20;
        v30[5] = v22;
        v30[6] = v24;
        v30[7] = v26;
        v30[8] = v27;
        if (v16 == v18)
        {
          a2 = v39;
          IsEnabled = v37;
          IsRoot = v38;
          v7 = v35;
          v5 = v36;
          v10 = v33;
          v8 = v34;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    LOBYTE(v43) = IsRoot;
    BYTE1(v43) = IsEnabled;
    *(&v43 + 1) = v5;
    *&v44 = v7;
    *(&v44 + 1) = v8;
    *&v45 = v10;
    *(&v45 + 1) = v41;
    *&v46 = v40;
    *(&v46 + 1) = v17;
    LOBYTE(v47[0]) = IsRoot;
    BYTE1(v47[0]) = IsEnabled;
    v47[1] = v5;
    v47[2] = v7;
    v47[3] = v8;
    v47[4] = v10;
    v47[5] = v41;
    v47[6] = v40;
    v47[7] = v17;
    outlined init with copy of __AccessibilityComponent(&v43, v42);
    result = outlined destroy of __AccessibilityComponent(v47);
    v31 = v44;
    *a2 = v43;
    a2[1] = v31;
    v32 = v46;
    a2[2] = v45;
    a2[3] = v32;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t specialized static AccessibilityComponent.RotorTypeInternal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v23 = type metadata accessor for LocalizedStringResource();
  v4 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessibilityComponent.RotorTypeInternal(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22AccessibilityComponentV17RotorTypeInternalO_AEtMd, &_s17RealityFoundation22AccessibilityComponentV17RotorTypeInternalO_AEtMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22 - v14;
  v17 = *(v16 + 56);
  outlined init with copy of AccessibilityComponent.CustomContent(a1, &v22 - v14, type metadata accessor for AccessibilityComponent.RotorTypeInternal);
  outlined init with copy of AccessibilityComponent.CustomContent(a2, &v15[v17], type metadata accessor for AccessibilityComponent.RotorTypeInternal);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of AccessibilityComponent.CustomContent(v15, v12, type metadata accessor for AccessibilityComponent.RotorTypeInternal);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v19 = *v12 == *&v15[v17];
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation22AccessibilityComponentV17RotorTypeInternalO_AEtMd, &_s17RealityFoundation22AccessibilityComponentV17RotorTypeInternalO_AEtMR);
    v19 = 0;
    return v19 & 1;
  }

  outlined init with copy of AccessibilityComponent.CustomContent(v15, v9, type metadata accessor for AccessibilityComponent.RotorTypeInternal);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v9, v23);
    goto LABEL_8;
  }

  v18 = v23;
  (*(v4 + 32))(v6, &v15[v17], v23);
  v19 = MEMORY[0x1C68F21E0](v9, v6);
  v20 = *(v4 + 8);
  v20(v6, v18);
  v20(v9, v18);
LABEL_6:
  outlined destroy of AccessibilityComponent.CustomContent(v15, type metadata accessor for AccessibilityComponent.RotorTypeInternal);
  return v19 & 1;
}

uint64_t outlined init with copy of LocalizedStringResource?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of AccessibilityComponent.CustomContent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of LocalizedStringResource?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions()
{
  result = lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions;
  if (!lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityComponent.SupportedActions, &type metadata for AccessibilityComponent.SupportedActions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions;
  if (!lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityComponent.SupportedActions, &type metadata for AccessibilityComponent.SupportedActions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions;
  if (!lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityComponent.SupportedActions, &type metadata for AccessibilityComponent.SupportedActions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions;
  if (!lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityComponent.SupportedActions, &type metadata for AccessibilityComponent.SupportedActions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions);
  }

  return result;
}

void type metadata completion function for AccessibilityComponent(uint64_t a1)
{
  type metadata accessor for LocalizedStringResource?(319, &lazy cache variable for type metadata for LocalizedStringResource?, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LocalizedStringResource?(319, &lazy cache variable for type metadata for [AccessibilityComponent.CustomContent], type metadata accessor for AccessibilityComponent.CustomContent, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for LocalizedStringResource?(319, &lazy cache variable for type metadata for [AccessibilityComponent.RotorTypeInternal], type metadata accessor for AccessibilityComponent.RotorTypeInternal, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for LocalizedStringResource?(319, &lazy cache variable for type metadata for [LocalizedStringResource], MEMORY[0x1E6968E10], MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for LocalizedStringResource?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for AccessibilityComponent.CustomContent(uint64_t a1)
{
  type metadata accessor for LocalizedStringResource();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AXCustomContentImportance(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for AccessibilityComponent.RotorTypeInternal(uint64_t a1)
{
  result = type metadata accessor for LocalizedStringResource();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __AccessibilityComponent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for __AccessibilityComponent(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for LocalizedStringResource();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of AccessibilityComponent.RotorTypeInternal(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AccessibilityComponent.CustomContent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AudioResource.Calibration.Kind.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1C68F4C10](a3 & 1);
  return MEMORY[0x1C68F4C50](v3);
}

Swift::Int AudioResource.Calibration.Kind.hashValue.getter(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1C68F4C10](a2 & 1);
  MEMORY[0x1C68F4C50](v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AudioResource.Calibration.Kind(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) != 0 && v2 == v3)
    {
      return 1;
    }
  }

  else if ((*(a2 + 8) & 1) == 0 && v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t static AudioResource.Calibration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*a1 != *a2)
    {
      v2 = 0;
    }

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t AudioResource.Calibration.hash(into:)()
{
  if ((*v0 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  MEMORY[0x1C68F4C10](*(v0 + 8));
  return MEMORY[0x1C68F4C50](v1);
}

Swift::Int AudioResource.Calibration.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v1 = 0;
  }

  MEMORY[0x1C68F4C10](v2);
  MEMORY[0x1C68F4C50](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AudioResource.Calibration(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*a1 != *a2)
    {
      v2 = 0;
    }

    if (v2 == 1)
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      LOBYTE(v2) = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioResource.Calibration.Kind()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v1 = 0;
  }

  MEMORY[0x1C68F4C10](v2);
  MEMORY[0x1C68F4C50](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AudioResource.Calibration and conformance AudioResource.Calibration()
{
  result = lazy protocol witness table cache variable for type AudioResource.Calibration and conformance AudioResource.Calibration;
  if (!lazy protocol witness table cache variable for type AudioResource.Calibration and conformance AudioResource.Calibration)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AudioResource.Calibration, &type metadata for AudioResource.Calibration, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AudioResource.Calibration and conformance AudioResource.Calibration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioResource.Calibration.Kind and conformance AudioResource.Calibration.Kind()
{
  result = lazy protocol witness table cache variable for type AudioResource.Calibration.Kind and conformance AudioResource.Calibration.Kind;
  if (!lazy protocol witness table cache variable for type AudioResource.Calibration.Kind and conformance AudioResource.Calibration.Kind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AudioResource.Calibration.Kind, &unk_1F411C638, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AudioResource.Calibration.Kind and conformance AudioResource.Calibration.Kind);
  }

  return result;
}

Swift::Int ShaderGraphMaterial.LoadError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t ShaderGraphMaterial.init(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[54] = a4;
  v5[55] = a5;
  v5[52] = a2;
  v5[53] = a3;
  v5[51] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMR);
  v5[56] = v6;
  v5[57] = *(v6 - 8);
  v5[58] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMR);
  v5[59] = v7;
  v5[60] = *(v7 - 8);
  v5[61] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial.init(named:from:), 0, 0);
}

uint64_t ShaderGraphMaterial.init(named:from:)()
{
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  v3 = *(v0 + 440);
  v23 = *(v0 + 448);
  v4 = *(v0 + 424);
  v5 = *(v0 + 432);
  v6 = *(v0 + 416);
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v5;
  v7[5] = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in ShaderGraphMaterial.init(named:from:);
  *(v8 + 24) = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  v10 = swift_allocObject();
  _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGSgWOi0_(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMR);
  v11 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v12 = swift_allocObject();
  v13 = *(v0 + 96);
  *(v11 + 88) = *(v0 + 80);
  *(v11 + 104) = v13;
  *(v11 + 120) = *(v0 + 112);
  *(v11 + 130) = *(v0 + 122);
  v14 = *(v0 + 32);
  *(v11 + 24) = *(v0 + 16);
  *(v11 + 40) = v14;
  v15 = *(v0 + 64);
  *(v11 + 56) = *(v0 + 48);
  *(v12 + 16) = 0;
  *(v11 + 16) = v12;
  *(v11 + 72) = v15;
  *(v10 + 16) = v11;
  v16 = swift_allocObject();
  v16[2] = _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGIeghn_Iegg_AByxsAF_pGRi_zRi0_zlyAEIsegn_Iegg_TRTA;
  v16[3] = v8;
  v16[4] = v11;
  v16[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
  swift_allocObject();
  outlined copy of Data._Representation(v5, v3);

  *(v10 + 24) = Future.init(_:)();
  v18 = specialized LoadRequest<A>.thenWaitForResourceSharing()(v17);
  *(v0 + 496) = v18;

  *(v0 + 400) = v18;
  v19 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR, protocol conformance descriptor for LoadRequest<A>);

  MEMORY[0x1C68F2E40](v0 + 400, v9, v19);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v23);
  v20 = swift_task_alloc();
  *(v0 + 504) = v20;
  *v20 = v0;
  v20[1] = ShaderGraphMaterial.init(named:from:);
  v21 = *(v0 + 472);

  return MEMORY[0x1EEDB5D38](v0 + 144, v21);
}

{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = ShaderGraphMaterial.init(named:from:);
  }

  else
  {
    v2 = ShaderGraphMaterial.init(named:from:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 360) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial.init(named:from:), v2, v1);
}

{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];

  v0[46] = static ShaderGraphMaterial.loadAsync(named:from:)(v3, v1, v2);

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial.init(named:from:), 0, 0);
}

{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];
  v0[34] = v0[46];

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR, protocol conformance descriptor for LoadRequest<A>);
  MEMORY[0x1C68F2E40](v0 + 34, v4, v5);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v6 = swift_task_alloc();
  v0[47] = v6;
  *v6 = v0;
  v6[1] = ShaderGraphMaterial.init(named:from:);
  v7 = v0[42];

  return MEMORY[0x1EEDB5D38](v0 + 2, v7);
}

{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = ShaderGraphMaterial.init(named:from:);
  }

  else
  {
    v2 = ShaderGraphMaterial.init(named:from:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v1;
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 249) = *(v0 + 121);
  v2 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v2;
  v3 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v3;
  v4 = _s17RealityFoundation19ShaderGraphMaterialVSgWOg((v0 + 144));
  v6 = *(v0 + 344);
  v5 = *(v0 + 352);
  v7 = *(v0 + 336);
  if (v4 == 1)
  {
    type metadata accessor for CancellationError();
    _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    (*(v6 + 8))(v5, v7);
    v8 = *(v0 + 304);
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  else
  {
    v11 = *(v0 + 304);
    v12 = *(v0 + 280);
    (*(v6 + 8))(*(v0 + 352), *(v0 + 336));

    v13 = *(v0 + 144);
    v14 = *(v0 + 160);
    v15 = *(v0 + 192);
    v12[2] = *(v0 + 176);
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
    v16 = *(v0 + 208);
    v17 = *(v0 + 224);
    v18 = *(v0 + 240);
    *(v12 + 105) = *(v0 + 249);
    v12[5] = v17;
    v12[6] = v18;
    v12[4] = v16;
    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 8))(v11, v19);
  }

  v10 = *(v0 + 8);

  return v10();
}

{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];

  (*(v2 + 8))(v1, v3);
  v4 = v0[38];
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 8))(v4, v5);

  v6 = v0[1];

  return v6();
}

void closure #1 in ShaderGraphMaterial.init(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  aBlock[4] = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in closure #1 in static ShaderGraphMaterial.loadMaterialXAsync(_:data:);
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?, @guaranteed CFErrorRef?) -> ();
  aBlock[3] = &block_descriptor_169;
  v8 = _Block_copy(aBlock);

  String.utf8CString.getter();
  RIOEntityUsingMaterialCreateFromInMemoryDataBufferAsync();

  _Block_release(v8);
}

uint64_t ShaderGraphMaterial.AsyncDestination.completion(_:_:)(uint64_t a1, void *a2, void (*a3)(__int128 *))
{
  if (!a1)
  {
    if (a2)
    {
      type metadata accessor for CFErrorRef(0);
      _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
      v6 = swift_allocError();
      *v7 = a2;
    }

    else
    {
      lazy protocol witness table accessor for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError();
      v6 = swift_allocError();
      *v12 = 4;
    }

    *&v30 = v6;
    _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGWOi0_(&v30);
    v27 = v34;
    v28 = v35;
    v29[0] = v36[0];
    *(v29 + 10) = *(v36 + 10);
    v23 = v30;
    v24 = v31;
    v25 = v32;
    v26 = v33;
    v13 = a2;
    a3(&v23);
    goto LABEL_13;
  }

  *(&v38 + 1) = MEMORY[0x1E69E6B70];
  *&v37 = a1;
  outlined init with copy of Any(&v37, &v30);
  swift_dynamicCast();
  v4 = v23;
  __swift_destroy_boxed_opaque_existential_1(&v37);
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    swift_dynamicCastClassUnconditional();
LABEL_10:
    static ShaderGraphMaterial.unpackModelEntity(_:)(&v16);
    v14[4] = v20;
    v14[5] = v21;
    v15[0] = v22[0];
    *(v15 + 9) = *(v22 + 9);
    v14[0] = v16;
    v14[1] = v17;
    v14[2] = v18;
    v14[3] = v19;
    v32 = v18;
    v33 = v19;
    v30 = v16;
    v31 = v17;
    *(v36 + 9) = *(v22 + 9);
    v35 = v21;
    v36[0] = v22[0];
    v34 = v20;
    _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGWOi_(&v30);
    v27 = v34;
    v28 = v35;
    v29[0] = v36[0];
    *(v29 + 10) = *(v36 + 10);
    v23 = v30;
    v24 = v31;
    v25 = v32;
    v26 = v33;
    outlined init with copy of ShaderGraphMaterial(v14, &v37);
    a3(&v23);

    outlined destroy of ShaderGraphMaterial(v14);
LABEL_13:
    v41 = v27;
    v42 = v28;
    v43[0] = v29[0];
    *(v43 + 10) = *(v29 + 10);
    v37 = v23;
    v38 = v24;
    v39 = v25;
    v40 = v26;
    return outlined destroy of BodyTrackingComponent?(&v37, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(v23);
    if (v9)
    {
      v10 = (*(v9 + 232))();
      v11 = *(v10 + 16);

      MEMORY[0x1C68F9740](v11, 0);
      *(v10 + 16) = v23;
      MEMORY[0x1C68F9740](v4, v10);
    }

    else
    {
      makeEntity(for:)(v23);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t ShaderGraphMaterial.init(named:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[39] = a5;
  v6[40] = a6;
  v6[37] = a3;
  v6[38] = a4;
  v6[35] = a1;
  v6[36] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMR);
  v6[41] = v7;
  v6[42] = *(v7 - 8);
  v6[43] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMR);
  v6[44] = v8;
  v6[45] = *(v8 - 8);
  v6[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial.init(named:from:in:), 0, 0);
}

uint64_t ShaderGraphMaterial.init(named:from:in:)()
{
  type metadata accessor for MainActor();
  *(v0 + 376) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial.init(named:from:in:), v2, v1);
}

{
  v1 = v0[39];
  v2 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[36];

  v0[48] = static ShaderGraphMaterial.loadAsync(named:from:in:)(v5, v4, v3, v1, v2);

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial.init(named:from:in:), 0, 0);
}

{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v0[34] = v0[48];

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR, protocol conformance descriptor for LoadRequest<A>);
  MEMORY[0x1C68F2E40](v0 + 34, v4, v5);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v6 = swift_task_alloc();
  v0[49] = v6;
  *v6 = v0;
  v6[1] = ShaderGraphMaterial.init(named:from:in:);
  v7 = v0[44];

  return MEMORY[0x1EEDB5D38](v0 + 2, v7);
}

{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = ShaderGraphMaterial.init(named:from:in:);
  }

  else
  {
    v2 = ShaderGraphMaterial.init(named:from:in:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v1;
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 249) = *(v0 + 121);
  v2 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v2;
  v3 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v3;
  v4 = _s17RealityFoundation19ShaderGraphMaterialVSgWOg((v0 + 144));
  v6 = *(v0 + 360);
  v5 = *(v0 + 368);
  v7 = *(v0 + 352);
  if (v4 == 1)
  {
    v8 = *(v0 + 320);
    type metadata accessor for CancellationError();
    _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v10 = *(v0 + 320);
    v11 = *(v0 + 280);
    (*(v6 + 8))(*(v0 + 368), *(v0 + 352));

    v12 = *(v0 + 144);
    v13 = *(v0 + 160);
    v14 = *(v0 + 192);
    v11[2] = *(v0 + 176);
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    v15 = *(v0 + 208);
    v16 = *(v0 + 224);
    v17 = *(v0 + 240);
    *(v11 + 105) = *(v0 + 249);
    v11[5] = v16;
    v11[6] = v17;
    v11[4] = v15;
  }

  v9 = *(v0 + 8);

  return v9();
}

{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v4 = v0[40];

  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}