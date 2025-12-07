uint64_t static ShaderGraphMaterial.loadAsync(named:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = [objc_opt_self() mainBundle];
  }

  v11 = a5;
  v12 = specialized static __ServiceLocator.shared.getter();
  v13 = *(*(v12 + 168) + 16);
  swift_beginAccess();
  v14 = *(v12 + 24);
  swift_unownedRetainStrong();
  v15 = *(v14 + 32);

  v16 = v13;
  v17 = v15;

  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = v10;
  v18[6] = a1;
  v18[7] = a2;
  v18[8] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  v19 = swift_allocObject();
  _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGSgWOi0_(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMR);
  v20 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v21 = swift_allocObject();
  v22 = v32[5];
  *(v20 + 88) = v32[4];
  *(v20 + 104) = v22;
  *(v20 + 120) = v33[0];
  *(v20 + 130) = *(v33 + 10);
  v23 = v32[1];
  *(v20 + 24) = v32[0];
  *(v20 + 40) = v23;
  v24 = v32[3];
  *(v20 + 56) = v32[2];
  *(v21 + 16) = 0;
  *(v20 + 16) = v21;
  *(v20 + 72) = v24;
  *(v19 + 16) = v20;
  v25 = swift_allocObject();
  v25[2] = partial apply for closure #1 in static ShaderGraphMaterial.loadAsync(named:from:in:);
  v25[3] = v18;
  v25[4] = v20;
  v25[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
  swift_allocObject();
  v26 = v16;
  v27 = v17;

  v28 = v10;

  *(v19 + 24) = Future.init(_:)();
  v30 = specialized LoadRequest<A>.thenWaitForResourceSharing()(v29);

  return v30;
}

uint64_t ShaderGraphMaterial.init(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[37] = a3;
  v4[38] = a4;
  v4[35] = a1;
  v4[36] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMR);
  v4[39] = v5;
  v4[40] = *(v5 - 8);
  v4[41] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMR);
  v4[42] = v6;
  v4[43] = *(v6 - 8);
  v4[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial.init(named:from:), 0, 0);
}

uint64_t static ShaderGraphMaterial.loadAsync(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v32 = a1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = specialized static __ServiceLocator.shared.getter();
  v9 = *(*(v8 + 168) + 16);
  swift_beginAccess();
  v10 = *(v8 + 24);
  swift_unownedRetainStrong();
  v11 = *(v10 + 32);

  v12 = v9;
  v34 = v12;
  v13 = v11;

  (*(v5 + 16))(v7, a3, v4);
  v14 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  (*(v5 + 32))(v16 + v14, v7, v4);
  v17 = (v16 + v15);
  v18 = v33;
  *v17 = v32;
  v17[1] = v18;
  *(v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  v19 = swift_allocObject();
  _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGSgWOi0_(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMR);
  v20 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v21 = swift_allocObject();
  v22 = v35[5];
  *(v20 + 88) = v35[4];
  *(v20 + 104) = v22;
  *(v20 + 120) = v36[0];
  *(v20 + 130) = *(v36 + 10);
  v23 = v35[1];
  *(v20 + 24) = v35[0];
  *(v20 + 40) = v23;
  v24 = v35[3];
  *(v20 + 56) = v35[2];
  *(v21 + 16) = 0;
  *(v20 + 16) = v21;
  *(v20 + 72) = v24;
  *(v19 + 16) = v20;
  v25 = swift_allocObject();
  v25[2] = partial apply for closure #1 in static ShaderGraphMaterial.loadAsync(named:from:);
  v25[3] = v16;
  v25[4] = v20;
  v25[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
  swift_allocObject();
  v26 = v34;
  v27 = v13;

  *(v19 + 24) = Future.init(_:)();
  v29 = specialized LoadRequest<A>.thenWaitForResourceSharing()(v28);

  return v29;
}

uint64_t ShaderGraphMaterial.init(materialXLabel:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial.init(materialXLabel:data:), 0, 0);
}

uint64_t ShaderGraphMaterial.init(materialXLabel:data:)()
{
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  v3 = *(v0 + 440);
  v24 = *(v0 + 448);
  v4 = *(v0 + 424);
  v5 = *(v0 + 432);
  v6 = *(v0 + 416);
  v7 = *(*(specialized static __ServiceLocator.shared.getter() + 168) + 16);
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v5;
  v8[4] = v3;
  v8[5] = v6;
  v8[6] = v4;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  v9 = swift_allocObject();
  _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGSgWOi0_(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMR);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v11 = swift_allocObject();
  v12 = *(v0 + 96);
  *(v10 + 88) = *(v0 + 80);
  *(v10 + 104) = v12;
  *(v10 + 120) = *(v0 + 112);
  *(v10 + 130) = *(v0 + 122);
  v13 = *(v0 + 32);
  *(v10 + 24) = *(v0 + 16);
  *(v10 + 40) = v13;
  v14 = *(v0 + 64);
  *(v10 + 56) = *(v0 + 48);
  *(v11 + 16) = 0;
  *(v10 + 16) = v11;
  *(v10 + 72) = v14;
  *(v9 + 16) = v10;
  v15 = swift_allocObject();
  v15[2] = partial apply for closure #1 in static ShaderGraphMaterial.loadMaterialXAsync(_:data:);
  v15[3] = v8;
  v15[4] = v10;
  v15[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
  swift_allocObject();
  v16 = v7;
  outlined copy of Data._Representation(v5, v3);

  *(v9 + 24) = Future.init(_:)();
  v18 = specialized LoadRequest<A>.thenWaitForResourceSharing()(v17);
  *(v0 + 496) = v18;

  *(v0 + 400) = v18;
  v19 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR, protocol conformance descriptor for LoadRequest<A>);

  MEMORY[0x1C68F2E40](v0 + 400, v23, v19);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v24);
  v20 = swift_task_alloc();
  *(v0 + 504) = v20;
  *v20 = v0;
  v20[1] = ShaderGraphMaterial.init(materialXLabel:data:);
  v21 = *(v0 + 472);

  return MEMORY[0x1EEDB5D38](v0 + 144, v21);
}

{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = ShaderGraphMaterial.init(materialXLabel:data:);
  }

  else
  {
    v2 = ShaderGraphMaterial.init(materialXLabel:data:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 224);
  *(v0 + 336) = *(v0 + 208);
  *(v0 + 352) = v1;
  *(v0 + 368) = *(v0 + 240);
  *(v0 + 377) = *(v0 + 249);
  v2 = *(v0 + 160);
  *(v0 + 272) = *(v0 + 144);
  *(v0 + 288) = v2;
  v3 = *(v0 + 192);
  *(v0 + 304) = *(v0 + 176);
  *(v0 + 320) = v3;
  v4 = _s17RealityFoundation19ShaderGraphMaterialVSgWOg((v0 + 272));
  v5 = *(v0 + 488);
  v6 = *(v0 + 472);
  v7 = *(v0 + 480);
  if (v4 == 1)
  {
    v9 = *(v0 + 432);
    v8 = *(v0 + 440);
    type metadata accessor for CancellationError();
    _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    outlined consume of Data._Representation(v9, v8);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    v12 = *(v0 + 432);
    v11 = *(v0 + 440);
    v13 = *(v0 + 408);
    (*(v7 + 8))(*(v0 + 488), *(v0 + 472));

    outlined consume of Data._Representation(v12, v11);
    v14 = *(v0 + 272);
    v15 = *(v0 + 288);
    v16 = *(v0 + 320);
    v13[2] = *(v0 + 304);
    v13[3] = v16;
    *v13 = v14;
    v13[1] = v15;
    v17 = *(v0 + 336);
    v18 = *(v0 + 352);
    v19 = *(v0 + 368);
    *(v13 + 105) = *(v0 + 377);
    v13[5] = v18;
    v13[6] = v19;
    v13[4] = v17;
  }

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = v0[61];
  v2 = v0[59];
  v3 = v0[60];
  v5 = v0[54];
  v4 = v0[55];

  outlined consume of Data._Representation(v5, v4);
  (*(v3 + 8))(v1, v2);

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in static ShaderGraphMaterial.loadAsync(named:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v27 = a7;
  v31 = a3;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v28 = *(v18 - 8);
  v29 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v22 = v27;
  v21[4] = a6;
  v21[5] = v22;
  v21[6] = a8;
  v21[7] = a1;
  v21[8] = a2;
  v21[9] = a9;
  aBlock[4] = partial apply for closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:in:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_120;
  v23 = _Block_copy(aBlock);

  v24 = a6;

  v25 = a9;
  static DispatchQoS.unspecified.getter();
  v32 = MEMORY[0x1E69E7CC0];
  _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v20, v17, v23);
  _Block_release(v23);
  (*(v30 + 8))(v17, v15);
  (*(v28 + 8))(v20, v29);
}

uint64_t closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:in:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v68 = a8;
  v76 = a7;
  v77 = a6;
  v78 = a4;
  v79 = a5;
  v67 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_SStSgMd, _s10Foundation3URLV_SStSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v72 = &v60 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_SStMd, &_s10Foundation3URLV_SStMR);
  v70 = *(v15 - 8);
  v71 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v60 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v73 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v69 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v74 = &v60 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v60 - v31;
  type metadata accessor for LoadUtilities();
  v75 = a1;
  v33 = a1;
  v34 = a2;
  v35 = a3;
  static LoadUtilities.getURL(name:in:allowingExtensions:)(v33, a2, a3, &outlined read-only object #0 of one-time initialization function for usdExtensions, v24);
  v36 = *(v26 + 48);
  if (v36(v24, 1, v25) == 1)
  {
    v37 = v76;
    outlined destroy of BodyTrackingComponent?(v24, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    static LoadUtilities.getURLForMaterialX(name:in:)(v75, a2, v35, v21);
    if (v36(v21, 1, v25) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v21, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v38 = v73;
      static LoadUtilities.getURLForRealityFile(name:in:)(v75, a2, v35, v73);
      if (v36(v38, 1, v25) == 1)
      {
        outlined destroy of BodyTrackingComponent?(v38, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v39 = v72;
        static LoadUtilities.getURLForRealityFile(withScene:in:)(v75, v34, v35, v72);
        v40 = v71;
        v41 = (*(v70 + 48))(v39, 1, v71);
        v43 = v78;
        v42 = v79;
        v44 = v77;
        if (v41 == 1)
        {
          outlined destroy of BodyTrackingComponent?(v39, &_s10Foundation3URLV_SStSgMd, _s10Foundation3URLV_SStSgMR);
          v45 = swift_allocObject();
          *(v45 + 16) = v44;
          *(v45 + 24) = v37;
          v85 = partial apply for closure #1 in closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:);
          v86 = v45;
          aBlock = MEMORY[0x1E69E9820];
          v82 = 1107296256;
          v83 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          v84 = &block_descriptor_126;
          v46 = _Block_copy(&aBlock);

          v47 = v62;
          static DispatchQoS.unspecified.getter();
          v80 = MEMORY[0x1E69E7CC0];
          _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
          v48 = v64;
          v49 = v67;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x1C68F3CA0](0, v47, v48, v46);
          _Block_release(v46);
          (*(v66 + 8))(v48, v49);
          (*(v63 + 8))(v47, v65);
        }

        else
        {
          v58 = v39;
          v59 = v61;
          outlined init with take of (URL, String)(v58, v61);
          static ShaderGraphMaterial.loadAsyncFromRealityFile(fileName:materialLabel:url:fulfill:)(*(v59 + *(v40 + 48)), *(v59 + *(v40 + 48) + 8), v43, v42, v59, v44, v37);
          return outlined destroy of BodyTrackingComponent?(v59, &_s10Foundation3URLV_SStMd, &_s10Foundation3URLV_SStMR);
        }
      }

      else
      {
        v57 = v69;
        (*(v26 + 32))(v69, v38, v25);
        static ShaderGraphMaterial.loadAsyncFromRealityFile(materialLabel:url:fulfill:)(v78, v79, v57, v77, v37);
        return (*(v26 + 8))(v57, v25);
      }
    }

    else
    {
      v51 = v74;
      (*(v26 + 32))(v74, v21, v25);

      specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      swift_unownedRetainStrong();

      URL._bridgeToObjectiveC()(v52);
      v54 = v53;
      v55 = swift_allocObject();
      *(v55 + 16) = v77;
      *(v55 + 24) = v37;
      v85 = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in closure #1 in static ShaderGraphMaterial.loadMaterialXAsync(_:data:);
      v86 = v55;
      aBlock = MEMORY[0x1E69E9820];
      v82 = 1107296256;
      v83 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?, @guaranteed CFErrorRef?) -> ();
      v84 = &block_descriptor_133_1;
      v56 = _Block_copy(&aBlock);

      String.utf8CString.getter();
      RIOEntityUsingMaterialCreateFromMtlxURLAsync();

      _Block_release(v56);

      return (*(v26 + 8))(v51, v25);
    }
  }

  else
  {
    (*(v26 + 32))(v32, v24, v25);
    static ShaderGraphMaterial.loadAsyncFromUSD(primPath:url:fulfill:)(v78, v79, v32, v77, v76);
    return (*(v26 + 8))(v32, v25);
  }
}

void static ShaderGraphMaterial.loadAsyncFromUSD(primPath:url:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v9);
  v10 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v11 = *(v10 + 24);
  swift_unownedRetainStrong();
  v12 = *(v11 + 32);

  v13 = v12;

  v14 = specialized static ShaderGraphMaterial.createInMemoryMaterialLoadingImportSession(primPath:url:)(a1, a2);
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v13;
  v15[4] = a4;
  v15[5] = a5;
  aBlock[4] = partial apply for closure #1 in static ShaderGraphMaterial.loadAsyncFromUSD(primPath:url:fulfill:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_95;
  v16 = _Block_copy(aBlock);
  v17 = v13;
  v18 = v14;

  RIOImportSessionSetSceneUpdatePassCompletion();
  _Block_release(v16);
  RIOImportSessionUpdate();
}

void static ShaderGraphMaterial.loadAsyncFromRealityFile(materialLabel:url:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a4;
  v63 = a5;
  v61 = a2;
  v60 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v13 + 120, &aBlock);
  v14 = v74;
  v15 = v75;
  __swift_project_boxed_opaque_existential_1(&aBlock, v74);
  v16 = *(v15 + 4);

  v17 = v16(v14, v15);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  swift_beginAccess();
  v18 = *(v13 + 24);
  swift_unownedRetainStrong();
  v19 = *(v18 + 32);

  v20 = *(*(v13 + 168) + 16);
  *v12 = v20;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if ((URL.isFileURL.getter() & 1) == 0)
  {
    v29 = swift_allocObject();
    v30 = v63;
    *(v29 + 16) = v62;
    *(v29 + 24) = v30;
    v75 = partial apply for closure #1 in closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:);
    v76 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v72 = 1107296256;
    v31 = &block_descriptor_65_0;
LABEL_9:
    v73 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v74 = v31;
    v34 = _Block_copy(&aBlock);

    v35 = v19;
    v36 = v65;
    static DispatchQoS.unspecified.getter();
    v70 = MEMORY[0x1E69E7CC0];
    _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v37 = v21;
    v38 = v64;
    v39 = v67;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v36, v38, v34);
    _Block_release(v34);

    (*(v66 + 8))(v38, v39);
    (*(v68 + 8))(v36, v69);

    return;
  }

  URL._bridgeToObjectiveC()(v22);
  v24 = v23;
  v25 = RERealityFileMountFileAtURL();

  if (!v25)
  {
    v32 = swift_allocObject();
    v33 = v63;
    *(v32 + 16) = v62;
    *(v32 + 24) = v33;
    v75 = partial apply for closure #2 in static ShaderGraphMaterial.loadAsyncFromRealityFile(materialLabel:url:fulfill:);
    v76 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v72 = 1107296256;
    v31 = &block_descriptor_71_0;
    goto LABEL_9;
  }

  String.utf8CString.getter();
  AssetDescriptorFromLabel = RERealityFileCreateAssetDescriptorFromLabel();

  v59 = v19;
  v58 = v17;
  if (AssetDescriptorFromLabel)
  {
    v61 = v25;
    v27 = REAssetHandleCreateWithAssetDescriptor();
    type metadata accessor for NSObject();
    v28 = static NSObject.== infix(_:_:)();
    v57 = v21;
    if (v28)
    {
      REAssetHandleLoadNow();
    }

    else
    {
      REAssetHandleLoadNowFromOtherQueue();
    }

    v48 = swift_allocObject();
    v49 = v62;
    v50 = v63;
    v48[2] = v27;
    v48[3] = v49;
    v48[4] = v50;
    v75 = partial apply for closure #4 in static ShaderGraphMaterial.loadAsyncFromRealityFile(materialLabel:url:fulfill:);
    v76 = v48;
    aBlock = MEMORY[0x1E69E9820];
    v72 = 1107296256;
    v73 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v74 = &block_descriptor_83_2;
    v51 = _Block_copy(&aBlock);

    v52 = v65;
    static DispatchQoS.unspecified.getter();
    v70 = MEMORY[0x1E69E7CC0];
    _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v53 = v64;
    v54 = v67;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v55 = v59;
    MEMORY[0x1C68F3CA0](0, v52, v53, v51);
    _Block_release(v51);
    (*(v66 + 8))(v53, v54);
    (*(v68 + 8))(v52, v69);

    RERelease();
    RERealityFileUnmount();
  }

  else
  {
    v40 = swift_allocObject();
    v41 = v63;
    *(v40 + 16) = v62;
    *(v40 + 24) = v41;
    v75 = partial apply for closure #3 in static ShaderGraphMaterial.loadAsyncFromRealityFile(materialLabel:url:fulfill:);
    v76 = v40;
    aBlock = MEMORY[0x1E69E9820];
    v72 = 1107296256;
    v73 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v74 = &block_descriptor_77_0;
    v42 = _Block_copy(&aBlock);

    v43 = v65;
    static DispatchQoS.unspecified.getter();
    v70 = MEMORY[0x1E69E7CC0];
    _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v44 = v21;
    v45 = v64;
    v46 = v67;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v47 = v59;
    MEMORY[0x1C68F3CA0](0, v43, v45, v42);
    _Block_release(v42);
    (*(v66 + 8))(v45, v46);
    (*(v68 + 8))(v43, v69);

    RERealityFileUnmount();
  }
}

void static ShaderGraphMaterial.loadAsyncFromRealityFile(fileName:materialLabel:url:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v67 = a6;
  v68 = a7;
  v66 = a4;
  v65 = a3;
  v64 = a2;
  v63 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v15 + 120, &aBlock);
  v16 = v79;
  v17 = v80;
  __swift_project_boxed_opaque_existential_1(&aBlock, v79);
  v18 = *(v17 + 4);

  v19 = v18(v16, v17);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  swift_beginAccess();
  v20 = *(v15 + 24);
  swift_unownedRetainStrong();
  v21 = *(v20 + 32);

  v22 = *(*(v15 + 168) + 16);
  *v14 = v22;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if ((URL.isFileURL.getter() & 1) == 0)
  {
    v31 = swift_allocObject();
    v32 = v68;
    *(v31 + 16) = v67;
    *(v31 + 24) = v32;
    v80 = partial apply for closure #1 in closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:);
    v81 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v77 = 1107296256;
    v33 = &block_descriptor_139;
LABEL_9:
    v78 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v79 = v33;
    v36 = _Block_copy(&aBlock);

    v37 = v70;
    static DispatchQoS.unspecified.getter();
    v75 = MEMORY[0x1E69E7CC0];
    _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v38 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v39 = v69;
    v40 = v72;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v37, v39, v36);
    _Block_release(v36);

    (*(v71 + 8))(v39, v40);
    (*(v73 + 8))(v37, v74);

    return;
  }

  URL._bridgeToObjectiveC()(v24);
  v26 = v25;
  v27 = RERealityFileMountFileAtURL();

  if (!v27)
  {
    v34 = swift_allocObject();
    v35 = v68;
    *(v34 + 16) = v67;
    *(v34 + 24) = v35;
    v80 = partial apply for closure #1 in closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:);
    v81 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v77 = 1107296256;
    v33 = &block_descriptor_145;
    goto LABEL_9;
  }

  aBlock = v63;
  v77 = v64;

  MEMORY[0x1C68F3410](58, 0xE100000000000000);

  MEMORY[0x1C68F3410](v65, v66);

  String.utf8CString.getter();

  AssetDescriptorFromLabel = RERealityFileCreateAssetDescriptorFromLabel();

  v62 = v23;
  if (AssetDescriptorFromLabel)
  {
    v29 = REAssetHandleCreateWithAssetDescriptor();
    RERelease();
    type metadata accessor for NSObject();
    v30 = static NSObject.== infix(_:_:)();
    v61 = v19;
    if (v30)
    {
      REAssetHandleLoadNow();
    }

    else
    {
      REAssetHandleLoadNowFromOtherQueue();
    }

    v44 = swift_allocObject();
    v45 = v67;
    v46 = v68;
    v44[2] = v29;
    v44[3] = v45;
    v44[4] = v46;
    v80 = partial apply for closure #4 in static ShaderGraphMaterial.loadAsyncFromRealityFile(fileName:materialLabel:url:fulfill:);
    v81 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v77 = 1107296256;
    v47 = &block_descriptor_163;
LABEL_18:
    v78 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v79 = v47;
    v57 = _Block_copy(&aBlock);

    v58 = v70;
    static DispatchQoS.unspecified.getter();
    v75 = MEMORY[0x1E69E7CC0];
    _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v59 = v69;
    v60 = v72;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v58, v59, v57);
    _Block_release(v57);
    (*(v71 + 8))(v59, v60);
    (*(v73 + 8))(v58, v74);

    goto LABEL_19;
  }

  String.utf8CString.getter();
  v41 = RERealityFileCreateAssetDescriptorFromLabel();

  if (v41)
  {
    v42 = REAssetHandleCreateWithAssetDescriptor();
    RERelease();
    type metadata accessor for NSObject();
    v43 = static NSObject.== infix(_:_:)();
    v61 = v19;
    if (v43)
    {
      REAssetHandleLoadNow();
    }

    else
    {
      REAssetHandleLoadNowFromOtherQueue();
    }

    v54 = swift_allocObject();
    v55 = v67;
    v56 = v68;
    v54[2] = v42;
    v54[3] = v55;
    v54[4] = v56;
    v80 = partial apply for closure #4 in static ShaderGraphMaterial.loadAsyncFromRealityFile(fileName:materialLabel:url:fulfill:);
    v81 = v54;
    aBlock = MEMORY[0x1E69E9820];
    v77 = 1107296256;
    v47 = &block_descriptor_157_0;
    goto LABEL_18;
  }

  v48 = swift_allocObject();
  v49 = v68;
  *(v48 + 16) = v67;
  *(v48 + 24) = v49;
  v80 = partial apply for closure #5 in static ShaderGraphMaterial.loadAsyncFromRealityFile(fileName:materialLabel:url:fulfill:);
  v81 = v48;
  aBlock = MEMORY[0x1E69E9820];
  v77 = 1107296256;
  v78 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v79 = &block_descriptor_151;
  v50 = _Block_copy(&aBlock);

  v68 = v27;
  v51 = v70;
  static DispatchQoS.unspecified.getter();
  v75 = MEMORY[0x1E69E7CC0];
  _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v52 = v69;
  v53 = v72;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v51, v52, v50);
  _Block_release(v50);
  (*(v71 + 8))(v52, v53);
  (*(v73 + 8))(v51, v74);

LABEL_19:
  RERealityFileUnmount();
}

uint64_t closure #1 in static ShaderGraphMaterial.loadAsync(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v35 = a6;
  v36 = a7;
  v33 = a5;
  v34 = a2;
  v41 = a3;
  v32 = a1;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a4, v12, v15);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v13 + 32))(v20 + v17, v16, v12);
  v21 = (v20 + v18);
  v22 = v32;
  v23 = v34;
  v24 = v35;
  *v21 = v33;
  v21[1] = v24;
  v25 = (v20 + v19);
  *v25 = v22;
  v25[1] = v23;
  v26 = v36;
  *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = v36;
  aBlock[4] = partial apply for closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_47_1;
  v27 = _Block_copy(aBlock);

  v28 = v26;
  static DispatchQoS.unspecified.getter();
  v42 = MEMORY[0x1E69E7CC0];
  _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v29 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v11, v9, v27);
  _Block_release(v27);
  (*(v40 + 8))(v9, v29);
  (*(v37 + 8))(v11, v39);
}

void closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v34 = a2;
  v35 = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v31 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = URL.pathExtension.getter();
  v17 = v15;
  if (v16 != 0x7974696C616572 || v15 != 0xE700000000000000)
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((v18 & 1) == 0)
    {
      v30 = a5;
      aBlock = v16;
      v38 = v17;
      MEMORY[0x1EEE9AC00](v18);
      *(&v30 - 2) = &aBlock;
      if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), (&v30 - 4), &outlined read-only object #0 of one-time initialization function for usdExtensions))
      {

        static ShaderGraphMaterial.loadAsyncFromUSD(primPath:url:fulfill:)(v34, v35, a1, a4, v30);
        return;
      }

      v21 = v30;
      if (v16 == 2020373613 && v17 == 0xE400000000000000)
      {
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v22 & 1) == 0)
        {
          v28 = swift_allocObject();
          *(v28 + 16) = a4;
          *(v28 + 24) = v21;
          v41 = partial apply for closure #1 in closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:);
          v42 = v28;
          aBlock = MEMORY[0x1E69E9820];
          v38 = 1107296256;
          v39 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          v40 = &block_descriptor_53_0;
          v29 = _Block_copy(&aBlock);

          static DispatchQoS.unspecified.getter();
          v36 = MEMORY[0x1E69E7CC0];
          _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x1C68F3CA0](0, v14, v11, v29);
          _Block_release(v29);
          (*(v32 + 8))(v11, v9);
          (*(v31 + 8))(v14, v12);

          return;
        }
      }

      specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      swift_unownedRetainStrong();

      URL._bridgeToObjectiveC()(v23);
      v25 = v24;
      v26 = swift_allocObject();
      *(v26 + 16) = a4;
      *(v26 + 24) = v21;
      v41 = partial apply for implicit closure #2 in implicit closure #1 in static ShaderGraphMaterial.loadAsyncFromMaterialX(materialLabel:url:fulfill:);
      v42 = v26;
      aBlock = MEMORY[0x1E69E9820];
      v38 = 1107296256;
      v39 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?, @guaranteed CFErrorRef?) -> ();
      v40 = &block_descriptor_59_0;
      v27 = _Block_copy(&aBlock);

      String.utf8CString.getter();
      RIOEntityUsingMaterialCreateFromMtlxURLAsync();

      _Block_release(v27);

      return;
    }
  }

  v19 = v34;
  v20 = v35;

  static ShaderGraphMaterial.loadAsyncFromRealityFile(materialLabel:url:fulfill:)(v19, v20, a1, a4, a5);
}

uint64_t closure #1 in closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:in:)(void (*a1)(__int128 *), uint64_t a2, char a3)
{
  lazy protocol witness table accessor for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError();
  v5 = swift_allocError();
  *v6 = a3;
  *&v15[0] = v5;
  _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGWOi0_(v15);
  v12 = v15[4];
  v13 = v15[5];
  v14[0] = v16[0];
  *(v14 + 10) = *(v16 + 10);
  v8 = v15[0];
  v9 = v15[1];
  v10 = v15[2];
  v11 = v15[3];
  a1(&v8);
  v17[4] = v12;
  v17[5] = v13;
  v18[0] = v14[0];
  *(v18 + 10) = *(v14 + 10);
  v17[0] = v8;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  return outlined destroy of BodyTrackingComponent?(v17, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
}

uint64_t static ShaderGraphMaterial.transferToShaderGraphMaterial(coreAsset:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (REAssetHandleAssetType() != 2 || REMaterialAssetGetType() != 7)
  {
    _s17RealityFoundation19ShaderGraphMaterialVSgWOi0_(&v12);
    goto LABEL_7;
  }

  v4 = REMaterialParameterBlockValueCreate();
  v5 = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(a1);
  if (v5)
  {
    v6 = v5;
    swift_beginAccess();
    ByteSizeOfSGUniforms = REMaterialAssetGetByteSizeOfSGUniforms();
    if ((ByteSizeOfSGUniforms & 0x8000000000000000) == 0)
    {
      *&v12 = v6;
      *(&v12 + 1) = MEMORY[0x1E69E7CC0];
      LOBYTE(v13) = 0;
      *(&v13 + 1) = 0;
      *v14 = v4;
      memset(&v14[8], 0, 32);
      *&v14[40] = xmmword_1C18A9570;
      *&v14[56] = ByteSizeOfSGUniforms;
      *v15 = 0;
      *&v15[8] = 257;
      *&v15[16] = 0;
      v15[24] = 1;
      destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
LABEL_7:
      v8 = *&v14[48];
      a2[4] = *&v14[32];
      a2[5] = v8;
      a2[6] = *v15;
      *(a2 + 105) = *&v15[9];
      v9 = v13;
      *a2 = v12;
      a2[1] = v9;
      v10 = *&v14[16];
      a2[2] = *v14;
      a2[3] = v10;
      return RERelease();
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #4 in static ShaderGraphMaterial.loadAsyncFromRealityFile(materialLabel:url:fulfill:)(uint64_t a1, void (*a2)(__int128 *))
{
  static ShaderGraphMaterial.transferToShaderGraphMaterial(coreAsset:)(a1, &v24);
  v35 = v28;
  v36 = v29;
  v37[0] = v30[0];
  *(v37 + 9) = *(v30 + 9);
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v27;
  if (_s17RealityFoundation19ShaderGraphMaterialVSgWOg(&v31) == 1)
  {
    lazy protocol witness table accessor for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError();
    v3 = swift_allocError();
    *v4 = 0;
    *&v15 = v3;
    _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGWOi0_(&v15);
    v12 = v19;
    v13 = v20;
    v14[0] = v21[0];
    *(v14 + 10) = *(v21 + 10);
    v8 = v15;
    v9 = v16;
    v10 = v17;
    v11 = v18;
    a2(&v8);
  }

  else
  {
    v19 = v35;
    v20 = v36;
    v21[0] = v37[0];
    *(v21 + 9) = *(v37 + 9);
    v15 = v31;
    v16 = v32;
    v17 = v33;
    v18 = v34;
    _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGWOi_(&v15);
    v12 = v19;
    v13 = v20;
    v14[0] = v21[0];
    *(v14 + 10) = *(v21 + 10);
    v8 = v15;
    v9 = v16;
    v10 = v17;
    v11 = v18;
    v6[2] = v26;
    v6[3] = v27;
    v6[0] = v24;
    v6[1] = v25;
    *&v7[9] = *(v30 + 9);
    v6[5] = v29;
    *v7 = v30[0];
    v6[4] = v28;
    outlined init with copy of ShaderGraphMaterial(v6, v22);
    a2(&v8);
    outlined destroy of BodyTrackingComponent?(&v24, &_s17RealityFoundation19ShaderGraphMaterialVSgMd, &_s17RealityFoundation19ShaderGraphMaterialVSgMR);
  }

  v22[4] = v12;
  v22[5] = v13;
  v23[0] = v14[0];
  *(v23 + 10) = *(v14 + 10);
  v22[0] = v8;
  v22[1] = v9;
  v22[2] = v10;
  v22[3] = v11;
  return outlined destroy of BodyTrackingComponent?(v22, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
}

void static ShaderGraphMaterial.unpackModelEntity(_:)(_OWORD *a2@<X8>)
{
  type metadata accessor for ModelEntity();
  if (!swift_dynamicCastClass())
  {
    lazy protocol witness table accessor for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError();
    swift_allocError();
    *v10 = 4;
    swift_willThrow();
    return;
  }

  Component = REEntityGetComponent();
  if (!Component)
  {
    v4 = 0;
    goto LABEL_9;
  }

  v13 = Component;
  static ModelComponent.__fromCore(_:borrowStrongReference:)(&v13, 0, &v16);
  v5 = v16;
  v4 = v17;
  if (!v16)
  {
LABEL_9:
    outlined consume of ModelComponent?(0, v4);
    lazy protocol witness table accessor for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();

    return;
  }

  if (*(v17 + 16))
  {
    v6 = v17;
    outlined init with copy of __REAssetService(v17 + 32, v14);
    outlined consume of ModelComponent?(v5, v6);
    outlined init with take of ForceEffectBase(v14, v18);
    outlined init with copy of __REAssetService(v18, &v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v18);

      v7 = v14[5];
      a2[4] = v14[4];
      a2[5] = v7;
      a2[6] = v15[0];
      *(a2 + 105) = *(v15 + 9);
      v8 = v14[1];
      *a2 = v14[0];
      a2[1] = v8;
      v9 = v14[3];
      a2[2] = v14[2];
      a2[3] = v9;
    }

    else
    {
      lazy protocol witness table accessor for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError();
      swift_allocError();
      *v12 = 0;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v18);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in static ShaderGraphMaterial.loadAsyncFromUSD(primPath:url:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  RootEntity = RIOImportSessionGetRootEntity();
  if (!RootEntity)
  {
    lazy protocol witness table accessor for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError();
    v16 = swift_allocError();
    *v17 = 4;
    swift_willThrow();
LABEL_6:
    v19 = swift_allocObject();
    v19[2] = a3;
    v19[3] = a4;
    v19[4] = v16;
    *&v38 = partial apply for closure #2 in closure #1 in static ShaderGraphMaterial.loadAsyncFromUSD(primPath:url:fulfill:);
    *(&v38 + 1) = v19;
    *&v36 = MEMORY[0x1E69E9820];
    *(&v36 + 1) = 1107296256;
    *&v37 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v37 + 1) = &block_descriptor_101;
    v20 = _Block_copy(&v36);

    v21 = v16;
    static DispatchQoS.unspecified.getter();
    *&v34[0] = MEMORY[0x1E69E7CC0];
    _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v12, v9, v20);
    _Block_release(v20);

    (*(v31 + 8))(v9, v7);
    (*(v29 + 8))(v12, v30);
    goto LABEL_7;
  }

  v14 = RootEntity;
  type metadata accessor for Entity();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  MEMORY[0x1C68F9740](v14, v15);
  *&v36 = v15;
  if (!REEntityGetChildCount())
  {
    lazy protocol witness table accessor for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError();
    v16 = swift_allocError();
    *v18 = 4;
    swift_willThrow();

    goto LABEL_6;
  }

  Entity.ChildCollection.subscript.getter(0);
  static ShaderGraphMaterial.unpackModelEntity(_:)(v34);

  v40 = v34[4];
  v41 = v34[5];
  v42[0] = v35[0];
  *(v42 + 9) = *(v35 + 9);
  v36 = v34[0];
  v37 = v34[1];
  v38 = v34[2];
  v39 = v34[3];
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  v24 = v41;
  *(v23 + 96) = v40;
  *(v23 + 112) = v24;
  *(v23 + 128) = v42[0];
  *(v23 + 137) = *(v42 + 9);
  v25 = v37;
  *(v23 + 32) = v36;
  *(v23 + 48) = v25;
  v26 = v39;
  *(v23 + 64) = v38;
  *(v23 + 80) = v26;
  v33[4] = partial apply for closure #1 in closure #1 in static ShaderGraphMaterial.loadAsyncFromUSD(primPath:url:fulfill:);
  v33[5] = v23;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 1107296256;
  v33[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v33[3] = &block_descriptor_107;
  v27 = _Block_copy(v33);

  outlined init with copy of ShaderGraphMaterial(&v36, v34);
  static DispatchQoS.unspecified.getter();
  *&v34[0] = MEMORY[0x1E69E7CC0];
  _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v12, v9, v27);

  _Block_release(v27);
  outlined destroy of ShaderGraphMaterial(&v36);
  (*(v31 + 8))(v9, v7);
  (*(v29 + 8))(v12, v30);
LABEL_7:

  return RIOImportSessionSetSceneUpdatePassCompletion();
}

uint64_t closure #1 in closure #1 in static ShaderGraphMaterial.loadAsyncFromUSD(primPath:url:fulfill:)(void (*a1)(__int128 *), uint64_t a2, __int128 *a3)
{
  v5 = a3[5];
  v20 = a3[4];
  v21 = v5;
  v22[0] = a3[6];
  *(v22 + 9) = *(a3 + 105);
  v6 = a3[1];
  v16 = *a3;
  v17 = v6;
  v7 = a3[3];
  v18 = a3[2];
  v19 = v7;
  _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGWOi_(&v16);
  v13 = v20;
  v14 = v21;
  v15[0] = v22[0];
  *(v15 + 10) = *(v22 + 10);
  v9 = v16;
  v10 = v17;
  v11 = v18;
  v12 = v19;
  outlined init with copy of ShaderGraphMaterial(a3, v23);
  a1(&v9);
  v23[4] = v13;
  v23[5] = v14;
  v24[0] = v15[0];
  *(v24 + 10) = *(v15 + 10);
  v23[0] = v9;
  v23[1] = v10;
  v23[2] = v11;
  v23[3] = v12;
  return outlined destroy of BodyTrackingComponent?(v23, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
}

uint64_t closure #2 in closure #1 in static ShaderGraphMaterial.loadAsyncFromUSD(primPath:url:fulfill:)(void (*a1)(__int128 *), uint64_t a2, void *a3)
{
  *&v14[0] = a3;
  _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGWOi0_(v14);
  v11 = v14[4];
  v12 = v14[5];
  v13[0] = v15[0];
  *(v13 + 10) = *(v15 + 10);
  v7 = v14[0];
  v8 = v14[1];
  v9 = v14[2];
  v10 = v14[3];
  v5 = a3;
  a1(&v7);
  v16[4] = v11;
  v16[5] = v12;
  v17[0] = v13[0];
  *(v17 + 10) = *(v13 + 10);
  v16[0] = v7;
  v16[1] = v8;
  v16[2] = v9;
  v16[3] = v10;
  return outlined destroy of BodyTrackingComponent?(v16, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
}

uint64_t closure #1 in static ShaderGraphMaterial.loadMaterialXAsync(_:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a3;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v16 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = a6;
  v19[7] = a7;
  aBlock[4] = partial apply for closure #1 in closure #1 in static ShaderGraphMaterial.loadMaterialXAsync(_:data:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_44;
  v20 = _Block_copy(aBlock);

  outlined copy of Data._Representation(a4, a5);

  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x1E69E7CC0];
  _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v18, v15, v20);
  _Block_release(v20);
  (*(v23 + 8))(v15, v13);
  (*(v16 + 8))(v18, v22);
}

void closure #1 in closure #1 in static ShaderGraphMaterial.loadMaterialXAsync(_:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  aBlock[4] = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in closure #1 in static ShaderGraphMaterial.loadMaterialXAsync(_:data:);
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?, @guaranteed CFErrorRef?) -> ();
  aBlock[3] = &block_descriptor_34_2;
  v10 = _Block_copy(aBlock);

  String.utf8CString.getter();
  RIOEntityUsingMaterialCreateFromInMemoryMtlxDataBufferAsync();

  _Block_release(v10);
}

unint64_t lazy protocol witness table accessor for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError()
{
  result = lazy protocol witness table cache variable for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError;
  if (!lazy protocol witness table cache variable for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShaderGraphMaterial.LoadError, &type metadata for ShaderGraphMaterial.LoadError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError;
  if (!lazy protocol witness table cache variable for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShaderGraphMaterial.LoadError, &type metadata for ShaderGraphMaterial.LoadError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError);
  }

  return result;
}

double block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t _sS2cEs5ErrorsWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t partial apply for closure #1 in static ShaderGraphMaterial.loadAsync(named:from:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = (v2 + v7);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v2 + v8);

  return closure #1 in static ShaderGraphMaterial.loadAsync(named:from:)(a1, a2, v9, v2 + v6, v11, v12, v13);
}

void partial apply for closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);
  v10 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:)(v0 + v2, v6, v7, v8, v9, v10);
}

double _s17RealityFoundation19ShaderGraphMaterialVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t specialized static ShaderGraphMaterial.createInMemoryMaterialLoadingImportSession(primPath:url:)(uint64_t a1, uint64_t a2)
{
  v4 = RIOPxrUsdStageCreateInMemory();
  v24 = RIOPxrSdfPathCreateFromCString();
  v23 = RIOPxrTfTokenCreateWithCString();
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();
  v6 = MEMORY[0x1C68F3280](a1, a2);
  v7 = [v6 lastPathComponent];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  MEMORY[0x1C68F3410](v8, v10);

  String.utf8CString.getter();

  v11 = RIOPxrSdfPathCreateFromCString();

  v22 = RIOPxrTfTokenCreateWithCString();
  v12 = RIOPxrUsdStageCreatePrimIfNeeded();
  String.utf8CString.getter();
  v13 = RIOPxrSdfPathCreateFromCString();

  URL.path.getter();
  String.utf8CString.getter();

  RIOPxrUsdPrimAddReference();

  v14 = RIOPxrTfTokenCreateWithCString();
  Relationship = RIOPxrUsdPrimCreateCreateRelationship();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C1898160;
  *(v16 + 32) = v11;
  type metadata accessor for RIOPxrSdfPathRef(0);
  v17 = v11;
  isa = Array._bridgeToObjectiveC()().super.isa;

  RIOPxrUsdRelationshipSetTargets();

  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  v19 = RIOImportSessionCreateWithStage();
  if (!v19)
  {
    lazy protocol witness table accessor for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError();
    swift_allocError();
    *v20 = 4;
    swift_willThrow();
  }

  return v19;
}

uint64_t outlined init with take of (URL, String)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_SStMd, &_s10Foundation3URLV_SStMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static StateMachineGraphCreator.createGraph(from:)(uint64_t *a2@<X8>)
{
  v46 = MEMORY[0x1E69E7CC0];
  StateCount = REStateMachineAssetGetStateCount();
  if (StateCount < 0)
  {
    goto LABEL_53;
  }

  v10 = StateCount;
  if (StateCount)
  {
    v11 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      StateAtIndex = REStateMachineAssetGetStateAtIndex();
      v13 = static StateMachineGraphCreator.createStateAndItsTransitions(from:)(&v42, StateAtIndex);
      v14 = v42;
      v15 = v43;
      v16 = v44;
      v17 = v45;
      RERelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
      }

      v19 = *(v3 + 2);
      v18 = *(v3 + 3);
      if (v19 >= v18 >> 1)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v3);
      }

      ++v11;
      *(v3 + 2) = v19 + 1;
      v20 = &v3[32 * v19];
      *(v20 + 4) = v14;
      *(v20 + 5) = v15;
      *(v20 + 6) = v16;
      *(v20 + 7) = v17;
      specialized Array.append<A>(contentsOf:)(v13);
    }

    while (v10 != v11);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  AnyState = REStateMachineAssetGetAnyState();
  if (AnyState)
  {
    v4 = static StateMachineGraphCreator.createStateAndItsTransitions(from:)(&v42, AnyState);

    RERelease();
    v2 = v42;
    v5 = v43;
    v7 = v44;
    v6 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_54;
    }

    while (1)
    {
      v23 = *(v3 + 2);
      v22 = *(v3 + 3);
      if (v23 >= v22 >> 1)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v3);
      }

      *(v3 + 2) = v23 + 1;
      v24 = &v3[32 * v23];
      *(v24 + 4) = v2;
      *(v24 + 5) = v5;
      *(v24 + 6) = v7;
      *(v24 + 7) = v6;
      v25 = *(v4 + 16);

      v41 = v25;
      if (!v25)
      {
LABEL_38:
        specialized Array.append<A>(contentsOf:)(v4);
        break;
      }

      v40 = a2;
      a2 = 0;
      v2 = 0;
      v26 = v46;
      while (v2 < *(v4 + 16))
      {
        v5 = *(a2 + v4 + 48);
        v6 = *(a2 + v4 + 56);
        v27 = *(a2 + v4 + 64);
        v28 = *(a2 + v4 + 72);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        }

        if (v2 >= *(v4 + 16))
        {
          goto LABEL_47;
        }

        v29 = (a2 + v4);
        v29[6] = v27;
        v29[7] = v28;

        if (v2 >= *(v4 + 16))
        {
          goto LABEL_48;
        }

        v29[8] = v5;
        v29[9] = v6;

        v6 = *(v4 + 16);
        v30 = *(v26 + 2);
        v5 = v30 + v6;
        if (__OFADD__(v30, v6))
        {
          goto LABEL_49;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v5 <= *(v26 + 3) >> 1)
        {
          if (*(v4 + 16))
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (v30 <= v5)
          {
            v32 = v30 + v6;
          }

          else
          {
            v32 = v30;
          }

          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v32, 1, v26);
          if (*(v4 + 16))
          {
LABEL_33:
            if ((*(v26 + 3) >> 1) - *(v26 + 2) < v6)
            {
              goto LABEL_51;
            }

            swift_arrayInitWithCopy();

            if (v6)
            {
              v33 = *(v26 + 2);
              v34 = __OFADD__(v33, v6);
              v35 = v33 + v6;
              if (v34)
              {
                goto LABEL_52;
              }

              *(v26 + 2) = v35;
            }

            goto LABEL_18;
          }
        }

        if (v6)
        {
          goto LABEL_50;
        }

LABEL_18:
        ++v2;
        a2 += 9;
        if (v41 == v2)
        {
          v46 = v26;
          a2 = v40;
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_47:
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
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    }
  }

  REStateMachineAssetGetInitialStateName();
  v37 = String.init(cString:)();
  v38 = v36;
  v39 = v46;
  if (!v37 && v36 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    if (*(v3 + 2))
    {
      v37 = *(v3 + 4);
      v38 = *(v3 + 5);
    }

    else
    {
      v37 = 0;
      v38 = 0xE000000000000000;
    }
  }

  *a2 = v37;
  a2[1] = v38;
  a2[2] = v3;
  a2[3] = v39;
}

uint64_t static StateMachineGraphCreator.createStateAndItsTransitions(from:)(uint64_t a1, uint64_t a2)
{
  REStateMachineAssetStateGetName();
  v24 = String.init(cString:)();
  v4 = v3;
  REStateMachineAssetStateGetExitTime();
  v6 = v5;
  result = REStateMachineAssetStateGetTransitionCount();
  if (result < 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v8 = result;
  v23 = a1;
  if (result)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      REStateMachineAssetStateGetTransitionAtIndex();
      static StateMachineGraphCreator.createTransition(from:fromStateName:)(v24, v4, v25);
      RERelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v12 = *(v10 + 2);
      v11 = *(v10 + 3);
      if (v12 >= v11 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
      }

      ++v9;
      *(v10 + 2) = v12 + 1;
      v13 = &v10[72 * v12];
      *(v13 + 2) = v25[0];
      v14 = v25[1];
      v15 = v25[2];
      v16 = v25[3];
      *(v13 + 12) = v26;
      *(v13 + 4) = v15;
      *(v13 + 5) = v16;
      *(v13 + 3) = v14;
    }

    while (v8 != v9);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  result = REStateMachineAssetStateGetCommandCount();
  if (result < 0)
  {
    goto LABEL_23;
  }

  v17 = result;
  if (result)
  {
    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    do
    {
      CommandAtIndex = REStateMachineAssetStateGetCommandAtIndex();
      static StateMachineGraphCreator.createCommand(from:)(CommandAtIndex, v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
      }

      ++v18;
      v19[2] = v22 + 1;
      outlined init with take of ForceEffectBase(v25, &v19[5 * v22 + 4]);
      RERelease();
    }

    while (v17 != v18);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  *v23 = v24;
  *(v23 + 8) = v4;
  *(v23 + 16) = v6;
  *(v23 + 24) = v19;
  return v10;
}

void static StateMachineGraphCreator.createTransition(from:fromStateName:)(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  REStateMachineAssetTransitionGetName();
  v7 = String.init(cString:)();
  v9 = v8;
  REStateMachineAssetTransitionGetToStateName();
  v10 = String.init(cString:)();
  v12 = v11;
  REStateMachineAssetTransitionGetTransitionTime();
  v14 = v13;
  InterruptionType = REStateMachineAssetTransitionGetInterruptionType();
  ConditionCount = REStateMachineAssetTransitionGetConditionCount();
  if (ConditionCount < 0)
  {
    __break(1u);
LABEL_27:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v17 = ConditionCount;
    v37 = InterruptionType;
    v38 = v10;
    v39 = v9;
    v40 = v7;
    v41 = a2;
    v42 = a3;
    if (ConditionCount)
    {
      v18 = 0;
      v19 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        REStateMachineAssetTransitionGetConditionAtIndex();
        Type = REStateMachineAssetTransitionConditionGetType();
        if (Type == 1)
        {
          REStateMachineAssetTransitionConditionGetParameterName();
          v21 = String.init(cString:)();
          v47 = &type metadata for StateMachineConditionTrigger;
          v48 = &protocol witness table for StateMachineConditionTrigger;
          *&v43 = v21;
          *(&v43 + 1) = v22;
        }

        else
        {
          if (Type)
          {
            goto LABEL_27;
          }

          REStateMachineAssetTransitionConditionGetParameterName();
          v23 = String.init(cString:)();
          v25 = v24;
          ParameterType = REStateMachineAssetTransitionConditionGetParameterType();
          ConditionOperator = REStateMachineAssetTransitionConditionGetConditionOperator();
          v28 = ConditionOperator;
          if (ConditionOperator >= 6)
          {
            *&v43 = 0;
            *(&v43 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(45);
            MEMORY[0x1C68F3410](0xD00000000000002BLL, 0x80000001C18ED5B0);
            type metadata accessor for REStateTransitionConditionOperator(0);
            _print_unlocked<A, B>(_:_:)();
            goto LABEL_27;
          }

          if (ParameterType <= 1)
          {
            if (ParameterType != 1)
            {
              goto LABEL_27;
            }

            ConstantInt = REStateMachineAssetTransitionConditionGetConstantInt();
            v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineConditionVySiGMd, &_s17RealityFoundation21StateMachineConditionVySiGMR);
            v48 = &protocol witness table for StateMachineCondition<A>;
            v32 = swift_allocObject();
            *&v43 = v32;
            *(v32 + 40) = ConstantInt;
            *(v32 + 16) = v23;
            *(v32 + 24) = v25;
            *(v32 + 32) = v28;
          }

          else
          {
            if (ParameterType == 2)
            {
              REStateMachineAssetTransitionConditionGetConstantFloat();
              v30 = v29;
              v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineConditionVySfGMd, &_s17RealityFoundation21StateMachineConditionVySfGMR);
              v48 = &protocol witness table for StateMachineCondition<A>;
              v46 = v30;
            }

            else
            {
              if (ParameterType != 3)
              {
                goto LABEL_27;
              }

              ConstantBool = REStateMachineAssetTransitionConditionGetConstantBool();
              v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineConditionVySbGMd, &_s17RealityFoundation21StateMachineConditionVySbGMR);
              v48 = &protocol witness table for StateMachineCondition<A>;
              v45 = ConstantBool;
            }

            *&v43 = v23;
            *(&v43 + 1) = v25;
            v44 = v28;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
        }

        v35 = v19[2];
        v34 = v19[3];
        if (v35 >= v34 >> 1)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v19);
        }

        ++v18;
        v19[2] = v35 + 1;
        outlined init with take of ForceEffectBase(&v43, &v19[5 * v35 + 4]);
        RERelease();
        if (v17 == v18)
        {
          goto LABEL_23;
        }
      }
    }

    v19 = MEMORY[0x1E69E7CC0];
LABEL_23:
    static StateMachineUtils.convert(_:)(v37, &v43);
    v36 = v43;
    *a4 = v40;
    *(a4 + 8) = v39;
    *(a4 + 16) = v41;
    *(a4 + 24) = v42;
    *(a4 + 32) = v38;
    *(a4 + 40) = v12;
    *(a4 + 48) = v14;
    *(a4 + 56) = v36;
    *(a4 + 64) = v19;
  }
}

void static StateMachineGraphCreator.createCommand(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Type = REStateMachineAssetCommandGetType();
  REStateMachineAssetCommandGetEntityBindTarget();
  v5 = String.init(cString:)();
  v7 = v6;
  v8 = specialized static StateMachineGraphCreator.getCommandParameters(from:)(a1);
  if (!v5 && v7 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v9 = 0;
    v10 = 0;
    v11 = -1;
    if (Type <= 2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    static InternalBindPath.targetFromPath(_:)(v5, v7, v20);
    v9 = v20[0];
    v10 = v20[1];
    v11 = v21;
    if (Type <= 2)
    {
LABEL_5:
      if (Type == 1)
      {

        v12 = _s17RealityFoundation24StateMachineGraphCreatorV14parameterValue33_7B97689064990206E90624C7EC967102LLyxSayAA0cD24CommandParameterProtocol_pG_SStAA0cdmnH0RzlFZSS_Tt2g5(v8, 0x6F6974616D696E41, 0xED0000656D614E6ELL);
        v14 = v13;
        v15 = _s17RealityFoundation24StateMachineGraphCreatorV14parameterValue33_7B97689064990206E90624C7EC967102LLyxSayAA0cD24CommandParameterProtocol_pG_SStAA0cdmnH0RzlFZSb_Tt2g5(v8, 0xD000000000000018, 0x80000001C18E7D00);

        *(a2 + 24) = &type metadata for StateMachineAnimationPlayCommand;
        *(a2 + 32) = &protocol witness table for StateMachineAnimationPlayCommand;
        v16 = swift_allocObject();
        *a2 = v16;
        *(v16 + 16) = 0;
        *(v16 + 24) = 0;
        *(v16 + 32) = -1;
        outlined consume of BindTarget?(0, 0, 0xFFu);
        *(v16 + 16) = v9;
        *(v16 + 24) = v10;
        *(v16 + 32) = v11;
        *(v16 + 40) = v12;
        *(v16 + 48) = v14;
        *(v16 + 56) = v15 & 1;
        return;
      }

      if (Type == 2)
      {

        *(a2 + 24) = &type metadata for StateMachineAnimationStopCommand;
        *(a2 + 32) = &protocol witness table for StateMachineAnimationStopCommand;
        outlined consume of BindTarget?(0, 0, 0xFFu);
        goto LABEL_12;
      }

      goto LABEL_15;
    }
  }

  if (Type == 3)
  {

    *(a2 + 24) = &type metadata for StateMachineAnimationStopAllCommand;
    *(a2 + 32) = &protocol witness table for StateMachineAnimationStopAllCommand;
LABEL_12:
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    return;
  }

  if (Type == 4)
  {

    _s17RealityFoundation24StateMachineGraphCreatorV14parameterValue33_7B97689064990206E90624C7EC967102LLyxSayAA0cD24CommandParameterProtocol_pG_SStAA0cdmnH0RzlFZSd_Tt2g5(v8, 0x6B63616279616C50, 0xEC000000656D6954);
    v18 = v17;

    *(a2 + 24) = &type metadata for StateMachineAnimationSetPlaybackTimeCommand;
    *(a2 + 32) = &protocol witness table for StateMachineAnimationSetPlaybackTimeCommand;
    v19 = swift_allocObject();
    *a2 = v19;
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = -1;
    outlined consume of BindTarget?(0, 0, 0xFFu);
    *(v19 + 16) = v9;
    *(v19 + 24) = v10;
    *(v19 + 32) = v11;
    *(v19 + 40) = v18;
    return;
  }

LABEL_15:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t _s17RealityFoundation24StateMachineGraphCreatorV14parameterValue33_7B97689064990206E90624C7EC967102LLyxSayAA0cD24CommandParameterProtocol_pG_SStAA0cdmnH0RzlFZSS_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_12:
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    goto LABEL_14;
  }

  v6 = a1 + 32;
  while (1)
  {
    outlined init with copy of __REAssetService(v6, &v19);
    v7 = v20;
    v8 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    if ((*(v8 + 8))(v7, v8) == a2 && v9 == a3)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined init with copy of __REAssetService(&v19, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation36StateMachineCommandParameterProtocol_pMd, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySSGMd, &_s17RealityFoundation28StateMachineCommandParameterVySSGMR);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(&v19);
    v6 += 40;
    if (!--v5)
    {
      goto LABEL_12;
    }
  }

  outlined init with take of ForceEffectBase(&v19, v22);
LABEL_14:
  outlined init with copy of StateMachineCommandParameterProtocol?(v22, &v19);
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation36StateMachineCommandParameterProtocol_pMd, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySSGMd, &_s17RealityFoundation28StateMachineCommandParameterVySSGMR);
    if (swift_dynamicCast())
    {
      if (v17)
      {
        outlined destroy of StateMachineCommandParameterProtocol?(v22);

        outlined consume of StateMachineCommandParameter<String>?(v16, v17, v18, *(&v18 + 1));
        return v18;
      }
    }

    else
    {
      v16 = 0;
      v18 = 0u;
    }

    v15 = v16;
    v13 = *(&v18 + 1);
    v14 = v18;
  }

  else
  {
    outlined destroy of StateMachineCommandParameterProtocol?(&v19);
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  outlined consume of StateMachineCommandParameter<String>?(v15, 0, v14, v13);
  *&v19 = 0;
  *(&v19 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  MEMORY[0x1C68F3410](0xD00000000000001DLL, 0x80000001C18ED4D0);
  MEMORY[0x1C68F3410](a2, a3);
  MEMORY[0x1C68F3410](0x6570797420666F20, 0xE900000000000020);
  MEMORY[0x1C68F3410](0x676E69727453, 0xE600000000000000);
  MEMORY[0x1C68F3410](0x756F6620746F6E20, 0xEA0000000000646ELL);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation24StateMachineGraphCreatorV14parameterValue33_7B97689064990206E90624C7EC967102LLyxSayAA0cD24CommandParameterProtocol_pG_SStAA0cdmnH0RzlFZSb_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_12:
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    goto LABEL_14;
  }

  v6 = a1 + 32;
  while (1)
  {
    outlined init with copy of __REAssetService(v6, &v15);
    v7 = v16;
    v8 = v17;
    __swift_project_boxed_opaque_existential_1(&v15, v16);
    if ((*(v8 + 8))(v7, v8) == a2 && v9 == a3)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined init with copy of __REAssetService(&v15, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation36StateMachineCommandParameterProtocol_pMd, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySbGMd, &_s17RealityFoundation28StateMachineCommandParameterVySbGMR);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(&v15);
    v6 += 40;
    if (!--v5)
    {
      goto LABEL_12;
    }
  }

  outlined init with take of ForceEffectBase(&v15, v18);
LABEL_14:
  outlined init with copy of StateMachineCommandParameterProtocol?(v18, &v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation36StateMachineCommandParameterProtocol_pMd, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySbGMd, &_s17RealityFoundation28StateMachineCommandParameterVySbGMR);
    if ((swift_dynamicCast() & 1) != 0 && v13)
    {
      outlined destroy of StateMachineCommandParameterProtocol?(v18);

      return v14 & 1;
    }
  }

  else
  {
    outlined destroy of StateMachineCommandParameterProtocol?(&v15);
  }

  *&v15 = 0;
  *(&v15 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  MEMORY[0x1C68F3410](0xD00000000000001DLL, 0x80000001C18ED4D0);
  MEMORY[0x1C68F3410](a2, a3);
  MEMORY[0x1C68F3410](0x6570797420666F20, 0xE900000000000020);
  MEMORY[0x1C68F3410](1819242306, 0xE400000000000000);
  MEMORY[0x1C68F3410](0x756F6620746F6E20, 0xEA0000000000646ELL);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void _s17RealityFoundation24StateMachineGraphCreatorV14parameterValue33_7B97689064990206E90624C7EC967102LLyxSayAA0cD24CommandParameterProtocol_pG_SStAA0cdmnH0RzlFZSd_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_12:
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    goto LABEL_14;
  }

  v6 = a1 + 32;
  while (1)
  {
    outlined init with copy of __REAssetService(v6, &v13);
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(&v13, v14);
    if ((*(v8 + 8))(v7, v8) == a2 && v9 == a3)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined init with copy of __REAssetService(&v13, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation36StateMachineCommandParameterProtocol_pMd, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySdGMd, &_s17RealityFoundation28StateMachineCommandParameterVySdGMR);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(&v13);
    v6 += 40;
    if (!--v5)
    {
      goto LABEL_12;
    }
  }

  outlined init with take of ForceEffectBase(&v13, v16);
LABEL_14:
  outlined init with copy of StateMachineCommandParameterProtocol?(v16, &v13);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation36StateMachineCommandParameterProtocol_pMd, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySdGMd, &_s17RealityFoundation28StateMachineCommandParameterVySdGMR);
    if ((swift_dynamicCast() & 1) != 0 && v12)
    {
      outlined destroy of StateMachineCommandParameterProtocol?(v16);

      return;
    }
  }

  else
  {
    outlined destroy of StateMachineCommandParameterProtocol?(&v13);
  }

  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  MEMORY[0x1C68F3410](0xD00000000000001DLL, 0x80000001C18ED4D0);
  MEMORY[0x1C68F3410](a2, a3);
  MEMORY[0x1C68F3410](0x6570797420666F20, 0xE900000000000020);
  MEMORY[0x1C68F3410](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1C68F3410](0x756F6620746F6E20, 0xEA0000000000646ELL);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void static StateMachineGraphCreator.commandTargetEntity(of:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v5 + 32;
    while (1)
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        return;
      }

      outlined init with copy of __REAssetService(v9, &v18);
      v10 = v20;
      v11 = v21;
      __swift_project_boxed_opaque_existential_1(&v18, v20);
      if ((*(v11 + 8))(v10, v11) == 0x6E45746567726154 && v12 == 0xEC00000079746974)
      {
        break;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        goto LABEL_12;
      }

      ++v8;
      __swift_destroy_boxed_opaque_existential_1(&v18);
      v9 += 40;
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

LABEL_12:

    outlined init with take of ForceEffectBase(&v18, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation36StateMachineCommandParameterProtocol_pMd, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVyAA10BindTargetOGMd, &_s17RealityFoundation28StateMachineCommandParameterVyAA10BindTargetOGMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_14;
    }

    v15 = v19;
    v16 = v20;
    v17 = v21;
    outlined copy of BindTarget(v19, v20, v21);

    outlined consume of BindTarget(v15, v16, v17);
    *a2 = v15;
    *(a2 + 8) = v16;
    *(a2 + 16) = v17;
  }

  else
  {
LABEL_10:

LABEL_14:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
  }
}

uint64_t static StateMachineGraphCreator.createCoreState(from:outgoingTransitions:)(double *a1, uint64_t a2)
{
  v55 = type metadata accessor for Logger();
  v56 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v48 - v6;
  v59 = *(a1 + 3);
  String.utf8CString.getter();
  v7 = REStateMachineAssetStateCreate();

  v60 = v7;
  result = REStateMachineAssetStateSetExitTime();
  v10 = *(a2 + 16);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v12 = *(a2 + 32 + 72 * i + 64);
      String.utf8CString.getter();
      String.utf8CString.getter();

      REStateMachineAssetTransitionCreate();

      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = v12 + 32;
        do
        {
          outlined init with copy of __REAssetService(v14, v69);
          v15 = specialized static StateMachineGraphCreator.createCoreCondition(from:)(v69);
          __swift_destroy_boxed_opaque_existential_1(v69);
          if (v15)
          {
            REStateMachineAssetTransitionAddCondition();
          }

          v14 += 40;
          --v13;
        }

        while (v13);
      }

      result = REStateMachineAssetStateAddTransition();
    }
  }

  v16 = v52;
  v58 = *(v59 + 16);
  if (!v58)
  {
    return v60;
  }

  v17 = 0;
  v57 = v59 + 32;
  v54 = "Scope";
  v53 = (v56 + 8);
  v48 = "hineCommand type ";
  v51 = 0x80000001C18ED340;
  *&v9 = 136315138;
  v50 = v9;
  while (v17 < *(v59 + 16))
  {
    outlined init with copy of __REAssetService(v57 + 40 * v17, v69);
    specialized static StateMachineGraphCreator.commandTypeName(of:)(v69);
    if (v18)
    {
      static StateMachineGraphCreator.commandTargetEntity(of:)(v69, &v65);
      if (v66 != 255)
      {
        specialized static InternalBindPath.pathFromTarget(_:_:)(&v65, 1);
        outlined consume of BindTarget(v65, *(&v65 + 1), v66);
      }

      String.utf8CString.getter();

      String.utf8CString.getter();

      REStateMachineAssetCommandCreate();

      v25 = v70;
      v26 = v71;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      v27 = (*(v26 + 8))(v25, v26);
      v28 = *(v27 + 16);
      if (v28)
      {
        v56 = v27;
        v29 = v27 + 32;
        do
        {
          outlined init with copy of __REAssetService(v29, &v65);
          outlined init with copy of __REAssetService(&v65, v64);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation36StateMachineCommandParameterProtocol_pMd, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pMR);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySiGMd, &_s17RealityFoundation28StateMachineCommandParameterVySiGMR);
          if (swift_dynamicCast())
          {
            v30 = v67;
            v31 = v68;
            __swift_project_boxed_opaque_existential_1(&v65, v67);
            (*(v31 + 8))(v30, v31);

            String.utf8CString.getter();

            REStateMachineAssetCommandAddParameterInt();
          }

          else
          {
            outlined init with copy of __REAssetService(&v65, v64);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySfGMd, &_s17RealityFoundation28StateMachineCommandParameterVySfGMR);
            if (swift_dynamicCast())
            {
              v32 = v67;
              v33 = v68;
              __swift_project_boxed_opaque_existential_1(&v65, v67);
              (*(v33 + 8))(v32, v33);
              String.utf8CString.getter();

              REStateMachineAssetCommandAddParameterFloat();
LABEL_27:

              goto LABEL_28;
            }

            outlined init with copy of __REAssetService(&v65, v64);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySdGMd, &_s17RealityFoundation28StateMachineCommandParameterVySdGMR);
            if (swift_dynamicCast())
            {
              v34 = v67;
              v35 = v68;
              __swift_project_boxed_opaque_existential_1(&v65, v67);
              (*(v35 + 8))(v34, v35);
              String.utf8CString.getter();

              REStateMachineAssetCommandAddParameterDouble();
              goto LABEL_27;
            }

            outlined init with copy of __REAssetService(&v65, v64);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySbGMd, &_s17RealityFoundation28StateMachineCommandParameterVySbGMR);
            if (swift_dynamicCast())
            {
              v36 = v67;
              v37 = v68;
              __swift_project_boxed_opaque_existential_1(&v65, v67);
              (*(v37 + 8))(v36, v37);
              String.utf8CString.getter();

              REStateMachineAssetCommandAddParameterBool();
            }

            else
            {
              outlined init with copy of __REAssetService(&v65, v64);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySSGMd, &_s17RealityFoundation28StateMachineCommandParameterVySSGMR);
              if (!swift_dynamicCast())
              {
                outlined init with copy of __REAssetService(&v65, v64);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVyAA10BindTargetOGMd, &_s17RealityFoundation28StateMachineCommandParameterVyAA10BindTargetOGMR);
                if (swift_dynamicCast())
                {
                  v40 = v61;
                  v41 = v62;
                  v42 = v63;

                  outlined consume of BindTarget(v40, v41, v42);
                }

                else
                {
                  v43 = v49;
                  Logger.init(subsystem:category:)();
                  v44 = Logger.logObject.getter();
                  v45 = static os_log_type_t.error.getter();
                  if (os_log_type_enabled(v44, v45))
                  {
                    v46 = swift_slowAlloc();
                    v47 = swift_slowAlloc();
                    v64[0] = v47;
                    *v46 = v50;
                    *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004CLL, v48 | 0x8000000000000000, v64);
                    _os_log_impl(&dword_1C1358000, v44, v45, "%s", v46, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v47);
                    MEMORY[0x1C6902A30](v47, -1, -1);
                    MEMORY[0x1C6902A30](v46, -1, -1);
                  }

                  (*v53)(v43, v55);
                }

                goto LABEL_29;
              }

              v39 = v67;
              v38 = v68;
              __swift_project_boxed_opaque_existential_1(&v65, v67);
              (*(v38 + 8))(v39, v38);
              String.utf8CString.getter();

              String.utf8CString.getter();
              REStateMachineAssetCommandAddParameterString();

              v16 = v52;
            }
          }

LABEL_28:

LABEL_29:
          __swift_destroy_boxed_opaque_existential_1(&v65);
          v29 += 40;
          --v28;
        }

        while (v28);
      }

      REStateMachineAssetStateAddCommand();
    }

    else
    {
      *&v65 = 0;
      *(&v65 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      *&v65 = 0xD000000000000021;
      *(&v65 + 1) = v51;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      swift_getDynamicType();
      v19 = _typeName(_:qualified:)();
      MEMORY[0x1C68F3410](v19);

      v20 = v65;
      Logger.init(subsystem:category:)();

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *&v65 = v24;
        *v23 = v50;
        *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, *(&v20 + 1), &v65);
        _os_log_impl(&dword_1C1358000, v21, v22, "%s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x1C6902A30](v24, -1, -1);
        MEMORY[0x1C6902A30](v23, -1, -1);
      }

      (*v53)(v16, v55);
    }

    ++v17;
    result = __swift_destroy_boxed_opaque_existential_1(v69);
    if (v17 == v58)
    {
      return v60;
    }
  }

  __break(1u);
  return result;
}

uint64_t static StateMachineGraphCreator.createCoreAsset(from:)(uint64_t *a1)
{
  v1 = a1[3];
  v48 = a1[2];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say17RealityFoundation22StateMachineTransitionVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v3 = *(v1 + 16);
  if (!v3)
  {
LABEL_25:
    REStateMachineAssetStateGraphCreate();
    v32 = *(v48 + 16);
    if (v32)
    {
      v33 = (v48 + 56);
      v34 = MEMORY[0x1E69E7CC0];
      do
      {
        v37 = *(v33 - 3);
        v36 = *(v33 - 2);
        v38 = *(v33 - 1);
        v39 = *v33;
        *&v50 = v37;
        *(&v50 + 1) = v36;
        *&v51 = v38;
        *(&v51 + 1) = v39;
        v40 = v2[2];

        if (v40 && (v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v36), (v42 & 1) != 0))
        {
          v35 = *(v2[7] + 8 * v41);
        }

        else
        {
          v35 = v34;
        }

        static StateMachineGraphCreator.createCoreState(from:outgoingTransitions:)(&v50, v35);

        REStateMachineAssetStateGraphAddState();
        v33 += 4;
        --v32;
      }

      while (v32);
    }

    v43 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v43 + 120, &v50);
    v44 = *(&v51 + 1);
    v45 = v52;
    __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
    (*(v45 + 32))(v44, v45);
    __swift_destroy_boxed_opaque_existential_1(&v50);
    String.utf8CString.getter();
    v46 = REStateMachineAssetSingleGraphCreate();

    return v46;
  }

  v4 = v1 + 32;
  while (1)
  {
    v6 = *(v4 + 32);
    v5 = *(v4 + 48);
    v7 = *(v4 + 16);
    v54 = *(v4 + 64);
    v52 = v6;
    v53 = v5;
    v51 = v7;
    v50 = *v4;
    v8 = v7;
    if (!v2[2])
    {
      outlined init with copy of StateMachineTransition(&v50, v49);
      v10 = MEMORY[0x1E69E7CC0];
      goto LABEL_9;
    }

    outlined init with copy of StateMachineTransition(&v50, v49);

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v8, *(&v8 + 1));
    v10 = MEMORY[0x1E69E7CC0];
    if (v11)
    {
      v10 = *(v2[7] + 8 * v9);
LABEL_9:
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation22StateMachineTransitionVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation22StateMachineTransitionVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v13 = v51;
    *(inited + 32) = v50;
    v14 = v54;
    v16 = v52;
    v15 = v53;
    *(inited + 48) = v13;
    *(inited + 64) = v16;
    *(inited + 80) = v15;
    *(inited + 96) = v14;
    v17 = *(v10 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v19 = *(v10 + 3) >> 1, v19 <= v17))
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v17 + 1, 1, v10);
      v19 = *(v10 + 3) >> 1;
    }

    if (v19 <= *(v10 + 2))
    {
      break;
    }

    swift_arrayInitWithCopy();

    ++*(v10 + 2);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v49[0] = v2;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v8, *(&v8 + 1));
    v23 = v2[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_34;
    }

    v26 = v21;
    if (v2[3] >= v25)
    {
      if (v20)
      {
        v2 = v49[0];
        if (v21)
        {
          goto LABEL_3;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v2 = v49[0];
        if (v26)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, v20);
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v8, *(&v8 + 1));
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_36;
      }

      v22 = v27;
      v2 = v49[0];
      if (v26)
      {
LABEL_3:
        *(v2[7] + 8 * v22) = v10;

        goto LABEL_4;
      }
    }

    v2[(v22 >> 6) + 8] |= 1 << v22;
    *(v2[6] + 16 * v22) = v8;
    *(v2[7] + 8 * v22) = v10;
    v29 = v2[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_35;
    }

    v2[2] = v31;
LABEL_4:
    v4 += 72;
    if (!--v3)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized static StateMachineGraphCreator.getCommandParameters(from:)(uint64_t a1)
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v40 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v3 = *(&outlined read-only object #0 of static StateMachineGraphCreator.getCommandParameters(from:) + v1 + 32);
    ParameterCount = REStateMachineAssetCommandGetParameterCount();
    if (ParameterCount < 0)
    {
      __break(1u);
    }

    v5 = ParameterCount;
    v31 = v1;
    if (ParameterCount)
    {
      break;
    }

LABEL_2:
    v1 = v31 + 1;
    if (v31 == 4)
    {
      return v2;
    }
  }

  v6 = 0;
  while (1)
  {
    REStateMachineAssetCommandGetParameterNameAtIndex();
    v8 = String.init(cString:)();
    v10 = v9;
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    if (v3 > 2)
    {
      break;
    }

    if (!v3)
    {
      String.utf8CString.getter();
      ParameterStringAsChars = REStateMachineAssetCommandGetParameterStringAsChars();

      if (ParameterStringAsChars)
      {
        v14 = String.init(cString:)();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0xE000000000000000;
      }

      outlined destroy of StateMachineCommandParameterProtocol?(&v37);
      *(&v38 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySSGMd, &_s17RealityFoundation28StateMachineCommandParameterVySSGMR);
      v39 = &protocol witness table for StateMachineCommandParameter<A>;
      v29 = swift_allocObject();
      *&v37 = v29;
      v29[4] = v14;
      v29[5] = v16;
      v29[2] = v8;
      v29[3] = v10;
      goto LABEL_20;
    }

    if (v3 == 1)
    {
      v36[0] = 0;
      String.utf8CString.getter();
      REStateMachineAssetCommandGetParameterInt();
      outlined destroy of StateMachineCommandParameterProtocol?(&v37);

      v11 = v36[0];
      *(&v38 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySiGMd, &_s17RealityFoundation28StateMachineCommandParameterVySiGMR);
      v39 = &protocol witness table for StateMachineCommandParameter<A>;
      *&v38 = v11;
    }

    else
    {
      LODWORD(v36[0]) = 0;
      String.utf8CString.getter();
      REStateMachineAssetCommandGetParameterFloat();
      outlined destroy of StateMachineCommandParameterProtocol?(&v37);

      v17 = v36[0];
      *(&v38 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySfGMd, &_s17RealityFoundation28StateMachineCommandParameterVySfGMR);
      v39 = &protocol witness table for StateMachineCommandParameter<A>;
      LODWORD(v38) = v17;
    }

LABEL_19:
    *&v37 = v8;
    *(&v37 + 1) = v10;
LABEL_20:
    outlined init with copy of StateMachineCommandParameterProtocol?(&v37, &v33);
    if (v34)
    {
      outlined init with take of ForceEffectBase(&v33, v36);
      outlined init with copy of __REAssetService(v36, &v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
        v32 = v2;
      }

      v21 = v2[2];
      v20 = v2[3];
      if (v21 >= v20 >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v2);
        v32 = v2;
      }

      __swift_destroy_boxed_opaque_existential_1(v36);
      v22 = v34;
      v23 = v35;
      v24 = __swift_mutable_project_boxed_opaque_existential_1(&v33, v34);
      v25 = MEMORY[0x1EEE9AC00](v24);
      v27 = &v31 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v27, v25);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v21, v27, &v32, v22, v23);
      __swift_destroy_boxed_opaque_existential_1(&v33);
      v7 = &v37;
    }

    else
    {
      outlined destroy of StateMachineCommandParameterProtocol?(&v37);
      v7 = &v33;
    }

    outlined destroy of StateMachineCommandParameterProtocol?(v7);
    if (v5 == ++v6)
    {
      goto LABEL_2;
    }
  }

  if (v3 == 3)
  {
    v36[0] = 0;
    String.utf8CString.getter();
    REStateMachineAssetCommandGetParameterDouble();
    outlined destroy of StateMachineCommandParameterProtocol?(&v37);

    v12 = v36[0];
    *(&v38 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySdGMd, &_s17RealityFoundation28StateMachineCommandParameterVySdGMR);
    v39 = &protocol witness table for StateMachineCommandParameter<A>;
    *&v38 = v12;
    goto LABEL_19;
  }

  if (v3 == 4)
  {
    LOBYTE(v36[0]) = 0;
    String.utf8CString.getter();
    REStateMachineAssetCommandGetParameterBool();
    outlined destroy of StateMachineCommandParameterProtocol?(&v37);

    v18 = v36[0];
    *(&v38 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySbGMd, &_s17RealityFoundation28StateMachineCommandParameterVySbGMR);
    v39 = &protocol witness table for StateMachineCommandParameter<A>;
    LOBYTE(v38) = v18;
    goto LABEL_19;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t specialized static StateMachineGraphCreator.commandTypeName(of:)(uint64_t a1)
{
  outlined init with copy of __REAssetService(a1, &v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19StateMachineCommand_pMd, &_s17RealityFoundation19StateMachineCommand_pMR);
  if (swift_dynamicCast())
  {
    v2 = 0x6F6974616D696E41;
    outlined consume of BindTarget?(v4[0], v4[1], v5);
  }

  else
  {
    outlined init with copy of __REAssetService(a1, v4);
    if (swift_dynamicCast())
    {
      v2 = 0x6F6974616D696E41;
      outlined consume of BindTarget?(v6, v7, v8);
    }

    else
    {
      outlined init with copy of __REAssetService(a1, v4);
      if (swift_dynamicCast())
      {
        v2 = 0xD000000000000010;
        outlined consume of BindTarget?(v6, v7, v8);
      }

      else
      {
        outlined init with copy of __REAssetService(a1, v4);
        if (swift_dynamicCast())
        {
          outlined consume of BindTarget?(v6, v7, v8);
          return 0xD000000000000018;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return v2;
}

uint64_t specialized static StateMachineGraphCreator.createCoreCondition(from:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (!*(v4 + 16))
  {

    v9 = 0xD000000000000027;
    v10 = 0x80000001C18ED420;
    goto LABEL_6;
  }

  outlined init with copy of __REAssetService(v4 + 32, v13);

  v5 = v14;
  v6 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v6 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v13);
  outlined init with copy of __REAssetService(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation29StateMachineConditionProtocol_pMd, &_s17RealityFoundation29StateMachineConditionProtocol_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineConditionVySiGMd, &_s17RealityFoundation21StateMachineConditionVySiGMR);
  if (!swift_dynamicCast())
  {
    outlined init with copy of __REAssetService(a1, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineConditionVySfGMd, &_s17RealityFoundation21StateMachineConditionVySfGMR);
    if (swift_dynamicCast())
    {
      String.utf8CString.getter();

      v12 = REStateMachineAssetFloatConditionCreate();
LABEL_11:
      v8 = v12;

      goto LABEL_12;
    }

    outlined init with copy of __REAssetService(a1, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineConditionVySbGMd, &_s17RealityFoundation21StateMachineConditionVySbGMR);
    if (swift_dynamicCast())
    {
      String.utf8CString.getter();

      v12 = REStateMachineAssetBoolConditionCreate();
      goto LABEL_11;
    }

    outlined init with copy of __REAssetService(a1, v13);
    if (swift_dynamicCast())
    {

      String.utf8CString.getter();

      v7 = REStateMachineAssetTriggerConditionCreate();
      goto LABEL_4;
    }

    v10 = 0x80000001C18ED400;
    v9 = 0xD00000000000001DLL;
LABEL_6:
    specialized static StateMachineUtils.logError(_:)(v9, v10);
    return 0;
  }

  String.utf8CString.getter();

  v7 = REStateMachineAssetIntConditionCreate();
LABEL_4:
  v8 = v7;
LABEL_12:

  return v8;
}

uint64_t outlined init with copy of StateMachineCommandParameterProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation36StateMachineCommandParameterProtocol_pSgMd, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of StateMachineCommandParameterProtocol?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation36StateMachineCommandParameterProtocol_pSgMd, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double outlined consume of StateMachineCommandParameter<String>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.subscript.getter();
}

uint64_t static Entity.loadAnchorAsync(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v63 = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = [objc_opt_self() mainBundle];
  }

  v10 = a3;
  v11 = specialized static __ServiceLocator.shared.getter();
  v12 = *(*(v11 + 168) + 16);
  swift_beginAccess();
  v13 = *(v11 + 24);
  swift_unownedRetainStrong();
  v14 = *(v13 + 32);

  v15 = v12;
  v16 = v14;

  v17 = *(*(v11 + 168) + 32);
  *v8 = v16;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v18 = v16;

  v19 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v19)
  {
    v61 = v18;
    type metadata accessor for LoadRequestDependencies();
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E7CC0];
    *(v20 + 16) = MEMORY[0x1E69E7CC0];
    v22 = (v20 + 16);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    v64 = v20;
    *(v20 + 24) = v23;
    v19 = 1;
    swift_beginAccess();
    *v22 = v21;
    if (one-time initialization token for asynchronousLoadOptions == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v24 = static Entity.asynchronousLoadOptions;
  swift_beginAccess();
  v25 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA06AnchorC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA06AnchorC0CGMR);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = v63;
  *(v26 + 16) = v63;
  *(v26 + 24) = a2;
  *(v26 + 32) = v24;
  *(v26 + 33) = v25;
  *(v26 + 34) = v19;
  *(v26 + 36) = 4;
  swift_weakAssign();
  swift_beginAccess();
  outlined init with copy of [String : String](v11 + 176, &v65, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  if (!v66)
  {

    outlined destroy of BodyTrackingComponent?(&v65, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
LABEL_11:
    v59 = v9;
    v40 = swift_allocObject();
    *(v40 + 16) = v24;
    v41 = v63;
    *(v40 + 24) = v17;
    *(v40 + 32) = v41;
    *(v40 + 40) = a2;
    *(v40 + 48) = v9;
    v42 = v61;
    v43 = v62;
    *(v40 + 56) = v61;
    *(v40 + 64) = v43;
    *(v40 + 72) = v26;
    *(v40 + 80) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMd, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMR);
    v44 = swift_allocObject();
    v63 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMR);
    v45 = swift_allocObject();
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v45 + 16) = v46;
    *(v45 + 24) = 0;
    *(v45 + 32) = -1;
    *(v44 + 16) = v45;
    v47 = swift_allocObject();
    v47[2] = partial apply for closure #2 in static Entity.loadAnchorAsync(named:in:);
    v47[3] = v40;
    v48 = v64;
    v47[4] = v45;
    v47[5] = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMR);
    swift_allocObject();
    v49 = v15;
    v50 = v42;

    v51 = v59;

    v52 = Future.init(_:)();

    v33 = v63;

    *(v33 + 24) = v52;

    return v33;
  }

  v55 = v24;
  v56 = v11;
  v57 = v15;
  v58 = v17;
  outlined init with take of ForceEffectBase(&v65, v67);
  v28 = v68;
  v29 = v69;
  __swift_project_boxed_opaque_existential_1(v67, v68);
  v30 = *(v29 + 16);

  if ((v30(v27, a2, v9, v28, v29) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v67);
    v17 = v58;
    v15 = v57;
    LOBYTE(v24) = v55;
    goto LABEL_11;
  }

  outlined init with copy of __REAssetService(v67, &v65);
  v31 = swift_allocObject();
  v31[2] = v27;
  v31[3] = a2;
  v32 = v62;
  v31[4] = v9;
  v31[5] = v32;
  v31[6] = v26;
  outlined init with take of ForceEffectBase(&v65, (v31 + 7));
  v31[12] = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMd, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMR);
  v33 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMR);
  v34 = swift_allocObject();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v34 + 16) = v35;
  *(v34 + 24) = 0;
  *(v34 + 32) = -1;
  *(v33 + 16) = v34;
  v36 = swift_allocObject();
  v36[2] = partial apply for closure #1 in static Entity.loadAnchorAsync(named:in:);
  v36[3] = v31;
  v37 = v64;
  v36[4] = v34;
  v36[5] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMR);
  swift_allocObject();

  v38 = v9;

  v39 = Future.init(_:)();

  *(v33 + 24) = v39;

  __swift_destroy_boxed_opaque_existential_1(v67);
  return v33;
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5(uint64_t a1)
{
  v1[5] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD12AnchorEntityCGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD12AnchorEntityCGGMR);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF12AnchorEntityCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF12AnchorEntityCG_GMR);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v5;
  v1[15] = v4;

  return MEMORY[0x1EEE6DFA0](_s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TY0_, v5, v4);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TY0_()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v0[2] = v0[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMd, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMR);
  v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<AnchorEntity> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMd, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMR, protocol conformance descriptor for LoadRequest<A>);
  MEMORY[0x1C68F2ED0](v4, v5);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[16] = static MainActor.shared.getter();
  v6 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type AsyncThrowingPublisher<LoadRequest<AnchorEntity>>.Iterator and conformance AsyncThrowingPublisher<A>.Iterator, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF12AnchorEntityCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF12AnchorEntityCG_GMR, MEMORY[0x1E695BFC8]);
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TQ1_;
  v8 = v0[9];

  return MEMORY[0x1EEE6D8C8](v0 + 3, v8, v6);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TQ1_()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TY4_;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TY2_;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TY2_()
{

  v0[19] = v0[3];
  v1 = v0[14];
  v2 = v0[15];

  return MEMORY[0x1EEE6DFA0](_s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TY3_, v1, v2);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TY4_()
{
  v0[4] = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();

  v1 = v0[14];
  v2 = v0[15];

  return MEMORY[0x1EEE6DFA0](_s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TY5_, v1, v2);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5(uint64_t a1)
{
  v1[5] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD17BodyTrackedEntityCGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD17BodyTrackedEntityCGGMR);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF17BodyTrackedEntityCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF17BodyTrackedEntityCG_GMR);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v5;
  v1[15] = v4;

  return MEMORY[0x1EEE6DFA0](_s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5TY0_, v5, v4);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5TY0_()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v0[2] = v0[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMd, &_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMR);
  v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<BodyTrackedEntity> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMd, &_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMR, protocol conformance descriptor for LoadRequest<A>);
  MEMORY[0x1C68F2ED0](v4, v5);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[16] = static MainActor.shared.getter();
  v6 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type AsyncThrowingPublisher<LoadRequest<BodyTrackedEntity>>.Iterator and conformance AsyncThrowingPublisher<A>.Iterator, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF17BodyTrackedEntityCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF17BodyTrackedEntityCG_GMR, MEMORY[0x1E695BFC8]);
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5TQ1_;
  v8 = v0[9];

  return MEMORY[0x1EEE6D8C8](v0 + 3, v8, v6);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5TQ1_()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY4_;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5TY2_;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5TY2_()
{

  v0[19] = v0[3];
  v1 = v0[14];
  v2 = v0[15];

  return MEMORY[0x1EEE6DFA0](_s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5TY3_, v1, v2);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5TY3_()
{
  v1 = v0[19];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  (*(v3 + 8))(v2, v4);
  if (v1)
  {
    v5 = v0[19];

    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    type metadata accessor for CancellationError();
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(uint64_t a1)
{
  v1[5] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD6EntityCGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD6EntityCGGMR);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF6EntityCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF6EntityCG_GMR);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v5;
  v1[15] = v4;

  return MEMORY[0x1EEE6DFA0](_s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY0_, v5, v4);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY0_()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v0[2] = v0[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA6EntityCGMd, &_s10RealityKit11LoadRequestCyAA6EntityCGMR);
  v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<Entity> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA6EntityCGMd, &_s10RealityKit11LoadRequestCyAA6EntityCGMR, protocol conformance descriptor for LoadRequest<A>);
  MEMORY[0x1C68F2ED0](v4, v5);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[16] = static MainActor.shared.getter();
  v6 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type AsyncThrowingPublisher<LoadRequest<Entity>>.Iterator and conformance AsyncThrowingPublisher<A>.Iterator, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF6EntityCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF6EntityCG_GMR, MEMORY[0x1E695BFC8]);
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TQ1_;
  v8 = v0[9];

  return MEMORY[0x1EEE6D8C8](v0 + 3, v8, v6);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA05ModelC0C_Tt0g5(uint64_t a1)
{
  v1[5] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD11ModelEntityCGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD11ModelEntityCGGMR);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF11ModelEntityCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF11ModelEntityCG_GMR);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v5;
  v1[15] = v4;

  return MEMORY[0x1EEE6DFA0](_s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA05ModelC0C_Tt0g5TY0_, v5, v4);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA05ModelC0C_Tt0g5TY0_()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v0[2] = v0[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
  v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<ModelEntity> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR, protocol conformance descriptor for LoadRequest<A>);
  MEMORY[0x1C68F2ED0](v4, v5);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[16] = static MainActor.shared.getter();
  v6 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type AsyncThrowingPublisher<LoadRequest<ModelEntity>>.Iterator and conformance AsyncThrowingPublisher<A>.Iterator, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF11ModelEntityCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF11ModelEntityCG_GMR, MEMORY[0x1E695BFC8]);
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TQ1_;
  v8 = v0[9];

  return MEMORY[0x1EEE6D8C8](v0 + 3, v8, v6);
}

uint64_t static Entity.loadAnchorAsync(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v3 = static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:)(a1, a2, a3, v5);
  outlined destroy of BodyTrackingComponent?(v5, &_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
  return v3;
}

uint64_t static Entity.loadAnchorAsync(from:named:options:asyncOptions:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v59 = a3;
  v57 = a2;
  v61 = a1;
  Trace = type metadata accessor for LoadTrace(0);
  MEMORY[0x1EEE9AC00](Trace);
  v58 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for UUID();
  v10 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = *a6;
  v55 = a5;
  v53 = *(a5 + 48);
  v17 = specialized static __ServiceLocator.shared.getter();
  v18 = *(*(v17 + 168) + 16);
  swift_beginAccess();
  v19 = *(v17 + 24);
  swift_unownedRetainStrong();
  v20 = *(v19 + 32);
  v60 = v17;

  v21 = v18;
  v22 = v20;

  *v16 = v22;
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v23 = v22;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v16, v13);
  if (v19)
  {
    *&v62[0] = 0;
    *(&v62[0] + 1) = 0xE000000000000000;
    if (a4)
    {
      v25 = v59;
    }

    else
    {
      v25 = 0x64656D616E6E75;
    }

    if (a4)
    {
      v26 = a4;
    }

    else
    {
      v26 = 0xE700000000000000;
    }

    v48[1] = a4;

    MEMORY[0x1C68F3410](v25, v26);

    MEMORY[0x1C68F3410](45, 0xE100000000000000);
    UUID.init()();
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v27 = v51;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v28);

    (*(v10 + 8))(v12, v27);
    v29 = v62[0];
    v51 = *(*(v60 + 168) + 24);
    v49 = swift_allocBox();
    v31 = v30;
    v50 = v30;

    LoadTracer.beginLoad(loadType:logMsgTarget:)(2u, v29, *(&v29 + 1), v31);
    type metadata accessor for LoadRequestDependencies();
    v32 = swift_allocObject();
    Trace = v23;
    v33 = MEMORY[0x1E69E7CC0];
    *(v32 + 16) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v32 + 24) = v34;
    swift_beginAccess();
    *(v32 + 16) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA06AnchorC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA06AnchorC0CGMR);
    v35 = swift_allocObject();
    swift_weakInit();
    *(v35 + 16) = v29;
    LOBYTE(v33) = v54;
    *(v35 + 32) = v54;
    *(v35 + 33) = v53;
    *(v35 + 34) = 1;
    *(v35 + 36) = 4;
    swift_weakAssign();
    outlined init with copy of Entity.__LoadOptions(v55, v62);
    v36 = swift_allocObject();
    v37 = v56;
    *(v36 + 16) = v21;
    *(v36 + 24) = v37;
    v56 = v21;
    v38 = v57;
    *(v36 + 32) = v61;
    *(v36 + 40) = v38;
    *(v36 + 48) = v59;
    *(v36 + 56) = a4;
    *(v36 + 64) = v29;
    v39 = v62[3];
    *(v36 + 112) = v62[2];
    *(v36 + 128) = v39;
    *(v36 + 144) = v62[4];
    *(v36 + 160) = v63;
    v40 = v62[1];
    *(v36 + 80) = v62[0];
    *(v36 + 96) = v40;
    *(v36 + 168) = v33;
    *(v36 + 176) = v49;
    *(v36 + 184) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMd, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMR);
    v41 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMR);
    v42 = swift_allocObject();
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v42 + 16) = v43;
    *(v42 + 24) = 0;
    *(v42 + 32) = -1;
    *(v41 + 16) = v42;
    v44 = swift_allocObject();
    v44[2] = partial apply for closure #1 in static Entity.loadAnchorAsync(from:named:options:asyncOptions:);
    v44[3] = v36;
    v44[4] = v42;
    v44[5] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMR);
    swift_allocObject();
    v45 = v56;

    outlined copy of Data._Representation(v61, v38);

    *(v41 + 24) = Future.init(_:)();
    v46 = v50;
    swift_beginAccess();
    v47 = v58;
    outlined init with copy of LoadTrace(v46, v58, type metadata accessor for LoadTrace);
    specialized LoadTracer.subscribe<A>(to:with:)(v41, v47);

    outlined destroy of LoadTrace(v47, type metadata accessor for LoadTrace);

    return v41;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Entity.loadBodyTrackedAsync(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v50 = a3;
  }

  else
  {
    v50 = [objc_opt_self() mainBundle];
  }

  v11 = a3;
  v12 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v13 = *(v12 + 24);
  swift_unownedRetainStrong();
  v14 = *(v13 + 32);

  v15 = v14;

  *v10 = v15;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v51 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v17 = *(v8 + 8);
  v16 = v8 + 8;
  v17(v10, v7);
  if (v15)
  {
    type metadata accessor for LoadRequestDependencies();
    v3 = swift_allocObject();
    v18 = MEMORY[0x1E69E7CC0];
    *(v3 + 16) = MEMORY[0x1E69E7CC0];
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v3 + 24) = v19;
    swift_beginAccess();
    *(v3 + 16) = v18;
    if (one-time initialization token for asynchronousLoadOptions == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v20 = static Entity.asynchronousLoadOptions;
  swift_beginAccess();
  v21 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA011BodyTrackedC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA011BodyTrackedC0CGMR);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = a1;
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = v20;
  *(v22 + 33) = v21;
  *(v22 + 34) = 256;
  *(v22 + 36) = 3;
  swift_weakAssign();
  swift_beginAccess();
  outlined init with copy of [String : String](v12 + 176, &v52, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  v24 = v50;
  v25 = v51;
  if (v53)
  {
    v47 = v16;
    v48 = v12;
    outlined init with take of ForceEffectBase(&v52, v54);
    v27 = v55;
    v26 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    v28 = *(v26 + 16);

    v46 = v3;
    if (v28(v23, a2, v24, v27, v26))
    {
      outlined init with copy of __REAssetService(v54, &v52);
      v29 = swift_allocObject();
      v29[2] = v23;
      v29[3] = a2;
      v30 = v49;
      v29[4] = v24;
      v29[5] = v30;
      v29[6] = v22;
      outlined init with take of ForceEffectBase(&v52, (v29 + 7));
      v29[12] = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMd, &_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMR);
      v31 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17BodyTrackedEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17BodyTrackedEntityCs5Error_pGSgGMR);
      v32 = swift_allocObject();
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      *(v32 + 16) = v33;
      *(v32 + 24) = 0;
      *(v32 + 32) = -1;
      *(v31 + 16) = v32;
      v34 = swift_allocObject();
      v34[2] = partial apply for closure #1 in static Entity.loadBodyTrackedAsync(named:in:);
      v34[3] = v29;
      v35 = v46;
      v34[4] = v32;
      v34[5] = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit17BodyTrackedEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit17BodyTrackedEntityCs5Error_pGMR);
      swift_allocObject();

      v36 = v24;

      v37 = Future.init(_:)();

      *(v31 + 24) = v37;
      __swift_destroy_boxed_opaque_existential_1(v54);
      return v31;
    }

    __swift_destroy_boxed_opaque_existential_1(v54);
    v25 = v51;
    v3 = v46;
  }

  else
  {

    outlined destroy of BodyTrackingComponent?(&v52, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  }

  v39 = swift_allocObject();
  *(v39 + 16) = v23;
  *(v39 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMd, &_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMR);
  v40 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17BodyTrackedEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17BodyTrackedEntityCs5Error_pGSgGMR);
  v41 = swift_allocObject();
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v41 + 16) = v42;
  *(v41 + 24) = 0;
  *(v41 + 32) = -1;
  *(v40 + 16) = v41;
  v43 = swift_allocObject();
  v43[2] = partial apply for closure #2 in static Entity.loadBodyTrackedAsync(named:in:);
  v43[3] = v39;
  v43[4] = v41;
  v43[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit17BodyTrackedEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit17BodyTrackedEntityCs5Error_pGMR);
  swift_allocObject();

  v44 = Future.init(_:)();

  result = v40;
  *(v40 + 24) = v44;
  return result;
}

uint64_t static Entity.loadBodyTrackedAsync(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a2;
  v62 = a1;
  v60 = type metadata accessor for URL();
  v5 = *(v60 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v12 = *(v11 + 24);
  swift_unownedRetainStrong();
  v13 = *(v12 + 32);

  v14 = v13;

  *v10 = v14;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v14)
  {
    v57 = v6;
    v55 = v3;
    v59 = v15;
    type metadata accessor for LoadRequestDependencies();
    v10 = swift_allocObject();
    v16 = MEMORY[0x1E69E7CC0];
    v10[2] = MEMORY[0x1E69E7CC0];
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v10[3] = v17;
    swift_beginAccess();
    v10[2] = v16;
    if (one-time initialization token for asynchronousLoadOptions == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v18 = static Entity.asynchronousLoadOptions;
  v19 = v62;
  v20 = URL.absoluteString.getter();
  v22 = v21;
  swift_beginAccess();
  v23 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA011BodyTrackedC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA011BodyTrackedC0CGMR);
  v24 = swift_allocObject();
  swift_weakInit();
  *(v24 + 16) = v20;
  *(v24 + 24) = v22;
  *(v24 + 32) = v18;
  *(v24 + 33) = v23;
  *(v24 + 34) = 256;
  *(v24 + 36) = 3;
  swift_weakAssign();
  swift_beginAccess();
  outlined init with copy of [String : String](v11 + 176, &v63, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  if (!v64)
  {

    outlined destroy of BodyTrackingComponent?(&v63, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
    v29 = v10;
LABEL_8:
    v45 = v61;
    v46 = v60;
    (*(v5 + 16))(v61, v62, v60);
    v47 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v48 = swift_allocObject();
    (*(v5 + 32))(v48 + v47, v45, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMd, &_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMR);
    v39 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17BodyTrackedEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17BodyTrackedEntityCs5Error_pGSgGMR);
    v49 = swift_allocObject();
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    *(v49 + 16) = v50;
    *(v49 + 24) = 0;
    *(v49 + 32) = -1;
    *(v39 + 16) = v49;
    v51 = swift_allocObject();
    v51[2] = partial apply for closure #2 in static Entity.loadBodyTrackedAsync(contentsOf:withName:);
    v51[3] = v48;
    v51[4] = v49;
    v51[5] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit17BodyTrackedEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit17BodyTrackedEntityCs5Error_pGMR);
    swift_allocObject();

    v52 = Future.init(_:)();

    *(v39 + 24) = v52;
    return v39;
  }

  v54 = a3;
  outlined init with take of ForceEffectBase(&v63, v65);
  v25 = v66;
  v26 = v67;
  __swift_project_boxed_opaque_existential_1(v65, v66);
  v27 = *(v26 + 24);

  v28 = v27(v19, v25, v26);
  v29 = v10;
  if ((v28 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v65);
    goto LABEL_8;
  }

  v30 = v60;
  (*(v5 + 16))(v61, v19, v60);
  outlined init with copy of __REAssetService(v65, &v63);
  v31 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v32 = (v57 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v57 = v29;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v62 = v11;
  v36 = swift_allocObject();
  (*(v5 + 32))(v36 + v31, v61, v30);
  v37 = (v36 + v32);
  v38 = v54;
  *v37 = v56;
  v37[1] = v38;
  *(v36 + v33) = v55;
  *(v36 + v34) = v24;
  outlined init with take of ForceEffectBase(&v63, v36 + v35);
  *(v36 + ((v35 + 47) & 0xFFFFFFFFFFFFFFF8)) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMd, &_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMR);
  v39 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17BodyTrackedEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17BodyTrackedEntityCs5Error_pGSgGMR);
  v40 = swift_allocObject();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v40 + 16) = v41;
  *(v40 + 24) = 0;
  *(v40 + 32) = -1;
  *(v39 + 16) = v40;
  v42 = swift_allocObject();
  v42[2] = partial apply for closure #1 in static Entity.loadBodyTrackedAsync(contentsOf:withName:);
  v42[3] = v36;
  v43 = v57;
  v42[4] = v40;
  v42[5] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit17BodyTrackedEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit17BodyTrackedEntityCs5Error_pGMR);
  swift_allocObject();

  v44 = Future.init(_:)();

  *(v39 + 24) = v44;
  __swift_destroy_boxed_opaque_existential_1(v65);
  return v39;
}

uint64_t static Entity.loadBodyTrackedAsync(from:named:options:asyncOptions:)(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v43 = a3;
  v48 = a1;
  v49 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = *a6;
  v46 = a5;
  v44 = *(a5 + 48);
  v17 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v18 = *(v17 + 24);
  swift_unownedRetainStrong();
  v19 = *(v18 + 32);

  v20 = v19;

  *v16 = v20;
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v21 = v20;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v16, v13);
  if (v18)
  {
    *&v50[0] = 0;
    *(&v50[0] + 1) = 0xE000000000000000;
    if (a4)
    {
      v23 = v43;
    }

    else
    {
      v23 = 0x64656D616E6E75;
    }

    v43 = v21;
    if (a4)
    {
      v24 = a4;
    }

    else
    {
      v24 = 0xE700000000000000;
    }

    MEMORY[0x1C68F3410](v23, v24);

    MEMORY[0x1C68F3410](45, 0xE100000000000000);
    UUID.init()();
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v25);

    (*(v10 + 8))(v12, v9);
    v26 = v50[0];
    type metadata accessor for LoadRequestDependencies();
    v27 = swift_allocObject();
    v28 = MEMORY[0x1E69E7CC0];
    *(v27 + 16) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v27 + 24) = v29;
    swift_beginAccess();
    *(v27 + 16) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA011BodyTrackedC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA011BodyTrackedC0CGMR);
    v30 = swift_allocObject();
    swift_weakInit();
    *(v30 + 16) = v26;
    *(v30 + 32) = v45;
    *(v30 + 33) = v44;
    *(v30 + 34) = 256;
    *(v30 + 36) = 3;
    swift_weakAssign();
    outlined init with copy of Entity.__LoadOptions(v46, v50);
    v31 = swift_allocObject();
    v32 = v50[3];
    *(v31 + 88) = v50[2];
    *(v31 + 104) = v32;
    *(v31 + 120) = v50[4];
    v33 = v50[1];
    *(v31 + 56) = v50[0];
    v34 = v47;
    v47 = v17;
    v35 = v48;
    v36 = v49;
    *(v31 + 16) = v34;
    *(v31 + 24) = v35;
    *(v31 + 32) = v36;
    *(v31 + 40) = v26;
    v37 = v51;
    *(v31 + 72) = v33;
    *(v31 + 136) = v37;
    *(v31 + 144) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMd, &_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMR);
    v38 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17BodyTrackedEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17BodyTrackedEntityCs5Error_pGSgGMR);
    v39 = swift_allocObject();
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    *(v39 + 16) = v40;
    *(v39 + 24) = 0;
    *(v39 + 32) = -1;
    *(v38 + 16) = v39;
    v41 = swift_allocObject();
    v41[2] = partial apply for closure #1 in static Entity.loadBodyTrackedAsync(from:named:options:asyncOptions:);
    v41[3] = v31;
    v41[4] = v39;
    v41[5] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit17BodyTrackedEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit17BodyTrackedEntityCs5Error_pGMR);
    swift_allocObject();

    outlined copy of Data._Representation(v35, v36);

    v42 = Future.init(_:)();

    *(v38 + 24) = v42;
    return v38;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Entity.loadModelAsync(from:named:options:asyncOptions:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v50 = a5;
  v48 = a3;
  v52 = a1;
  v53 = a2;
  Trace = type metadata accessor for LoadTrace(0);
  MEMORY[0x1EEE9AC00](Trace - 8);
  v55 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for UUID();
  v8 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = specialized static __ServiceLocator.shared.getter();
  v16 = *(*(v15 + 168) + 16);
  swift_beginAccess();
  v17 = *(v15 + 24);
  swift_unownedRetainStrong();
  v18 = *(v17 + 32);
  v54 = v15;

  v19 = v16;
  v20 = v18;

  *v14 = v20;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  v23 = *(v12 + 8);
  v22 = v12 + 8;
  v23(v14, v11);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_9;
  }

  v46 = v21;
  v47 = v19;
  *&v56[0] = 0;
  *(&v56[0] + 1) = 0xE000000000000000;
  if (a4)
  {
    v24 = v48;
  }

  else
  {
    v24 = 0x64656D616E6E75;
  }

  if (a4)
  {
    v25 = a4;
  }

  else
  {
    v25 = 0xE700000000000000;
  }

  MEMORY[0x1C68F3410](v24, v25);

  MEMORY[0x1C68F3410](45, 0xE100000000000000);
  UUID.init()();
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v26 = v49;
  v27 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v27);

  (*(v8 + 8))(v10, v26);
  v10 = *(&v56[0] + 1);
  v22 = *&v56[0];

  LODWORD(v8) = 2;
  LoadTracer.beginLoad(loadType:logMsgTarget:)(2u, v22, v10, v55);
  type metadata accessor for LoadRequestDependencies();
  v19 = swift_allocObject();
  v28 = MEMORY[0x1E69E7CC0];
  v19[2] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v19[3] = v29;
  swift_beginAccess();
  v19[2] = v28;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    goto LABEL_11;
  }

LABEL_9:
  v30 = static Entity.asynchronousLoadOptions;
  v31 = v50;
  v32 = *(v50 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA05ModelC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA05ModelC0CGMR);
  v33 = swift_allocObject();
  swift_weakInit();
  *(v33 + 16) = v22;
  *(v33 + 24) = v10;
  *(v33 + 32) = v30;
  *(v33 + 33) = v32;
  *(v33 + 34) = 256;
  *(v33 + 36) = v8;
  swift_weakAssign();
  outlined init with copy of Entity.__LoadOptions(v31, v56);
  v34 = swift_allocObject();
  v35 = v56[3];
  *(v34 + 88) = v56[2];
  *(v34 + 104) = v35;
  *(v34 + 120) = v56[4];
  v36 = v56[1];
  *(v34 + 56) = v56[0];
  v38 = v52;
  v37 = v53;
  *(v34 + 16) = v51;
  *(v34 + 24) = v38;
  *(v34 + 32) = v37;
  *(v34 + 40) = v22;
  *(v34 + 48) = v10;
  v39 = v57;
  *(v34 + 72) = v36;
  *(v34 + 136) = v39;
  *(v34 + 144) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
  v40 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit11ModelEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit11ModelEntityCs5Error_pGSgGMR);
  v41 = swift_allocObject();
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v41 + 16) = v42;
  *(v41 + 24) = 0;
  *(v41 + 32) = -1;
  *(v40 + 16) = v41;
  v43 = swift_allocObject();
  v43[2] = partial apply for closure #1 in static Entity.loadModelAsync(from:named:options:asyncOptions:);
  v43[3] = v34;
  v43[4] = v41;
  v43[5] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit11ModelEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit11ModelEntityCs5Error_pGMR);
  swift_allocObject();

  outlined copy of Data._Representation(v38, v37);

  *(v40 + 24) = Future.init(_:)();
  v44 = v55;
  specialized LoadTracer.subscribe<A>(to:with:)(v40, v55);

  outlined destroy of LoadTrace(v44, type metadata accessor for LoadTrace);
  return v40;
}

uint64_t specialized LoadTracer.subscribe<A>(to:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation9LoadTraceVSgMd, &_s17RealityFoundation9LoadTraceVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v28 = &v23 - v7;
  Trace = type metadata accessor for LoadTrace(0);
  v26 = *(Trace - 8);
  v9 = v26;
  v27 = Trace;
  v10 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](Trace);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocBox();
  v23 = a2;
  v24 = v12;
  v14 = v13;
  outlined init with copy of LoadTrace(a2, v13, type metadata accessor for LoadTrace);
  v29[0] = a1;
  v25 = type metadata accessor for LoadTrace;
  outlined init with copy of LoadTrace(a2, v11, type metadata accessor for LoadTrace);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  outlined init with take of RealityFileLoadInformation(v11, v17 + v15, type metadata accessor for LoadTrace);
  *(v17 + v16) = v3;
  outlined init with copy of LoadTrace(v23, v11, type metadata accessor for LoadTrace);
  v18 = swift_allocObject();
  outlined init with take of RealityFileLoadInformation(v11, v18 + v15, type metadata accessor for LoadTrace);
  *(v18 + v16) = v3;
  *(v18 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMd, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<AnchorEntity> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMd, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMR, protocol conformance descriptor for LoadRequest<A>);
  v19 = Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  *(v14 + 1) = v19;

  v20 = *v14;
  v21 = v28;
  outlined init with copy of LoadTrace(v14, v28, v25);
  (*(v26 + 56))(v21, 0, 1, v27);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v21, v20);
  swift_endAccess();
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation9LoadTraceVSgMd, &_s17RealityFoundation9LoadTraceVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v28 = &v23 - v7;
  Trace = type metadata accessor for LoadTrace(0);
  v26 = *(Trace - 8);
  v9 = v26;
  v27 = Trace;
  v10 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](Trace);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocBox();
  v23 = a2;
  v24 = v12;
  v14 = v13;
  outlined init with copy of LoadTrace(a2, v13, type metadata accessor for LoadTrace);
  v29[0] = a1;
  v25 = type metadata accessor for LoadTrace;
  outlined init with copy of LoadTrace(a2, v11, type metadata accessor for LoadTrace);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  outlined init with take of RealityFileLoadInformation(v11, v17 + v15, type metadata accessor for LoadTrace);
  *(v17 + v16) = v3;
  outlined init with copy of LoadTrace(v23, v11, type metadata accessor for LoadTrace);
  v18 = swift_allocObject();
  outlined init with take of RealityFileLoadInformation(v11, v18 + v15, type metadata accessor for LoadTrace);
  *(v18 + v16) = v3;
  *(v18 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA6EntityCGMd, &_s10RealityKit11LoadRequestCyAA6EntityCGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<Entity> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA6EntityCGMd, &_s10RealityKit11LoadRequestCyAA6EntityCGMR, protocol conformance descriptor for LoadRequest<A>);
  v19 = Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  *(v14 + 1) = v19;

  v20 = *v14;
  v21 = v28;
  outlined init with copy of LoadTrace(v14, v28, v25);
  (*(v26 + 56))(v21, 0, 1, v27);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v21, v20);
  swift_endAccess();
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation9LoadTraceVSgMd, &_s17RealityFoundation9LoadTraceVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v28 = &v23 - v7;
  Trace = type metadata accessor for LoadTrace(0);
  v26 = *(Trace - 8);
  v9 = v26;
  v27 = Trace;
  v10 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](Trace);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocBox();
  v23 = a2;
  v24 = v12;
  v14 = v13;
  outlined init with copy of LoadTrace(a2, v13, type metadata accessor for LoadTrace);
  v29[0] = a1;
  v25 = type metadata accessor for LoadTrace;
  outlined init with copy of LoadTrace(a2, v11, type metadata accessor for LoadTrace);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  outlined init with take of RealityFileLoadInformation(v11, v17 + v15, type metadata accessor for LoadTrace);
  *(v17 + v16) = v3;
  outlined init with copy of LoadTrace(v23, v11, type metadata accessor for LoadTrace);
  v18 = swift_allocObject();
  outlined init with take of RealityFileLoadInformation(v11, v18 + v15, type metadata accessor for LoadTrace);
  *(v18 + v16) = v3;
  *(v18 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<ModelEntity> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR, protocol conformance descriptor for LoadRequest<A>);
  v19 = Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  *(v14 + 1) = v19;

  v20 = *v14;
  v21 = v28;
  outlined init with copy of LoadTrace(v14, v28, v25);
  (*(v26 + 56))(v21, 0, 1, v27);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v21, v20);
  swift_endAccess();
}

uint64_t specialized closure #2 in LoadTracer.subscribe<A>(to:with:)(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation9LoadTraceVSgMd, &_s17RealityFoundation9LoadTraceVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5 + 40;
  type metadata accessor for LoadTrace(0);
  v7 = swift_projectBox();
  RECreateLoadTraceTypeBitFieldSignpostArg();
  REEntityGetLocalId();
  RESignpostEmitREAssetEntityLoadEndedImpulse();
  v8 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v8 + 120, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16__REAssetService_pMd, &_s10RealityKit16__REAssetService_pMR);
  type metadata accessor for __REAssetManager();
  if (swift_dynamicCast())
  {
    if (_REAssetManagerIsFullLoadTracingEnabled())
    {
      REEntityAddLoadTraceComponent();
    }
  }

  swift_beginAccess();
  v9 = *v7;
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(v9, v6);
  swift_endAccess();
  return outlined destroy of BodyTrackingComponent?(v6, &_s17RealityFoundation9LoadTraceVSgMd, &_s17RealityFoundation9LoadTraceVSgMR);
}

uint64_t Entity.init(contentsOf:withName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  v5[34] = type metadata accessor for MainActor();
  v5[35] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[36] = v7;
  v5[37] = v6;

  return MEMORY[0x1EEE6DFA0](Entity.init(contentsOf:withName:options:), v7, v6);
}

uint64_t Entity.init(contentsOf:withName:options:)()
{
  outlined init with copy of [String : String](*(v0 + 256), v0 + 104, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  if (*(v0 + 128) == 1)
  {
    *(v0 + 192) = 0u;
    *(v0 + 224) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 80) = 1;
    *(v0 + 84) = 0;
    *(v0 + 88) = 2;
    *(v0 + 96) = 0;
    outlined assign with take of __DownsamplingStrategy?(v0 + 192, v0 + 16);
    *(v0 + 56) = 0;
    if (*(v0 + 128) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v0 + 104, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    }
  }

  else
  {
    v1 = *(v0 + 152);
    *(v0 + 48) = *(v0 + 136);
    *(v0 + 64) = v1;
    *(v0 + 80) = *(v0 + 168);
    *(v0 + 96) = *(v0 + 184);
    v2 = *(v0 + 120);
    *(v0 + 16) = *(v0 + 104);
    *(v0 + 32) = v2;
  }

  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 264);
  *(v0 + 392) = static Entity.asynchronousLoadOptions;
  v9 = (*(v3 + 272) + **(v3 + 272));
  v4 = swift_task_alloc();
  *(v0 + 304) = v4;
  *v4 = v0;
  v4[1] = Entity.init(contentsOf:withName:options:);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  v7 = *(v0 + 232);

  return v9(v7, v5, v6, v0 + 16, v0 + 392);
}

{
  v0[41] = (*(v0[33] + 232))();

  Entity.copy(to:recursive:)(v1, 1);
  v0[42] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[43] = v3;
  v0[44] = v2;

  return MEMORY[0x1EEE6DFA0](Entity.init(contentsOf:withName:options:), v3, v2);
}

{
  v1 = static Entity.enumerateReferences(root:)(v0[41]);
  v0[45] = v1;
  v0[46] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v0[47] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[48] = v3;
  *v3 = v0;
  v3[1] = Entity.init(contentsOf:withName:options:);

  return MEMORY[0x1EEE6DD58]();
}

{

  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return MEMORY[0x1EEE6DFA0](Entity.init(contentsOf:withName:options:), v1, v2);
}

{

  if (v0[12])
  {
    Entity.LoadStatistics.log()();
  }

  v1 = v0[32];
  v2 = v0[29];

  outlined destroy of BodyTrackingComponent?(v1, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v2, v3);
  outlined destroy of Entity.__LoadOptions((v0 + 2));

  v4 = v0[1];
  v5 = v0[41];

  return v4(v5);
}

{
  v1 = v0[32];
  v2 = v0[29];

  outlined destroy of BodyTrackingComponent?(v1, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v2, v3);
  outlined destroy of Entity.__LoadOptions((v0 + 2));
  v4 = v0[1];

  return v4();
}

uint64_t Entity.init(contentsOf:withName:options:)(uint64_t a1)
{
  v3 = *v2;
  v3[39] = a1;
  v3[40] = v1;

  v4 = v3[36];
  v5 = v3[37];
  if (v1)
  {
    v6 = Entity.init(contentsOf:withName:options:);
  }

  else
  {
    v6 = Entity.init(contentsOf:withName:options:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

void Entity.init(contentsOf:withName:options:)()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 344);
    v4 = *(v2 + 352);

    MEMORY[0x1EEE6DFA0](Entity.init(contentsOf:withName:options:), v3, v4);
  }
}

uint64_t Entity.init(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[34] = a3;
  v4[35] = v3;
  v4[32] = a1;
  v4[33] = a2;
  v5 = type metadata accessor for URL();
  v4[36] = v5;
  v4[37] = *(v5 - 8);
  v4[38] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[39] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[40] = v7;
  v4[41] = v6;

  return MEMORY[0x1EEE6DFA0](Entity.init(contentsOf:withName:), v7, v6);
}

uint64_t Entity.init(contentsOf:withName:)()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 256);
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 65) = 0;
  *(v0 + 72) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 80) = 1;
  *(v0 + 84) = 0;
  *(v0 + 88) = 2;
  outlined assign with take of __DownsamplingStrategy?(v0 + 192, v0 + 16);
  *(v0 + 56) = 0;
  swift_beginAccess();
  *(v0 + 64) = static RKARSystemCore.generateDecimatedMeshes;
  type metadata accessor for Entity.LoadStatistics(0);
  v5 = swift_allocObject();
  Date.init()();
  v6 = v5 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
  *v6 = 0;
  *(v6 + 8) = 2;
  *(v5 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_loadRequestStats) = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_async) = 1;
  v7 = (v5 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
  *v7 = 0xD000000000000027;
  v7[1] = 0x80000001C18ED610;
  *(v0 + 96) = v5;
  (*(v2 + 16))(v1, v4, v3);
  outlined init with copy of Entity.__LoadOptions(v0 + 16, v0 + 104);
  v8 = swift_task_alloc();
  *(v0 + 336) = v8;
  *v8 = v0;
  v8[1] = Entity.init(contentsOf:withName:);
  v9 = *(v0 + 304);
  v10 = *(v0 + 272);
  v11 = *(v0 + 264);

  return Entity.init(contentsOf:withName:options:)(v9, v11, v10, v0 + 104);
}

{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[32];

  (*(v2 + 8))(v3, v1);
  outlined destroy of Entity.__LoadOptions((v0 + 2));

  v4 = v0[1];
  v5 = v0[44];

  return v4(v5);
}

{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[32];

  (*(v2 + 8))(v3, v1);
  outlined destroy of Entity.__LoadOptions((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t Entity.init(contentsOf:withName:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v5 = v4[40];
    v6 = v4[41];
    v7 = Entity.init(contentsOf:withName:);
  }

  else
  {
    v4[44] = a1;
    v5 = v4[40];
    v6 = v4[41];
    v7 = Entity.init(contentsOf:withName:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

void static Entity.updateInteractions(root:)(uint64_t a1)
{
  v2 = swift_beginAccess();
  v3 = static Entity.__disableUpdateInteractionEntities;
  if (static Entity.__disableUpdateInteractionEntities)
  {
    v18 = a1;
    MEMORY[0x1EEE9AC00](v2);
    v17[2] = &v18;

    v4 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_Say10RealityKit6EntityCG_TG5TA_0, v17, v3);

    if (v4)
    {
      return;
    }
  }

  swift_beginAccess();
  if (static __RKEntityInteractionsComponent.registration && REEntityGetCustomComponent() && (Object = RECustomComponentGetObject()) != 0)
  {
    if (*(Object + 16))
    {
    }

    else
    {
      v6 = __RKEntityInteractionsComponent.decodedJSON()();
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v6 + 16);

  if (v7)
  {
    if (static __RKEntityInteractionsComponent.registration && REEntityGetCustomComponent() && (v8 = RECustomComponentGetObject()) != 0)
    {
      v9 = *(v8 + 16);
      if (v9)
      {
      }

      else
      {
        v9 = __RKEntityInteractionsComponent.decodedJSON()();
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    Entity.__interactions.setter(MEMORY[0x1E69E7CC0]);
    Entity.__interactions.setter(v9);
  }

  if (REEntityGetChildCount() < 1)
  {
LABEL_31:

    return;
  }

  v10 = 0;
  while (v10 < REEntityGetChildCount())
  {
    Child = REEntityGetChild();
    if (!Child)
    {
      goto LABEL_38;
    }

    v12 = Child;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v13 = swift_dynamicCastClassUnconditional();
LABEL_23:
      v14 = v13;
      goto LABEL_27;
    }

    if (REEntityIsBeingDestroyed())
    {
      goto LABEL_37;
    }

    specialized static Entity.entityInfoType(_:)(v12);
    if (!v15)
    {
      v13 = makeEntity(for:)(v12);
      goto LABEL_23;
    }

    v14 = (*(v15 + 232))();
    v16 = *(v14 + 16);

    MEMORY[0x1C68F9740](v16, 0);
    *(v14 + 16) = v12;
    MEMORY[0x1C68F9740](v12, v14);

LABEL_27:
    if (v10 >= REEntityGetChildCount())
    {
      goto LABEL_36;
    }

    ++v10;
    static Entity.updateInteractions(root:)(v14);

    if (v10 >= REEntityGetChildCount())
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

Swift::Void __swiftcall Entity.updateSceneGravityIfNeeded()()
{
  SceneNullable = REEntityGetSceneNullable();
  if (SceneNullable)
  {
    v1 = SceneNullable;
    v2 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v2)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v1);
    }

    swift_beginAccess();
    if (static __RKScenePhysics.registration)
    {
      RESceneGetComponentsOfCustomType();
      if (v3)
      {
        Object = RECustomComponentGetObject();
        if (Object)
        {
          v8 = *Object;
          if (RESceneGetECSManagerNullable())
          {
            ServiceLocator = REECSManagerGetServiceLocator();
            if (MEMORY[0x1C68FE290](ServiceLocator))
            {
              REPhysicsSimulationServiceGetDefaultGravity();
              if (*v6.i32 != *v8.i32 || (v7 = vceq_f32(*&vextq_s8(v6, v6, 4uLL), *&vextq_s8(v8, v8, 4uLL)), (v7.i32[0] & v7.i32[1] & 1) == 0))
              {
                REPhysicsSimulationServiceSetDefaultGravity();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t static RealityFileLoadInformationResolver.resolve(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v57[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57[-v9];
  specialized static RealityFileLoadInformationResolver.urlContainsPathExtension(_:_:)(a1, 0x7974696C616572, 0xE700000000000000);
  if ((v11 & 1) == 0)
  {
    Information = type metadata accessor for RealityFileLoadInformation(0);
    v22 = *(*(Information - 8) + 56);

    return v22(a2, 1, 1, Information);
  }

  v59 = a2;
  v12 = *(v5 + 16);
  v64 = v4;
  v12(v10, a1, v4);
  v13 = URL.absoluteString.getter();
  v15 = specialized BidirectionalCollection.last.getter(v13, v14);
  v17 = v16;

  if (!v17)
  {
    v20 = 1;
    goto LABEL_12;
  }

  if (v15 != 47 || v17 != 0xE100000000000000)
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v20 = v19 ^ 1;
LABEL_12:
    v58 = v20;
    goto LABEL_14;
  }

  v58 = 0;
LABEL_14:
  v61 = 0;
  v62 = 0;
  v24 = (v5 + 8);
  v60 = (v5 + 32);
  v25 = MEMORY[0x1E69E6158];
  v26 = v7;
  while (1)
  {
    specialized static RealityFileLoadInformationResolver.urlContainsPathExtension(_:_:)(v10, 0x7974696C616572, 0xE700000000000000);
    LODWORD(v63) = v27;
    v67 = URL.pathExtension.getter();
    v68 = v28;
    v65 = 0x7974696C616572;
    v66 = 0xE700000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v29 = v25;
    v30 = StringProtocol.caseInsensitiveCompare<A>(_:)();

    v31 = v10;
    URL.deletingLastPathComponent()();
    specialized static RealityFileLoadInformationResolver.urlContainsPathExtension(_:_:)(v26, 0x7974696C616572, 0xE700000000000000);
    v33 = v32;
    v34 = *v24;
    v35 = v26;
    (*v24)(v26, v64);
    if ((v63 & 1) == 0 || !((v30 != 0) | v33 & 1))
    {
      break;
    }

    v63 = v34;
    v67 = URL.lastPathComponent.getter();
    v68 = v36;
    v25 = v29;
    v37 = StringProtocol.removingPercentEncoding.getter();
    if (!v38)
    {
      v63(v31, v64);

      goto LABEL_29;
    }

    v39 = v37;
    v40 = v38;

    v41 = MEMORY[0x1C68F3280](v39, v40);

    if (v62)
    {
      v42 = v61;
    }

    else
    {
      v42 = 0;
    }

    if (v62)
    {
      v43 = v62;
    }

    else
    {
      v43 = 0xE000000000000000;
    }

    v44 = MEMORY[0x1C68F3280](v42, v43);

    v45 = [v41 stringByAppendingPathComponent_];

    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v46;

    v26 = v35;
    URL.deletingLastPathComponent()();
    v47 = v64;
    v63(v31, v64);
    (*v60)(v31, v35, v47);
    v10 = v31;
  }

  URL.path.getter();
  v48 = String.count.getter();

  if (v48 < 2 || (v67 = URL.pathExtension.getter(), v68 = v49, v65 = 0x7974696C616572, v66 = 0xE700000000000000, v50 = StringProtocol.caseInsensitiveCompare<A>(_:)(), , v50))
  {
    v34(v31, v64);
LABEL_29:

    v51 = type metadata accessor for RealityFileLoadInformation(0);
    return (*(*(v51 - 8) + 56))(v59, 1, 1, v51);
  }

  v52 = v62;
  if (v58 & 1 | (v62 == 0))
  {
    v53 = v59;
    v54 = v61;
  }

  else
  {
    v67 = v61;
    v68 = v62;

    MEMORY[0x1C68F3410](47, 0xE100000000000000);

    v54 = v67;
    v52 = v68;
    v53 = v59;
  }

  (*v60)(v53, v31, v64);
  v55 = type metadata accessor for RealityFileLoadInformation(0);
  v56 = (v53 + *(v55 + 20));
  *v56 = v54;
  v56[1] = v52;
  return (*(*(v55 - 8) + 56))(v53, 0, 1, v55);
}

uint64_t static Entity.__loadAsync(named:in:options:asyncOptions:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned __int8 *a5)
{
  v95 = a2;
  v92 = a1;
  Trace = type metadata accessor for LoadTrace(0);
  MEMORY[0x1EEE9AC00](Trace);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v93) = *a5;
  v87 = a4;
  LODWORD(v91) = *(a4 + 48);
  if (a3)
  {
    v96 = a3;
  }

  else
  {
    v96 = [objc_opt_self() mainBundle];
  }

  v15 = a3;
  v16 = specialized static __ServiceLocator.shared.getter();
  v17 = *(*(v16 + 168) + 16);
  swift_beginAccess();
  v18 = *(v16 + 24);
  swift_unownedRetainStrong();
  v19 = *(v18 + 32);

  v89 = v17;
  v20 = v19;

  v21 = *(*(v16 + 168) + 32);
  *v14 = v20;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v22 = v20;
  v94 = v21;

  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if (v18)
  {
    v24 = *(*(v16 + 168) + 24);
    *&v98 = 0;
    *(&v98 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(17);
    v25 = v95;

    v26 = v92;
    *&v98 = v92;
    *(&v98 + 1) = v25;
    MEMORY[0x1C68F3410](0x7562206D6F726620, 0xED000020656C646ELL);
    v27 = [v96 bundleIdentifier];
    v28 = v16;
    v84 = v22;
    if (v27)
    {
      v29 = v27;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;
    }

    else
    {
      v32 = 0x80000001C18ED640;
      v30 = 0xD000000000000010;
    }

    v86 = v10;
    v33 = swift_allocBox();
    v35 = v34;
    MEMORY[0x1C68F3410](v30, v32);

    v83 = v35;
    v85 = v24;
    LoadTracer.beginLoad(loadType:logMsgTarget:)(2u, v98, *(&v98 + 1), v35);

    type metadata accessor for LoadRequestDependencies();
    v36 = swift_allocObject();
    v37 = MEMORY[0x1E69E7CC0];
    *(v36 + 16) = MEMORY[0x1E69E7CC0];
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v36 + 24) = v38;
    swift_beginAccess();
    *(v36 + 16) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMR);
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = v95;
    *(v39 + 16) = v26;
    *(v39 + 24) = v40;
    *(v39 + 32) = v93;
    *(v39 + 33) = v91;
    *(v39 + 34) = 1;
    *(v39 + 36) = 1;
    swift_weakAssign();
    swift_beginAccess();
    outlined init with copy of [String : String](v28 + 176, &v98, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
    v90 = v33;
    if (*(&v99 + 1))
    {
      outlined init with take of ForceEffectBase(&v98, &v104);
      v41 = v26;
      v42 = v105;
      v43 = v106;
      __swift_project_boxed_opaque_existential_1(&v104, v105);
      v44 = *(v43 + 16);

      v81 = v36;

      if (v44(v41, v40, v96, v42, v43))
      {
        v45 = v87;
        v46 = *(v87 + 80);
        if (v46)
        {
          v47 = v46 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
          *v47 = 1;
          *(v47 + 8) = 0;
        }

        outlined init with copy of Entity.__LoadOptions(v45, &v98);
        outlined init with copy of __REAssetService(&v104, v97);
        v48 = swift_allocObject();
        *(v48 + 16) = v92;
        *(v48 + 24) = v40;
        *(v48 + 32) = v96;
        *(v48 + 40) = v91;
        v49 = v101;
        *(v48 + 80) = v100;
        *(v48 + 96) = v49;
        *(v48 + 112) = v102;
        v50 = v103;
        v51 = v99;
        *(v48 + 48) = v98;
        *(v48 + 64) = v51;
        v52 = v88;
        *(v48 + 128) = v50;
        *(v48 + 136) = v52;
        *(v48 + 144) = v39;
        outlined init with take of ForceEffectBase(v97, v48 + 152);
        v53 = v84;
        *(v48 + 192) = v84;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA6EntityCGMd, &_s10RealityKit11LoadRequestCyAA6EntityCGMR);
        v54 = swift_allocObject();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMR);
        v55 = swift_allocObject();
        v56 = swift_allocObject();
        *(v56 + 16) = 0;
        *(v55 + 16) = v56;
        *(v55 + 24) = 0;
        *(v55 + 32) = -1;
        *(v54 + 16) = v55;
        v57 = swift_allocObject();
        v57[2] = partial apply for closure #1 in static Entity.__loadAsync(named:in:options:asyncOptions:);
        v57[3] = v48;
        v58 = v81;
        v57[4] = v55;
        v57[5] = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMR);
        swift_allocObject();
        v59 = v53;

        v60 = v96;

        *(v54 + 24) = Future.init(_:)();
        v61 = v86;
        outlined init with copy of LoadTrace(v83, v86, type metadata accessor for LoadTrace);
        specialized LoadTracer.subscribe<A>(to:with:)(v54, v61);

        outlined destroy of LoadTrace(v61, type metadata accessor for LoadTrace);
        __swift_destroy_boxed_opaque_existential_1(&v104);
        goto LABEL_16;
      }

      v62 = v90;
      v91 = v28;
      __swift_destroy_boxed_opaque_existential_1(&v104);
      v63 = v81;
      v26 = v92;
    }

    else
    {
      v62 = v33;
      v91 = v28;

      outlined destroy of BodyTrackingComponent?(&v98, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
      v63 = v36;
    }

    outlined init with copy of Entity.__LoadOptions(v87, &v98);
    v64 = swift_allocObject();
    v65 = v89;
    *(v64 + 16) = v89;
    *(v64 + 24) = v93;
    v66 = v101;
    *(v64 + 64) = v100;
    *(v64 + 80) = v66;
    *(v64 + 96) = v102;
    v67 = v103;
    v68 = v99;
    *(v64 + 32) = v98;
    *(v64 + 48) = v68;
    v69 = v94;
    *(v64 + 112) = v67;
    *(v64 + 120) = v69;
    *(v64 + 128) = v26;
    *(v64 + 136) = v40;
    v70 = v96;
    *(v64 + 144) = v96;
    *(v64 + 152) = v62;
    v71 = v84;
    v72 = v88;
    *(v64 + 160) = v84;
    *(v64 + 168) = v72;
    *(v64 + 176) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA6EntityCGMd, &_s10RealityKit11LoadRequestCyAA6EntityCGMR);
    v54 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMR);
    v73 = swift_allocObject();
    v74 = swift_allocObject();
    *(v74 + 16) = 0;
    *(v73 + 16) = v74;
    *(v73 + 24) = 0;
    *(v73 + 32) = -1;
    *(v54 + 16) = v73;
    v75 = swift_allocObject();
    v75[2] = partial apply for closure #2 in static Entity.__loadAsync(named:in:options:asyncOptions:);
    v75[3] = v64;
    v75[4] = v73;
    v75[5] = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMR);
    swift_allocObject();
    v93 = v65;
    v76 = v71;

    v77 = v70;

    *(v54 + 24) = Future.init(_:)();
    v78 = v83;
    swift_beginAccess();
    v79 = v86;
    outlined init with copy of LoadTrace(v78, v86, type metadata accessor for LoadTrace);
    specialized LoadTracer.subscribe<A>(to:with:)(v54, v79);

    outlined destroy of LoadTrace(v79, type metadata accessor for LoadTrace);
LABEL_16:

    return v54;
  }

  __break(1u);
  return result;
}

uint64_t static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v132 = a3;
  v120 = a2;
  v119 = type metadata accessor for URL();
  v116 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v115 = v8;
  v118 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Trace = type metadata accessor for LoadTrace(0);
  MEMORY[0x1EEE9AC00](Trace);
  v127 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v112 - v12;
  Information = type metadata accessor for RealityFileLoadInformation(0);
  v125 = *(Information - 8);
  MEMORY[0x1EEE9AC00](Information);
  v114 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v126 = &v112 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v134) = *a5;
  v117 = a4;
  v131 = *(a4 + 48);
  v21 = specialized static __ServiceLocator.shared.getter();
  v22 = *(*(v21 + 168) + 16);
  swift_beginAccess();
  v23 = *(v21 + 24);
  swift_unownedRetainStrong();
  v24 = *(v23 + 32);

  v133 = v22;
  v25 = v24;

  v26 = *(*(v21 + 168) + 32);
  *v20 = v25;
  (*(v18 + 104))(v20, *MEMORY[0x1E69E8020], v17);
  v135 = v25;

  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  result = (*(v18 + 8))(v20, v17);
  if (v23)
  {
    v136 = v26;
    v28 = *(*(v21 + 168) + 24);
    v123 = swift_allocBox();
    v30 = v29;

    v31 = URL.lastPathComponent.getter();
    v129 = v30;
    LoadTracer.beginLoad(loadType:logMsgTarget:)(2u, v31, v32, v30);

    type metadata accessor for LoadRequestDependencies();
    v33 = swift_allocObject();
    v34 = MEMORY[0x1E69E7CC0];
    *(v33 + 16) = MEMORY[0x1E69E7CC0];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v33 + 24) = v36;
    swift_beginAccess();
    *(v33 + 16) = v34;
    v37 = URL.absoluteString.getter();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMR);
    v40 = swift_allocObject();
    swift_weakInit();
    *(v40 + 16) = v37;
    *(v40 + 24) = v39;
    *(v40 + 32) = v134;
    *(v40 + 33) = v131;
    *(v40 + 34) = 1;
    *(v40 + 36) = 1;
    swift_weakAssign();
    type metadata accessor for RealityFileLoadInformationResolver();

    v41 = a1;
    static RealityFileLoadInformationResolver.resolve(url:)(a1, v13);
    v42 = v125;
    v43 = (*(v125 + 48))(v13, 1, Information);
    v130 = v21;
    v122 = v28;
    v128 = v35;
    if (v43 == 1)
    {
      outlined destroy of BodyTrackingComponent?(v13, &_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
      swift_beginAccess();
      outlined init with copy of [String : String](v21 + 176, &v138, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
      if (*(&v139 + 1))
      {
        outlined init with take of ForceEffectBase(&v138, &v144);
        v44 = v145;
        v45 = v146;
        __swift_project_boxed_opaque_existential_1(&v144, v145);
        v46 = v41;
        v47 = (*(v45 + 24))(v41, v44, v45);
        v48 = v129;
        if (v47)
        {
          v125 = v33;
          v49 = v117;
          v50 = *(v117 + 80);
          if (v50)
          {
            v51 = v50 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
            *v51 = 1;
            *(v51 + 8) = 0;
          }

          v52 = v116;
          (*(v116 + 16))(v118, v41, v119);
          outlined init with copy of Entity.__LoadOptions(v49, &v138);
          outlined init with copy of __REAssetService(&v144, v137);
          v53 = (*(v52 + 80) + 32) & ~*(v52 + 80);
          v54 = (v115 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
          v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
          v134 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
          v56 = (v55 + 39) & 0xFFFFFFFFFFFFFFF8;
          v57 = (v56 + 95) & 0xFFFFFFFFFFFFFFF8;
          v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
          v59 = swift_allocObject();
          v60 = v136;
          *(v59 + 16) = v130;
          *(v59 + 24) = v60;
          (*(v52 + 32))(v59 + v53, v118, v119);
          *(v59 + v54) = v121;
          *(v59 + v55) = v133;
          v61 = v59 + v134;
          v62 = v132;
          *v61 = v120;
          *(v61 + 8) = v62;
          *(v61 + 16) = v131;
          v63 = v59 + v56;
          v64 = v141;
          *(v63 + 32) = v140;
          *(v63 + 48) = v64;
          *(v63 + 64) = v142;
          *(v63 + 80) = v143;
          v65 = v139;
          *v63 = v138;
          *(v63 + 16) = v65;
          *(v59 + v57) = v40;
          outlined init with take of ForceEffectBase(v137, v59 + v58);
          v66 = v135;
          *(v59 + ((v58 + 47) & 0xFFFFFFFFFFFFFFF8)) = v135;
          v67 = swift_allocObject();
          *(v67 + 16) = partial apply for closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:);
          *(v67 + 24) = v59;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA6EntityCGMd, &_s10RealityKit11LoadRequestCyAA6EntityCGMR);
          v68 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMR);
          v69 = swift_allocObject();
          v70 = swift_allocObject();
          *(v70 + 16) = 0;
          *(v69 + 16) = v70;
          *(v69 + 24) = 0;
          *(v69 + 32) = -1;
          *(v68 + 16) = v69;
          v71 = swift_allocObject();
          v71[2] = _ss6ResultOy10RealityKit6EntityCs5Error_pGIegg_Iegg_AByxsAF_pGRi_zRi0_zlyAEIsegn_Iegg_TRTA;
          v71[3] = v67;
          v72 = v125;
          v71[4] = v69;
          v71[5] = v72;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMR);
          swift_allocObject();

          v73 = v133;
          v74 = v66;

          v75 = v68;
          *(v68 + 24) = Future.init(_:)();
          v76 = v127;
          outlined init with copy of LoadTrace(v129, v127, type metadata accessor for LoadTrace);
          specialized LoadTracer.subscribe<A>(to:with:)(v75, v76);

          outlined destroy of LoadTrace(v76, type metadata accessor for LoadTrace);
          __swift_destroy_boxed_opaque_existential_1(&v144);
          goto LABEL_12;
        }

        __swift_destroy_boxed_opaque_existential_1(&v144);
      }

      else
      {
        outlined destroy of BodyTrackingComponent?(&v138, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
        v48 = v129;
        v46 = a1;
      }

      v101 = v116;
      v102 = v118;
      v103 = v119;
      (*(v116 + 16))(v118, v46, v119);
      v104 = (*(v101 + 80) + 16) & ~*(v101 + 80);
      v105 = swift_allocObject();
      (*(v101 + 32))(v105 + v104, v102, v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA6EntityCGMd, &_s10RealityKit11LoadRequestCyAA6EntityCGMR);
      v106 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMR);
      v107 = swift_allocObject();
      v108 = swift_allocObject();
      *(v108 + 16) = 0;
      *(v107 + 16) = v108;
      *(v107 + 24) = 0;
      *(v107 + 32) = -1;
      *(v106 + 16) = v107;
      v109 = swift_allocObject();
      v109[2] = partial apply for closure #3 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:);
      v109[3] = v105;
      v109[4] = v107;
      v109[5] = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMR);
      swift_allocObject();

      *(v106 + 24) = Future.init(_:)();
      v110 = v48;
      v75 = v106;
      v111 = v127;
      outlined init with copy of LoadTrace(v110, v127, type metadata accessor for LoadTrace);
      specialized LoadTracer.subscribe<A>(to:with:)(v106, v111);

      outlined destroy of LoadTrace(v111, type metadata accessor for LoadTrace);
    }

    else
    {
      v77 = v126;
      outlined init with take of RealityFileLoadInformation(v13, v126, type metadata accessor for RealityFileLoadInformation);
      outlined init with copy of Entity.__LoadOptions(v117, &v138);
      v78 = v114;
      outlined init with copy of LoadTrace(v77, v114, type metadata accessor for RealityFileLoadInformation);
      v79 = *(v42 + 80);
      v125 = v33;
      v80 = (v79 + 136) & ~v79;
      v81 = (v113 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
      v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
      v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
      v84 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
      v85 = swift_allocObject();
      v86 = v141;
      *(v85 + 72) = v140;
      *(v85 + 88) = v86;
      *(v85 + 104) = v142;
      v87 = v139;
      *(v85 + 40) = v138;
      v88 = v132;
      *(v85 + 16) = v120;
      *(v85 + 24) = v88;
      *(v85 + 32) = v134;
      v89 = v143;
      *(v85 + 56) = v87;
      v90 = v136;
      *(v85 + 120) = v89;
      *(v85 + 128) = v90;
      outlined init with take of RealityFileLoadInformation(v78, v85 + v80, type metadata accessor for RealityFileLoadInformation);
      *(v85 + v81) = v123;
      *(v85 + v82) = v135;
      *(v85 + v83) = v121;
      *(v85 + v84) = v40;
      v91 = v133;
      *(v85 + ((v84 + 15) & 0xFFFFFFFFFFFFFFF8)) = v133;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA6EntityCGMd, &_s10RealityKit11LoadRequestCyAA6EntityCGMR);
      v92 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMR);
      v93 = swift_allocObject();
      v94 = swift_allocObject();
      *(v94 + 16) = 0;
      *(v93 + 16) = v94;
      *(v93 + 24) = 0;
      *(v93 + 32) = -1;
      *(v92 + 16) = v93;
      v95 = swift_allocObject();
      v95[2] = partial apply for closure #1 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:);
      v95[3] = v85;
      v96 = v125;
      v95[4] = v93;
      v95[5] = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMR);
      swift_allocObject();

      v97 = v91;
      v98 = v135;

      v75 = v92;
      *(v92 + 24) = Future.init(_:)();
      v99 = v129;
      swift_beginAccess();
      v100 = v127;
      outlined init with copy of LoadTrace(v99, v127, type metadata accessor for LoadTrace);
      specialized LoadTracer.subscribe<A>(to:with:)(v75, v100);

      outlined destroy of LoadTrace(v100, type metadata accessor for LoadTrace);
      outlined destroy of LoadTrace(v126, type metadata accessor for RealityFileLoadInformation);
    }

LABEL_12:

    return v75;
  }

  __break(1u);
  return result;
}

uint64_t static Entity.loadAsync(from:named:options:asyncOptions:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v59 = a3;
  v57 = a2;
  v61 = a1;
  Trace = type metadata accessor for LoadTrace(0);
  MEMORY[0x1EEE9AC00](Trace);
  v58 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for UUID();
  v10 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = *a6;
  v55 = a5;
  v53 = *(a5 + 48);
  v17 = specialized static __ServiceLocator.shared.getter();
  v18 = *(*(v17 + 168) + 16);
  swift_beginAccess();
  v19 = *(v17 + 24);
  swift_unownedRetainStrong();
  v20 = *(v19 + 32);
  v60 = v17;

  v21 = v18;
  v22 = v20;

  *v16 = v22;
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v23 = v22;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v16, v13);
  if (v19)
  {
    *&v62[0] = 0;
    *(&v62[0] + 1) = 0xE000000000000000;
    if (a4)
    {
      v25 = v59;
    }

    else
    {
      v25 = 0x64656D616E6E75;
    }

    if (a4)
    {
      v26 = a4;
    }

    else
    {
      v26 = 0xE700000000000000;
    }

    v48[1] = a4;

    MEMORY[0x1C68F3410](v25, v26);

    MEMORY[0x1C68F3410](45, 0xE100000000000000);
    UUID.init()();
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v27 = v51;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v28);

    (*(v10 + 8))(v12, v27);
    v29 = v62[0];
    v51 = *(*(v60 + 168) + 24);
    v49 = swift_allocBox();
    v31 = v30;
    v50 = v30;

    LoadTracer.beginLoad(loadType:logMsgTarget:)(2u, v29, *(&v29 + 1), v31);
    type metadata accessor for LoadRequestDependencies();
    v32 = swift_allocObject();
    Trace = v23;
    v33 = MEMORY[0x1E69E7CC0];
    *(v32 + 16) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v32 + 24) = v34;
    swift_beginAccess();
    *(v32 + 16) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMR);
    v35 = swift_allocObject();
    swift_weakInit();
    *(v35 + 16) = v29;
    LOBYTE(v33) = v54;
    *(v35 + 32) = v54;
    *(v35 + 33) = v53;
    *(v35 + 34) = 1;
    *(v35 + 36) = 1;
    swift_weakAssign();
    outlined init with copy of Entity.__LoadOptions(v55, v62);
    v36 = swift_allocObject();
    v37 = v56;
    *(v36 + 16) = v21;
    *(v36 + 24) = v37;
    v56 = v21;
    v38 = v57;
    *(v36 + 32) = v61;
    *(v36 + 40) = v38;
    *(v36 + 48) = v59;
    *(v36 + 56) = a4;
    *(v36 + 64) = v29;
    v39 = v62[3];
    *(v36 + 112) = v62[2];
    *(v36 + 128) = v39;
    *(v36 + 144) = v62[4];
    *(v36 + 160) = v63;
    v40 = v62[1];
    *(v36 + 80) = v62[0];
    *(v36 + 96) = v40;
    *(v36 + 168) = v33;
    *(v36 + 176) = v49;
    *(v36 + 184) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA6EntityCGMd, &_s10RealityKit11LoadRequestCyAA6EntityCGMR);
    v41 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMR);
    v42 = swift_allocObject();
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v42 + 16) = v43;
    *(v42 + 24) = 0;
    *(v42 + 32) = -1;
    *(v41 + 16) = v42;
    v44 = swift_allocObject();
    v44[2] = partial apply for closure #1 in static Entity.loadAsync(from:named:options:asyncOptions:);
    v44[3] = v36;
    v44[4] = v42;
    v44[5] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMR);
    swift_allocObject();
    v45 = v56;

    outlined copy of Data._Representation(v61, v38);

    *(v41 + 24) = Future.init(_:)();
    v46 = v50;
    swift_beginAccess();
    v47 = v58;
    outlined init with copy of LoadTrace(v46, v58, type metadata accessor for LoadTrace);
    specialized LoadTracer.subscribe<A>(to:with:)(v41, v47);

    outlined destroy of LoadTrace(v47, type metadata accessor for LoadTrace);

    return v41;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t Entity.LoadError.errorDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Error = type metadata accessor for Entity.LoadError(0);
  MEMORY[0x1EEE9AC00](Error);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of LoadTrace(v1, v8, type metadata accessor for Entity.LoadError);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v3 + 32))(v5, v8, v2);
      v29 = 0;
      v30 = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      v29 = 0xD00000000000001ELL;
      v30 = 0x80000001C18EDD60;
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v21);

      v19 = 34;
      v20 = 0xE100000000000000;
      goto LABEL_11;
    case 2u:
      v16 = *v8;
      v17 = v8[1];
      v29 = 0;
      v30 = 0xE000000000000000;
      _StringGuts.grow(_:)(98);
      MEMORY[0x1C68F3410](0xD00000000000001DLL, 0x80000001C18EDC70);
      MEMORY[0x1C68F3410](v16, v17);

      v11 = 0xD000000000000043;
      v12 = 0x80000001C18EDC90;
      goto LABEL_14;
    case 3u:
      (*(v3 + 32))(v5, v8, v2);
      v29 = 0;
      v30 = 0xE000000000000000;
      _StringGuts.grow(_:)(104);
      MEMORY[0x1C68F3410](0xD000000000000022, 0x80000001C18EDBF0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v18);

      v19 = 0xD000000000000044;
      v20 = 0x80000001C18EDC20;
LABEL_11:
      MEMORY[0x1C68F3410](v19, v20);
      v22 = v29;
      (*(v3 + 8))(v5, v2);
      return v22;
    case 4u:
      v14 = *v8;
      v15 = v8[1];
      v29 = 0;
      v30 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      v29 = 0xD000000000000020;
      v30 = 0x80000001C18EDB50;
      MEMORY[0x1C68F3410](v14, v15);

      return v29;
    case 5u:
      v23 = *v8;
      v24 = v8[1];
      v26 = v8[2];
      v25 = v8[3];
      v29 = 0;
      v30 = 0xE000000000000000;
      _StringGuts.grow(_:)(84);
      MEMORY[0x1C68F3410](0xD000000000000019, 0x80000001C18EDA60);
      MEMORY[0x1C68F3410](v23, v24);

      MEMORY[0x1C68F3410](0xD000000000000017, 0x80000001C18EDA80);
      MEMORY[0x1C68F3410](v26, v25);

      v11 = 0xD000000000000020;
      v12 = 0x80000001C18EDAA0;
      goto LABEL_14;
    case 6u:
      v27 = *v8;
      v28 = v8[1];
      v29 = 0;
      v30 = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      v29 = 0xD000000000000016;
      v30 = 0x80000001C18EDA40;
      MEMORY[0x1C68F3410](v27, v28);

      v11 = 11810;
      v12 = 0xE200000000000000;
      goto LABEL_14;
    case 7u:
      return 0xD000000000000031;
    case 8u:
      return 0xD000000000000030;
    case 9u:
      return 0xD000000000000030;
    case 0xAu:
      return 0xD000000000000022;
    case 0xBu:
      return 0xD000000000000037;
    case 0xCu:
      return 0xD000000000000030;
    default:
      v9 = *v8;
      v10 = v8[1];
      v29 = 0;
      v30 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v29 = 0xD000000000000023;
      v30 = 0x80000001C18DF870;
      MEMORY[0x1C68F3410](v9, v10);

      v11 = 0x6E7562206E692022;
      v12 = 0xEB00000000656C64;
LABEL_14:
      MEMORY[0x1C68F3410](v11, v12);
      return v29;
  }
}

uint64_t one-time initialization function for synchronousLoadOptions()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v12);
  v1 = v13;
  v2 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  if ((*(v2 + 64))(v1, v2))
  {
    if (one-time initialization token for categoriesSupportingResourceSharingBeforeECSCommits != -1)
    {
      swift_once();
    }

    v3 = static RequestLoadableUtilities.categoriesSupportingResourceSharingBeforeECSCommits;
    if (*(static RequestLoadableUtilities.categoriesSupportingResourceSharingBeforeECSCommits + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v4 = Hasher._finalize()(), v5 = -1 << *(v3 + 32), v6 = v4 & ~v5, ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = *(*(v3 + 48) + v6);
        if (v8 > 4 && *(*(v3 + 48) + v6) > 6u && v8 != 7 && v8 != 9)
        {
          break;
        }

        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v9 & 1) == 0)
        {
          v6 = (v6 + 1) & v7;
          if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
          {
            continue;
          }
        }

        goto LABEL_16;
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

LABEL_16:
    v10 = v9 & 1;
  }

  else
  {
    v10 = 2;
  }

  static Entity.synchronousLoadOptions = v10;
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t one-time initialization function for asynchronousLoadOptions()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  if ((*(v2 + 56))(v1, v2))
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  static Entity.asynchronousLoadOptions = v3;
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t static Entity.load(named:in:)(void *a1, uint64_t a2, void *a3)
{
  v115 = a1;
  Trace = type metadata accessor for LoadTrace(0);
  MEMORY[0x1EEE9AC00](Trace - 8);
  v89 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v88 = (&v85 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v85 - v10;
  v92 = type metadata accessor for URL();
  v94 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Entity.LoadStatistics(0);
  v17 = swift_allocObject();
  Date.init()();
  v18 = v17 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
  *v18 = 0;
  v87 = v18;
  *(v18 + 8) = 2;
  *(v17 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_loadRequestStats) = MEMORY[0x1E69E7CC0];
  *(v17 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_async) = 0;
  v91 = v17;
  v19 = (v17 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
  *v19 = 0xD000000000000016;
  v19[1] = 0x80000001C18ED660;
  if (a3)
  {
    v97 = a3;
  }

  else
  {
    v97 = [objc_opt_self() mainBundle];
  }

  v20 = a3;
  v21 = specialized static __ServiceLocator.shared.getter();
  v22 = *(*(v21 + 168) + 32);
  swift_beginAccess();
  v23 = *(v21 + 24);
  swift_unownedRetainStrong();
  v24 = *(v23 + 32);
  v96 = v21;

  v93 = v22;

  v25 = v24;

  *v16 = v25;
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if (v23)
  {
    if (one-time initialization token for synchronousLoadOptions == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v26 = static Entity.synchronousLoadOptions;
  swift_beginAccess();
  v27 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMR);
  inited = swift_initStackObject();
  swift_weakInit();
  v29 = v115;
  *(inited + 16) = v115;
  *(inited + 24) = a2;
  *(inited + 32) = v26;
  *(inited + 33) = v27;
  *(inited + 34) = 1;
  *(inited + 36) = 1;
  swift_weakAssign();
  type metadata accessor for LoadUtilities();

  v30 = v97;
  static LoadUtilities.getURL(name:in:allowingExtensions:)(v29, a2, v97, &outlined read-only object #0 of one-time initialization function for usdExtensions, v11);
  v31 = v94;
  v32 = v92;
  if ((*(v94 + 48))(v11, 1, v92) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v106 = 0;
    *&v107 = 0xE000000000000000;

    _StringGuts.grow(_:)(17);

    v106 = v29;
    *&v107 = a2;
    MEMORY[0x1C68F3410](0x7562206D6F726620, 0xED000020656C646ELL);
    v33 = [v30 bundleIdentifier];
    v86 = a2;
    if (v33)
    {
      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;
    }

    else
    {
      v37 = 0x80000001C18ED640;
      v35 = 0xD000000000000010;
    }

    MEMORY[0x1C68F3410](v35, v37);

    v47 = v89;
    LoadTracer.beginLoad(loadType:logMsgTarget:)(1u, v106, v107, v89);

    memset(v111, 0, 25);
    v110 = 0u;
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
    v111[25] = 1;
    v113 = 0;
    v112 = 0;
    LOBYTE(v106) = 2;
    v111[27] = v26 != 2;
    v111[26] = (v26 & 0xFE) != 2;
    v114 = v91;

    v57 = v115;
    v58 = v86;
    v59 = v97;
    v60 = v95;
    __SceneResourceCache.findSceneResource(named:bundle:options:)(v115, v86, v97, &v106, &v101);
    v95 = v60;
    if (v60)
    {

      v61 = v47;
    }

    else if (v102)
    {
      outlined init with take of ForceEffectBase(&v101, &v103);
      outlined init with copy of __REAssetService(&v103, &v101);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27SceneResourceLoadResultBase_pMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24SceneResourceEntityMaker_pMd, &_s17RealityFoundation24SceneResourceEntityMaker_pMR);
      swift_dynamicCast();
      v62 = v99;
      v47 = v100;
      __swift_project_boxed_opaque_existential_1(v98, v99);
      v63 = v95;
      v64 = (*(v47 + 8))(v62, v47);
      v65 = v97;
      v95 = v63;
      if (v63)
      {

        outlined destroy of LoadTrace(v89, type metadata accessor for LoadTrace);
        __swift_destroy_boxed_opaque_existential_1(v98);
        __swift_destroy_boxed_opaque_existential_1(&v103);
        goto LABEL_17;
      }

      v47 = v64;
      __swift_destroy_boxed_opaque_existential_1(v98);
      v79 = v104;
      v80 = v105;
      __swift_project_boxed_opaque_existential_1(&v103, v104);
      v81 = (*(v80 + 16))(v79, v80);
      v82 = v89;
      *(v89 + 16) = v81 & 1;
      __swift_destroy_boxed_opaque_existential_1(&v103);
      v83 = v95;
      specialized Entity.LoadFinisher.setupAfterRealityLoadSync(_:)(v47);
      v95 = v83;
      if (!v83)
      {
        static Entity.loadReferences(root:)(v47);
        v95 = 0;
        LoadTracer.endLoad(of:with:)(v47, v82);
        Entity.LoadStatistics.log()();

        outlined destroy of LoadTrace(v82, type metadata accessor for LoadTrace);
        outlined destroy of __REAssetBundle.LoadOptions(&v106);
        return v47;
      }

      v61 = v82;
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v101, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMR);

      type metadata accessor for Entity.LoadError(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
      v69 = swift_allocError();
      *v70 = v57;
      v70[1] = v58;
      v71 = v69;
      swift_storeEnumTagMultiPayload();
      v95 = v71;
      swift_willThrow();

      v61 = v89;
    }

    outlined destroy of LoadTrace(v61, type metadata accessor for LoadTrace);
LABEL_17:
    outlined destroy of __REAssetBundle.LoadOptions(&v106);
    return v47;
  }

  v89 = inited;
  v38 = v90;
  (*(v31 + 32))(v90, v11, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_1C1897F90;
  *(v39 + 32) = 1701869940;
  v40 = MEMORY[0x1E69E6158];
  *(v39 + 40) = 0xE400000000000000;
  strcpy((v39 + 48), "LoadFromBundle");
  *(v39 + 63) = -18;
  *(v39 + 72) = v40;
  *(v39 + 80) = 0x73746E65746E6F63;
  *(v39 + 88) = 0xEA0000000000664FLL;
  *(v39 + 120) = v32;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v39 + 96));
  (*(v31 + 16))(boxed_opaque_existential_1, v38, v32);
  *(v39 + 128) = 0x64656D616ELL;
  *(v39 + 136) = 0xE500000000000000;
  *(v39 + 144) = v29;
  *(v39 + 152) = a2;
  *(v39 + 168) = MEMORY[0x1E69E6158];
  *(v39 + 176) = 0x656C646E7562;
  v42 = a2;
  *(v39 + 184) = 0xE600000000000000;
  v43 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x1E696AAE8);
  *(v39 + 192) = v30;
  *(v39 + 216) = v43;
  *(v39 + 224) = 0xD000000000000015;
  *(v39 + 232) = 0x80000001C18ED680;
  v44 = static RKARSystemCore.generateDecimatedMeshes;
  *(v39 + 264) = MEMORY[0x1E69E6370];
  *(v39 + 240) = v44;

  v45 = v30;
  v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v39);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v47 = v96;
  swift_beginAccess();
  outlined init with copy of [String : String](v47 + 176, &v103, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  if (!v104)
  {

    outlined destroy of BodyTrackingComponent?(&v103, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
LABEL_23:
    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
    v66 = swift_allocError();
    *v67 = v115;
    v67[1] = v42;
    v68 = v66;
    swift_storeEnumTagMultiPayload();
    v95 = v68;
    swift_willThrow();

    (*(v94 + 8))(v90, v32);
    return v47;
  }

  v97 = v46;
  outlined init with take of ForceEffectBase(&v103, &v106);
  v48 = v108;
  __swift_project_boxed_opaque_existential_1(&v106, v108);
  if (((*(*(&v48 + 1) + 16))(v115, v42, v45, v48, *(&v48 + 1)) & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1(&v106);
    goto LABEL_23;
  }

  v49 = v87;
  *v87 = 1;
  *(v49 + 8) = 0;
  v50 = *(*(v47 + 168) + 24);
  *&v103 = 0;
  *(&v103 + 1) = 0xE000000000000000;
  v87 = v50;

  _StringGuts.grow(_:)(17);

  *&v103 = v115;
  *(&v103 + 1) = v42;
  MEMORY[0x1C68F3410](0x7562206D6F726620, 0xED000020656C646ELL);
  v115 = v45;
  v51 = [v45 bundleIdentifier];
  if (v51)
  {
    v52 = v51;
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v56 = v88;
  }

  else
  {
    v55 = 0x80000001C18ED640;
    v56 = v88;
    v53 = 0xD000000000000010;
  }

  MEMORY[0x1C68F3410](v53, v55);

  LoadTracer.beginLoad(loadType:logMsgTarget:)(1u, v103, *(&v103 + 1), v56);

  v47 = *(&v108 + 1);
  v72 = v108;
  __swift_project_boxed_opaque_existential_1(&v106, v108);
  v73 = v95;
  v74 = (*(v47 + 32))(v97, v72, v47);
  v95 = v73;
  if (v73)
  {

    outlined destroy of LoadTrace(v56, type metadata accessor for LoadTrace);
    (*(v94 + 8))(v90, v92);
  }

  else
  {
    v47 = v74;

    specialized static Entity.applyHackForRealityIOUSDImports(rootEntity:)(v47);
    v75 = v95;
    specialized Entity.LoadFinisher.setupAfterUSDLoadSync(_:)(v47, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:), v76);
    v77 = (v94 + 8);
    v95 = v75;
    if (!v75)
    {
      v84 = v88;
      LoadTracer.endLoad(of:with:)(v47, v88);
      Entity.LoadStatistics.log()();

      outlined destroy of LoadTrace(v84, type metadata accessor for LoadTrace);
      (*v77)(v90, v92);
      __swift_destroy_boxed_opaque_existential_1(&v106);
      return v47;
    }

    outlined destroy of LoadTrace(v88, type metadata accessor for LoadTrace);
    (*v77)(v90, v92);
  }

  __swift_destroy_boxed_opaque_existential_1(&v106);
  return v47;
}

void static Entity.loadReferences(root:)(uint64_t a1)
{
  v2 = static Entity.enumerateReferences(root:)(a1);
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    v10 = v3 & 0xC000000000000001;
    while (v10)
    {
      v6 = MEMORY[0x1C68F41F0](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_17;
      }

LABEL_12:

      if (REEntityGetComponent())
      {
        ReferenceComponent.init(from:)(v9);

        v8 = v9[33];

        if (v8 != 1)
        {
          static ReferenceComponent.loadReference(at:)(v6);
          if (v1)
          {

            goto LABEL_16;
          }
        }
      }

      else
      {
      }

      ++v5;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v6 = *(v3 + 8 * v5 + 32);

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_12;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_16:
}

uint64_t static Entity.loadAsync(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = static RKARSystemCore.generateDecimatedMeshes;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v15 = 0;
  v16 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v17 = 1;
  v18 = 0;
  v19 = 2;
  v20 = 0;
  outlined assign with take of __DownsamplingStrategy?(v9, v11);
  v13 = 0;
  v14 = v6;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  LOBYTE(v9[0]) = static Entity.asynchronousLoadOptions;
  v7 = static Entity.__loadAsync(named:in:options:asyncOptions:)(a1, a2, a3, v11, v9);
  outlined destroy of Entity.__LoadOptions(v11);
  return v7;
}

uint64_t static Entity.__loadAsync(named:in:generateDecimatedMesh:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v16 = 0;
  v17 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v18 = 1;
  v19 = 0;
  v20 = 2;
  v21 = 0;
  outlined assign with take of __DownsamplingStrategy?(v10, v12);
  v14 = 0;
  v15 = a4;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  LOBYTE(v10[0]) = static Entity.asynchronousLoadOptions;
  v8 = static Entity.__loadAsync(named:in:options:asyncOptions:)(a1, a2, a3, v12, v10);
  outlined destroy of Entity.__LoadOptions(v12);
  return v8;
}

uint64_t Entity.__LoadOptions.init(downsamplingStrategy:realityPerformanceReport:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  *(a3 + 64) = 1;
  *(a3 + 68) = 0;
  *(a3 + 72) = 2;
  *(a3 + 80) = 0;
  result = outlined assign with take of __DownsamplingStrategy?(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t closure #1 in static Entity.__loadAsync(named:in:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v45 = a8;
  v42 = a6;
  v41 = a4;
  v43 = a2;
  v44 = a9;
  v16 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v16 - 8);
  v40 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v37[3] = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v37[2] = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37[1] = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 1701869940;
  *(inited + 16) = xmmword_1C18A1E70;
  v21 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x80000001C18EDFC0;
  *(inited + 72) = v21;
  *(inited + 80) = 0x64656D616ELL;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = a3;
  *(inited + 104) = a4;
  *(inited + 120) = v21;
  *(inited + 128) = 0x656C646E7562;
  *(inited + 136) = 0xE600000000000000;
  v22 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x1E696AAE8);
  *(inited + 144) = a5;
  *(inited + 168) = v22;
  *(inited + 176) = 0xD000000000000015;
  *(inited + 184) = 0x80000001C18ED680;
  v23 = MEMORY[0x1E69E6370];
  *(inited + 192) = v42;
  *(inited + 216) = v23;
  *(inited + 224) = 0xD000000000000018;
  *(inited + 232) = 0x80000001C18EDE40;
  *(inited + 240) = *(a7 + 49);
  *(inited + 264) = v23;
  *(inited + 272) = 0x694C79726F6D656DLL;
  *(inited + 280) = 0xEB0000000074696DLL;
  v24 = *(a7 + 56);
  LOBYTE(a3) = *(a7 + 64);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  *(inited + 288) = v24;
  *(inited + 296) = a3;
  *(inited + 312) = v25;
  strcpy((inited + 320), "featuresToSkip");
  *(inited + 335) = -18;
  *(inited + 336) = *(a7 + 68);
  *(inited + 360) = &type metadata for Entity.__LoadOptions.LoadableFeatures;
  *(inited + 368) = 0x6C6C69666C7566;
  *(inited + 376) = 0xE700000000000000;
  outlined init with copy of Entity.__LoadOptions(a7, v46);
  v26 = swift_allocObject();
  v27 = v44;
  *(v26 + 16) = v45;
  *(v26 + 24) = v27;
  v28 = v46[3];
  *(v26 + 64) = v46[2];
  *(v26 + 80) = v28;
  *(v26 + 96) = v46[4];
  v29 = v47;
  v30 = v46[1];
  *(v26 + 32) = v46[0];
  *(v26 + 48) = v30;
  *(v26 + 112) = v29;
  *(v26 + 120) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  *(v26 + 128) = v19;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for closure #1 in closure #1 in static Entity.__loadAsync(named:in:options:asyncOptions:);
  *(v31 + 24) = v26;
  *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit6EntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit6EntityCs5Error_pGcMR);
  *(inited + 384) = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed Result<A, Error>) -> ();
  *(inited + 392) = v31;

  v32 = a5;

  v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v34 = a10[3];
  v35 = a10[4];
  __swift_project_boxed_opaque_existential_1(a10, v34);
  (*(v35 + 40))(v33, v34, v35);
}

uint64_t closure #1 in closure #1 in static Entity.__loadAsync(named:in:options:asyncOptions:)(uint64_t a1, char a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128), uint64_t a8)
{
  if (a2)
  {
    return a7(a1, 1, a4, a5, a6, a3);
  }

  specialized static Entity.applyHackForRealityIOUSDImports(rootEntity:)(a1);
  outlined init with copy of Entity.__LoadOptions(a6, v14);
  specialized Entity.LoadFinisher.setupAfterUSDLoadAsync(_:options:_:)(a1, v14, a7, a8, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:), specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:), v13);
  return outlined destroy of BodyTrackingComponent?(v14, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
}

uint64_t closure #2 in static Entity.__loadAsync(named:in:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v37 = a4;
  v46 = a3;
  v36 = a2;
  v41 = a13;
  v40 = a12;
  v39 = a11;
  v38 = a10;
  v42 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  outlined init with copy of Entity.__LoadOptions(a5, v49);
  v24 = swift_allocObject();
  v25 = v49[3];
  *(v24 + 56) = v49[2];
  *(v24 + 72) = v25;
  *(v24 + 88) = v49[4];
  v26 = v49[1];
  *(v24 + 24) = v49[0];
  *(v24 + 16) = v37;
  v27 = v50;
  *(v24 + 40) = v26;
  *(v24 + 104) = v27;
  *(v24 + 112) = a6;
  *(v24 + 120) = a7;
  *(v24 + 128) = a8;
  v28 = v38;
  *(v24 + 136) = a9;
  *(v24 + 144) = v28;
  v29 = v39;
  v30 = v40;
  *(v24 + 152) = v39;
  *(v24 + 160) = v30;
  *(v24 + 168) = v41;
  *(v24 + 176) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  *(v24 + 184) = v23;
  aBlock[4] = partial apply for closure #1 in closure #2 in static Entity.__loadAsync(named:in:options:asyncOptions:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_736;
  v31 = _Block_copy(aBlock);

  v32 = a9;

  v33 = v29;

  static DispatchQoS.unspecified.getter();
  v47 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v34 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v22, v20, v31);
  _Block_release(v31);
  (*(v45 + 8))(v20, v34);
  (*(v43 + 8))(v22, v44);
}

uint64_t closure #1 in closure #2 in static Entity.__loadAsync(named:in:options:asyncOptions:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v54 = a8;
  v47 = a12;
  v46 = a11;
  v17 = a1;
  v18 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v18 - 8);
  v53 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v49 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v50 = *(v20 - 8);
  v51 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v48 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LoadTrace(0);
  v22 = swift_projectBox();
  memset(v72, 0, 25);
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  v72[25] = 1;
  v73 = 0;
  v74 = 0;
  LOBYTE(aBlock) = 1;
  v72[26] = (a1 & 0xFE) != 2;
  v72[27] = v17 != 2;
  v75 = *(a2 + 80);

  outlined assign with copy of __DownsamplingStrategy?(a2, &v69 + 8);
  __SceneResourceCache.findSceneResource(named:bundle:options:)(a4, a5, a6, &aBlock, &v57);
  if (*(&v58 + 1))
  {
    outlined init with take of ForceEffectBase(&v57, v64);
    v30 = v65;
    v31 = v66;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    v32 = (*(v31 + 16))(v30, v31);
    swift_beginAccess();
    *(v22 + 16) = v32 & 1;
    outlined init with copy of __REAssetService(v64, v63);
    outlined init with copy of Entity.__LoadOptions(a2, &v57);
    v33 = swift_allocObject();
    *(v33 + 16) = a9;
    outlined init with take of ForceEffectBase(v63, v33 + 24);
    v34 = v60;
    *(v33 + 104) = v59;
    *(v33 + 120) = v34;
    *(v33 + 136) = v61;
    v35 = v58;
    *(v33 + 72) = v57;
    *(v33 + 64) = a10;
    v36 = v62;
    *(v33 + 88) = v35;
    v37 = v46;
    v38 = v47;
    *(v33 + 152) = v36;
    *(v33 + 160) = v37;
    *(v33 + 168) = v38;
    v56[4] = partial apply for closure #1 in closure #1 in closure #2 in static Entity.__loadAsync(named:in:options:asyncOptions:);
    v56[5] = v33;
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 1107296256;
    v56[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v56[3] = &block_descriptor_748;
    v39 = _Block_copy(v56);

    v40 = v48;
    static DispatchQoS.unspecified.getter();
    v55 = MEMORY[0x1E69E7CC0];
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v41 = v49;
    v42 = v53;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v40, v41, v39);
    _Block_release(v39);
    (*(v52 + 8))(v41, v42);
    (*(v50 + 8))(v40, v51);

    __swift_destroy_boxed_opaque_existential_1(v64);
    return outlined destroy of __REAssetBundle.LoadOptions(&aBlock);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v57, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMR);
    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
    v44 = swift_allocError();
    *v45 = a4;
    v45[1] = a5;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    outlined destroy of __REAssetBundle.LoadOptions(&aBlock);
    v23 = swift_allocObject();
    v24 = v47;
    v23[2] = v46;
    v23[3] = v24;
    v23[4] = v44;
    *(&v69 + 1) = partial apply for closure #1 in closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:);
    *&v70 = v23;
    aBlock = MEMORY[0x1E69E9820];
    *&v68 = 1107296256;
    *(&v68 + 1) = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *&v69 = &block_descriptor_742;
    v25 = _Block_copy(&aBlock);

    v26 = v44;
    v27 = v48;
    static DispatchQoS.unspecified.getter();
    *&v57 = MEMORY[0x1E69E7CC0];
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v28 = v49;
    v29 = v53;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v27, v28, v25);
    _Block_release(v25);

    (*(v52 + 8))(v28, v29);
    (*(v50 + 8))(v27, v51);
  }
}

_BYTE *static Entity.load(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Entity.LoadStatistics(0);
  v7 = swift_allocObject();
  Date.init()();
  v8 = v7 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
  *v8 = 0;
  *(v8 + 8) = 2;
  *(v7 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_loadRequestStats) = MEMORY[0x1E69E7CC0];
  *(v7 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_async) = 0;
  v9 = (v7 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
  *v9 = 0xD000000000000021;
  v9[1] = 0x80000001C18ED6A0;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v18 = 0;
  v19 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v20 = 1;
  v21 = 0;
  v22 = 2;
  outlined assign with take of __DownsamplingStrategy?(v13, v15);
  v17 = 0;
  v23 = v7;

  v10 = specialized static Entity.__load(contentsOf:withName:loadOptions:)(a1, a2, a3, v15);
  v11 = v10;
  if (!v3)
  {
    static Entity.loadReferences(root:)(v10);
    Entity.LoadStatistics.log()();
  }

  outlined destroy of Entity.__LoadOptions(v15);
  return v11;
}

uint64_t Entity.__LoadOptions.memoryLimit.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t Entity.__AsyncLoadOptions.loadOnResourceSharingClients.setter(uint64_t result)
{
  v2 = *v1;
  if (result)
  {
    if (v2 != 2)
    {
      return result;
    }

    v3 = 3;
  }

  else
  {
    if (v2 == 2)
    {
      return result;
    }

    v3 = 2;
  }

  *v1 = v3;
  return result;
}

unsigned __int8 **(*Entity.__AsyncLoadOptions.loadOnResourceSharingClients.modify(uint64_t a1))(unsigned __int8 **result)
{
  *a1 = v1;
  *(a1 + 8) = *v1 != 2;
  return Entity.__AsyncLoadOptions.loadOnResourceSharingClients.modify;
}

unsigned __int8 **Entity.__AsyncLoadOptions.loadOnResourceSharingClients.modify(unsigned __int8 **result)
{
  v1 = *result;
  v2 = **result;
  if (*(result + 8))
  {
    if (v2 == 2)
    {
      *v1 = 3;
    }
  }

  else if (v2 != 2)
  {
    *v1 = 2;
  }

  return result;
}

uint64_t Entity.__AsyncLoadOptions.waitForResourceSharingClients.setter(uint64_t result)
{
  v2 = *v1 & 0xFE;
  if (result)
  {
    if (v2 != 2)
    {
      return result;
    }

    v3 = 0;
  }

  else
  {
    if (v2 == 2)
    {
      return result;
    }

    v3 = 3;
  }

  *v1 = v3;
  return result;
}

uint64_t (*Entity.__AsyncLoadOptions.waitForResourceSharingClients.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = (*v1 & 0xFE) != 2;
  return Entity.__AsyncLoadOptions.waitForResourceSharingClients.modify;
}

uint64_t Entity.__AsyncLoadOptions.waitForResourceSharingClients.modify(uint64_t result)
{
  v1 = *result;
  v2 = **result & 0xFE;
  if (*(result + 8))
  {
    if (v2 == 2)
    {
      *v1 = 0;
    }
  }

  else if (v2 != 2)
  {
    *v1 = 3;
  }

  return result;
}

uint64_t Entity.__AsyncLoadOptions.init(loadOnResourceSharingClients:waitForResourceSharingClients:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X8>)
{
  if (a2)
  {
    if (result)
    {
      *a3 = 0;
    }

    else
    {
      type metadata accessor for Entity.LoadError(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
      swift_allocError();
      *v4 = 0xD0000000000000ABLL;
      v4[1] = 0x80000001C18ED6D0;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    if (result)
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    *a3 = v3;
  }

  return result;
}

uint64_t Entity.__AsyncLoadOptions.init(preloadAndWaitForResourceSharingClients:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    v2 = 0;
  }

  else
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

_BYTE *static Entity.__load(contentsOf:withName:downsamplingStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v15 = 0;
  v16 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v17 = 1;
  v18 = 0;
  v19 = 2;
  v20 = 0;
  outlined assign with take of __DownsamplingStrategy?(v10, v12);
  v14 = 0;
  outlined assign with copy of __DownsamplingStrategy?(a4, v12);
  v8 = specialized static Entity.__load(contentsOf:withName:loadOptions:)(a1, a2, a3, v12);
  outlined destroy of Entity.__LoadOptions(v12);
  return v8;
}

uint64_t static Entity.loadAsync(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = static RKARSystemCore.generateDecimatedMeshes;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v15 = 0;
  v16 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v17 = 1;
  v18 = 0;
  v19 = 2;
  v20 = 0;
  outlined assign with take of __DownsamplingStrategy?(v9, v11);
  v13 = 0;
  v14 = v6;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  LOBYTE(v9[0]) = static Entity.asynchronousLoadOptions;
  v7 = static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(a1, a2, a3, v11, v9);
  outlined destroy of Entity.__LoadOptions(v11);
  return v7;
}

uint64_t static Entity.__loadAsync(contentsOf:withName:generateDecimatedMesh:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v16 = 0;
  v17 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v18 = 1;
  v19 = 0;
  v20 = 2;
  v21 = 0;
  outlined assign with take of __DownsamplingStrategy?(v10, v12);
  v14 = 0;
  v15 = a4;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  LOBYTE(v10[0]) = static Entity.asynchronousLoadOptions;
  v8 = static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(a1, a2, a3, v12, v10);
  outlined destroy of Entity.__LoadOptions(v12);
  return v8;
}

uint64_t closure #1 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v46 = a7;
  v45 = a5;
  v43[1] = a4;
  v44 = a3;
  v43[2] = a2;
  v57 = a13;
  v50 = a12;
  v49 = a11;
  v48 = a10;
  v47 = a9;
  v54 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v51 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Information = type metadata accessor for RealityFileLoadInformation(0);
  v21 = *(Information - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](Information - 8);
  v23 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  outlined init with copy of Entity.__LoadOptions(a6, v60);
  outlined init with copy of LoadTrace(a8, v23, type metadata accessor for RealityFileLoadInformation);
  v25 = (*(v21 + 80) + 136) & ~*(v21 + 80);
  v26 = (v22 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = v60[3];
  *(v30 + 72) = v60[2];
  *(v30 + 88) = v31;
  *(v30 + 104) = v60[4];
  v32 = v60[1];
  *(v30 + 40) = v60[0];
  *(v30 + 16) = v44;
  *(v30 + 24) = a4;
  *(v30 + 32) = v45;
  v33 = v61;
  *(v30 + 56) = v32;
  v34 = v46;
  *(v30 + 120) = v33;
  *(v30 + 128) = v34;
  outlined init with take of RealityFileLoadInformation(v23, v30 + v25, type metadata accessor for RealityFileLoadInformation);
  *(v30 + v26) = v47;
  v35 = v48;
  *(v30 + v27) = v48;
  *(v30 + v28) = v49;
  *(v30 + v29) = v50;
  v36 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v36 = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  v36[1] = v24;
  aBlock[4] = partial apply for doLoadEntityFromURLAsync #1 () in closure #1 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:);
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_661;
  v37 = _Block_copy(aBlock);

  v38 = v35;

  v39 = v51;
  static DispatchQoS.unspecified.getter();
  v58 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v40 = v52;
  v41 = v54;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v39, v40, v37);
  _Block_release(v37);
  (*(v56 + 8))(v40, v41);
  (*(v53 + 8))(v39, v55);
}

uint64_t doLoadEntityFromURLAsync #1 () in closure #1 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v46 = a8;
  v39 = a12;
  v38 = a11;
  v17 = a3;
  v18 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v18 - 8);
  v45 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v41 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v42 = *(v20 - 8);
  v43 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v40 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LoadTrace(0);
  v22 = swift_projectBox();
  v58 = 256;
  v56 = 0u;
  memset(v57, 0, 56);
  v61 = 0;
  v62 = 0;
  LOBYTE(aBlock) = 1;
  v57[7] = a1;
  v57[8] = a2;
  v60 = v17 != 2;
  v59 = (a3 & 0xFE) != 2;
  v63 = *(a4 + 80);

  outlined assign with copy of __DownsamplingStrategy?(a4, &v57[1]);
  Information = type metadata accessor for RealityFileLoadInformation(0);
  __SceneResourceCache.loadSceneResource(url:sceneName:loadOptions:)(a6, *(a6 + *(Information + 20)), *(a6 + *(Information + 20) + 8), &aBlock, v52);
  v24 = v53;
  v25 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v26 = (*(v25 + 16))(v24, v25);
  swift_beginAccess();
  *(v22 + 16) = v26 & 1;
  outlined init with copy of __REAssetService(v52, v51);
  outlined init with copy of Entity.__LoadOptions(a4, v49);
  v27 = swift_allocObject();
  *(v27 + 16) = a9;
  outlined init with take of ForceEffectBase(v51, v27 + 24);
  v28 = v49[3];
  *(v27 + 104) = v49[2];
  *(v27 + 120) = v28;
  *(v27 + 136) = v49[4];
  v29 = v49[1];
  *(v27 + 72) = v49[0];
  *(v27 + 64) = a10;
  v30 = v50;
  *(v27 + 88) = v29;
  v31 = v38;
  v32 = v39;
  *(v27 + 152) = v30;
  *(v27 + 160) = v31;
  *(v27 + 168) = v32;
  v48[4] = partial apply for closure #1 in doLoadEntityFromURLAsync #1 () in closure #1 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:);
  v48[5] = v27;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 1107296256;
  v48[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v48[3] = &block_descriptor_673;
  v33 = _Block_copy(v48);

  v34 = v40;
  static DispatchQoS.unspecified.getter();
  v47 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v35 = v41;
  v36 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v34, v35, v33);
  _Block_release(v33);
  (*(v44 + 8))(v35, v36);
  (*(v42 + 8))(v34, v43);

  __swift_destroy_boxed_opaque_existential_1(v52);
  return outlined destroy of __REAssetBundle.LoadOptions(&aBlock);
}

uint64_t closure #1 in closure #1 in closure #2 in static Entity.__loadAsync(named:in:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  outlined init with copy of __REAssetService(a2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27SceneResourceLoadResultBase_pMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24SceneResourceEntityMaker_pMd, &_s17RealityFoundation24SceneResourceEntityMaker_pMR);
  swift_dynamicCast();
  v9 = v15;
  v10 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v11 = (*(v10 + 8))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v14);
  outlined init with copy of Entity.__LoadOptions(a4, v13);
  specialized Entity.LoadFinisher.setupAfterRealityLoadAsync(_:options:_:)(v11, v13, a5, a6, specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:));

  return outlined destroy of BodyTrackingComponent?(v13, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
}

uint64_t closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v52 = a8;
  v64 = a7;
  v53 = a6;
  v51 = a4;
  v50 = a3;
  v57 = a2;
  v55 = a1;
  v49 = a10;
  v48 = a9;
  v56 = a14;
  v54 = a12;
  v61 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchQoS();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v58 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for URL();
  v17 = *(v47 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v47);
  v20 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a5, v19);
  outlined init with copy of Entity.__LoadOptions(a11, v68);
  outlined init with copy of __REAssetService(a13, v67);
  v21 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v44 = (v21 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + v18 + 31) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 95) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v46 + 47) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v17 + 32))(v28 + v21, v20, v47);
  v29 = v28 + v44;
  v30 = v48;
  *v29 = v52;
  *(v29 + 8) = v30;
  *(v29 + 16) = v49;
  *(v28 + v22) = v50;
  *(v28 + v23) = v51;
  *(v28 + v24) = v53;
  v31 = v28 + v25;
  v32 = v68[3];
  *(v31 + 32) = v68[2];
  *(v31 + 48) = v32;
  *(v31 + 64) = v68[4];
  *(v31 + 80) = v69;
  v33 = v68[1];
  *v31 = v68[0];
  *(v31 + 16) = v33;
  *(v28 + v26) = v54;
  v34 = (v28 + v27);
  v35 = v57;
  *v34 = v55;
  v34[1] = v35;
  outlined init with take of ForceEffectBase(v67, v28 + v46);
  v36 = v56;
  *(v28 + v45) = v56;
  aBlock[4] = partial apply for closure #1 in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:);
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_683;
  v37 = _Block_copy(aBlock);

  v38 = v36;
  v39 = v58;
  static DispatchQoS.unspecified.getter();
  v65 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v40 = v59;
  v41 = v61;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v39, v40, v37);
  _Block_release(v37);
  (*(v63 + 8))(v40, v41);
  (*(v60 + 8))(v39, v62);
}

void postLoad #1 (data:) in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit20__SceneResourceCacheC08ImportedC0VSgMd, &_s10RealityKit20__SceneResourceCacheC08ImportedC0VSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for __SceneResourceCache.ImportedScene(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
  if ((v19 & 1) == 0)
  {
    goto LABEL_26;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v18, v50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v45 = v4;
  v46 = a3;
  if (v48 == 0x64616F4C74736F50 && v49 == 0xEC00000061746144)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
LABEL_26:
      type metadata accessor for Entity.LoadError(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return;
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

  v21 = specialized __RawDictionaryStorage.find<A>(_:)(0x797469746E65, 0xE600000000000000);
  if ((v22 & 1) == 0)
  {
    goto LABEL_26;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v21, v50);
  type metadata accessor for Entity();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v23 = v48;
  if (!*(a1 + 16) || (v24 = specialized __RawDictionaryStorage.find<A>(_:)(0x646574726F706D69, 0xEE0073656E656353), (v25 & 1) == 0) || (outlined init with copy of Any(*(a1 + 56) + 32 * v24, v50), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_26;
  }

  v38 = v23;
  v26 = v48;
  swift_beginAccess();
  outlined init with copy of __REAssetService(a2 + 120, v50);
  v27 = v51;
  v28 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  __REAssetService.asManager.getter(v27, v28);
  v29 = v26;
  v43 = *(v30 + 88);

  __swift_destroy_boxed_opaque_existential_1(v50);
  v42 = *(v26 + 16);
  if (v42)
  {
    v31 = 0;
    v40 = (v12 + 48);
    v41 = v26 + 32;
    v44 = MEMORY[0x1E69E7CC0];
    v32 = v45;
    v39 = v26;
    while (v31 < *(v29 + 16))
    {
      v53 = *(v41 + 8 * v31);
      closure #1 in postLoad #1 (data:) in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(&v53, v10);
      if ((*v40)(v10, 1, v11) == 1)
      {
        outlined destroy of BodyTrackingComponent?(v10, &_s10RealityKit20__SceneResourceCacheC08ImportedC0VSgMd, &_s10RealityKit20__SceneResourceCacheC08ImportedC0VSgMR);
      }

      else
      {
        outlined init with take of RealityFileLoadInformation(v10, v17, type metadata accessor for __SceneResourceCache.ImportedScene);
        outlined init with take of RealityFileLoadInformation(v17, v14, type metadata accessor for __SceneResourceCache.ImportedScene);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1, v44);
        }

        v33 = v44;
        v35 = v44[2];
        v34 = v44[3];
        if (v35 >= v34 >> 1)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v44);
        }

        v33[2] = v35 + 1;
        v36 = (*(v12 + 80) + 32) & ~*(v12 + 80);
        v44 = v33;
        outlined init with take of RealityFileLoadInformation(v14, v33 + v36 + *(v12 + 72) * v35, type metadata accessor for __SceneResourceCache.ImportedScene);
        v29 = v39;
      }

      if (v42 == ++v31)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
    v44 = MEMORY[0x1E69E7CC0];
    v32 = v45;
LABEL_28:

    __SceneResourceCache.registerImportedScenes(url:importedScenes:)(v44, v50);

    if (!v32)
    {

      specialized static Entity.applyHackForRealityIOUSDImports(rootEntity:)(v38);

      specialized static Entity.addInputTargetComponentsAndCollisionShapesToTapTriggerTargets(for:)(v37);
    }
  }
}

uint64_t closure #1 in postLoad #1 (data:) in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_20;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_20;
  }

  outlined init with copy of Any(*(v4 + 56) + 32 * v5, v22);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  if (v20 == 0xD000000000000010 && 0x80000001C18EDFA0 == v21)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (*(v4 + 16))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(0x737341656E656373, 0xEE00656D614E7465);
    if (v9)
    {
      outlined init with copy of Any(*(v4 + 56) + 32 * v8, v22);
      if (swift_dynamicCast())
      {
        String.utf8CString.getter();

        AssetHandle = REAssetManagerCreateAssetHandle();

        if (AssetHandle)
        {
          if (*(v4 + 16))
          {
            v11 = specialized __RawDictionaryStorage.find<A>(_:)(0x6D614E656E656373, 0xE900000000000065);
            if (v12)
            {
              outlined init with copy of Any(*(v4 + 56) + 32 * v11, v22);
              if (swift_dynamicCast())
              {
                if (*(v4 + 16))
                {
                  v13 = specialized __RawDictionaryStorage.find<A>(_:)(0x657669746361, 0xE600000000000000);
                  if (v14)
                  {
                    outlined init with copy of Any(*(v4 + 56) + 32 * v13, v22);
                    if (swift_dynamicCast())
                    {
                      type metadata accessor for __REAsset();
                      v15 = swift_allocObject();
                      *(v15 + 16) = AssetHandle;
                      UUID.init()();
                      v16 = type metadata accessor for __SceneResourceCache.ImportedScene(0);
                      v17 = (a3 + v16[5]);
                      *v17 = v20;
                      v17[1] = v21;
                      *(a3 + v16[6]) = v15;
                      *(a3 + v16[7]) = v20;
                      return (*(*(v16 - 1) + 56))(a3, 0, 1, v16);
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

LABEL_20:
  v19 = type metadata accessor for __SceneResourceCache.ImportedScene(0);
  return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
}

double closure #1 in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v54 = a8;
  v58 = a7;
  v56 = a6;
  v62 = a3;
  v63 = a5;
  v53 = a4;
  v52 = a2;
  v55 = a11;
  v61 = a12;
  v57 = a10;
  v60 = a9;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v13 - 8);
  v51 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v48[2] = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v48[1] = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48[0] = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 1701869940;
  v59 = inited + 32;
  *(inited + 16) = xmmword_1C18CF0A0;
  v21 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD000000000000010;
  *(inited + 56) = 0x80000001C18EDF80;
  *(inited + 72) = v21;
  *(inited + 80) = 0x73746E65746E6F63;
  *(inited + 88) = 0xEA0000000000664FLL;
  *(inited + 120) = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
  v23 = *(v17 + 16);
  v23(boxed_opaque_existential_1, a1, v16);
  *(inited + 128) = 0x656D614E68746977;
  *(inited + 136) = 0xE800000000000000;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v25 = v62;
  *(inited + 144) = v52;
  *(inited + 152) = v25;
  *(inited + 168) = v24;
  *(inited + 176) = 0xD000000000000015;
  v26 = MEMORY[0x1E69E6370];
  *(inited + 184) = 0x80000001C18ED680;
  *(inited + 192) = v53;
  *(inited + 216) = v26;
  *(inited + 224) = 0x64616F4C74736F70;
  *(inited + 232) = 0xE800000000000000;
  v23(v19, a1, v16);
  v27 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v28 = (v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = v56;
  *(v29 + 16) = v63;
  *(v29 + 24) = v30;
  v31 = v29 + v27;
  v32 = v55;
  (*(v17 + 32))(v31, v19, v16);
  *(v29 + v28) = v58;
  v33 = v57;
  v34 = swift_allocObject();
  *(v34 + 16) = partial apply for postLoad #1 (data:) in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:);
  *(v34 + 24) = v29;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
  *(inited + 240) = thunk for @escaping @callee_guaranteed (@guaranteed [String : Any]) -> (@error @owned Error)partial apply;
  *(inited + 248) = v34;
  *(inited + 264) = v35;
  *(inited + 272) = 0xD000000000000018;
  *(inited + 280) = 0x80000001C18EDE40;
  v36 = v54;
  *(inited + 288) = *(v54 + 49);
  *(inited + 312) = MEMORY[0x1E69E6370];
  *(inited + 320) = 0x694C79726F6D656DLL;
  *(inited + 328) = 0xEB0000000074696DLL;
  v37 = *(v36 + 56);
  LOBYTE(v34) = *(v36 + 64);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  *(inited + 336) = v37;
  *(inited + 344) = v34;
  *(inited + 360) = v38;
  strcpy((inited + 368), "featuresToSkip");
  *(inited + 383) = -18;
  *(inited + 384) = *(v36 + 68);
  *(inited + 408) = &type metadata for Entity.__LoadOptions.LoadableFeatures;
  *(inited + 416) = 0x6C6C69666C7566;
  *(inited + 424) = 0xE700000000000000;
  outlined init with copy of Entity.__LoadOptions(v36, v64);
  v39 = swift_allocObject();
  v40 = v64[3];
  *(v39 + 56) = v64[2];
  *(v39 + 72) = v40;
  *(v39 + 88) = v64[4];
  v41 = v64[1];
  *(v39 + 24) = v64[0];
  *(v39 + 16) = v60;
  v42 = v65;
  *(v39 + 40) = v41;
  *(v39 + 104) = v42;
  *(v39 + 112) = v33;
  *(v39 + 120) = v32;
  v43 = swift_allocObject();
  *(v43 + 16) = partial apply for closure #1 in closure #1 in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:);
  *(v43 + 24) = v39;
  *(inited + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit6EntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit6EntityCs5Error_pGcMR);
  *(inited + 432) = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed Result<A, Error>) -> ();
  *(inited + 440) = v43;

  v44 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v45 = v61[3];
  v46 = v61[4];
  __swift_project_boxed_opaque_existential_1(v61, v45);
  (*(v46 + 40))(v44, v45, v46);

  return result;
}

uint64_t _ss6ResultOy10RealityKit6EntityCs5Error_pGIegg_Iegg_AByxsAF_pGRi_zRi0_zlyAEIsegn_Iegg_TR(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(), uint64_t))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  a3(thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply, v6);
}

uint64_t static Entity.loadAnchor(named:in:)(uint64_t a1, unint64_t a2, void *a3)
{
  v57 = a2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v40 = a3;
  }

  else
  {
    v40 = [objc_opt_self() mainBundle];
  }

  v9 = a3;
  v10 = specialized static __ServiceLocator.shared.getter();
  v11 = *(*(v10 + 168) + 32);
  swift_beginAccess();
  v12 = *(v10 + 24);
  swift_unownedRetainStrong();
  v13 = *(v12 + 32);

  v14 = v13;

  *v8 = v14;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v14)
  {
    if (one-time initialization token for synchronousLoadOptions == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v15 = static Entity.synchronousLoadOptions;
  swift_beginAccess();
  v16 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA06AnchorC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA06AnchorC0CGMR);
  inited = swift_initStackObject();
  swift_weakInit();
  v18 = v57;
  *(inited + 16) = a1;
  *(inited + 24) = v18;
  *(inited + 32) = v15;
  *(inited + 33) = v16;
  *(inited + 34) = 1;
  *(inited + 36) = 4;
  swift_weakAssign();
  swift_beginAccess();
  outlined init with copy of [String : String](v10 + 176, &v55, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  if (!v56)
  {

    outlined destroy of BodyTrackingComponent?(&v55, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
    goto LABEL_13;
  }

  v37[1] = v10;
  v38 = v11;
  outlined init with take of ForceEffectBase(&v55, &v46);
  v19 = a1;
  v20 = v48;
  __swift_project_boxed_opaque_existential_1(&v46, v48);
  v21 = *(*(&v20 + 1) + 16);

  v22 = v40;
  if ((v21(v19, v18, v40, v20, *(&v20 + 1)) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v46);
    v18 = v57;
    a1 = v19;
    v11 = v38;
LABEL_13:
    memset(v51, 0, 25);
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v51[25] = 1;
    v53 = 0;
    v54 = 0;
    v52 = 0;
    LOBYTE(v46) = 2;
    v51[27] = v15 != 2;
    v51[26] = (v15 & 0xFE) != 2;
    v30 = v39;
    v31 = v40;
    __SceneResourceCache.findSceneResource(named:bundle:options:)(a1, v18, v40, &v46, &v44);
    if (v30)
    {
      outlined destroy of __REAssetBundle.LoadOptions(&v46);
    }

    else
    {
      if (v45)
      {
        outlined init with take of ForceEffectBase(&v44, &v55);
        outlined init with copy of __REAssetService(&v55, &v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27SceneResourceLoadResultBase_pMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24SceneResourceEntityMaker_pMd, &_s17RealityFoundation24SceneResourceEntityMaker_pMR);
        swift_dynamicCast();
        v32 = v42;
        v33 = v43;
        __swift_project_boxed_opaque_existential_1(v41, v42);
        v11 = (*(v33 + 16))(v32, v33);
        __swift_destroy_boxed_opaque_existential_1(v41);
        specialized Entity.LoadFinisher.setupAfterRealityLoadSync(_:)(v11);

        __swift_destroy_boxed_opaque_existential_1(&v55);
      }

      else
      {
        outlined destroy of BodyTrackingComponent?(&v44, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMR);
        type metadata accessor for Entity.LoadError(0);
        _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
        swift_allocError();
        *v35 = a1;
        v35[1] = v18;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      outlined destroy of __REAssetBundle.LoadOptions(&v46);
    }

    return v11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v23 = swift_initStackObject();
  *(v23 + 32) = 1701869940;
  *(v23 + 16) = xmmword_1C189FFC0;
  v24 = MEMORY[0x1E69E6158];
  *(v23 + 40) = 0xE400000000000000;
  *(v23 + 48) = 0xD000000000000013;
  *(v23 + 56) = 0x80000001C18ED780;
  *(v23 + 72) = v24;
  *(v23 + 80) = 0x64656D616ELL;
  *(v23 + 88) = 0xE500000000000000;
  *(v23 + 96) = v19;
  *(v23 + 104) = v57;
  *(v23 + 120) = v24;
  *(v23 + 128) = 0x656C646E7562;
  *(v23 + 136) = 0xE600000000000000;
  v25 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x1E696AAE8);
  *(v23 + 144) = v22;
  *(v23 + 168) = v25;
  *(v23 + 176) = 0xD000000000000015;
  *(v23 + 184) = 0x80000001C18ED680;
  v26 = static RKARSystemCore.generateDecimatedMeshes;
  *(v23 + 216) = MEMORY[0x1E69E6370];
  *(v23 + 192) = v26;

  v27 = v22;
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v23);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v28 = v48;
  __swift_project_boxed_opaque_existential_1(&v46, v48);
  v29 = v39;
  (*(*(&v28 + 1) + 32))(v11, v28, *(&v28 + 1));

  if (!v29)
  {
    type metadata accessor for AnchorEntity();
    v11 = swift_dynamicCastClassUnconditional();
    specialized Entity.LoadFinisher.setupAfterUSDLoadSync(_:)(v11, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:), v34);
  }

  __swift_destroy_boxed_opaque_existential_1(&v46);
  return v11;
}

uint64_t closure #1 in static Entity.loadAnchorAsync(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v33 = a2;
  v34 = a7;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v14 - 8);
  v32 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v29[2] = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v29[1] = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29[0] = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C18CF0B0;
  *(inited + 32) = 1701869940;
  v19 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD000000000000018;
  *(inited + 56) = 0x80000001C18EE020;
  *(inited + 72) = v19;
  *(inited + 80) = 0x64656D616ELL;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = a3;
  *(inited + 104) = a4;
  *(inited + 120) = v19;
  *(inited + 128) = 0x656C646E7562;
  *(inited + 136) = 0xE600000000000000;
  v20 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x1E696AAE8);
  *(inited + 144) = a5;
  *(inited + 168) = v20;
  *(inited + 176) = 0x64616F4C74736F70;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
  *(inited + 224) = 0xD000000000000015;
  *(inited + 192) = specialized thunk for @escaping @callee_guaranteed (@guaranteed [String : Any]) -> (@error @owned Error);
  *(inited + 200) = 0;
  *(inited + 232) = 0x80000001C18ED680;
  swift_beginAccess();
  v21 = MEMORY[0x1E69E6370];
  *(inited + 240) = static RKARSystemCore.generateDecimatedMeshes;
  *(inited + 264) = v21;
  *(inited + 272) = 0x6C6C69666C7566;
  *(inited + 280) = 0xE700000000000000;
  v22 = swift_allocObject();
  v22[2] = v34;
  v22[3] = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  v22[4] = v17;
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for closure #1 in closure #1 in static Entity.loadAnchorAsync(named:in:);
  *(v23 + 24) = v22;
  *(inited + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMR);
  *(inited + 288) = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed Result<A, Error>) -> ();
  *(inited + 296) = v23;

  v24 = a5;

  v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v26 = a8[3];
  v27 = a8[4];
  __swift_project_boxed_opaque_existential_1(a8, v26);
  (*(v27 + 40))(v25, v26, v27);
}

uint64_t closure #2 in static Entity.loadAnchorAsync(named:in:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34 = a7;
  v35 = a8;
  v40 = a11;
  v32 = a9;
  v33 = a5;
  v36 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v37 = *(v18 - 8);
  v38 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  v23 = v32;
  v24 = v33;
  *(v22 + 24) = a4;
  *(v22 + 32) = v24;
  *(v22 + 40) = a6;
  v26 = v34;
  v25 = v35;
  *(v22 + 48) = v34;
  *(v22 + 56) = v25;
  *(v22 + 64) = v23;
  *(v22 + 72) = a10;
  *(v22 + 80) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  *(v22 + 88) = v21;
  aBlock[4] = partial apply for doLoadAnchorEntityAsync #1 () in closure #2 in static Entity.loadAnchorAsync(named:in:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_814;
  v27 = _Block_copy(aBlock);

  v28 = v26;
  v29 = v25;

  static DispatchQoS.unspecified.getter();
  v41 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v30 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v20, v17, v27);
  _Block_release(v27);
  (*(v39 + 8))(v17, v30);
  (*(v37 + 8))(v20, v38);
}

uint64_t doLoadAnchorEntityAsync #1 () in closure #2 in static Entity.loadAnchorAsync(named:in:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v34 = a7;
  v35 = a8;
  v41 = a6;
  v37 = a10;
  v36 = a9;
  v14 = a1;
  v42 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v38 = *(v17 - 8);
  v39 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v56, 0, 25);
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v56[25] = 1;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  LOBYTE(v51) = 1;
  v56[27] = v14 != 2;
  v56[26] = (a1 & 0xFE) != 2;
  __SceneResourceCache.findSceneResource(named:bundle:options:)(a3, a4, a5, &v51, &v44);
  v26 = v34;
  v25 = v35;
  if (v46)
  {
    outlined init with take of ForceEffectBase(&v44, v50);
    outlined init with copy of __REAssetService(v50, v49);
    v27 = swift_allocObject();
    v27[2] = v26;
    outlined init with take of ForceEffectBase(v49, (v27 + 3));
    v28 = v36;
    v27[8] = v25;
    v27[9] = v28;
    v27[10] = v37;
    v47 = partial apply for closure #1 in doLoadAnchorEntityAsync #1 () in closure #2 in static Entity.loadAnchorAsync(named:in:);
    v48 = v27;
    *&v44 = MEMORY[0x1E69E9820];
    *(&v44 + 1) = 1107296256;
    v45 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v46 = &block_descriptor_826;
    v29 = _Block_copy(&v44);

    static DispatchQoS.unspecified.getter();
    v43 = MEMORY[0x1E69E7CC0];
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v30 = v42;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v19, v16, v29);
    _Block_release(v29);
    (*(v40 + 8))(v16, v30);
    (*(v38 + 8))(v19, v39);
    __swift_destroy_boxed_opaque_existential_1(v50);
    outlined destroy of __REAssetBundle.LoadOptions(&v51);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v44, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMR);
    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
    v32 = swift_allocError();
    *v33 = a3;
    v33[1] = a4;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    outlined destroy of __REAssetBundle.LoadOptions(&v51);
    v20 = swift_allocObject();
    v21 = v37;
    v20[2] = v36;
    v20[3] = v21;
    v20[4] = v32;
    *(&v53 + 1) = partial apply for closure #1 in closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:);
    *&v54 = v20;
    v51 = MEMORY[0x1E69E9820];
    *&v52 = 1107296256;
    *(&v52 + 1) = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *&v53 = &block_descriptor_820;
    v22 = _Block_copy(&v51);

    v23 = v32;
    static DispatchQoS.unspecified.getter();
    *&v44 = MEMORY[0x1E69E7CC0];
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v24 = v42;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v19, v16, v22);
    _Block_release(v22);

    (*(v40 + 8))(v16, v24);
    (*(v38 + 8))(v19, v39);
  }
}

char *static Entity.loadAnchor(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v3 = specialized static Entity.__loadAnchor(contentsOf:withName:downsamplingStrategy:)(a1, a2, a3, v5);
  outlined destroy of BodyTrackingComponent?(v5, &_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
  return v3;
}

uint64_t static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a4;
  v97 = a2;
  v106 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v90 - v6;
  Information = type metadata accessor for RealityFileLoadInformation(0);
  v100 = *(Information - 8);
  v8 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](Information);
  v93 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v90 - v10;
  v96 = type metadata accessor for URL();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v94 = v11;
  v102 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = specialized static __ServiceLocator.shared.getter();
  v17 = *(*(v16 + 168) + 16);
  swift_beginAccess();
  v18 = *(v16 + 24);
  swift_unownedRetainStrong();
  v19 = *(v18 + 32);

  v20 = v17;
  v21 = v19;

  v108 = v16;
  v22 = *(*(v16 + 168) + 32);
  *v15 = v21;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v23 = v21;

  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v25 = *(v13 + 8);
  v24 = v13 + 8;
  v25(v15, v12);
  if (v21)
  {
    v24 = v22;
    v107 = v23;
    v104 = a3;
    v105 = v20;
    type metadata accessor for LoadRequestDependencies();
    a3 = swift_allocObject();
    v26 = MEMORY[0x1E69E7CC0];
    *(a3 + 16) = MEMORY[0x1E69E7CC0];
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(a3 + 24) = v27;
    swift_beginAccess();
    *(a3 + 16) = v26;
    if (one-time initialization token for asynchronousLoadOptions == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v28 = static Entity.asynchronousLoadOptions;
  v29 = v106;
  v30 = URL.absoluteString.getter();
  v32 = v31;
  swift_beginAccess();
  v33 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA06AnchorC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA06AnchorC0CGMR);
  v34 = swift_allocObject();
  swift_weakInit();
  *(v34 + 16) = v30;
  *(v34 + 24) = v32;
  v91 = v28;
  *(v34 + 32) = v28;
  *(v34 + 33) = v33;
  *(v34 + 34) = 1;
  *(v34 + 36) = 4;
  swift_weakAssign();
  v35 = v108;
  swift_beginAccess();
  outlined init with copy of [String : String](v35 + 176, &v109, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  v36 = a3;
  if (v110)
  {
    v90 = v24;
    outlined init with take of ForceEffectBase(&v109, &v111);
    v38 = *(&v112 + 1);
    v37 = v113;
    __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
    v39 = *(v37 + 24);

    if (v39(v29, v38, v37))
    {
      v40 = v95;
      v41 = *(v95 + 16);
      v106 = v36;
      v42 = v96;
      v41(v102, v29, v96);
      outlined init with copy of __REAssetService(&v111, &v109);
      v43 = (*(v40 + 80) + 16) & ~*(v40 + 80);
      v44 = (v94 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
      v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF8;
      v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
      v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
      v48 = swift_allocObject();
      (*(v40 + 32))(v48 + v43, v102, v42);
      v49 = (v48 + v44);
      v50 = v104;
      *v49 = v97;
      v49[1] = v50;
      *(v48 + v45) = v98;
      *(v48 + v46) = v34;
      outlined init with take of ForceEffectBase(&v109, v48 + v47);
      *(v48 + ((v47 + 47) & 0xFFFFFFFFFFFFFFF8)) = v107;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMd, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMR);
      v51 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMR);
      v52 = swift_allocObject();
      v53 = swift_allocObject();
      *(v53 + 16) = 0;
      *(v52 + 16) = v53;
      *(v52 + 24) = 0;
      *(v52 + 32) = -1;
      *(v51 + 16) = v52;
      v54 = swift_allocObject();
      v54[2] = partial apply for closure #1 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:);
      v54[3] = v48;
      v55 = v106;
      v54[4] = v52;
      v54[5] = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMR);
      swift_allocObject();

      v56 = Future.init(_:)();

      *(v51 + 24) = v56;
      __swift_destroy_boxed_opaque_existential_1(&v111);
      return v51;
    }

    __swift_destroy_boxed_opaque_existential_1(&v111);
    v57 = v90;
  }

  else
  {

    outlined destroy of BodyTrackingComponent?(&v109, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
    v57 = v24;
  }

  type metadata accessor for RealityFileLoadInformationResolver();
  static RealityFileLoadInformationResolver.resolve(url:)(v29, v7);
  v58 = v100;
  if ((*(v100 + 48))(v7, 1, Information) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v7, &_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
    v59 = v95;
    v60 = v102;
    v61 = v29;
    v62 = v96;
    (*(v95 + 16))(v102, v61, v96);
    v63 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v64 = swift_allocObject();
    (*(v59 + 32))(v64 + v63, v60, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMd, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMR);
    v51 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMR);
    v65 = swift_allocObject();
    v66 = swift_allocObject();
    *(v66 + 16) = 0;
    *(v65 + 16) = v66;
    *(v65 + 24) = 0;
    *(v65 + 32) = -1;
    *(v51 + 16) = v65;
    v67 = swift_allocObject();
    v67[2] = partial apply for closure #2 in static Entity.loadBodyTrackedAsync(contentsOf:withName:);
    v67[3] = v64;
    v67[4] = v65;
    v67[5] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMR);
    swift_allocObject();

    v68 = Future.init(_:)();

    *(v51 + 24) = v68;
  }

  else
  {
    v69 = v7;
    v70 = v101;
    outlined init with take of RealityFileLoadInformation(v69, v101, type metadata accessor for RealityFileLoadInformation);
    outlined init with copy of [String : String](v92, &v111, &_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
    v71 = v93;
    outlined init with copy of LoadTrace(v70, v93, type metadata accessor for RealityFileLoadInformation);
    v72 = *(v58 + 80);
    v106 = v36;
    v73 = (v72 + 88) & ~v72;
    v74 = (v8 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = v57;
    v76 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
    v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
    v78 = swift_allocObject();
    v79 = v112;
    *(v78 + 16) = v111;
    *(v78 + 32) = v79;
    v80 = v97;
    *(v78 + 48) = v113;
    *(v78 + 56) = v80;
    *(v78 + 64) = v104;
    *(v78 + 72) = v91;
    *(v78 + 80) = v75;
    outlined init with take of RealityFileLoadInformation(v71, v78 + v73, type metadata accessor for RealityFileLoadInformation);
    *(v78 + v74) = v107;
    *(v78 + v76) = v98;
    *(v78 + v77) = v34;
    v81 = v105;
    *(v78 + ((v77 + 15) & 0xFFFFFFFFFFFFFFF8)) = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMd, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMR);
    v51 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMR);
    v82 = swift_allocObject();
    v83 = swift_allocObject();
    *(v83 + 16) = 0;
    *(v82 + 16) = v83;
    *(v82 + 24) = 0;
    *(v82 + 32) = -1;
    *(v51 + 16) = v82;
    v84 = swift_allocObject();
    v84[2] = partial apply for closure #2 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:);
    v84[3] = v78;
    v85 = v106;
    v84[4] = v82;
    v84[5] = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMR);
    swift_allocObject();

    v86 = v81;
    v87 = v107;

    v88 = Future.init(_:)();

    *(v51 + 24) = v88;

    outlined destroy of LoadTrace(v101, type metadata accessor for RealityFileLoadInformation);
  }

  return v51;
}

uint64_t closure #1 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v35 = a2;
  v36 = a7;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v14 - 8);
  v34 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v31[2] = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v31[1] = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31[0] = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 1701869940;
  *(inited + 16) = xmmword_1C18CF0B0;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD000000000000016;
  v19 = MEMORY[0x1E69E6158];
  *(inited + 56) = 0x80000001C18EDF20;
  *(inited + 72) = v19;
  *(inited + 80) = 0x73746E65746E6F63;
  *(inited + 88) = 0xEA0000000000664FLL;
  v20 = type metadata accessor for URL();
  *(inited + 120) = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, a3, v20);
  *(inited + 128) = 0x656D614E68746977;
  *(inited + 136) = 0xE800000000000000;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(inited + 144) = a4;
  *(inited + 152) = a5;
  *(inited + 168) = v22;
  *(inited + 176) = 0xD000000000000015;
  *(inited + 184) = 0x80000001C18ED680;
  swift_beginAccess();
  v23 = MEMORY[0x1E69E6370];
  *(inited + 192) = static RKARSystemCore.generateDecimatedMeshes;
  *(inited + 216) = v23;
  *(inited + 224) = 0x64616F4C74736F70;
  *(inited + 232) = 0xE800000000000000;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
  *(inited + 240) = specialized thunk for @escaping @callee_guaranteed (@guaranteed [String : Any]) -> (@error @owned Error);
  *(inited + 248) = 0;
  *(inited + 264) = v24;
  *(inited + 272) = 0x6C6C69666C7566;
  *(inited + 280) = 0xE700000000000000;
  v25 = swift_allocObject();
  v25[2] = v36;
  v25[3] = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  v25[4] = v17;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for closure #1 in closure #1 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:);
  *(v26 + 24) = v25;
  *(inited + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMR);
  *(inited + 288) = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed Result<A, Error>) -> ();
  *(inited + 296) = v26;

  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v28 = a8[3];
  v29 = a8[4];
  __swift_project_boxed_opaque_existential_1(a8, v28);
  (*(v29 + 40))(v27, v28, v29);
}

uint64_t closure #1 in closure #1 in static Entity.loadAnchorAsync(named:in:)(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  if (a2)
  {
    return a4(a1, 1, a3);
  }

  memset(v6, 0, 24);
  v6[3] = 1;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  specialized Entity.LoadFinisher.setupAfterUSDLoadAsync(_:options:_:)(a1, v6, a4, a5, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:), specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:), 0);
  return outlined destroy of BodyTrackingComponent?(v6, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
}

uint64_t closure #2 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v43 = a6;
  v42 = a4;
  v41 = a2;
  v53 = a12;
  v45 = a10;
  v46 = a11;
  v44 = a9;
  v50 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchQoS();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Information = type metadata accessor for RealityFileLoadInformation(0);
  v21 = *(Information - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](Information - 8);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  outlined init with copy of [String : String](a3, v56, &_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
  outlined init with copy of LoadTrace(a8, v23, type metadata accessor for RealityFileLoadInformation);
  v25 = (*(v21 + 80) + 88) & ~*(v21 + 80);
  v26 = (v22 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = v56[1];
  *(v29 + 16) = v56[0];
  *(v29 + 32) = v30;
  v31 = v42;
  *(v29 + 48) = v57;
  *(v29 + 56) = v31;
  *(v29 + 64) = a5;
  *(v29 + 72) = v43;
  *(v29 + 80) = a7;
  outlined init with take of RealityFileLoadInformation(v23, v29 + v25, type metadata accessor for RealityFileLoadInformation);
  v32 = v44;
  *(v29 + v26) = v44;
  v33 = v46;
  *(v29 + v27) = v45;
  *(v29 + v28) = v33;
  v34 = (v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v34 = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  v34[1] = v24;
  aBlock[4] = partial apply for doLoadAnchorEntityFromURLAsync #1 () in closure #2 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:);
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_573_0;
  v35 = _Block_copy(aBlock);

  v36 = v32;

  v37 = v47;
  static DispatchQoS.unspecified.getter();
  v54 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v38 = v48;
  v39 = v50;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v37, v38, v35);
  _Block_release(v35);
  (*(v52 + 8))(v38, v39);
  (*(v49 + 8))(v37, v51);
}

uint64_t doLoadAnchorEntityFromURLAsync #1 () in closure #2 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31[0] = a8;
  v31[1] = a5;
  v37 = a7;
  v33 = a11;
  v32 = a10;
  v16 = a4;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v34 = *(v19 - 8);
  v35 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = 256;
  v44 = 0u;
  memset(v45, 0, sizeof(v45));
  v46 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v43[0] = 1;
  outlined assign with copy of __DownsamplingStrategy?(a1, &v45[8]);
  v47 = a2;
  v48 = a3;
  v51 = v16 != 2;
  v50 = (a4 & 0xFE) != 2;
  v22 = (a6 + *(type metadata accessor for RealityFileLoadInformation(0) + 20));
  v23 = *v22;
  v24 = v22[1];

  __SceneResourceCache.loadSceneResource(url:sceneName:loadOptions:)(a6, v23, v24, v43, v42);
  outlined init with copy of __REAssetService(v42, v41);
  v25 = swift_allocObject();
  v25[2] = v31[0];
  outlined init with take of ForceEffectBase(v41, (v25 + 3));
  v26 = v32;
  v27 = v33;
  v25[8] = a9;
  v25[9] = v26;
  v25[10] = v27;
  v40[4] = partial apply for closure #1 in doLoadAnchorEntityFromURLAsync #1 () in closure #2 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:);
  v40[5] = v25;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 1107296256;
  v40[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v40[3] = &block_descriptor_585;
  v28 = _Block_copy(v40);

  static DispatchQoS.unspecified.getter();
  v39 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v29 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v21, v18, v28);
  _Block_release(v28);
  (*(v36 + 8))(v18, v29);
  (*(v34 + 8))(v21, v35);
  __swift_destroy_boxed_opaque_existential_1(v42);

  return outlined destroy of __REAssetBundle.LoadOptions(v43);
}

uint64_t closure #1 in doLoadAnchorEntityAsync #1 () in closure #2 in static Entity.loadAnchorAsync(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  outlined init with copy of __REAssetService(a2, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27SceneResourceLoadResultBase_pMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24SceneResourceEntityMaker_pMd, &_s17RealityFoundation24SceneResourceEntityMaker_pMR);
  swift_dynamicCast();
  v7 = v17;
  v8 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v9 = (*(v8 + 16))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v16);
  memset(v11, 0, 24);
  v11[3] = 1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  specialized Entity.LoadFinisher.setupAfterRealityLoadAsync(_:options:_:)(v9, v11, a4, a5, specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:));

  return outlined destroy of BodyTrackingComponent?(v11, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
}

double _s10RealityKit6EntityC20withUnsafeJointNames33_F26D63620DB78A19432B1EBEC9E8266ALLyxSaySSG_xSPySPys4Int8VGSgGSgKXEtKlFZyt_Tt2g504_s10a4Kit6c26C20withCharacterOptions33_hijklmn39ALLyxxSo08REEntityeF0azKXEKlFZxSPySPys4O19VGSgGSgKXEfU_yt_Tg5SiSo08REEntityS7Optionsaxs5Error_pRi_zRi0_zlyytIsglrzo_Tf1nnc_n(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v26 = a3;
    v7 = v3;
    v25[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v8 = v25[0];
    v9 = a1 + 40;
    do
    {
      v10 = String.utf8CString.getter();

      v11 = strdup((v10 + 32));

      v25[0] = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v8 = v25[0];
      }

      *(v8 + 16) = v14;
      *(v8 + 8 * v13 + 32) = v11;
      v9 += 16;
      --v5;
    }

    while (v5);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
    v14 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v14)
    {
      v20 = 1;
      v16 = MEMORY[0x1E69E7CC0];
      goto LABEL_16;
    }

    v26 = a3;
    v7 = v3;
  }

  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  do
  {
    v17 = *(v8 + 8 * v15 + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
    }

    ++v15;
    *(v16 + 2) = v19 + 1;
    *&v16[8 * v19 + 32] = v17;
  }

  while (v14 != v15);
  v20 = 0;
  v3 = v7;
  a3 = v26;
LABEL_16:
  LOBYTE(v25[0]) = 0;
  v25[1] = a2;
  v25[2] = v16 + 32;
  a3(v25);
  if (v3)
  {

    if ((v20 & 1) == 0)
    {
      v21 = (v8 + 32);
      do
      {
        v22 = *v21++;
        free(v22);
        --v14;
      }

      while (v14);
    }
  }

  else
  {

    if ((v20 & 1) == 0)
    {
      v23 = 32;
      do
      {
        free(*(v8 + v23));
        v23 += 8;
        --v14;
      }

      while (v14);
    }
  }

  return result;
}

uint64_t static Entity.loadBodyTracked(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit21BodyTrackingComponentVSgMd, &_s10RealityKit21BodyTrackingComponentVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v44 - v7;
  v8 = type metadata accessor for BodyTrackingComponent(0);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v55 = a3;
  }

  else
  {
    v55 = [objc_opt_self() mainBundle];
  }

  v14 = a3;
  v15 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v16 = *(v15 + 24);
  swift_unownedRetainStrong();
  v17 = *(v16 + 32);

  v18 = v17;

  *v13 = v18;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v16)
  {
    if (one-time initialization token for synchronousLoadOptions == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v19 = static Entity.synchronousLoadOptions;
  swift_beginAccess();
  v20 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA011BodyTrackedC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA011BodyTrackedC0CGMR);
  inited = swift_initStackObject();
  swift_weakInit();
  *(inited + 16) = a1;
  *(inited + 24) = a2;
  *(inited + 32) = v19;
  *(inited + 33) = v20;
  *(inited + 34) = 256;
  *(inited + 36) = 3;
  swift_weakAssign();
  swift_beginAccess();
  outlined init with copy of [String : String](v15 + 176, &v50, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  if (!v51)
  {

    outlined destroy of BodyTrackingComponent?(&v50, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
LABEL_13:
    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
    swift_allocError();
    *v36 = a1;
    v36[1] = a2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return a2;
  }

  v48 = v15;
  outlined init with take of ForceEffectBase(&v50, v52);
  v22 = v53;
  v23 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v24 = *(v23 + 16);

  v25 = a1;
  v26 = a1;
  v27 = v55;
  if ((v24(v25, a2, v55, v22, v23) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v52);
    a1 = v26;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v28 = swift_initStackObject();
  *(v28 + 32) = 1701869940;
  *(v28 + 16) = xmmword_1C189FFC0;
  v29 = MEMORY[0x1E69E6158];
  *(v28 + 40) = 0xE400000000000000;
  *(v28 + 48) = 0xD000000000000019;
  *(v28 + 56) = 0x80000001C18ED7A0;
  *(v28 + 72) = v29;
  *(v28 + 80) = 1701667182;
  *(v28 + 88) = 0xE400000000000000;
  *(v28 + 96) = v26;
  *(v28 + 104) = a2;
  *(v28 + 120) = v29;
  *(v28 + 128) = 0x656C646E7562;
  *(v28 + 136) = 0xE600000000000000;
  v30 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x1E696AAE8);
  *(v28 + 144) = v27;
  *(v28 + 168) = v30;
  *(v28 + 176) = 0xD000000000000015;
  *(v28 + 184) = 0x80000001C18ED680;
  v31 = static RKARSystemCore.generateDecimatedMeshes;
  *(v28 + 216) = MEMORY[0x1E69E6370];
  *(v28 + 192) = v31;

  v32 = v27;
  a2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v28);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v33 = v53;
  v34 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v35 = v49;
  (*(v34 + 32))(a2, v33, v34);
  if (v35)
  {
  }

  else
  {

    type metadata accessor for BodyTrackedEntity();
    v38 = swift_dynamicCastClass();
    if (v38)
    {
      a2 = v38;
      v55 = v32;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV10identifier_tMd, &_s10Foundation4UUIDV10identifier_tMR);
      v40 = v46;
      (*(*(v39 - 8) + 56))(v46, 1, 1, v39);
      v41 = v45;
      *(v40 + *(v45 + 20)) = 0;
      v42 = v47;
      outlined init with copy of LoadTrace(v40, v47, type metadata accessor for BodyTrackingComponent);
      (*(v44 + 56))(v42, 0, 1, v41);
      _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA012BodyTrackingD0V_TtB5(v42, 0, a2);
      outlined destroy of BodyTrackingComponent?(v42, &_s10RealityKit21BodyTrackingComponentVSgMd, &_s10RealityKit21BodyTrackingComponentVSgMR);
      outlined destroy of LoadTrace(v40, type metadata accessor for BodyTrackingComponent);
      specialized Entity.LoadFinisher.setupAfterUSDLoadSync(_:)(a2, v43);

      swift_setDeallocating();

      swift_weakDestroy();

      __swift_destroy_boxed_opaque_existential_1(v52);
      return a2;
    }

    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v52);
  return a2;
}

uint64_t closure #1 in static Entity.loadBodyTrackedAsync(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v34 = a2;
  v35 = a7;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v14 - 8);
  v33 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v30[2] = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v30[1] = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30[0] = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 1701869940;
  *(inited + 16) = xmmword_1C18CF0B0;
  v19 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD00000000000001ELL;
  *(inited + 56) = 0x80000001C18EE000;
  *(inited + 72) = v19;
  *(inited + 80) = 1701667182;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = a3;
  *(inited + 104) = a4;
  *(inited + 120) = v19;
  *(inited + 128) = 0x656C646E7562;
  *(inited + 136) = 0xE600000000000000;
  v20 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x1E696AAE8);
  *(inited + 144) = a5;
  *(inited + 168) = v20;
  *(inited + 176) = 0xD000000000000015;
  *(inited + 184) = 0x80000001C18ED680;
  swift_beginAccess();
  v21 = MEMORY[0x1E69E6370];
  *(inited + 192) = static RKARSystemCore.generateDecimatedMeshes;
  *(inited + 216) = v21;
  *(inited + 224) = 0x64616F4C74736F70;
  *(inited + 232) = 0xE800000000000000;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
  *(inited + 240) = specialized thunk for @escaping @callee_guaranteed (@guaranteed [String : Any]) -> (@error @owned Error);
  *(inited + 248) = 0;
  *(inited + 264) = v22;
  *(inited + 272) = 0x6C6C69666C7566;
  *(inited + 280) = 0xE700000000000000;
  v23 = swift_allocObject();
  v23[2] = v35;
  v23[3] = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  v23[4] = v17;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for closure #1 in closure #1 in static Entity.loadBodyTrackedAsync(named:in:);
  *(v24 + 24) = v23;
  *(inited + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMR);
  *(inited + 288) = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed Result<A, Error>) -> ();
  *(inited + 296) = v24;

  v25 = a5;

  v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v27 = a8[3];
  v28 = a8[4];
  __swift_project_boxed_opaque_existential_1(a8, v27);
  (*(v28 + 40))(v26, v27, v28);
}

uint64_t closure #1 in closure #1 in static Entity.loadBodyTrackedAsync(contentsOf:withName:)(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  if (a2)
  {
    return a4(a1, 1, a3);
  }

  memset(v6, 0, 24);
  v6[3] = 1;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  specialized Entity.LoadFinisher.setupAfterUSDLoadAsync(_:options:_:)(a1, v6, a4, a5, 0);
  return outlined destroy of BodyTrackingComponent?(v6, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
}

unint64_t static Entity.loadBodyTracked(contentsOf:withName:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 24);
  swift_unownedRetainStrong();
  v11 = *(v10 + 32);

  v12 = v11;

  *v8 = v12;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v12)
  {
    if (one-time initialization token for synchronousLoadOptions == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = static Entity.synchronousLoadOptions;
  v14 = URL.absoluteString.getter();
  v16 = v15;
  swift_beginAccess();
  v17 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA011BodyTrackedC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA011BodyTrackedC0CGMR);
  inited = swift_initStackObject();
  swift_weakInit();
  *(inited + 16) = v14;
  *(inited + 24) = v16;
  *(inited + 32) = v13;
  *(inited + 33) = v17;
  *(inited + 34) = 256;
  *(inited + 36) = 3;
  swift_weakAssign();
  swift_beginAccess();
  outlined init with copy of [String : String](v9 + 176, &v38, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  if (!v39)
  {
    outlined destroy of BodyTrackingComponent?(&v38, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
LABEL_10:
    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
    swift_allocError();
    v31 = v30;
    *v30 = URL.absoluteString.getter();
    v31[1] = v32;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return a1;
  }

  outlined init with take of ForceEffectBase(&v38, v40);
  v19 = v41;
  v20 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  if (((*(v20 + 24))(a1, v19, v20) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v21 = swift_initStackObject();
  *(v21 + 32) = 1701869940;
  *(v21 + 16) = xmmword_1C189FFC0;
  *(v21 + 40) = 0xE400000000000000;
  *(v21 + 48) = 0xD000000000000016;
  v22 = MEMORY[0x1E69E6158];
  *(v21 + 56) = 0x80000001C18ED7C0;
  *(v21 + 72) = v22;
  *(v21 + 80) = 0x73746E65746E6F63;
  *(v21 + 88) = 0xEA0000000000664FLL;
  v23 = type metadata accessor for URL();
  *(v21 + 120) = v23;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v21 + 96));
  (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, a1, v23);
  *(v21 + 128) = 0x656D614E68746977;
  *(v21 + 136) = 0xE800000000000000;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(v21 + 144) = v37;
  *(v21 + 152) = a3;
  *(v21 + 168) = v25;
  *(v21 + 176) = 0xD000000000000015;
  *(v21 + 184) = 0x80000001C18ED680;
  v26 = static RKARSystemCore.generateDecimatedMeshes;
  *(v21 + 216) = MEMORY[0x1E69E6370];
  *(v21 + 192) = v26;

  a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v21);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v27 = v41;
  v28 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v29 = v43;
  (*(v28 + 32))(a1, v27, v28);
  if (v29)
  {
  }

  else
  {

    type metadata accessor for BodyTrackedEntity();
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      a1 = v34;
      specialized Entity.LoadFinisher.setupAfterUSDLoadSync(_:)(v34, v35);
      swift_setDeallocating();

      swift_weakDestroy();

      __swift_destroy_boxed_opaque_existential_1(v40);
      return a1;
    }

    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  return a1;
}