uint64_t closure #1 in static Entity.loadBodyTrackedAsync(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
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
  *(inited + 48) = 0xD00000000000001BLL;
  v19 = MEMORY[0x1E69E6158];
  *(inited + 56) = 0x80000001C18EDFE0;
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
  *(v26 + 16) = partial apply for closure #1 in closure #1 in static Entity.loadBodyTrackedAsync(contentsOf:withName:);
  *(v26 + 24) = v25;
  *(inited + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMR);
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

uint64_t (*static Entity.loadModel(named:in:)(uint64_t a1, uint64_t a2, void *a3))(uint64_t, uint64_t, id, uint64_t, uint64_t)
{
  v47 = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Entity.LoadStatistics(0);
  v9 = swift_allocObject();
  Date.init()();
  v10 = v9 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
  *v10 = 0;
  v43 = v10;
  *(v10 + 8) = 2;
  *(v9 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_loadRequestStats) = MEMORY[0x1E69E7CC0];
  *(v9 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_async) = 0;
  v11 = (v9 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
  *v11 = 0xD00000000000001BLL;
  v11[1] = 0x80000001C18ED7E0;
  if (a3)
  {
    v53 = a3;
  }

  else
  {
    v53 = [objc_opt_self() mainBundle];
  }

  v12 = a3;
  v13 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v14 = *(v13 + 24);
  swift_unownedRetainStrong();
  v15 = *(v14 + 32);

  v16 = v15;

  *v8 = v16;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v18 = *(v6 + 8);
  v17 = (v6 + 8);
  v18(v8, v5);
  if (v14)
  {
    v46 = v9;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA05ModelC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA05ModelC0CGMR);
  inited = swift_initStackObject();
  swift_weakInit();
  v22 = v47;
  *(inited + 16) = v47;
  *(inited + 24) = a2;
  *(inited + 32) = v19;
  *(inited + 33) = v20;
  *(inited + 34) = 256;
  *(inited + 36) = 2;
  swift_weakAssign();
  swift_beginAccess();
  outlined init with copy of [String : String](v13 + 176, &v48, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  if (!v49)
  {

    outlined destroy of BodyTrackingComponent?(&v48, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
LABEL_12:
    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
    swift_allocError();
    *v34 = v22;
    v34[1] = a2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return v17;
  }

  v44 = v13;
  outlined init with take of ForceEffectBase(&v48, v50);
  v23 = v51;
  v24 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v17 = *(v24 + 16);

  v25 = v53;
  if ((v17(v22, a2, v53, v23, v24) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v50);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1C189FFC0;
  *(v26 + 32) = 1701869940;
  v27 = MEMORY[0x1E69E6158];
  *(v26 + 40) = 0xE400000000000000;
  *(v26 + 48) = 0xD000000000000013;
  *(v26 + 56) = 0x80000001C18ED800;
  *(v26 + 72) = v27;
  *(v26 + 80) = 0x64656D616ELL;
  *(v26 + 88) = 0xE500000000000000;
  *(v26 + 96) = v22;
  *(v26 + 104) = a2;
  *(v26 + 120) = v27;
  *(v26 + 128) = 0x656C646E7562;
  *(v26 + 136) = 0xE600000000000000;
  v28 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x1E696AAE8);
  *(v26 + 144) = v25;
  *(v26 + 168) = v28;
  *(v26 + 176) = 0xD000000000000015;
  *(v26 + 184) = 0x80000001C18ED680;
  v29 = static RKARSystemCore.generateDecimatedMeshes;
  *(v26 + 216) = MEMORY[0x1E69E6370];
  *(v26 + 192) = v29;

  v30 = v25;
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v26);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v31 = v51;
  v32 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v33 = v45;
  (*(v32 + 32))(v17, v31, v32);
  if (v33)
  {

LABEL_16:

    __swift_destroy_boxed_opaque_existential_1(v50);
    return v17;
  }

  type metadata accessor for ModelEntity();
  v35 = swift_dynamicCastClass();
  v37 = v46;
  if (!v35)
  {

    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_16;
  }

  v17 = v35;
  specialized Entity.LoadFinisher.setupAfterUSDLoadSync(_:)(v35, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:), v36);
  v39 = v43;
  *v43 = 1;
  *(v39 + 8) = 0;
  Entity.LoadStatistics.log()();

  swift_setDeallocating();
  v40 = OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_start;
  v41 = type metadata accessor for Date();
  (*(*(v41 - 8) + 8))(v37 + v40, v41);
  swift_deallocClassInstance();
  swift_setDeallocating();

  swift_weakDestroy();

  __swift_destroy_boxed_opaque_existential_1(v50);
  return v17;
}

uint64_t static Entity.__loadModelAsync(named:in:generateDecimatedMesh:)(uint64_t a1, uint64_t a2, void *a3, char a4)
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
  v8 = specialized static Entity.loadModelAsync(named:in:options:asyncOptions:)(a1, a2, a3, v12);
  outlined destroy of Entity.__LoadOptions(v12);
  return v8;
}

uint64_t closure #1 in static Entity.loadModelAsync(named:in:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v46 = a8;
  v41[2] = a2;
  v42 = a7;
  v41[1] = a4;
  v14 = a2;
  v50 = a10;
  v45 = a9;
  v44 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v47 = *(v17 - 8);
  v48 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 1701869940;
  *(inited + 16) = xmmword_1C18A1E70;
  v22 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD000000000000018;
  *(inited + 56) = 0x80000001C18EDF00;
  *(inited + 72) = v22;
  *(inited + 80) = 0x64656D616ELL;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = a3;
  *(inited + 104) = a4;
  *(inited + 120) = v22;
  *(inited + 128) = 0x656C646E7562;
  *(inited + 136) = 0xE600000000000000;
  v23 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x1E696AAE8);
  *(inited + 144) = a5;
  *(inited + 168) = v23;
  *(inited + 176) = 0xD000000000000015;
  *(inited + 184) = 0x80000001C18ED680;
  v24 = MEMORY[0x1E69E6370];
  *(inited + 192) = *(a6 + 48);
  *(inited + 216) = v24;
  *(inited + 224) = 0xD000000000000018;
  *(inited + 232) = 0x80000001C18EDE40;
  *(inited + 240) = *(a6 + 49);
  *(inited + 264) = v24;
  *(inited + 272) = 0x694C79726F6D656DLL;
  *(inited + 280) = 0xEB0000000074696DLL;
  v25 = *(a6 + 56);
  LOBYTE(v14) = *(a6 + 64);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  *(inited + 288) = v25;
  *(inited + 296) = v14;
  *(inited + 312) = v26;
  strcpy((inited + 320), "featuresToSkip");
  *(inited + 335) = -18;
  *(inited + 336) = *(a6 + 68);
  *(inited + 360) = &type metadata for Entity.__LoadOptions.LoadableFeatures;
  *(inited + 368) = 0x6C6C69666C7566;
  *(inited + 376) = 0xE700000000000000;
  outlined init with copy of Entity.__LoadOptions(a6, &v53);
  v27 = swift_allocObject();
  v28 = v56;
  *(v27 + 56) = v55;
  *(v27 + 72) = v28;
  *(v27 + 88) = v57;
  v29 = v54;
  *(v27 + 24) = v53;
  *(v27 + 16) = v42;
  v30 = v58;
  *(v27 + 40) = v29;
  *(v27 + 104) = v30;
  *(v27 + 112) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  *(v27 + 120) = v20;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for closure #1 in closure #1 in static Entity.loadModelAsync(contentsOf:withName:options:asyncOptions:);
  *(v31 + 24) = v27;
  *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMR);
  *(inited + 384) = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed Result<A, Error>) -> ();
  *(inited + 392) = v31;

  v32 = a5;

  v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  outlined init with copy of __REAssetService(v45, v52);
  v34 = swift_allocObject();
  v35 = v46;
  v34[2] = v46;
  outlined init with take of ForceEffectBase(v52, (v34 + 3));
  v34[8] = v33;
  v34[9] = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  v34[10] = v20;
  *&v55 = partial apply for doLoadModelAsync #1 () in closure #1 in static Entity.loadModelAsync(named:in:options:asyncOptions:);
  *(&v55 + 1) = v34;
  *&v53 = MEMORY[0x1E69E9820];
  *(&v53 + 1) = 1107296256;
  *&v54 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  *(&v54 + 1) = &block_descriptor_541;
  v36 = _Block_copy(&v53);
  v37 = v35;
  static DispatchQoS.unspecified.getter();
  v51 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v39 = v43;
  v38 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v19, v39, v36);
  _Block_release(v36);
  (*(v49 + 8))(v39, v38);
  (*(v47 + 8))(v19, v48);
}

uint64_t closure #1 in closure #1 in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, void (*a7)(void), uint64_t (*a8)(uint64_t, void (*)(uint64_t, void), uint64_t, __n128))
{
  if (a2)
  {
    return (a5)(a1, 1, a3, a4, a5, a6, a7, a8);
  }

  outlined init with copy of Entity.__LoadOptions(a4, v15);
  specialized Entity.LoadFinisher.setupAfterUSDLoadAsync(_:options:_:)(a1, v15, a5, a6, a7, a8, v14);
  return outlined destroy of BodyTrackingComponent?(v15, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
}

uint64_t doLoadModelAsync #1 () in closure #1 in static Entity.loadModelAsync(named:in:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[1] = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = type metadata accessor for DispatchQoS();
  v13 = *(v19[0] - 8);
  MEMORY[0x1EEE9AC00](v19[0]);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of __REAssetService(a2, v21);
  v16 = swift_allocObject();
  outlined init with take of ForceEffectBase(v21, (v16 + 2));
  v16[7] = a3;
  v16[8] = a4;
  v16[9] = a5;
  aBlock[4] = partial apply for closure #1 in doLoadModelAsync #1 () in closure #1 in static Entity.loadModelAsync(named:in:options:asyncOptions:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_547;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19[2] = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v19[0]);
}

uint64_t closure #1 in doLoadModelAsync #1 () in closure #1 in static Entity.loadModelAsync(named:in:options:asyncOptions:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 40))(a2, v3, v4);
}

void closure #2 in static Entity.loadBodyTrackedAsync(named:in:)(void (*a1)(void **), uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Entity.LoadError(0);
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
  v7 = swift_allocError();
  *v8 = a3;
  v8[1] = a4;
  swift_storeEnumTagMultiPayload();
  v9 = v7;
  v10 = 1;

  a1(&v9);
}

unint64_t static Entity.loadModel(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *v9 = 0xD000000000000026;
  v9[1] = 0x80000001C18ED820;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v17 = 0;
  v18 = 0;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v19 = 1;
  v20 = 0;
  v21 = 2;
  outlined assign with take of __DownsamplingStrategy?(v12, v14);
  v16 = 0;
  v22 = v7;

  v10 = specialized static Entity.loadModel(contentsOf:withName:loadOptions:)(a1, a2, a3, v14);
  if (!v3)
  {
    Entity.LoadStatistics.log()();
  }

  outlined destroy of Entity.__LoadOptions(v14);
  return v10;
}

unint64_t static Entity.loadModel(contentsOf:withName:reorderVertexCaching:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v15 = 0;
  v16 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v17 = 1;
  v18 = 0;
  v20 = 0;
  outlined assign with take of __DownsamplingStrategy?(v10, v12);
  v14 = 0;
  v19 = a4;
  v8 = specialized static Entity.loadModel(contentsOf:withName:loadOptions:)(a1, a2, a3, v12);
  outlined destroy of Entity.__LoadOptions(v12);
  return v8;
}

uint64_t static Entity.loadModelAsync(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v7 = specialized static Entity.loadModelAsync(contentsOf:withName:options:asyncOptions:)(a1, a2, a3, v11, v9);
  outlined destroy of Entity.__LoadOptions(v11);
  return v7;
}

uint64_t static Entity.__loadModelAsync(contentsOf:withName:generateDecimatedMesh:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
  v8 = specialized static Entity.loadModelAsync(contentsOf:withName:options:asyncOptions:)(a1, a2, a3, v12, v10);
  outlined destroy of Entity.__LoadOptions(v12);
  return v8;
}

uint64_t closure #1 in static Entity.loadModelAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v41 = a2;
  v42 = a7;
  v40 = a5;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v14 - 8);
  v39 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v36[3] = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v36[2] = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36[1] = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C18A1E70;
  *(inited + 32) = 1701869940;
  v19 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD000000000000015;
  *(inited + 56) = 0x80000001C18EDEC0;
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
  v23 = v40;
  *(inited + 144) = a4;
  *(inited + 152) = v23;
  *(inited + 168) = v22;
  *(inited + 176) = 0xD000000000000015;
  *(inited + 184) = 0x80000001C18ED680;
  v24 = MEMORY[0x1E69E6370];
  *(inited + 192) = *(a6 + 48);
  *(inited + 216) = v24;
  *(inited + 224) = 0xD000000000000018;
  *(inited + 232) = 0x80000001C18EDE40;
  *(inited + 240) = *(a6 + 49);
  *(inited + 264) = v24;
  *(inited + 272) = 0x694C79726F6D656DLL;
  *(inited + 280) = 0xEB0000000074696DLL;
  v25 = *(a6 + 56);
  LOBYTE(a4) = *(a6 + 64);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  *(inited + 288) = v25;
  *(inited + 296) = a4;
  *(inited + 312) = v26;
  strcpy((inited + 320), "featuresToSkip");
  *(inited + 335) = -18;
  *(inited + 336) = *(a6 + 68);
  *(inited + 360) = &type metadata for Entity.__LoadOptions.LoadableFeatures;
  *(inited + 368) = 0x6C6C69666C7566;
  *(inited + 376) = 0xE700000000000000;
  outlined init with copy of Entity.__LoadOptions(a6, v43);
  v27 = swift_allocObject();
  v28 = v43[3];
  *(v27 + 56) = v43[2];
  *(v27 + 72) = v28;
  *(v27 + 88) = v43[4];
  v29 = v43[1];
  *(v27 + 24) = v43[0];
  *(v27 + 16) = v42;
  v30 = v44;
  *(v27 + 40) = v29;
  *(v27 + 104) = v30;
  *(v27 + 112) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  *(v27 + 120) = v17;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for closure #1 in closure #1 in static Entity.loadModelAsync(contentsOf:withName:options:asyncOptions:);
  *(v31 + 24) = v27;
  *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMR);
  *(inited + 384) = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Result<ModelEntity, Error>) -> ();
  *(inited + 392) = v31;

  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v33 = a8[3];
  v34 = a8[4];
  __swift_project_boxed_opaque_existential_1(a8, v33);
  (*(v34 + 40))(v32, v33, v34);
}

void closure #3 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(void (*a1)(void **))
{
  type metadata accessor for Entity.LoadError(0);
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
  v2 = swift_allocError();
  v4 = v3;
  *v3 = URL.absoluteString.getter();
  v4[1] = v5;
  swift_storeEnumTagMultiPayload();
  v6 = v2;
  v7 = 1;
  a1(&v6);
}

uint64_t static Entity.__loadAllAsync(contentsOf:)(uint64_t a1)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v1 = specialized static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:)(a1, v3);
  outlined destroy of BodyTrackingComponent?(v3, &_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
  return v1;
}

uint64_t closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v38 = a7;
  v31 = a5;
  v32 = a6;
  v30 = a2;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  outlined init with copy of [String : String](a3, v41, &_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
  (*(v15 + 16))(v17, v31, v14);
  v19 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v20 = (v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v41[1];
  *(v21 + 16) = v41[0];
  *(v21 + 32) = v22;
  *(v21 + 48) = v42;
  *(v21 + 56) = a4;
  (*(v15 + 32))(v21 + v19, v17, v14);
  v23 = v32;
  *(v21 + v20) = v32;
  v24 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v24 = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  v24[1] = v18;
  aBlock[4] = partial apply for doLoadAllEntitiesFromURLAsync #1 () in closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_468;
  v25 = _Block_copy(aBlock);

  v26 = v23;
  static DispatchQoS.unspecified.getter();
  v39 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v27 = v33;
  v28 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v13, v27, v25);
  _Block_release(v25);
  (*(v37 + 8))(v27, v28);
  (*(v34 + 8))(v13, v36);
}

uint64_t doLoadAllEntitiesFromURLAsync #1 () in closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v23 = a5;
  v27 = a4;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v25 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v35 = 1;
  v36 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  LOBYTE(aBlock) = 1;
  outlined assign with copy of __DownsamplingStrategy?(a1, &v34[8]);
  v15 = __SceneResourceCache.loadSceneResources(url:options:)(a3, &aBlock);
  (*(v13 + 16))(&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  (*(v13 + 32))(v17 + v16, &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v18 = (v17 + ((v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v24;
  *v18 = v23;
  v18[1] = v19;
  v31[4] = partial apply for closure #1 in doLoadAllEntitiesFromURLAsync #1 () in closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:);
  v31[5] = v17;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 1107296256;
  v31[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v31[3] = &block_descriptor_480;
  v20 = _Block_copy(v31);

  static DispatchQoS.unspecified.getter();
  v30 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v21 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v11, v9, v20);
  _Block_release(v20);
  (*(v28 + 8))(v9, v21);
  (*(v25 + 8))(v11, v26);

  return outlined destroy of __REAssetBundle.LoadOptions(&aBlock);
}

void closure #1 in doLoadAllEntitiesFromURLAsync #1 () in closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:)(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v73[2] = a4;
  v74 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v73 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v102 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v92 = v73 - v13;
  v78 = type metadata accessor for __SceneResourceCache.ImportedScene(0);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v15 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for DispatchPredicate();
  v16 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = (v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(a1 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (!v18)
  {
    goto LABEL_38;
  }

  v75 = v15;
  v73[1] = a2;
  v106 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  v98 = v9;
  v20 = 0;
  v21 = 0;
  v83 = a1 + 32;
  v82 = *MEMORY[0x1E69E8020];
  v81 = (v16 + 104);
  v80 = (v16 + 8);
  v96 = (v10 + 48);
  v91 = (v10 + 32);
  v97 = (v10 + 8);
  v76 = (v10 + 16);
  v94 = v8;
  v79 = v18;
  while (1)
  {
    v22 = (v83 + 40 * v20);
    v23 = *v22;
    v24 = v22[1];
    v26 = v22[2];
    v25 = v22[3];

    swift_bridgeObjectRetain_n();
    v95 = v25;

    v27 = __SceneResource.makeRootEntity(withAnchoringComponent:hasAnchoringComponent:preferAnchorEntity:)(0, v104, 0);
    if (v21)
    {

      swift_bridgeObjectRelease_n();

      v72 = v21;
      v74(v21, 1);

      return;
    }

    *&v104[0] = v24;
    *(&v104[0] + 1) = v26;
    v28 = v27;
    swift_bridgeObjectRetain_n();
    v29 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    swift_beginAccess();
    v90 = v28;
    objc_setAssociatedObject(v28, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey, v29, 0x301);
    swift_endAccess();
    v101 = v26;
    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease();
    v30 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    v31 = *(v30 + 24);
    swift_unownedRetainStrong();
    v32 = *(v31 + 32);

    v33 = v32;

    v34 = v84;
    *v84 = v33;
    v35 = v85;
    (*v81)(v34, v82, v85);
    LOBYTE(v31) = _dispatchPreconditionTest(_:)();
    (*v80)(v34, v35);
    if ((v31 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v36 = static __RKSceneAssetLookupTable.shared;
    v37 = outlined init with copy of __SceneResourceCache.Entry.EntryHolder(v95 + 16, v104);
    v89 = v30;
    if ((v105 & 1) == 0)
    {
      break;
    }

    v38 = *(*&v104[0] + 16);
    if (v38)
    {
      v86 = v23;
      v87 = v20;
      v88 = 0;
      v100 = *(v78 + 24);
      v39 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v93 = *&v104[0];
      v40 = *&v104[0] + v39;
      v99 = *(v77 + 72);
      v41 = v102;
      v42 = v76;
      v43 = v97;
      v44 = v75;
      v45 = v98;
      do
      {
        outlined init with copy of LoadTrace(v40, v44, type metadata accessor for __SceneResourceCache.ImportedScene);
        v46 = *(v44 + v100);
        (*v42)(v41, v44, v45);

        outlined destroy of LoadTrace(v44, type metadata accessor for __SceneResourceCache.ImportedScene);
        v47 = v36[2];
        v48 = v36;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        [v47 setObject:v46 forKey:isa];

        v41 = v102;
        v36 = v48;
        (*v43)(v41, v45);
        v40 += v99;
        --v38;
      }

      while (v38);

      v8 = v94;
      v21 = v88;
      v18 = v79;
      v20 = v87;
    }

    else
    {
    }

LABEL_34:
    v70 = v90;
    objc_setAssociatedObject(v90, "RealityKit.SceneResourceCacheEntry", v95, 0x301);

    v71 = type metadata accessor for Entity();
    RENetworkComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    specialized static Entity.enumerateCore(entity:recursive:block:)(v70, 1, v71);
    static UuidRemapHelper.remapIdentifiersAndInteractions(root:)(v70);
    if (REShadowsGetEnableDefaultShadows())
    {
      MEMORY[0x1C68FCEC0](v70[2], 1);
    }

    ++v20;

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v20 == v18)
    {
      v19 = v106;
LABEL_38:
      URL.absoluteString.getter();
      String.utf8CString.getter();

      REMetricLoadFile();

      v74(v19, 0);

      return;
    }
  }

  v99 = v36;
  v86 = v23;
  v87 = v20;
  v103[0] = v104[0];
  v103[1] = v104[1];
  v103[2] = v104[2];
  v103[3] = v104[3];
  MEMORY[0x1EEE9AC00](v37);
  v73[-2] = v103;
  v51 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in __REAssetBundle.getSceneDescriptors(), &v73[-4], v50);
  v52 = v51;
  v88 = 0;
  if (!(v51 >> 62))
  {
    v53 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v53)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

  v53 = __CocoaSet.count.getter();
  if (!v53)
  {
LABEL_33:

    outlined destroy of __REAssetBundle(v103);
    v21 = v88;
    v18 = v79;
    v20 = v87;
    goto LABEL_34;
  }

LABEL_15:
  v54 = 0;
  v55 = v52 & 0xC000000000000001;
  v100 = v52 & 0xFFFFFFFFFFFFFF8;
  v93 = v52;
  while (v55)
  {
    v56 = MEMORY[0x1C68F41F0](v54, v52);
    v57 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      goto LABEL_39;
    }

LABEL_21:
    __REAssetBundle.sceneAsset(for:)(v56);
    if (!v58)
    {
      goto LABEL_42;
    }

    v59 = v58;
    RESceneDescriptorGetSceneIdentifier();
    v60 = String.init(cString:)();
    v62 = HIBYTE(v61) & 0xF;
    if ((v61 & 0x2000000000000000) == 0)
    {
      v62 = v60 & 0xFFFFFFFFFFFFLL;
    }

    if (v62)
    {
      UUID.init(uuidString:)();

      v63 = v98;
      if ((*v96)(v8, 1, v98) == 1)
      {

        outlined destroy of BodyTrackingComponent?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v64 = v55;
        v65 = v53;
        v66 = v92;
        (*v91)(v92, v8, v63);
        v67 = v99[2];
        v68 = UUID._bridgeToObjectiveC()().super.isa;
        [v67 setObject:v59 forKey:v68];

        v8 = v94;
        v69 = v66;
        v53 = v65;
        v55 = v64;
        v52 = v93;
        (*v97)(v69, v63);
      }
    }

    else
    {
    }

    ++v54;
    if (v57 == v53)
    {
      goto LABEL_33;
    }
  }

  if (v54 >= *(v100 + 16))
  {
    goto LABEL_40;
  }

  v56 = *(v52 + 8 * v54 + 32);

  v57 = v54 + 1;
  if (!__OFADD__(v54, 1))
  {
    goto LABEL_21;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void *SceneResourceLoadResult.makeEntity()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0[1];
  v8 = v0[2];
  v7 = v0[3];

  v9 = __SceneResource.makeRootEntity(withAnchoringComponent:hasAnchoringComponent:preferAnchorEntity:)(0, v17, 0);
  if (v1)
  {

    return v9;
  }

  v17[0] = v6;
  v17[1] = v8;
  swift_bridgeObjectRetain_n();
  v10 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  swift_beginAccess();
  objc_setAssociatedObject(v9, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey, v10, 0x301);
  swift_endAccess();
  swift_bridgeObjectRelease_n();
  swift_unknownObjectRelease();
  v11 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v12 = *(v11 + 24);
  swift_unownedRetainStrong();
  v13 = *(v12 + 32);

  v14 = v13;

  *v5 = v14;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v12)
  {
    __SceneResourceCache.Entry.registerWithSceneLookupTable()();
    objc_setAssociatedObject(v9, "RealityKit.SceneResourceCacheEntry", v7, 0x301);

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t static Entity.generateMeshForStatic3DText(root:generatedTextAssets:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = v2;
    v5 = *(result + 16);

    REStatic3DTextComponentGetComponentType();
    if (!REEntityGetComponentByClass())
    {
      goto LABEL_4;
    }

    REMeshComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    if (REMeshComponentGetMesh())
    {
      goto LABEL_4;
    }

    if (!REStatic3DTextComponentGetText())
    {
      goto LABEL_4;
    }

    if (!REStatic3DTextComponentGetFont())
    {
      goto LABEL_4;
    }

    v13 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v13 + 120, v19);
    v14 = v20;
    v15 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v15 + 32))(v14, v15);
    REStatic3DTextComponentGetFontSize();
    REStatic3DTextComponentGetExtrusionDepth();
    REStatic3DTextComponentGetSegmentDensity();
    REStatic3DTextComponentGetTextFrameOrigin();
    REStatic3DTextComponentGetTextFrameSize();
    REStatic3DTextComponentGetLineBreakMode();
    REStatic3DTextComponentGetTextAlignment();
    REStatic3DTextComponentGetVerticalTextAlignment();
    v5 = REAssetManagerMeshMemoryAssetCreate3dText();
    __swift_destroy_boxed_opaque_existential_1(v19);
    if (!v5)
    {
      goto LABEL_4;
    }

    REAssetSetNetworkSharingMode();
    REMeshComponentSetMesh();
    RERelease();
    if (!a2)
    {
      goto LABEL_4;
    }

    swift_beginAccess();
    v6 = *(a2 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v18 = *(v6 + 2);
      v17 = *(v6 + 3);
      if (v18 >= v17 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v6);
      }

      *(v6 + 2) = v18 + 1;
      *&v6[8 * v18 + 32] = v5;
      *(a2 + 16) = v6;
      swift_endAccess();

LABEL_4:

      if (REEntityGetChildCount() < 1)
      {
      }

      v6 = 0;
      while (v6 < REEntityGetChildCount())
      {
        Child = REEntityGetChild();
        if (!Child)
        {
          goto LABEL_30;
        }

        v8 = Child;
        v9 = REEntityGetSwiftObject();
        if (v9)
        {
          v5 = v9;
          type metadata accessor for Entity();
          swift_dynamicCastClassUnconditional();
        }

        else
        {
          if (REEntityIsBeingDestroyed())
          {
            goto LABEL_29;
          }

          specialized static Entity.entityInfoType(_:)(v8);
          if (v10)
          {
            v11 = (*(v10 + 232))();
            v5 = *(v11 + 16);

            MEMORY[0x1C68F9740](v5, 0);
            *(v11 + 16) = v8;
            MEMORY[0x1C68F9740](v8, v11);
          }

          else
          {
            makeEntity(for:)(v8);
          }
        }

        if (v6 >= REEntityGetChildCount())
        {
          goto LABEL_28;
        }

        ++v6;

        v5 = v3;
        static Entity.generateMeshForStatic3DText(root:generatedTextAssets:)(v12, a2);

        if (v6 >= REEntityGetChildCount())
        {
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      *(a2 + 16) = v6;
    }
  }

  return result;
}

uint64_t static Entity.enumerateReferences(root:)(uint64_t a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  REReferenceComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {

    MEMORY[0x1C68F3650](v3);
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  specialized static Entity.enumerateCore(entity:recursive:block:)(a1, 1, v1, &v5);
  return v5;
}

void specialized static Entity.enumerateCore(entity:recursive:block:)(uint64_t a1, char a2, uint64_t a3)
{
  ChildCount = REEntityGetChildCount();
  if ((ChildCount - 0x1000000000000000) >> 61 == 7)
  {
    v6 = ChildCount;
    v7 = swift_slowAlloc();
    REEntityGetChildren();
    if ((v6 & 0x8000000000000000) == 0)
    {
      if (v6)
      {
        v8 = v7;
        do
        {
          v10 = *v8++;
          v9 = v10;
          if (!v10)
          {
            goto LABEL_22;
          }

          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v11 = swift_dynamicCastClassUnconditional();
          }

          else
          {
            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
              goto LABEL_20;
            }

            specialized static Entity.entityInfoType(_:)(v9);
            if (v13)
            {
              v12 = (*(v13 + 232))();
              v14 = *(v12 + 16);

              MEMORY[0x1C68F9740](v14, 0);
              *(v12 + 16) = v9;
              MEMORY[0x1C68F9740](v9, v12);

              goto LABEL_13;
            }

            v11 = makeEntity(for:)(v9);
          }

          v12 = v11;
LABEL_13:
          RENetworkComponentGetComponentType();
          REEntityGetOrAddComponentByClass();
          if (a2)
          {
            specialized static Entity.enumerateCore(entity:recursive:block:)(v12, 1, a3);
          }

          --v6;
        }

        while (v6);
      }

LABEL_23:
      JUMPOUT(0x1C6902A30);
    }
  }

  else
  {
LABEL_20:
    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
  goto LABEL_23;
}

void specialized static Entity.enumerateCore(entity:recursive:block:)(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  ChildCount = REEntityGetChildCount();
  if ((ChildCount - 0x1000000000000000) >> 61 == 7)
  {
    v8 = ChildCount;
    v9 = swift_slowAlloc();
    REEntityGetChildren();
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (v8)
      {
        v10 = v9;
        do
        {
          v12 = *v10++;
          v11 = v12;
          if (!v12)
          {
            goto LABEL_26;
          }

          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v13 = swift_dynamicCastClassUnconditional();
          }

          else
          {
            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
              goto LABEL_24;
            }

            specialized static Entity.entityInfoType(_:)(v11);
            if (v15)
            {
              v14 = (*(v15 + 232))();
              v16 = *(v14 + 16);

              MEMORY[0x1C68F9740](v16, 0);
              *(v14 + 16) = v11;
              MEMORY[0x1C68F9740](v11, v14);

              goto LABEL_13;
            }

            v13 = makeEntity(for:)(v11);
          }

          v14 = v13;
LABEL_13:
          REReferenceComponentGetComponentType();
          if (REEntityGetComponentByClass())
          {

            MEMORY[0x1C68F3650](v17);
            if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          if (a2)
          {
            specialized static Entity.enumerateCore(entity:recursive:block:)(v14, 1, a3, a4);
          }

          --v8;
        }

        while (v8);
      }

LABEL_27:
      JUMPOUT(0x1C6902A30);
    }
  }

  else
  {
LABEL_24:
    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
  goto LABEL_27;
}

uint64_t closure #1 in static Entity.loadReferences(root:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[13] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in static Entity.loadReferences(root:), v5, v4);
}

uint64_t closure #1 in static Entity.loadReferences(root:)()
{
  v31 = v0;
  v1 = v0[10];

  if (v1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v20 = v0 + 2;
    v21 = v0;
    v4 = v1 & 0xC000000000000001;
    v24 = v0[10] + 32;
    v25 = v1 & 0xFFFFFFFFFFFFFF8;
    v22 = v1 & 0xC000000000000001;
    v23 = i;
    while (v4)
    {
      v5 = MEMORY[0x1C68F41F0](v3, v0[10]);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_25;
      }

LABEL_12:
      v1 = *(v5 + 16);

      if (REEntityGetComponent())
      {
        ReferenceComponent.init(from:)(v28);

        v1 = v29;
        v7 = v30;

        if (v7 == 1)
        {
        }

        else
        {
          v8 = v0[12];
          v27 = v0[11];
          v9 = type metadata accessor for TaskPriority();
          v10 = *(v9 - 8);
          (*(v10 + 56))(v8, 1, 1, v9);
          v11 = swift_allocObject();
          v11[2] = 0;
          v11[3] = 0;
          v11[4] = v5;
          outlined init with copy of [String : String](v8, v27, &_sScPSgMd, &_sScPSgMR);
          v26 = v10;
          LODWORD(v10) = (*(v10 + 48))(v27, 1, v9);

          v12 = v0[11];
          if (v10 == 1)
          {
            outlined destroy of BodyTrackingComponent?(v0[11], &_sScPSgMd, &_sScPSgMR);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v26 + 8))(v12, v9);
          }

          v0 = v21;
          if (v11[2])
          {
            swift_getObjectType();
            swift_unknownObjectRetain();
            v13 = dispatch thunk of Actor.unownedExecutor.getter();
            v15 = v14;
            swift_unknownObjectRelease();
          }

          else
          {
            v13 = 0;
            v15 = 0;
          }

          v16 = *v21[9];

          if (v15 | v13)
          {
            v17 = v20;
            *v20 = 0;
            v20[1] = 0;
            v21[4] = v13;
            v21[5] = v15;
          }

          else
          {
            v17 = 0;
          }

          i = v23;
          v1 = v21[12];
          v21[6] = 1;
          v21[7] = v17;
          v21[8] = v16;
          swift_task_create();

          outlined destroy of BodyTrackingComponent?(v1, &_sScPSgMd, &_sScPSgMR);
          v4 = v22;
        }
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_28;
      }
    }

    if (v3 >= *(v25 + 16))
    {
      goto LABEL_26;
    }

    v5 = *(v24 + 8 * v3);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_12;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_28:

  v18 = v0[1];

  return v18();
}

uint64_t closure #1 in closure #1 in static Entity.loadReferences(root:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return static ReferenceComponent.loadReference(at:)(a4);
}

void fetchTapTriggerTargetIdentifiers #1 (triggerSpecification:) in static Entity.addInputTargetComponentsAndCollisionShapesToTapTriggerTargets(for:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v25 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  outlined init with copy of LoadTrace(a1, &v25 - v18, type metadata accessor for __RKEntityTriggerSpecification);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 32))(v13, v19, v4);
    (*(v5 + 16))(v7, v13, v4);
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(v10, v7);
    swift_endAccess();
    v24 = *(v5 + 8);
    v24(v10, v4);
    v24(v13, v4);
  }

  else if (EnumCaseMultiPayload == 5)
  {
    v21 = *(*v19 + 16);
    if (v21)
    {
      v22 = *v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
      v23 = *(v25 + 72);
      do
      {
        outlined init with copy of LoadTrace(v22, v16, type metadata accessor for __RKEntityTriggerSpecification);
        fetchTapTriggerTargetIdentifiers #1 (triggerSpecification:) in static Entity.addInputTargetComponentsAndCollisionShapesToTapTriggerTargets(for:)(v16, a2);
        outlined destroy of LoadTrace(v16, type metadata accessor for __RKEntityTriggerSpecification);
        v22 += v23;
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    outlined destroy of LoadTrace(v19, type metadata accessor for __RKEntityTriggerSpecification);
  }
}

uint64_t static Entity.load(assetDescriptor:)(uint64_t *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for synchronousLoadOptions != -1)
  {
    swift_once();
  }

  v2 = static Entity.synchronousLoadOptions;
  swift_beginAccess();
  v3 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMR);
  inited = swift_initStackObject();
  swift_weakInit();
  *(inited + 16) = 0xD000000000000014;
  *(inited + 24) = 0x80000001C18ED850;
  *(inited + 32) = v2;
  *(inited + 33) = v3;
  *(inited + 34) = 1;
  *(inited + 36) = 1;
  swift_weakAssign();
  v5 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v5 + 120, v18);
  v6 = v19;
  v7 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v7 + 32))(v6, v7);
  v8 = REAssetHandleCreateWithAssetDescriptor();
  __swift_destroy_boxed_opaque_existential_1(v18);
  v9 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v9 + 120, v18);
  v10 = v19;
  v11 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v11 + 32))(v10, v11);
  REAssetManagerCreateAssetRequest();
  __swift_destroy_boxed_opaque_existential_1(v18);
  v17 = 0;
  if (!REAssetLoadRequestSetLoadAndWaitForResourceSharingClients())
  {
    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
    swift_allocError();
    *v13 = 0xD000000000000046;
    v13[1] = 0x80000001C18ED870;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_8;
  }

  REAssetLoadRequestAddAsset();
  REAssetLoadRequestWaitForCompletion();
  v19 = MEMORY[0x1E69E6B70];
  v18[0] = v8;
  outlined init with copy of Any(v18, v16);
  swift_dynamicCast();
  __swift_destroy_boxed_opaque_existential_1(v18);
  RERetain();
  type metadata accessor for __SceneResource();
  *(swift_initStackObject() + 16) = v15;
  v12 = __SceneResource.makeRootEntity(withAnchoringComponent:hasAnchoringComponent:preferAnchorEntity:)(0, v18, 0);
  if (v1)
  {
    swift_setDeallocating();
    RERelease();
LABEL_8:
    RERelease();
    RERelease();

    return v11;
  }

  v11 = v12;
  specialized Entity.LoadFinisher.setupAfterRealityLoadSync(_:)(v12);
  swift_setDeallocating();
  RERelease();
  RERelease();
  RERelease();
  swift_setDeallocating();

  swift_weakDestroy();
  return v11;
}

uint64_t static Entity.loadAsync(assetDescriptor:)(uint64_t *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *a1;
  v7 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v8 = *(v7 + 24);
  swift_unownedRetainStrong();
  v9 = *(v8 + 32);

  v10 = v9;

  *v5 = v10;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v13 = *(v3 + 8);
  v12 = v3 + 8;
  v13(v5, v2);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for LoadRequestDependencies();
  v2 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v2 + 24) = v15;
  v12 = 1;
  swift_beginAccess();
  *(v2 + 16) = v14;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
LABEL_5:
    swift_once();
  }

  v16 = static Entity.asynchronousLoadOptions;
  swift_beginAccess();
  v17 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMR);
  v18 = swift_allocObject();
  swift_weakInit();
  *(v18 + 16) = 0xD000000000000014;
  *(v18 + 24) = 0x80000001C18ED850;
  *(v18 + 32) = v16;
  *(v18 + 33) = v17;
  *(v18 + 34) = v12;
  *(v18 + 36) = v12;
  swift_weakAssign();
  v19 = swift_allocObject();
  *(v19 + 16) = v6;
  *(v19 + 24) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA6EntityCGMd, &_s10RealityKit11LoadRequestCyAA6EntityCGMR);
  v20 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMR);
  v21 = swift_allocObject();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v21 + 16) = v22;
  *(v21 + 24) = 0;
  *(v21 + 32) = -1;
  *(v20 + 16) = v21;
  v23 = swift_allocObject();
  v23[2] = partial apply for closure #1 in static Entity.loadAsync(assetDescriptor:);
  v23[3] = v19;
  v23[4] = v21;
  v23[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMR);
  swift_allocObject();

  v24 = Future.init(_:)();

  *(v20 + 24) = v24;
  return v20;
}

void closure #1 in static Entity.loadAsync(assetDescriptor:)(void (*a1)(void **), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v7 + 120, &aBlock);
  v8 = v32;
  v9 = v33;
  __swift_project_boxed_opaque_existential_1(&aBlock, v32);
  (*(v9 + 4))(v8, v9);
  v10 = REAssetHandleCreateWithAssetDescriptor();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v11 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v11 + 120, &aBlock);
  v12 = v32;
  v13 = v33;
  __swift_project_boxed_opaque_existential_1(&aBlock, v32);
  (*(v13 + 4))(v12, v13);
  AssetRequest = REAssetManagerCreateAssetRequest();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v38 = 0;
  v15 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v15 + 120, &aBlock);
  v16 = v32;
  v17 = v33;
  __swift_project_boxed_opaque_existential_1(&aBlock, v32);
  (*(v17 + 7))(v16, v17);
  v18 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v18 + 120, v35);
  v19 = v36;
  v20 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  (*(v20 + 56))(v19, v20);
  LODWORD(v18) = REAssetLoadRequestSetLoadAndWaitForResourceSharingClients();
  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  if (v18)
  {
    v21 = swift_allocObject();
    v21[2] = v10;
    v21[3] = AssetRequest;
    v21[4] = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
    v21[5] = v6;
    v21[6] = a4;
    v33 = partial apply for closure #1 in closure #1 in static Entity.loadAsync(assetDescriptor:);
    v34 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v32 = &block_descriptor_451;
    v22 = _Block_copy(&aBlock);

    REAssetLoadRequestSetCompletionHandler();
    _Block_release(v22);
    REAssetLoadRequestAddAsset();
  }

  else
  {

    v23 = v38;
    if (v38)
    {
      type metadata accessor for CFErrorRef(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
      v24 = swift_allocError();
      *v25 = v23;
      aBlock = v24;
      LOBYTE(v30) = 1;
      v26 = v23;
      a1(&aBlock);
    }

    else
    {
      type metadata accessor for Entity.LoadError(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
      v24 = swift_allocError();
      *v27 = 0xD000000000000046;
      v27[1] = 0x80000001C18ED870;
      swift_storeEnumTagMultiPayload();
      aBlock = v24;
      LOBYTE(v30) = 1;
      a1(&aBlock);
    }
  }
}

uint64_t closure #1 in closure #1 in static Entity.loadAsync(assetDescriptor:)(char a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  if (a1)
  {
    v12 = MEMORY[0x1E69E6B70];
    v11[0] = a2;
    outlined init with copy of Any(v11, v18);
    swift_dynamicCast();
    v7 = v17;
    __swift_destroy_boxed_opaque_existential_1(v11);
    RERetain();
    type metadata accessor for __SceneResource();
    *(swift_initStackObject() + 16) = v7;
    v8 = __SceneResource.makeRootEntity(withAnchoringComponent:hasAnchoringComponent:preferAnchorEntity:)(0, v11, 0);
    memset(v11, 0, sizeof(v11));
    v12 = 1;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    specialized Entity.LoadFinisher.setupAfterRealityLoadAsync(_:options:_:)(v8, v11, a4, a5, specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:));
    swift_setDeallocating();
    RERelease();

    outlined destroy of BodyTrackingComponent?(v11, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    RERelease();
    return RERelease();
  }

  else
  {
    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
    v9 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    a4(v9, 1);

    RERelease();

    return RERelease();
  }
}

uint64_t specialized Entity.LoadFinisher.setupAfterRealityLoad(_:generatedTextAssets:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Entity();
  specialized static Entity.addInputTargetComponentsAndCollisionShapesToTapTriggerTargets(for:)(a1);
  if (*(v3 + 34) == 1)
  {
    RENetworkComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    specialized static Entity.enumerateCore(entity:recursive:block:)(a1, 1, v6);
    static UuidRemapHelper.remapIdentifiersAndInteractions(root:)(a1);
  }

  static Entity.generateMeshForStatic3DText(root:generatedTextAssets:)(a1, a2);
  if (*(v3 + 35) == 1)
  {
    RENetworkComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
  }

  result = REShadowsGetEnableDefaultShadows();
  if (result)
  {

    JUMPOUT(0x1C68FCEC0);
  }

  return result;
}

uint64_t specialized Entity.LoadFinisher.setupAfterRealityLoadSync(_:)(uint64_t a1)
{
  type metadata accessor for Entity.AssetArray();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v3 = inited + 16;
  specialized Entity.LoadFinisher.setupAfterRealityLoad(_:generatedTextAssets:)(a1, inited);
  swift_beginAccess();
  v4 = *v3;
  if (*(*v3 + 16))
  {
    specialized Entity.LoadFinisher.makeLoadRequest()();
    v5 = *(v4 + 16);
    if (v5)
    {

      v6 = 32;
      do
      {
        REAssetLoadRequestAddAsset();
        v6 += 8;
        --v5;
      }

      while (v5);
    }

    REAssetLoadRequestWaitForCompletion();
    if (REAssetLoadRequestGetState() != 1)
    {
      RequestCopyError = REAssetLoadRequestCopyError();
      if (RequestCopyError)
      {
        v8 = RequestCopyError;
        type metadata accessor for CFErrorRef(0);
        _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
        swift_allocError();
        *v9 = v8;
      }

      else
      {
        type metadata accessor for Entity.LoadError(0);
        _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
      }

      swift_willThrow();
    }
  }

  else
  {
    String.utf8CString.getter();
    REMetricLoadFile();
  }
}

uint64_t specialized Entity.LoadFinisher.setupAfterRealityLoadAsync(_:options:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4, uint64_t (*a5)(uint64_t, void (*)(uint64_t, void), uint64_t, __n128))
{
  type metadata accessor for Entity.AssetArray();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  specialized Entity.LoadFinisher.setupAfterRealityLoad(_:generatedTextAssets:)(a1, inited);
  swift_beginAccess();
  v11 = *(inited + 16);
  if (*(v11 + 16))
  {
    v12 = (a5)(a1, a3, a4);
    outlined init with copy of [String : String](a2, v21, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    if (Request == 1)
    {
      outlined destroy of BodyTrackingComponent?(v21, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    }

    else
    {
      v13 = v23;

      outlined destroy of Entity.__LoadOptions(v21);
      if (v13)
      {
        Stats = REAssetLoadRequestGetStats();
        type metadata accessor for __AssetLoadRequest.Statistics();
        v15 = swift_allocObject();
        RERetain();
        *(v15 + 16) = Stats;
        v16 = OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_loadRequestStats;
        swift_beginAccess();

        MEMORY[0x1C68F3650](v17);
        if (*((*(v13 + v16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v13 + v16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }

    v18 = *(v11 + 16);
    if (v18)
    {

      v19 = 32;
      do
      {
        REAssetLoadRequestAddAsset();
        v19 += 8;
        --v18;
      }

      while (v18);
    }

    if (swift_weakLoadStrong())
    {
      Request = type metadata accessor for __AssetLoadRequest();
      v21[0] = v12;

      LoadRequestDependencies.add(_:)(v21);

      return __swift_destroy_boxed_opaque_existential_1(v21);
    }
  }

  else
  {
    String.utf8CString.getter();
    REMetricLoadFile();

    a3(a1, 0);
  }
}

void specialized Entity.LoadFinisher.setupAfterUSDLoad(_:)(uint64_t a1, __n128 a2)
{
  specialized static Entity.addInputTargetComponentsAndCollisionShapesToTapTriggerTargets(for:)(a1);
  v5 = [objc_opt_self() defaultBody3DSkeletonDefinition];
  v6 = [v5 jointNames];

  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _s10RealityKit6EntityC20withUnsafeJointNames33_F26D63620DB78A19432B1EBEC9E8266ALLyxSaySSG_xSPySPys4Int8VGSgGSgKXEtKlFZyt_Tt2g504_s10a4Kit6c26C20withCharacterOptions33_hijklmn39ALLyxxSo08REEntityeF0azKXEKlFZxSPySPys4O19VGSgGSgKXEfU_yt_Tg5SiSo08REEntityS7Optionsaxs5Error_pRi_zRi0_zlyytIsglrzo_Tf1nnc_n(v7, *(v7 + 16), partial apply for specialized closure #1 in Entity.LoadFinisher.setupAfterUSDLoad(_:));

  if (!v3)
  {
    if (*(v2 + 34))
    {
      v8 = type metadata accessor for Entity();
      RENetworkComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      specialized static Entity.enumerateCore(entity:recursive:block:)(a1, 1, v8);
      static UuidRemapHelper.remapIdentifiersAndInteractions(root:)(a1);
    }

    if (*(v2 + 35) == 1)
    {
      RENetworkComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
    }

    if (REShadowsGetEnableDefaultShadows())
    {
      MEMORY[0x1C68FCEC0](*(a1 + 16), 1);
    }
  }
}

uint64_t specialized Entity.LoadFinisher.setupAfterUSDLoad(_:)(uint64_t a1, __n128 a2)
{
  specialized static Entity.addInputTargetComponentsAndCollisionShapesToTapTriggerTargets(for:)(a1);
  if (*(v2 + 34) == 1)
  {
    v4 = type metadata accessor for Entity();
    RENetworkComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    specialized static Entity.enumerateCore(entity:recursive:block:)(a1, 1, v4);
    static UuidRemapHelper.remapIdentifiersAndInteractions(root:)(a1);
  }

  if (*(v2 + 35) == 1)
  {
    RENetworkComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
  }

  result = REShadowsGetEnableDefaultShadows();
  if (result)
  {
    return MEMORY[0x1C68FCEC0](*(a1 + 16), 1);
  }

  return result;
}

uint64_t specialized closure #1 in Entity.LoadFinisher.setupAfterUSDLoad(_:)(uint64_t a1, uint64_t a2)
{
  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  REEntityCharacterSetup();
  result = REEntityCharacterGetJointCount();
  if (result != *(a1 + 8))
  {
    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

void specialized Entity.LoadFinisher.setupAfterUSDLoadSync(_:)(uint64_t a1, __n128 a2)
{
  specialized Entity.LoadFinisher.setupAfterUSDLoad(_:)(a1, a2);
  if (!v3)
  {
    type metadata accessor for Entity.AssetArray();
    v5 = swift_allocObject();
    *(v5 + 16) = MEMORY[0x1E69E7CC0];
    v6 = v5 + 16;
    specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)(v5, a1);
    swift_beginAccess();
    if (!*(*v6 + 16))
    {
      v9 = *(v2 + 16);
      v10 = *(v2 + 24);
      v11 = static os_log_type_t.info.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v12 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v12, v11))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v18 = v14;
        *v13 = 136315138;
        *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v18);
        _os_log_impl(&dword_1C1358000, v12, v11, "No assets were found in file %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x1C6902A30](v14, -1, -1);
        MEMORY[0x1C6902A30](v13, -1, -1);
      }

      String.utf8CString.getter();
      REMetricLoadFile();
      goto LABEL_12;
    }

    specialized Entity.LoadFinisher.makeLoadRequest()();
    v7 = *(*v6 + 16);
    if (v7)
    {

      v8 = 32;
      do
      {
        REAssetLoadRequestAddAsset();
        v8 += 8;
        --v7;
      }

      while (v7);
    }

    REAssetLoadRequestWaitForCompletion();
    if (REAssetLoadRequestGetState() == 1)
    {
LABEL_12:

      return;
    }

    RequestCopyError = REAssetLoadRequestCopyError();
    if (RequestCopyError)
    {
      v16 = RequestCopyError;
      type metadata accessor for CFErrorRef(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
      swift_allocError();
      *v17 = v16;
    }

    else
    {
      type metadata accessor for Entity.LoadError(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    swift_willThrow();
  }
}

uint64_t specialized Entity.LoadFinisher.setupAfterUSDLoadSync(_:)(uint64_t a1, void (*a2)(void), __n128 a3)
{
  result = specialized Entity.LoadFinisher.setupAfterUSDLoad(_:)(a1, a3);
  if (!v4)
  {
    type metadata accessor for Entity.AssetArray();
    v7 = swift_allocObject();
    *(v7 + 16) = MEMORY[0x1E69E7CC0];
    v8 = v7 + 16;
    a2();
    swift_beginAccess();
    if (!*(*v8 + 16))
    {
      v11 = *(v3 + 16);
      v12 = *(v3 + 24);
      v13 = static os_log_type_t.info.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v14 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v14, v13))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v20 = v16;
        *v15 = 136315138;
        *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v20);
        _os_log_impl(&dword_1C1358000, v14, v13, "No assets were found in file %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x1C6902A30](v16, -1, -1);
        MEMORY[0x1C6902A30](v15, -1, -1);
      }

      String.utf8CString.getter();
      REMetricLoadFile();
      goto LABEL_12;
    }

    specialized Entity.LoadFinisher.makeLoadRequest()();
    v9 = *(*v8 + 16);
    if (v9)
    {

      v10 = 32;
      do
      {
        REAssetLoadRequestAddAsset();
        v10 += 8;
        --v9;
      }

      while (v9);
    }

    REAssetLoadRequestWaitForCompletion();
    if (REAssetLoadRequestGetState() == 1)
    {
LABEL_12:
    }

    RequestCopyError = REAssetLoadRequestCopyError();
    if (RequestCopyError)
    {
      v18 = RequestCopyError;
      type metadata accessor for CFErrorRef(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
      swift_allocError();
      *v19 = v18;
    }

    else
    {
      type metadata accessor for Entity.LoadError(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    swift_willThrow();
  }

  return result;
}

uint64_t specialized Entity.LoadFinisher.setupAfterUSDLoadAsync(_:options:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4, __n128 a5)
{
  specialized Entity.LoadFinisher.setupAfterUSDLoad(_:)(a1, a5);
  type metadata accessor for Entity.AssetArray();
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)(v10, a1);
  swift_beginAccess();
  if (*(*(v10 + 16) + 16))
  {
    v11 = specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:)(a1, a3, a4);
    outlined init with copy of [String : String](a2, v28, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    if (Request == 1)
    {
      outlined destroy of BodyTrackingComponent?(v28, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    }

    else
    {
      v19 = v30;

      outlined destroy of Entity.__LoadOptions(v28);
      if (v19)
      {
        Stats = REAssetLoadRequestGetStats();
        type metadata accessor for __AssetLoadRequest.Statistics();
        v21 = swift_allocObject();
        RERetain();
        *(v21 + 16) = Stats;
        v22 = OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_loadRequestStats;
        swift_beginAccess();

        MEMORY[0x1C68F3650](v23);
        if (*((*(v19 + v22) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v19 + v22) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }

    v24 = *(*(v10 + 16) + 16);
    if (v24)
    {

      v25 = 32;
      do
      {
        REAssetLoadRequestAddAsset();
        v25 += 8;
        --v24;
      }

      while (v24);
    }

    if (swift_weakLoadStrong())
    {
      Request = type metadata accessor for __AssetLoadRequest();
      v28[0] = v11;

      LoadRequestDependencies.add(_:)(v28);

      return __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }

  else
  {
    v12 = *(v5 + 16);
    v13 = *(v5 + 24);
    v14 = static os_log_type_t.info.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v15 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v27 = v13;
      v17 = v12;
      v18 = swift_slowAlloc();
      v28[0] = v18;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v27, v28);
      _os_log_impl(&dword_1C1358000, v15, v14, "No assets were found in file %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1C6902A30](v18, -1, -1);
      MEMORY[0x1C6902A30](v16, -1, -1);
    }

    String.utf8CString.getter();
    REMetricLoadFile();

    a3(a1, 0);
  }
}

uint64_t specialized Entity.LoadFinisher.setupAfterUSDLoadAsync(_:options:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t, void (*)(uint64_t, void), uint64_t, __n128), __n128 a7)
{
  specialized Entity.LoadFinisher.setupAfterUSDLoad(_:)(a1, a7);
  type metadata accessor for Entity.AssetArray();
  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x1E69E7CC0];
  v15 = v14 + 16;
  a5();
  swift_beginAccess();
  if (*(*v15 + 16))
  {
    v16 = (a6)(a1, a3, a4);
    outlined init with copy of [String : String](a2, v31, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    if (Request == 1)
    {
      outlined destroy of BodyTrackingComponent?(v31, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    }

    else
    {
      v23 = v33;

      outlined destroy of Entity.__LoadOptions(v31);
      if (v23)
      {
        Stats = REAssetLoadRequestGetStats();
        type metadata accessor for __AssetLoadRequest.Statistics();
        v25 = swift_allocObject();
        RERetain();
        *(v25 + 16) = Stats;
        v26 = OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_loadRequestStats;
        swift_beginAccess();

        MEMORY[0x1C68F3650](v27);
        if (*((*(v23 + v26) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v23 + v26) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }

    v28 = *(*v15 + 16);
    if (v28)
    {

      v29 = 32;
      do
      {
        REAssetLoadRequestAddAsset();
        v29 += 8;
        --v28;
      }

      while (v28);
    }

    if (swift_weakLoadStrong())
    {
      Request = type metadata accessor for __AssetLoadRequest();
      v31[0] = v16;

      LoadRequestDependencies.add(_:)(v31);

      return __swift_destroy_boxed_opaque_existential_1(v31);
    }
  }

  else
  {
    v17 = *(v7 + 16);
    v18 = *(v7 + 24);
    v19 = static os_log_type_t.info.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v20 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v20, v19))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v31);
      _os_log_impl(&dword_1C1358000, v20, v19, "No assets were found in file %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1C6902A30](v22, -1, -1);
      MEMORY[0x1C6902A30](v21, -1, -1);
    }

    String.utf8CString.getter();
    REMetricLoadFile();

    a3(a1, 0);
  }
}

uint64_t specialized Entity.LoadFinisher.makeLoadRequest()()
{
  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, &v3);
  return specialized __AssetLoadRequest.__allocating_init(assetService:shouldLoadOnPeers:shouldWaitForPeers:)(&v3, *(v0 + 32) != 2, (*(v0 + 32) & 0xFE) != 2);
}

uint64_t specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = specialized Entity.LoadFinisher.makeLoadRequest()();
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = *(v3 + 36);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  *(v12 + 56) = a1;
  *(v12 + 64) = v11;
  aBlock[4] = partial apply for specialized closure #1 in Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_45;
  v13 = _Block_copy(aBlock);
  v14 = _Block_copy(v13);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v18[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ();
  v18[5] = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v18[3] = &block_descriptor_195;
  v16 = _Block_copy(v18);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v16);
  _Block_release(v13);

  return v7;
}

{
  v7 = specialized Entity.LoadFinisher.makeLoadRequest()();
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = *(v3 + 36);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  *(v12 + 56) = a1;
  *(v12 + 64) = v11;
  aBlock[4] = partial apply for specialized closure #1 in Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_391_0;
  v13 = _Block_copy(aBlock);
  v14 = _Block_copy(v13);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v18[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v18[5] = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v18[3] = &block_descriptor_398;
  v16 = _Block_copy(v18);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v16);
  _Block_release(v13);

  return v7;
}

{
  v7 = specialized Entity.LoadFinisher.makeLoadRequest()();
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = *(v3 + 36);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  *(v12 + 56) = a1;
  *(v12 + 64) = v11;
  aBlock[4] = partial apply for specialized closure #1 in Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_313;
  v13 = _Block_copy(aBlock);
  v14 = _Block_copy(v13);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v18[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v18[5] = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v18[3] = &block_descriptor_320;
  v16 = _Block_copy(v18);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v16);
  _Block_release(v13);

  return v7;
}

{
  v7 = specialized Entity.LoadFinisher.makeLoadRequest()();
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = *(v3 + 36);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  *(v12 + 56) = a1;
  *(v12 + 64) = v11;
  aBlock[4] = partial apply for specialized closure #1 in Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_251;
  v13 = _Block_copy(aBlock);
  v14 = _Block_copy(v13);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v18[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v18[5] = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v18[3] = &block_descriptor_258;
  v16 = _Block_copy(v18);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v16);
  _Block_release(v13);

  return v7;
}

void specialized closure #1 in Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a1)
  {
    String.utf8CString.getter();
    REMetricLoadFile();

    a5(a7, 0);
  }

  else
  {
    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
    v14 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    a5(v14, 1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    aBlock[4] = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    aBlock[3] = a9;
    v15 = _Block_copy(aBlock);
    v16 = _Block_copy(v15);
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v19[4] = a11;
    v19[5] = v17;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v19[3] = a12;
    v18 = _Block_copy(v19);

    REAssetLoadRequestSetCompletionHandler();
    _Block_release(v18);

    _Block_release(v15);
  }
}

uint64_t specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)(uint64_t a1, uint64_t a2)
{

  return specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)(a1, a2, &unk_1F411D8A8, partial apply for closure #1 in Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:), _ss13OpaquePointerVIgy_ABytIegnr_TRTA_0, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:));
}

{

  return specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)(a1, a2, &unk_1F411E370, closure #1 in Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)partial apply, thunk for @callee_guaranteed (@unowned OpaquePointer) -> ()partial apply, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:));
}

{

  return specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)(a1, a2, &unk_1F411DE98, closure #1 in Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)partial apply, thunk for @callee_guaranteed (@unowned OpaquePointer) -> ()partial apply, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:));
}

{

  return specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)(a1, a2, &unk_1F411DBC8, closure #1 in Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)partial apply, thunk for @callee_guaranteed (@unowned OpaquePointer) -> ()partial apply, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:));
}

uint64_t specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a1;
  REEntityFindAssetDependencies();

  if (REEntityGetChildCount() >= 1)
  {
    v10 = 0;
    do
    {
      if (v10 >= REEntityGetChildCount())
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
      }

      Child = REEntityGetChild();
      if (!Child)
      {
        goto LABEL_19;
      }

      v12 = Child;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v13 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        if (REEntityIsBeingDestroyed())
        {
          goto LABEL_18;
        }

        specialized static Entity.entityInfoType(_:)(v12);
        if (v15)
        {
          v14 = (*(v15 + 232))();
          v16 = *(v14 + 16);

          MEMORY[0x1C68F9740](v16, 0);
          *(v14 + 16) = v12;
          MEMORY[0x1C68F9740](v12, v14);

          goto LABEL_11;
        }

        v13 = makeEntity(for:)(v12);
      }

      v14 = v13;
LABEL_11:
      if (v10 >= REEntityGetChildCount())
      {
        goto LABEL_17;
      }

      ++v10;
      a6(a1, v14);
    }

    while (v10 < REEntityGetChildCount());
  }
}

uint64_t closure #1 in Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    *(a2 + 16) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  *&v4[8 * v7 + 32] = a1;
  *(a2 + 16) = v4;
  return swift_endAccess();
}

uint64_t Entity.LoadFinisher.__deallocating_deinit()
{

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t __SceneResource.makeAnchorEntity(fileName:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for AnchoringComponent(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v24 - v10);
  v25 = 0;
  v12 = __SceneResource.makeRootEntity(withAnchoringComponent:hasAnchoringComponent:preferAnchorEntity:)(1, &v25, 1);
  if (!v2)
  {
    v13 = v12;
    type metadata accessor for AnchorEntity();
    v14 = swift_dynamicCastClass();
    if (!v14)
    {
      v17 = static os_log_type_t.fault.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v18 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)("Expected an AnchorEntity to be the scene's root entity", 54, 2, &dword_1C1358000, v18, v17, MEMORY[0x1E69E7CC0]);

      type metadata accessor for SceneResourceLoadResult.InternalError(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError, protocol conformance descriptor for SceneResourceLoadResult.InternalError);
      swift_allocError();
      v20 = v19;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
      (*(*(v21 - 8) + 56))(v20, 1, 2, v21);
      swift_willThrow();

      return v3;
    }

    v3 = v14;
    v15 = v25;

    if (v15 == 1)
    {
      __SceneResource.findREAnchoringComponent(root:)(v11);
      v16 = type metadata accessor for __REAnchoringType(0);
      if ((*(*(v16 - 8) + 48))(v11, 1, v16) == 1)
      {

        outlined destroy of BodyTrackingComponent?(v11, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
        return v3;
      }

      outlined destroy of BodyTrackingComponent?(v11, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1898160;
    *(inited + 32) = v13;
    __SceneResource.makeAnchorEntity(from:fileName:)(inited, a1, a2);
    swift_setDeallocating();
    swift_arrayDestroy();
    REAnchoringComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    AnchoringComponent.init(from:)(v8);
    REAnchoringComponentGetComponentType();
    v24 = REEntityGetOrAddComponentByClass();
    AnchoringComponent.__toCore(_:)(&v24);
    REAnchorComponentGetComponentType();
    REEntityRemoveComponentByClass();

    outlined destroy of LoadTrace(v8, type metadata accessor for AnchoringComponent);
  }

  return v3;
}

uint64_t __SceneResource.findREAnchoringComponent(root:)@<X0>(void *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v22 - v7);
  swift_beginAccess();
  if (static __REAnchoring.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
  {
    __REAnchoring.type.getter(v8);
    v9 = type metadata accessor for __REAnchoringType(0);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v8, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
      if (static __REAnchoring.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
      {
        return __REAnchoring.type.getter(a2);
      }

      else
      {
        return (*(v10 + 56))(a2, 1, 1, v9);
      }
    }
  }

  else
  {
    v12 = type metadata accessor for __REAnchoringType(0);
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  }

  outlined destroy of BodyTrackingComponent?(v8, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);

  if (REEntityGetChildCount() < 1)
  {
LABEL_25:

    v21 = type metadata accessor for __REAnchoringType(0);
    return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
  }

  v13 = 0;
  while (1)
  {
    result = REEntityGetChildCount();
    if (v13 >= result)
    {
      break;
    }

    result = REEntityGetChild();
    if (!result)
    {
      goto LABEL_32;
    }

    v14 = result;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v15 = swift_dynamicCastClassUnconditional();
LABEL_16:
      v16 = v15;
      goto LABEL_20;
    }

    result = REEntityIsBeingDestroyed();
    if (result)
    {
      goto LABEL_31;
    }

    specialized static Entity.entityInfoType(_:)(v14);
    if (!v17)
    {
      v15 = makeEntity(for:)(v14);
      goto LABEL_16;
    }

    v16 = (*(v17 + 232))();
    v18 = *(v16 + 16);

    MEMORY[0x1C68F9740](v18, 0);
    *(v16 + 16) = v14;
    MEMORY[0x1C68F9740](v14, v16);

LABEL_20:
    result = REEntityGetChildCount();
    if (v13 >= result)
    {
      goto LABEL_30;
    }

    __SceneResource.findREAnchoringComponent(root:)(v16, v5);

    v19 = type metadata accessor for __REAnchoringType(0);
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v5, 1, v19) != 1)
    {

      outlined init with take of RealityFileLoadInformation(v5, a2, type metadata accessor for __REAnchoringType);
      return (*(v20 + 56))(a2, 0, 1, v19);
    }

    ++v13;
    outlined destroy of BodyTrackingComponent?(v5, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    if (v13 >= REEntityGetChildCount())
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t __SceneResource.makeAnchorEntity(from:fileName:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v5 = type metadata accessor for __REAnchoringType(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v40 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v37 - v15);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v41 = v6;
  v19 = v6;
  v20 = a1;
  v21 = *(v19 + 56);
  v45 = v5;
  v46 = &v37 - v22;
  v21(v18);
  v39 = a3;
  v37 = v8;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v24 = 0;
    v43 = v20 & 0xFFFFFFFFFFFFFF8;
    v44 = v20 & 0xC000000000000001;
    v25 = (v41 + 48);
    v42 = i;
    while (v44)
    {
      v26 = v20;
      v20 = MEMORY[0x1C68F41F0](v24, v20);
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      __SceneResource.findREAnchoringComponent(root:)(v16);

      v28 = v46;
      outlined destroy of BodyTrackingComponent?(v46, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
      outlined init with take of __REAnchoringType?(v16, v28);
      outlined init with copy of [String : String](v28, v13, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
      LODWORD(v28) = (*v25)(v13, 1, v45);
      outlined destroy of BodyTrackingComponent?(v13, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
      if (v28 == 1)
      {
        v20 = v26;
        ++v24;
        if (v27 != v42)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    if (v24 >= *(v43 + 16))
    {
      goto LABEL_13;
    }

    v26 = v20;
    v20 = *(v20 + 8 * v24 + 32);

    v27 = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
  v29 = v40;
  outlined init with copy of [String : String](v46, v40, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  if ((*(v41 + 48))(v29, 1, v45) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v29, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of __SceneResource.makeAnchorEntity(from:fileName:));
    v31 = specialized AnchorEntity.__allocating_init(world:)(v30);
  }

  else
  {
    v32 = v37;
    outlined init with take of RealityFileLoadInformation(v29, v37, type metadata accessor for __REAnchoringType);
    v33._countAndFlagsBits = 0x7974696C616572;
    v33._object = 0xE700000000000000;
    v34 = v38;
    v35 = v39;
    if (String.hasSuffix(_:)(v33))
    {
    }

    else
    {
      v34 = 0;
      v35 = 0xE000000000000000;
    }

    v31 = __REAnchoringType.createAnchorEntity(realityAssetFileName:)(v34, v35);

    outlined destroy of LoadTrace(v32, type metadata accessor for __REAnchoringType);
  }

  outlined destroy of BodyTrackingComponent?(v46, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  return v31;
}

uint64_t __SceneResourceLoadResult.__makeEntity()(uint64_t (*a1)(uint64_t))
{

  v3 = a1(v2);

  return v3;
}

void *SceneResourceLoadResult.makeAnchorEntity()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0[1];
  v8 = v0[2];
  v7 = v0[3];

  v9 = __SceneResource.makeAnchorEntity(fileName:)(v6, v8);
  if (v1)
  {

    return v9;
  }

  v16[1] = v6;
  v16[2] = v8;
  swift_bridgeObjectRetain_n();
  v10 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  swift_beginAccess();
  objc_setAssociatedObject(v9, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey, v10, 0x301);
  swift_endAccess();
  swift_bridgeObjectRelease_n();
  swift_unknownObjectRelease();
  v11 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v12 = *(v11 + 24);
  swift_unownedRetainStrong();
  v13 = *(v12 + 32);

  v14 = v13;

  *v5 = v14;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v12)
  {
    __SceneResourceCache.Entry.registerWithSceneLookupTable()();
    objc_setAssociatedObject(v9, "RealityKit.SceneResourceCacheEntry", v7, 0x301);

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for SceneResourceEntityMaker.makeAnchorEntity() in conformance UncachedSceneResourceLoadResult()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return __SceneResource.makeAnchorEntity(fileName:)(*(v0 + 16), v1);
  }

  type metadata accessor for SceneResourceLoadResult.InternalError(0);
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError, protocol conformance descriptor for SceneResourceLoadResult.InternalError);
  swift_allocError();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
  (*(*(v5 - 8) + 56))(v4, 1, 2, v5);
  return swift_willThrow();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RealityFileLoadInformation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static URL.== infix(_:_:)())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t closure #1 in static Entity.finishUSDLoad(forEntity:withOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  (*(v8 + 16))(&v16 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  v14.n128_f64[0] = (*(v8 + 32))(v13 + v12, v11, v7);
  specialized Entity.LoadFinisher.setupAfterUSDLoadAsync(_:options:_:)(a3, a4, partial apply for closure #1 in closure #1 in static Entity.finishUSDLoad(forEntity:withOptions:), v13, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:), specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:), v14);
}

uint64_t closure #1 in closure #1 in static Entity.finishUSDLoad(forEntity:withOptions:)(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t static Entity.load(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = a3;
  v4[24] = v3;
  v4[21] = a1;
  v4[22] = a2;
  type metadata accessor for MainActor();
  v4[25] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[26] = v6;
  v4[27] = v5;

  return MEMORY[0x1EEE6DFA0](static Entity.load(named:in:), v6, v5);
}

uint64_t static Entity.load(named:in:)()
{
  v9 = v0;
  swift_beginAccess();
  *(v0 + 16) = 0u;
  v1 = static RKARSystemCore.generateDecimatedMeshes;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  *(v0 + 104) = 0u;
  *(v0 + 65) = 0;
  *(v0 + 72) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 80) = 1;
  *(v0 + 84) = 0;
  *(v0 + 88) = 2;
  *(v0 + 96) = 0;
  outlined assign with take of __DownsamplingStrategy?(v0 + 104, v0 + 16);
  *(v0 + 56) = 0;
  *(v0 + 64) = v1;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v8 = static Entity.asynchronousLoadOptions;
  v5 = static Entity.__loadAsync(named:in:options:asyncOptions:)(v3, v4, v2, v0 + 16, &v8);
  *(v0 + 224) = v5;
  outlined destroy of Entity.__LoadOptions(v0 + 16);
  v6 = swift_task_alloc();
  *(v0 + 232) = v6;
  *v6 = v0;
  v6[1] = static Entity.load(named:in:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v5);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 248);

  return v1(v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static Entity.load(named:in:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = v4[26];
    v6 = v4[27];
    v7 = static Entity.load(named:in:);
  }

  else
  {

    v4[31] = a1;
    v5 = v4[26];
    v6 = v4[27];
    v7 = static Entity.load(named:in:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t static Entity.loadModel(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  type metadata accessor for MainActor();
  v3[24] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[25] = v5;
  v3[26] = v4;

  return MEMORY[0x1EEE6DFA0](static Entity.loadModel(named:in:), v5, v4);
}

uint64_t static Entity.loadModel(named:in:)()
{
  swift_beginAccess();
  *(v0 + 16) = 0u;
  v1 = static RKARSystemCore.generateDecimatedMeshes;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  *(v0 + 104) = 0u;
  *(v0 + 65) = 0;
  *(v0 + 72) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 80) = 1;
  *(v0 + 84) = 0;
  *(v0 + 88) = 2;
  *(v0 + 96) = 0;
  outlined assign with take of __DownsamplingStrategy?(v0 + 104, v0 + 16);
  *(v0 + 56) = 0;
  *(v0 + 64) = v1;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  v2 = specialized static Entity.loadModelAsync(named:in:options:asyncOptions:)(*(v0 + 168), *(v0 + 176), *(v0 + 184), v0 + 16);
  *(v0 + 216) = v2;
  outlined destroy of Entity.__LoadOptions(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 224) = v3;
  *v3 = v0;
  v3[1] = static Entity.loadModel(named:in:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA05ModelC0C_Tt0g5(v2);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 240);

  return v1(v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static Entity.loadModel(named:in:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = v4[25];
    v6 = v4[26];
    v7 = static Entity.loadModel(named:in:);
  }

  else
  {

    v4[30] = a1;
    v5 = v4[25];
    v6 = v4[26];
    v7 = static Entity.loadModel(named:in:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t Entity.init(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = Entity.init(named:in:);

  return specialized Entity.init(named:in:)(a1, a2, a3);
}

uint64_t Entity.init(named:in:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  v7 = *(v5 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t Entity.init(named:in:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return MEMORY[0x1EEE6DFA0](Entity.init(named:in:options:), v7, v6);
}

uint64_t Entity.init(named:in:options:)()
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
  v9 = (*(v3 + 264) + **(v3 + 264));
  v4 = swift_task_alloc();
  *(v0 + 304) = v4;
  *v4 = v0;
  v4[1] = Entity.init(named:in:options:);
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

  return MEMORY[0x1EEE6DFA0](Entity.init(named:in:options:), v3, v2);
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
  v3[1] = Entity.init(named:in:options:);

  return MEMORY[0x1EEE6DD58]();
}

{

  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return MEMORY[0x1EEE6DFA0](Entity.init(named:in:options:), v1, v2);
}

{

  v2 = v0[31];
  v1 = v0[32];
  if (v0[12])
  {
    Entity.LoadStatistics.log()();

    outlined destroy of BodyTrackingComponent?(v1, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v0[32], &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  }

  outlined destroy of Entity.__LoadOptions((v0 + 2));

  v3 = v0[1];
  v4 = v0[41];

  return v3(v4);
}

{
  v1 = v0[31];
  v2 = v0[32];

  outlined destroy of BodyTrackingComponent?(v2, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  outlined destroy of Entity.__LoadOptions((v0 + 2));
  v3 = v0[1];

  return v3();
}

uint64_t Entity.init(named:in:options:)(uint64_t a1)
{
  v3 = *v2;
  v3[39] = a1;
  v3[40] = v1;

  v4 = v3[36];
  v5 = v3[37];
  if (v1)
  {
    v6 = Entity.init(named:in:options:);
  }

  else
  {
    v6 = Entity.init(named:in:options:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

void Entity.init(named:in:options:)()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 344);
    v4 = *(v2 + 352);

    MEMORY[0x1EEE6DFA0](Entity.init(named:in:options:), v3, v4);
  }
}

uint64_t _s10RealityKit6EntityC0A10FoundationE06doLoadC11FromUSDData33_F26D63620DB78A19432B1EBEC9E8266ALL4from18resourceIdentifier4type7options12loadFinisher04postF07fulfilly0D04DataV_S2SAC02__F7OptionsVAcDE0fV0AFLLCy_xGySDySSypGKcSgys6ResultOyxs5Error_pGctACRbzlFZAC_Tt6g5(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v63 = a8;
  v64 = a3;
  v59 = a5;
  v60 = a6;
  v65 = a4;
  v61 = a1;
  v62 = a2;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v68 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v66 = *(v16 - 8);
  v67 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v20 = *(v19 + 24);
  swift_unownedRetainStrong();
  v21 = *(v20 + 32);

  v22 = v21;

  swift_beginAccess();
  outlined init with copy of [String : String](v19 + 176, &v72, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  v69 = v19;
  if (*(&v73 + 1))
  {
    v64 = a11;
    v65 = a12;
    v57 = v22;
    v58 = v18;
    v55 = v13;
    v56 = v15;
    v54 = a9;
    outlined init with take of ForceEffectBase(&v72, v78);
    v23 = *(a7 + 80);
    if (v23)
    {
      v24 = v23 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
      *v24 = 1;
      *(v24 + 8) = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C18A1E70;
    *(inited + 32) = 1701869940;
    v26 = MEMORY[0x1E69E6158];
    v27 = v59;
    v28 = v60;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v27;
    *(inited + 56) = v28;
    v29 = MEMORY[0x1E6969080];
    *(inited + 72) = v26;
    *(inited + 80) = 1635017060;
    v31 = v61;
    v30 = v62;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v31;
    *(inited + 104) = v30;
    *(inited + 120) = v29;
    *(inited + 128) = 0x656D614E68746977;
    *(inited + 136) = 0xE800000000000000;
    *(inited + 144) = 0x64656D616E6E75;
    *(inited + 152) = 0xE700000000000000;
    *(inited + 168) = v26;
    *(inited + 176) = 0xD000000000000015;
    *(inited + 184) = 0x80000001C18ED680;
    v32 = MEMORY[0x1E69E6370];
    *(inited + 192) = *(a7 + 48);
    *(inited + 216) = v32;
    *(inited + 224) = 0xD000000000000018;
    *(inited + 232) = 0x80000001C18EDE40;
    *(inited + 240) = *(a7 + 49);
    *(inited + 264) = v32;
    *(inited + 272) = 0x694C79726F6D656DLL;
    *(inited + 280) = 0xEB0000000074696DLL;
    v33 = *(a7 + 56);
    v34 = *(a7 + 64);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    *(inited + 288) = v33;
    *(inited + 296) = v34;
    *(inited + 312) = v35;
    strcpy((inited + 320), "featuresToSkip");
    *(inited + 335) = -18;
    *(inited + 336) = *(a7 + 68);
    *(inited + 360) = &type metadata for Entity.__LoadOptions.LoadableFeatures;
    *(inited + 368) = 0x6C6C69666C7566;
    *(inited + 376) = 0xE700000000000000;
    outlined init with copy of Entity.__LoadOptions(a7, &v72);
    v36 = swift_allocObject();
    v37 = v75;
    *(v36 + 56) = v74;
    *(v36 + 72) = v37;
    *(v36 + 88) = v76;
    v38 = v73;
    *(v36 + 24) = v72;
    *(v36 + 16) = v63;
    v39 = v77;
    *(v36 + 40) = v38;
    v40 = v64;
    v41 = v65;
    *(v36 + 104) = v39;
    *(v36 + 112) = v40;
    *(v36 + 120) = v41;
    v42 = swift_allocObject();
    *(v42 + 16) = partial apply for specialized closure #2 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:);
    *(v42 + 24) = v36;
    *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit6EntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit6EntityCs5Error_pGcMR);
    *(inited + 384) = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed Result<A, Error>) -> ();
    *(inited + 392) = v42;

    outlined copy of Data._Representation(v31, v30);
    v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    swift_arrayDestroy();
    v44 = v54;
    if (v54)
    {
      v45 = swift_allocObject();
      *(v45 + 16) = v44;
      *(v45 + 24) = a10;
      *(&v73 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
      *&v72 = thunk for @escaping @callee_guaranteed (@guaranteed [String : Any]) -> (@error @owned Error)partial apply;
      *(&v72 + 1) = v45;
      outlined init with take of Any(&v72, v71);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v43;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0x64616F4C74736F70, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      v43 = v70;
    }

    v47 = v79;
    v48 = v80;
    __swift_project_boxed_opaque_existential_1(v78, v79);
    (*(v48 + 40))(v43, v47, v48);

    return __swift_destroy_boxed_opaque_existential_1(v78);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v72, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
    v49 = swift_allocObject();
    v49[2] = a11;
    v49[3] = a12;
    v50 = v65;
    v49[4] = v64;
    v49[5] = v50;
    *&v74 = partial apply for specialized closure #1 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:);
    *(&v74 + 1) = v49;
    *&v72 = MEMORY[0x1E69E9820];
    *(&v72 + 1) = 1107296256;
    *&v73 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v73 + 1) = &block_descriptor_635;
    v51 = _Block_copy(&v72);

    static DispatchQoS.unspecified.getter();
    v78[0] = MEMORY[0x1E69E7CC0];
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v18, v15, v51);

    _Block_release(v51);

    (*(v68 + 8))(v15, v13);
    (*(v66 + 8))(v18, v67);
  }
}

uint64_t _s10RealityKit6EntityC0A10FoundationE06doLoadC11FromUSDData33_F26D63620DB78A19432B1EBEC9E8266ALL4from18resourceIdentifier4type7options12loadFinisher04postF07fulfilly0D04DataV_S2SAC02__F7OptionsVAcDE0fV0AFLLCy_xGySDySSypGKcSgys6ResultOyxs5Error_pGctACRbzlFZAA06AnchorC0C_Tt6g5(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v63 = a8;
  v64 = a3;
  v59 = a5;
  v60 = a6;
  v65 = a4;
  v61 = a1;
  v62 = a2;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v68 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v66 = *(v16 - 8);
  v67 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v20 = *(v19 + 24);
  swift_unownedRetainStrong();
  v21 = *(v20 + 32);

  v22 = v21;

  swift_beginAccess();
  outlined init with copy of [String : String](v19 + 176, &v72, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  v69 = v19;
  if (*(&v73 + 1))
  {
    v64 = a11;
    v65 = a12;
    v57 = v22;
    v58 = v18;
    v55 = v13;
    v56 = v15;
    v54 = a9;
    outlined init with take of ForceEffectBase(&v72, v78);
    v23 = *(a7 + 80);
    if (v23)
    {
      v24 = v23 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
      *v24 = 1;
      *(v24 + 8) = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C18A1E70;
    *(inited + 32) = 1701869940;
    v26 = MEMORY[0x1E69E6158];
    v27 = v59;
    v28 = v60;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v27;
    *(inited + 56) = v28;
    v29 = MEMORY[0x1E6969080];
    *(inited + 72) = v26;
    *(inited + 80) = 1635017060;
    v31 = v61;
    v30 = v62;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v31;
    *(inited + 104) = v30;
    *(inited + 120) = v29;
    *(inited + 128) = 0x656D614E68746977;
    *(inited + 136) = 0xE800000000000000;
    *(inited + 144) = 0x64656D616E6E75;
    *(inited + 152) = 0xE700000000000000;
    *(inited + 168) = v26;
    *(inited + 176) = 0xD000000000000015;
    *(inited + 184) = 0x80000001C18ED680;
    v32 = MEMORY[0x1E69E6370];
    *(inited + 192) = *(a7 + 48);
    *(inited + 216) = v32;
    *(inited + 224) = 0xD000000000000018;
    *(inited + 232) = 0x80000001C18EDE40;
    *(inited + 240) = *(a7 + 49);
    *(inited + 264) = v32;
    *(inited + 272) = 0x694C79726F6D656DLL;
    *(inited + 280) = 0xEB0000000074696DLL;
    v33 = *(a7 + 56);
    v34 = *(a7 + 64);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    *(inited + 288) = v33;
    *(inited + 296) = v34;
    *(inited + 312) = v35;
    strcpy((inited + 320), "featuresToSkip");
    *(inited + 335) = -18;
    *(inited + 336) = *(a7 + 68);
    *(inited + 360) = &type metadata for Entity.__LoadOptions.LoadableFeatures;
    *(inited + 368) = 0x6C6C69666C7566;
    *(inited + 376) = 0xE700000000000000;
    outlined init with copy of Entity.__LoadOptions(a7, &v72);
    v36 = swift_allocObject();
    v37 = v75;
    *(v36 + 56) = v74;
    *(v36 + 72) = v37;
    *(v36 + 88) = v76;
    v38 = v73;
    *(v36 + 24) = v72;
    *(v36 + 16) = v63;
    v39 = v77;
    *(v36 + 40) = v38;
    v40 = v64;
    v41 = v65;
    *(v36 + 104) = v39;
    *(v36 + 112) = v40;
    *(v36 + 120) = v41;
    v42 = swift_allocObject();
    *(v42 + 16) = partial apply for specialized closure #2 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:);
    *(v42 + 24) = v36;
    *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMR);
    *(inited + 384) = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed Result<A, Error>) -> ();
    *(inited + 392) = v42;

    outlined copy of Data._Representation(v31, v30);
    v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    swift_arrayDestroy();
    v44 = v54;
    if (v54)
    {
      v45 = swift_allocObject();
      *(v45 + 16) = v44;
      *(v45 + 24) = a10;
      *(&v73 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
      *&v72 = thunk for @escaping @callee_guaranteed (@guaranteed [String : Any]) -> (@error @owned Error)partial apply;
      *(&v72 + 1) = v45;
      outlined init with take of Any(&v72, v71);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v43;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0x64616F4C74736F70, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      v43 = v70;
    }

    v47 = v79;
    v48 = v80;
    __swift_project_boxed_opaque_existential_1(v78, v79);
    (*(v48 + 40))(v43, v47, v48);

    return __swift_destroy_boxed_opaque_existential_1(v78);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v72, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
    v49 = swift_allocObject();
    v49[2] = a11;
    v49[3] = a12;
    v50 = v65;
    v49[4] = v64;
    v49[5] = v50;
    *&v74 = partial apply for specialized closure #1 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:);
    *(&v74 + 1) = v49;
    *&v72 = MEMORY[0x1E69E9820];
    *(&v72 + 1) = 1107296256;
    *&v73 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v73 + 1) = &block_descriptor_417;
    v51 = _Block_copy(&v72);

    static DispatchQoS.unspecified.getter();
    v78[0] = MEMORY[0x1E69E7CC0];
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v18, v15, v51);

    _Block_release(v51);

    (*(v68 + 8))(v15, v13);
    (*(v66 + 8))(v18, v67);
  }
}

uint64_t _s10RealityKit6EntityC0A10FoundationE06doLoadC11FromUSDData33_F26D63620DB78A19432B1EBEC9E8266ALL4from18resourceIdentifier4type7options12loadFinisher04postF07fulfilly0D04DataV_S2SAC02__F7OptionsVAcDE0fV0AFLLCy_xGySDySSypGKcSgys6ResultOyxs5Error_pGctACRbzlFZAA011BodyTrackedC0C_Tt6g5(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v63 = a8;
  v64 = a3;
  v59 = a5;
  v60 = a6;
  v65 = a4;
  v61 = a1;
  v62 = a2;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v68 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v66 = *(v16 - 8);
  v67 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v20 = *(v19 + 24);
  swift_unownedRetainStrong();
  v21 = *(v20 + 32);

  v22 = v21;

  swift_beginAccess();
  outlined init with copy of [String : String](v19 + 176, &v72, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  v69 = v19;
  if (*(&v73 + 1))
  {
    v64 = a11;
    v65 = a12;
    v57 = v22;
    v58 = v18;
    v55 = v13;
    v56 = v15;
    v54 = a9;
    outlined init with take of ForceEffectBase(&v72, v78);
    v23 = *(a7 + 80);
    if (v23)
    {
      v24 = v23 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
      *v24 = 1;
      *(v24 + 8) = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C18A1E70;
    *(inited + 32) = 1701869940;
    v26 = MEMORY[0x1E69E6158];
    v27 = v59;
    v28 = v60;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v27;
    *(inited + 56) = v28;
    v29 = MEMORY[0x1E6969080];
    *(inited + 72) = v26;
    *(inited + 80) = 1635017060;
    v31 = v61;
    v30 = v62;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v31;
    *(inited + 104) = v30;
    *(inited + 120) = v29;
    *(inited + 128) = 0x656D614E68746977;
    *(inited + 136) = 0xE800000000000000;
    *(inited + 144) = 0x64656D616E6E75;
    *(inited + 152) = 0xE700000000000000;
    *(inited + 168) = v26;
    *(inited + 176) = 0xD000000000000015;
    *(inited + 184) = 0x80000001C18ED680;
    v32 = MEMORY[0x1E69E6370];
    *(inited + 192) = *(a7 + 48);
    *(inited + 216) = v32;
    *(inited + 224) = 0xD000000000000018;
    *(inited + 232) = 0x80000001C18EDE40;
    *(inited + 240) = *(a7 + 49);
    *(inited + 264) = v32;
    *(inited + 272) = 0x694C79726F6D656DLL;
    *(inited + 280) = 0xEB0000000074696DLL;
    v33 = *(a7 + 56);
    v34 = *(a7 + 64);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    *(inited + 288) = v33;
    *(inited + 296) = v34;
    *(inited + 312) = v35;
    strcpy((inited + 320), "featuresToSkip");
    *(inited + 335) = -18;
    *(inited + 336) = *(a7 + 68);
    *(inited + 360) = &type metadata for Entity.__LoadOptions.LoadableFeatures;
    *(inited + 368) = 0x6C6C69666C7566;
    *(inited + 376) = 0xE700000000000000;
    outlined init with copy of Entity.__LoadOptions(a7, &v72);
    v36 = swift_allocObject();
    v37 = v75;
    *(v36 + 56) = v74;
    *(v36 + 72) = v37;
    *(v36 + 88) = v76;
    v38 = v73;
    *(v36 + 24) = v72;
    *(v36 + 16) = v63;
    v39 = v77;
    *(v36 + 40) = v38;
    v40 = v64;
    v41 = v65;
    *(v36 + 104) = v39;
    *(v36 + 112) = v40;
    *(v36 + 120) = v41;
    v42 = swift_allocObject();
    *(v42 + 16) = partial apply for specialized closure #2 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:);
    *(v42 + 24) = v36;
    *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMR);
    *(inited + 384) = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed Result<A, Error>) -> ();
    *(inited + 392) = v42;

    outlined copy of Data._Representation(v31, v30);
    v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    swift_arrayDestroy();
    v44 = v54;
    if (v54)
    {
      v45 = swift_allocObject();
      *(v45 + 16) = v44;
      *(v45 + 24) = a10;
      *(&v73 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
      *&v72 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [String : Any]) -> (@error @owned Error);
      *(&v72 + 1) = v45;
      outlined init with take of Any(&v72, v71);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v43;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, 0x64616F4C74736F70, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      v43 = v70;
    }

    v47 = v79;
    v48 = v80;
    __swift_project_boxed_opaque_existential_1(v78, v79);
    (*(v48 + 40))(v43, v47, v48);

    return __swift_destroy_boxed_opaque_existential_1(v78);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v72, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
    v49 = swift_allocObject();
    v49[2] = a11;
    v49[3] = a12;
    v50 = v65;
    v49[4] = v64;
    v49[5] = v50;
    *&v74 = partial apply for specialized closure #1 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:);
    *(&v74 + 1) = v49;
    *&v72 = MEMORY[0x1E69E9820];
    *(&v72 + 1) = 1107296256;
    *&v73 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v73 + 1) = &block_descriptor_291;
    v51 = _Block_copy(&v72);

    static DispatchQoS.unspecified.getter();
    v78[0] = MEMORY[0x1E69E7CC0];
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v18, v15, v51);

    _Block_release(v51);

    (*(v68 + 8))(v15, v13);
    (*(v66 + 8))(v18, v67);
  }
}

void specialized closure #1 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:)(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Entity.LoadError(0);
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
  v7 = swift_allocError();
  *v8 = a3;
  v8[1] = a4;
  swift_storeEnumTagMultiPayload();

  a1(v7, 1);
}

uint64_t specialized closure #2 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  if (a2)
  {
    return a5(a1, 1, a3, a4);
  }

  outlined init with copy of Entity.__LoadOptions(a4, v11);
  specialized Entity.LoadFinisher.setupAfterUSDLoadAsync(_:options:_:)(a1, v11, a5, a6, v10);
  return outlined destroy of BodyTrackingComponent?(v11, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE06doLoadC8FromData33_F26D63620DB78A19432B1EBEC9E8266ALL4from5named18resourceIdentifier7options12asyncOptions9loadTrace0W8Finisher7fulfilly0D00H0V_SSSgSSAC02__fV0VAC07__AsyncfV0VAD0fX0VzAcDE0fY0AFLLCy_xGys6ResultOyxs5Error_pGctACRbzlFZ0efcgaH0L_yyKACRbzlFyyYbcfU_AC_Ttg5(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27SceneResourceLoadResultBase_pMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24SceneResourceEntityMaker_pMd, &_s17RealityFoundation24SceneResourceEntityMaker_pMR);
  swift_dynamicCast();
  v8 = v14;
  v9 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v10 = (*(v9 + 8))(v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v13);
  outlined init with copy of Entity.__LoadOptions(a3, v12);
  specialized Entity.LoadFinisher.setupAfterRealityLoadAsync(_:options:_:)(v10, v12, a4, a5, specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:));

  return outlined destroy of BodyTrackingComponent?(v12, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE06doLoadC8FromData33_F26D63620DB78A19432B1EBEC9E8266ALL4from5named18resourceIdentifier7options12asyncOptions9loadTrace0W8Finisher7fulfilly0D00H0V_SSSgSSAC02__fV0VAC07__AsyncfV0VAD0fX0VzAcDE0fY0AFLLCy_xGys6ResultOyxs5Error_pGctACRbzlFZ0efcgaH0L_yyKACRbzlFyyYbcfU_AA06AnchorC0C_Ttg5(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27SceneResourceLoadResultBase_pMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24SceneResourceEntityMaker_pMd, &_s17RealityFoundation24SceneResourceEntityMaker_pMR);
  swift_dynamicCast();
  v8 = v14;
  v9 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v10 = (*(v9 + 16))(v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v13);
  outlined init with copy of Entity.__LoadOptions(a3, v12);
  specialized Entity.LoadFinisher.setupAfterRealityLoadAsync(_:options:_:)(v10, v12, a4, a5, specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:));

  return outlined destroy of BodyTrackingComponent?(v12, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
}

uint64_t specialized postLoad #1 <A>(data:) in doLoadEntityFromUSDData #1 <A>() in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
  if ((v3 & 1) == 0)
  {
    goto LABEL_16;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v2, v13);
  if (!swift_dynamicCast())
  {
    goto LABEL_16;
  }

  if (v11 == 0x64616F4C74736F50 && v12 == 0xEC00000061746144)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (*(a1 + 16))
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(0x797469746E65, 0xE600000000000000);
    if (v6)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v5, v13);
      type metadata accessor for Entity();
      if (swift_dynamicCast())
      {
        if (*(a1 + 16))
        {
          v7 = specialized __RawDictionaryStorage.find<A>(_:)(0x646574726F706D69, 0xEE0073656E656353);
          if (v8)
          {
            outlined init with copy of Any(*(a1 + 56) + 32 * v7, v13);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
            if (swift_dynamicCast())
            {

              specialized static Entity.applyHackForRealityIOUSDImports(rootEntity:)(v9);
              specialized static Entity.addInputTargetComponentsAndCollisionShapesToTapTriggerTargets(for:)(v11);
            }
          }
        }
      }
    }
  }

LABEL_16:
  type metadata accessor for Entity.LoadError(0);
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

void specialized postLoad #1 <A>(data:) in doLoadEntityFromUSDData #1 <A>() in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
  if ((v3 & 1) == 0)
  {
    goto LABEL_16;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v2, v11);
  if (!swift_dynamicCast())
  {
    goto LABEL_16;
  }

  if (v9 == 0x64616F4C74736F50 && v10 == 0xEC00000061746144)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (*(a1 + 16))
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(0x797469746E65, 0xE600000000000000);
    if (v6)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v5, v11);
      type metadata accessor for AnchorEntity();
      if (swift_dynamicCast())
      {
        if (*(a1 + 16))
        {
          v7 = specialized __RawDictionaryStorage.find<A>(_:)(0x646574726F706D69, 0xEE0073656E656353);
          if (v8)
          {
            outlined init with copy of Any(*(a1 + 56) + 32 * v7, v11);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
            if (swift_dynamicCast())
            {

              return;
            }
          }
        }
      }
    }
  }

LABEL_16:
  type metadata accessor for Entity.LoadError(0);
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

uint64_t specialized closure #1 in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  _s10RealityKit6EntityC0A10FoundationE06doLoadC11FromUSDData33_F26D63620DB78A19432B1EBEC9E8266ALL4from18resourceIdentifier4type7options12loadFinisher04postF07fulfilly0D04DataV_S2SAC02__F7OptionsVAcDE0fV0AFLLCy_xGySDySSypGKcSgys6ResultOyxs5Error_pGctACRbzlFZAC_Tt6g5(a2, a3, a4, a5, 0xD000000000000011, 0x80000001C18EDF60, a6, a7, partial apply for specialized postLoad #1 <A>(data:) in doLoadEntityFromUSDData #1 <A>() in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:), v16, a8, a9);
}

{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  _s10RealityKit6EntityC0A10FoundationE06doLoadC11FromUSDData33_F26D63620DB78A19432B1EBEC9E8266ALL4from18resourceIdentifier4type7options12loadFinisher04postF07fulfilly0D04DataV_S2SAC02__F7OptionsVAcDE0fV0AFLLCy_xGySDySSypGKcSgys6ResultOyxs5Error_pGctACRbzlFZAA06AnchorC0C_Tt6g5(a2, a3, a4, a5, 0xD000000000000017, 0x80000001C18EDE80, a6, a7, partial apply for specialized postLoad #1 <A>(data:) in doLoadEntityFromUSDData #1 <A>() in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:), v16, a8, a9);
}

void specialized closure #2 in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:)(void (*a1)(void *, uint64_t), uint64_t a2, void *a3)
{
  type metadata accessor for CFErrorRef(0);
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
  v5 = swift_allocError();
  *v6 = a3;
  v7 = a3;
  a1(v5, 1);
}

uint64_t closure #1 in static Entity.loadAsync(from:named:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14)
{
  v37 = a8;
  v36 = a7;
  v34 = a4;
  v43 = a3;
  v32[1] = a2;
  v38 = a14;
  v35 = a12;
  v33 = a9;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  outlined init with copy of Entity.__LoadOptions(a11, v46);
  v23 = swift_allocObject();
  v24 = v46[3];
  *(v23 + 104) = v46[2];
  *(v23 + 120) = v24;
  *(v23 + 136) = v46[4];
  v25 = v46[1];
  *(v23 + 72) = v46[0];
  *(v23 + 16) = v34;
  *(v23 + 24) = a5;
  v26 = v36;
  *(v23 + 32) = a6;
  *(v23 + 40) = v26;
  v27 = v33;
  *(v23 + 48) = v37;
  *(v23 + 56) = v27;
  *(v23 + 64) = a10;
  *(v23 + 152) = v47;
  *(v23 + 88) = v25;
  *(v23 + 160) = v35;
  v28 = v38;
  *(v23 + 168) = a13;
  *(v23 + 176) = v28;
  *(v23 + 184) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  *(v23 + 192) = v22;
  aBlock[4] = partial apply for closure #1 in closure #1 in static Entity.loadAsync(from:named:options:asyncOptions:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_602;
  v29 = _Block_copy(aBlock);

  outlined copy of Data._Representation(a5, a6);

  static DispatchQoS.unspecified.getter();
  v44 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v30 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v21, v19, v29);
  _Block_release(v29);
  (*(v42 + 8))(v19, v30);
  (*(v40 + 8))(v21, v41);
}

uint64_t closure #1 in closure #1 in static Entity.loadAsync(from:named:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v52 = a8;
  v53 = a6;
  v54 = a7;
  v41 = a4;
  v42 = a5;
  v39[2] = a1;
  v45 = a13;
  v44 = a12;
  v40 = a11;
  v47 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v48 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v50 = *(v16 - 8);
  v51 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v43 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LoadTrace(0);
  v18 = swift_projectBox();
  swift_beginAccess();
  v19 = specialized static __ServiceLocator.shared.getter();
  v20 = *(*(v19 + 168) + 16);
  swift_beginAccess();
  v21 = *(v19 + 24);
  swift_unownedRetainStrong();
  v22 = *(v21 + 32);

  v46 = v20;
  v23 = v22;

  v24 = *(*(v19 + 168) + 32);
  memset(v65, 0, 73);
  v64 = 0u;
  v65[73] = 1;
  v66 = 0;
  v67 = 0;
  v63[0] = 1;
  v65[75] = a9 != 2;
  v25 = v52;
  v65[74] = (a9 & 0xFE) != 2;
  v68 = *(v52 + 80);

  outlined assign with copy of __DownsamplingStrategy?(v25, &v65[8]);
  v39[3] = a2;
  v39[4] = a3;
  __SceneResourceCache.loadSceneResource(from:named:resourceIdentifier:loadOptions:)(v41, v42, v53, v54, v63, v60);
  v26 = v61;
  v27 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  *(v18 + 16) = (*(v27 + 16))(v26, v27) & 1;
  outlined init with copy of __REAssetService(v60, v59);
  outlined init with copy of Entity.__LoadOptions(v25, v57);
  v28 = swift_allocObject();
  outlined init with take of ForceEffectBase(v59, v28 + 16);
  *(v28 + 56) = v40;
  v29 = v57[3];
  *(v28 + 96) = v57[2];
  *(v28 + 112) = v29;
  *(v28 + 128) = v57[4];
  v30 = v58;
  v31 = v57[1];
  *(v28 + 64) = v57[0];
  *(v28 + 80) = v31;
  v32 = v44;
  v33 = v45;
  *(v28 + 144) = v30;
  *(v28 + 152) = v32;
  *(v28 + 160) = v33;
  v56[4] = _s10RealityKit6EntityC0A10FoundationE06doLoadC8FromData33_F26D63620DB78A19432B1EBEC9E8266ALL4from5named18resourceIdentifier7options12asyncOptions9loadTrace0W8Finisher7fulfilly0D00H0V_SSSgSSAC02__fV0VAC07__AsyncfV0VAD0fX0VzAcDE0fY0AFLLCy_xGys6ResultOyxs5Error_pGctACRbzlFZ0efcgaH0L_yyKACRbzlFyyYbcfU_AC_Ttg5TA;
  v56[5] = v28;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 1107296256;
  v56[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v56[3] = &block_descriptor_626;
  v34 = _Block_copy(v56);

  v42 = v24;
  v35 = v43;
  static DispatchQoS.unspecified.getter();
  v55 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v36 = v47;
  v37 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v35, v37, v34);
  _Block_release(v34);

  (*(v49 + 8))(v37, v36);
  (*(v50 + 8))(v35, v51);

  __swift_destroy_boxed_opaque_existential_1(v60);
  outlined destroy of __REAssetBundle.LoadOptions(v63);
  return swift_endAccess();
}

uint64_t closure #1 in static Entity.loadAnchorAsync(from:named:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14)
{
  v37 = a8;
  v36 = a7;
  v34 = a4;
  v43 = a3;
  v32[1] = a2;
  v38 = a14;
  v35 = a12;
  v33 = a9;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  outlined init with copy of Entity.__LoadOptions(a11, v46);
  v23 = swift_allocObject();
  v24 = v46[3];
  *(v23 + 104) = v46[2];
  *(v23 + 120) = v24;
  *(v23 + 136) = v46[4];
  v25 = v46[1];
  *(v23 + 72) = v46[0];
  *(v23 + 16) = v34;
  *(v23 + 24) = a5;
  v26 = v36;
  *(v23 + 32) = a6;
  *(v23 + 40) = v26;
  v27 = v33;
  *(v23 + 48) = v37;
  *(v23 + 56) = v27;
  *(v23 + 64) = a10;
  *(v23 + 152) = v47;
  *(v23 + 88) = v25;
  *(v23 + 160) = v35;
  v28 = v38;
  *(v23 + 168) = a13;
  *(v23 + 176) = v28;
  *(v23 + 184) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  *(v23 + 192) = v22;
  aBlock[4] = partial apply for closure #1 in closure #1 in static Entity.loadAnchorAsync(from:named:options:asyncOptions:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_360;
  v29 = _Block_copy(aBlock);

  outlined copy of Data._Representation(a5, a6);

  static DispatchQoS.unspecified.getter();
  v44 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v30 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v21, v19, v29);
  _Block_release(v29);
  (*(v42 + 8))(v19, v30);
  (*(v40 + 8))(v21, v41);
}

uint64_t closure #1 in closure #1 in static Entity.loadAnchorAsync(from:named:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v52 = a8;
  v53 = a6;
  v54 = a7;
  v41 = a4;
  v42 = a5;
  v39[2] = a1;
  v45 = a13;
  v44 = a12;
  v40 = a11;
  v47 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v48 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v50 = *(v16 - 8);
  v51 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v43 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LoadTrace(0);
  v18 = swift_projectBox();
  swift_beginAccess();
  v19 = specialized static __ServiceLocator.shared.getter();
  v20 = *(*(v19 + 168) + 16);
  swift_beginAccess();
  v21 = *(v19 + 24);
  swift_unownedRetainStrong();
  v22 = *(v21 + 32);

  v46 = v20;
  v23 = v22;

  v24 = *(*(v19 + 168) + 32);
  memset(v65, 0, 73);
  v64 = 0u;
  v65[73] = 1;
  v66 = 0;
  v67 = 0;
  v63[0] = 1;
  v65[75] = a9 != 2;
  v25 = v52;
  v65[74] = (a9 & 0xFE) != 2;
  v68 = *(v52 + 80);

  outlined assign with copy of __DownsamplingStrategy?(v25, &v65[8]);
  v39[3] = a2;
  v39[4] = a3;
  __SceneResourceCache.loadSceneResource(from:named:resourceIdentifier:loadOptions:)(v41, v42, v53, v54, v63, v60);
  v26 = v61;
  v27 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  *(v18 + 16) = (*(v27 + 16))(v26, v27) & 1;
  outlined init with copy of __REAssetService(v60, v59);
  outlined init with copy of Entity.__LoadOptions(v25, v57);
  v28 = swift_allocObject();
  outlined init with take of ForceEffectBase(v59, v28 + 16);
  *(v28 + 56) = v40;
  v29 = v57[3];
  *(v28 + 96) = v57[2];
  *(v28 + 112) = v29;
  *(v28 + 128) = v57[4];
  v30 = v58;
  v31 = v57[1];
  *(v28 + 64) = v57[0];
  *(v28 + 80) = v31;
  v32 = v44;
  v33 = v45;
  *(v28 + 144) = v30;
  *(v28 + 152) = v32;
  *(v28 + 160) = v33;
  v56[4] = _s10RealityKit6EntityC0A10FoundationE06doLoadC8FromData33_F26D63620DB78A19432B1EBEC9E8266ALL4from5named18resourceIdentifier7options12asyncOptions9loadTrace0W8Finisher7fulfilly0D00H0V_SSSgSSAC02__fV0VAC07__AsyncfV0VAD0fX0VzAcDE0fY0AFLLCy_xGys6ResultOyxs5Error_pGctACRbzlFZ0efcgaH0L_yyKACRbzlFyyYbcfU_AA06AnchorC0C_Ttg5TA;
  v56[5] = v28;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 1107296256;
  v56[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v56[3] = &block_descriptor_384;
  v34 = _Block_copy(v56);

  v42 = v24;
  v35 = v43;
  static DispatchQoS.unspecified.getter();
  v55 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v36 = v47;
  v37 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v35, v37, v34);
  _Block_release(v34);

  (*(v49 + 8))(v37, v36);
  (*(v50 + 8))(v35, v51);

  __swift_destroy_boxed_opaque_existential_1(v60);
  outlined destroy of __REAssetBundle.LoadOptions(v63);
  return swift_endAccess();
}

uint64_t closure #1 in static Entity.loadBodyTrackedAsync(from:named:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;

  _s10RealityKit6EntityC0A10FoundationE06doLoadC11FromUSDData33_F26D63620DB78A19432B1EBEC9E8266ALL4from18resourceIdentifier4type7options12loadFinisher04postF07fulfilly0D04DataV_S2SAC02__F7OptionsVAcDE0fV0AFLLCy_xGySDySSypGKcSgys6ResultOyxs5Error_pGctACRbzlFZAA011BodyTrackedC0C_Tt6g5(a4, a5, a6, a7, 0xD00000000000001CLL, 0x80000001C18EDE60, a8, a9, postLoad #1 (data:) in closure #1 in static Entity.loadBodyTrackedAsync(from:named:options:asyncOptions:), 0, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply, v16);
}

uint64_t postLoad #1 (data:) in closure #1 in static Entity.loadAnchorAsync(named:in:)(uint64_t a1, uint64_t (*a2)(void))
{
  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v4, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v10 == 0x64616F4C74736F50 && v11 == 0xEC00000061746144)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (*(a1 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(0x797469746E65, 0xE600000000000000);
    if (v8)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v7, v12);
      a2(0);
      if (swift_dynamicCast())
      {
      }
    }
  }

LABEL_12:
  type metadata accessor for Entity.LoadError(0);
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t closure #1 in static Entity.loadModelAsync(from:named:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a6;
  v50 = a4;
  v51 = a5;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v13 - 8);
  v55 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v52 = *(v16 - 8);
  v53 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;

  v20 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v21 = *(v20 + 24);
  swift_unownedRetainStrong();
  v22 = *(v21 + 32);

  v23 = v22;

  swift_beginAccess();
  outlined init with copy of [String : String](v20 + 176, &v57, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  v56 = v20;
  if (*(&v58 + 1))
  {
    v48 = v19;
    v49 = v23;
    v47[0] = v18;
    v47[1] = v15;
    outlined init with take of ForceEffectBase(&v57, v63);
    v24 = *(a8 + 80);
    if (v24)
    {
      v25 = v24 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
      *v25 = 1;
      *(v25 + 8) = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 32) = 1701869940;
    *(inited + 16) = xmmword_1C18A1E70;
    v27 = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = 0xD000000000000016;
    *(inited + 56) = 0x80000001C18EDE20;
    *(inited + 72) = v27;
    *(inited + 80) = 1635017060;
    v28 = MEMORY[0x1E6969080];
    v30 = v50;
    v29 = v51;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v30;
    *(inited + 104) = v29;
    *(inited + 120) = v28;
    *(inited + 128) = 0x656D614E68746977;
    *(inited + 136) = 0xE800000000000000;
    *(inited + 144) = 0x64656D616E6E75;
    *(inited + 152) = 0xE700000000000000;
    *(inited + 168) = v27;
    *(inited + 176) = 0xD000000000000015;
    *(inited + 184) = 0x80000001C18ED680;
    v31 = MEMORY[0x1E69E6370];
    *(inited + 192) = *(a8 + 48);
    *(inited + 216) = v31;
    *(inited + 224) = 0xD000000000000018;
    *(inited + 232) = 0x80000001C18EDE40;
    *(inited + 240) = *(a8 + 49);
    *(inited + 264) = v31;
    *(inited + 272) = 0x694C79726F6D656DLL;
    *(inited + 280) = 0xEB0000000074696DLL;
    v32 = *(a8 + 56);
    v33 = *(a8 + 64);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    *(inited + 288) = v32;
    *(inited + 296) = v33;
    *(inited + 312) = v34;
    strcpy((inited + 320), "featuresToSkip");
    *(inited + 335) = -18;
    *(inited + 336) = *(a8 + 68);
    *(inited + 360) = &type metadata for Entity.__LoadOptions.LoadableFeatures;
    *(inited + 368) = 0x6C6C69666C7566;
    *(inited + 376) = 0xE700000000000000;
    outlined init with copy of Entity.__LoadOptions(a8, &v57);
    v35 = swift_allocObject();
    v36 = v60;
    *(v35 + 56) = v59;
    *(v35 + 72) = v36;
    *(v35 + 88) = v61;
    v37 = v58;
    *(v35 + 24) = v57;
    *(v35 + 16) = a9;
    v38 = v62;
    *(v35 + 40) = v37;
    *(v35 + 104) = v38;
    *(v35 + 112) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ();
    *(v35 + 120) = v48;
    v39 = swift_allocObject();
    *(v39 + 16) = partial apply for specialized closure #2 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:);
    *(v39 + 24) = v35;
    *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMR);
    *(inited + 384) = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed Result<A, Error>) -> ();
    *(inited + 392) = v39;

    outlined copy of Data._Representation(v30, v29);
    v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    swift_arrayDestroy();
    v41 = v64;
    v42 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    (*(v42 + 40))(v40, v41, v42);

    __swift_destroy_boxed_opaque_existential_1(v63);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v57, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
    v43 = swift_allocObject();
    v43[2] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ();
    v43[3] = v19;
    v43[4] = v49;
    v43[5] = a7;
    *&v59 = partial apply for specialized closure #1 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:);
    *(&v59 + 1) = v43;
    *&v57 = MEMORY[0x1E69E9820];
    *(&v57 + 1) = 1107296256;
    *&v58 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v58 + 1) = &block_descriptor_232;
    v44 = _Block_copy(&v57);

    static DispatchQoS.unspecified.getter();
    v63[0] = MEMORY[0x1E69E7CC0];
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v45 = v55;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v18, v15, v44);

    _Block_release(v44);

    (*(v54 + 8))(v15, v45);
    (*(v52 + 8))(v18, v53);
  }
}

uint64_t Entity.init(from:named:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[24] = a4;
  v5[25] = v4;
  v5[22] = a2;
  v5[23] = a3;
  v5[21] = a1;
  v5[26] = type metadata accessor for MainActor();
  v5[27] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[28] = v7;
  v5[29] = v6;

  return MEMORY[0x1EEE6DFA0](Entity.init(from:named:), v7, v6);
}

uint64_t Entity.init(from:named:)()
{
  *(v0 + 16) = 0u;
  *(v0 + 136) = 0;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 65) = 0;
  *(v0 + 72) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 80) = 1;
  *(v0 + 84) = 0;
  *(v0 + 88) = 2;
  *(v0 + 96) = 0;
  outlined assign with take of __DownsamplingStrategy?(v0 + 104, v0 + 16);
  *(v0 + 56) = 0;
  swift_beginAccess();
  *(v0 + 64) = static RKARSystemCore.generateDecimatedMeshes;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  *(v0 + 328) = static Entity.asynchronousLoadOptions;
  v8 = (*(v1 + 280) + **(v1 + 280));
  v2 = swift_task_alloc();
  *(v0 + 240) = v2;
  *v2 = v0;
  v2[1] = Entity.init(from:named:);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 168);

  return v8(v6, v4, v5, v3, v0 + 16, v0 + 328);
}

{
  v0[33] = (*(v0[25] + 232))();

  Entity.copy(to:recursive:)(v1, 1);
  v0[34] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[35] = v3;
  v0[36] = v2;

  return MEMORY[0x1EEE6DFA0](Entity.init(from:named:), v3, v2);
}

{
  v1 = static Entity.enumerateReferences(root:)(v0[33]);
  v0[37] = v1;
  v0[38] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v0[39] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[40] = v3;
  *v3 = v0;
  v3[1] = Entity.init(from:named:);

  return MEMORY[0x1EEE6DD58]();
}

{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return MEMORY[0x1EEE6DFA0](Entity.init(from:named:), v1, v2);
}

{
  v2 = v0[21];
  v1 = v0[22];

  outlined consume of Data._Representation(v2, v1);
  outlined destroy of Entity.__LoadOptions((v0 + 2));

  v3 = v0[1];
  v4 = v0[33];

  return v3(v4);
}

{
  v1 = v0[21];
  v2 = v0[22];

  outlined consume of Data._Representation(v1, v2);
  outlined destroy of Entity.__LoadOptions((v0 + 2));
  v3 = v0[1];

  return v3();
}

uint64_t Entity.init(from:named:)(uint64_t a1)
{
  v3 = *v2;
  v3[31] = a1;
  v3[32] = v1;

  v4 = v3[28];
  v5 = v3[29];
  if (v1)
  {
    v6 = Entity.init(from:named:);
  }

  else
  {
    v6 = Entity.init(from:named:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

void Entity.init(from:named:)()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 280);
    v4 = *(v2 + 288);

    MEMORY[0x1EEE6DFA0](Entity.init(from:named:), v3, v4);
  }
}

uint64_t Entity.init(from:named:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[33] = a5;
  v6[34] = v5;
  v6[31] = a3;
  v6[32] = a4;
  v6[29] = a1;
  v6[30] = a2;
  v6[35] = type metadata accessor for MainActor();
  v6[36] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[37] = v8;
  v6[38] = v7;

  return MEMORY[0x1EEE6DFA0](Entity.init(from:named:options:), v8, v7);
}

uint64_t Entity.init(from:named:options:)()
{
  outlined init with copy of [String : String](*(v0 + 264), v0 + 104, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
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

  v3 = *(v0 + 272);
  *(v0 + 400) = static Entity.asynchronousLoadOptions;
  v10 = (*(v3 + 280) + **(v3 + 280));
  v4 = swift_task_alloc();
  *(v0 + 312) = v4;
  *v4 = v0;
  v4[1] = Entity.init(from:named:options:);
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);

  return v10(v8, v7, v5, v6, v0 + 16, v0 + 400);
}

{
  v0[42] = (*(v0[34] + 232))();

  Entity.copy(to:recursive:)(v1, 1);
  v0[43] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[44] = v3;
  v0[45] = v2;

  return MEMORY[0x1EEE6DFA0](Entity.init(from:named:options:), v3, v2);
}

{
  v1 = static Entity.enumerateReferences(root:)(v0[42]);
  v0[46] = v1;
  v0[47] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v0[48] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[49] = v3;
  *v3 = v0;
  v3[1] = Entity.init(from:named:options:);

  return MEMORY[0x1EEE6DD58]();
}

{

  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  return MEMORY[0x1EEE6DFA0](Entity.init(from:named:options:), v1, v2);
}

{

  v1 = v0[33];
  v3 = v0[29];
  v2 = v0[30];
  if (v0[12])
  {
    Entity.LoadStatistics.log()();

    outlined consume of Data._Representation(v3, v2);
    outlined destroy of BodyTrackingComponent?(v1, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v0[33], &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);

    outlined consume of Data._Representation(v3, v2);
  }

  outlined destroy of Entity.__LoadOptions((v0 + 2));

  v4 = v0[1];
  v5 = v0[42];

  return v4(v5);
}

{
  v1 = v0[33];
  v3 = v0[29];
  v2 = v0[30];

  outlined consume of Data._Representation(v3, v2);
  outlined destroy of BodyTrackingComponent?(v1, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  outlined destroy of Entity.__LoadOptions((v0 + 2));
  v4 = v0[1];

  return v4();
}

uint64_t Entity.init(from:named:options:)(uint64_t a1)
{
  v3 = *v2;
  v3[40] = a1;
  v3[41] = v1;

  v4 = v3[37];
  v5 = v3[38];
  if (v1)
  {
    v6 = Entity.init(from:named:options:);
  }

  else
  {
    v6 = Entity.init(from:named:options:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

void Entity.init(from:named:options:)()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 352);
    v4 = *(v2 + 360);

    MEMORY[0x1EEE6DFA0](Entity.init(from:named:options:), v3, v4);
  }
}

uint64_t Entity.init(fromData:withName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[31] = a5;
  v6[32] = v5;
  v6[29] = a1;
  v6[30] = a2;

  v6[33] = type metadata accessor for MainActor();
  v6[34] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[35] = v8;
  v6[36] = v7;

  return MEMORY[0x1EEE6DFA0](Entity.init(fromData:withName:options:), v8, v7);
}

uint64_t Entity.init(fromData:withName:options:)()
{
  outlined init with copy of [String : String](*(v0 + 248), v0 + 104, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
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

  v3 = *(v0 + 256);
  *(v0 + 384) = static Entity.asynchronousLoadOptions;
  v8 = (*(v3 + 280) + **(v3 + 280));
  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  *v4 = v0;
  v4[1] = Entity.init(fromData:withName:options:);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);

  return v8(v6, v5, 0, 0, v0 + 16, v0 + 384);
}

{
  v0[40] = (*(v0[32] + 232))();

  Entity.copy(to:recursive:)(v1, 1);
  v0[41] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[42] = v3;
  v0[43] = v2;

  return MEMORY[0x1EEE6DFA0](Entity.init(fromData:withName:options:), v3, v2);
}

{
  v1 = static Entity.enumerateReferences(root:)(v0[40]);
  v0[44] = v1;
  v0[45] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v0[46] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[47] = v3;
  *v3 = v0;
  v3[1] = Entity.init(fromData:withName:options:);

  return MEMORY[0x1EEE6DD58]();
}

{

  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  return MEMORY[0x1EEE6DFA0](Entity.init(fromData:withName:options:), v1, v2);
}

{

  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  if (v0[12])
  {
    Entity.LoadStatistics.log()();

    outlined consume of Data._Representation(v3, v1);
    outlined destroy of BodyTrackingComponent?(v2, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v0[31], &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);

    outlined consume of Data._Representation(v3, v1);
  }

  outlined destroy of Entity.__LoadOptions((v0 + 2));

  v4 = v0[1];
  v5 = v0[40];

  return v4(v5);
}

{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];

  outlined consume of Data._Representation(v3, v1);
  outlined destroy of BodyTrackingComponent?(v2, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  outlined destroy of Entity.__LoadOptions((v0 + 2));
  v4 = v0[1];

  return v4();
}

uint64_t Entity.init(fromData:withName:options:)(uint64_t a1)
{
  v3 = *v2;
  v3[38] = a1;
  v3[39] = v1;

  v4 = v3[35];
  v5 = v3[36];
  if (v1)
  {
    v6 = Entity.init(fromData:withName:options:);
  }

  else
  {
    v6 = Entity.init(fromData:withName:options:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

void Entity.init(fromData:withName:options:)()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 336);
    v4 = *(v2 + 344);

    MEMORY[0x1EEE6DFA0](Entity.init(fromData:withName:options:), v3, v4);
  }
}

uint64_t static Entity.precompileShaderGraphMaterials(from:)(uint64_t a1)
{
  v1[10] = a1;
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v2;
  v1[13] = v3;

  return MEMORY[0x1EEE6DFA0](static Entity.precompileShaderGraphMaterials(from:), v2, v3);
}

uint64_t static Entity.precompileShaderGraphMaterials(from:)()
{
  v1 = specialized static __ServiceLocator.shared.getter();
  v0[14] = v1;
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(v3 + 32);

  v0[15] = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[2] = 0;
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v8 = RERealityFileMountFileAtURL();
  v0[16] = v8;

  if (v8)
  {
    v0[2] = 0;

    return MEMORY[0x1EEE6DFA0](static Entity.precompileShaderGraphMaterials(from:), 0, 0);
  }

  else
  {

    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v0[2]);
    v9 = v0[2];
    if (v9)
    {
      type metadata accessor for CFErrorRef(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
      swift_allocError();
      *v10 = v9;
    }

    else
    {
      _StringGuts.grow(_:)(34);

      v11 = URL.path.getter();
      MEMORY[0x1C68F3410](v11);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v12 = 0xD00000000000001FLL;
      *(v12 + 8) = 0x80000001C18E1F00;
      *(v12 + 16) = 4;
    }

    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

{
  *(v0 + 136) = RERealityFilePrewarmShaderGraphMaterialsCache();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return MEMORY[0x1EEE6DFA0](static Entity.precompileShaderGraphMaterials(from:), v1, v2);
}

{
  v1 = *(v0 + 136);

  if (v1 == 1)
  {
    RERealityFileUnmount();

    v2 = *(v0 + 8);
  }

  else
  {
    v3 = *(v0 + 16);
    if (v3)
    {
      type metadata accessor for CFErrorRef(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
      swift_allocError();
      *v4 = v3;
    }

    else
    {
      _StringGuts.grow(_:)(68);
      MEMORY[0x1C68F3410](0xD000000000000041, 0x80000001C18ED8C0);
      v5 = URL.path.getter();
      MEMORY[0x1C68F3410](v5);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v6 = 0;
      *(v6 + 8) = 0xE000000000000000;
      *(v6 + 16) = 4;
    }

    swift_willThrow();
    RERealityFileUnmount();

    v2 = *(v0 + 8);
  }

  return v2();
}

uint64_t Entity.__LoadOptions.init(mipmapLoadBehavior:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1 < 1)
  {
    v8 = 0;
    v4 = 0uLL;
    v6 = 0u;
    v7 = 0u;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
  }

  else
  {
    v8 = &protocol witness table for __Downsampling.SkipHighResolution;
    *(&v7 + 1) = &type metadata for __Downsampling.SkipHighResolution;
    *&v6 = v3;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v4 = 0uLL;
  }

  *a2 = v4;
  *(a2 + 16) = v4;
  *(a2 + 32) = 0;
  *(a2 + 64) = 1;
  *(a2 + 68) = 0;
  *(a2 + 72) = 2;
  *(a2 + 80) = 0;
  result = outlined assign with take of __DownsamplingStrategy?(&v6, a2);
  *(a2 + 40) = 0;
  return result;
}

uint64_t Entity.init(named:in:mipmapLoadBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *(v5 + 208) = a3;
  *(v5 + 216) = v4;
  *(v5 + 192) = a1;
  *(v5 + 200) = a2;
  *(v5 + 224) = *a4;
  type metadata accessor for MainActor();
  *(v5 + 240) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 248) = v7;
  *(v5 + 256) = v6;

  return MEMORY[0x1EEE6DFA0](Entity.init(named:in:mipmapLoadBehavior:), v7, v6);
}

uint64_t Entity.init(named:in:mipmapLoadBehavior:)()
{
  v9 = v0;
  v1 = *(v0 + 208);
  v8 = *(v0 + 224);
  Entity.__LoadOptions.init(mipmapLoadBehavior:)(&v8, v0 + 16);
  outlined init with copy of Entity.__LoadOptions(v0 + 16, v0 + 104);
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 264) = v3;
  *v3 = v0;
  v3[1] = Entity.init(named:in:mipmapLoadBehavior:);
  v4 = *(v0 + 208);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);

  return Entity.init(named:in:options:)(v6, v5, v4, v0 + 104);
}

{
  v1 = v0[26];

  outlined destroy of Entity.__LoadOptions((v0 + 2));
  v2 = v0[1];
  v3 = v0[35];

  return v2(v3);
}

{
  v1 = *(v0 + 208);

  outlined destroy of Entity.__LoadOptions(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t Entity.init(named:in:mipmapLoadBehavior:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v5 = v4[31];
    v6 = v4[32];
    v7 = Entity.init(named:in:mipmapLoadBehavior:);
  }

  else
  {
    v4[35] = a1;
    v5 = v4[31];
    v6 = v4[32];
    v7 = Entity.init(named:in:mipmapLoadBehavior:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t Entity.init(contentsOf:mipmapLoadBehavior:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 192) = a1;
  *(v3 + 200) = v2;
  v5 = type metadata accessor for URL();
  *(v3 + 208) = v5;
  *(v3 + 216) = *(v5 - 8);
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = *a2;
  type metadata accessor for MainActor();
  *(v3 + 248) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 256) = v7;
  *(v3 + 264) = v6;

  return MEMORY[0x1EEE6DFA0](Entity.init(contentsOf:mipmapLoadBehavior:), v7, v6);
}

uint64_t Entity.init(contentsOf:mipmapLoadBehavior:)()
{
  v9 = v0;
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);
  v8 = *(v0 + 232);
  Entity.__LoadOptions.init(mipmapLoadBehavior:)(&v8, v0 + 16);
  (*(v2 + 16))(v1, v4, v3);
  outlined init with copy of Entity.__LoadOptions(v0 + 16, v0 + 104);
  v5 = swift_task_alloc();
  *(v0 + 272) = v5;
  *v5 = v0;
  v5[1] = Entity.init(contentsOf:mipmapLoadBehavior:);
  v6 = *(v0 + 224);

  return Entity.init(contentsOf:withName:options:)(v6, 0, 0, v0 + 104);
}

{
  v1 = v0[27];
  v2 = v0[26];
  v3 = v0[24];

  (*(v1 + 8))(v3, v2);
  outlined destroy of Entity.__LoadOptions((v0 + 2));

  v4 = v0[1];
  v5 = v0[36];

  return v4(v5);
}

{
  v1 = v0[27];
  v2 = v0[26];
  v3 = v0[24];

  (*(v1 + 8))(v3, v2);
  outlined destroy of Entity.__LoadOptions((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t Entity.init(contentsOf:mipmapLoadBehavior:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {
    v5 = v4[32];
    v6 = v4[33];
    v7 = Entity.init(contentsOf:mipmapLoadBehavior:);
  }

  else
  {
    v4[36] = a1;
    v5 = v4[32];
    v6 = v4[33];
    v7 = Entity.init(contentsOf:mipmapLoadBehavior:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12PhysicsJoint_pMd, &_s17RealityFoundation12PhysicsJoint_pMR);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 40 * a3;
      v15 = (v9 + 32 + 40 * a2);
      if (result != v15 || result >= v15 + 40 * v14)
      {
        result = memmove(result, v15, 40 * v14);
      }

      v16 = *(v9 + 16);
      v11 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (!v11)
      {
        *(v9 + 16) = v17;
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  if (a3 < 1)
  {
    return outlined destroy of BodyTrackingComponent?(a4, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMd, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMR);
  }

  result = outlined init with copy of __REAssetService(a4, v10);
  if (a3 == 1)
  {
    return outlined destroy of BodyTrackingComponent?(a4, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMd, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMR);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t objectdestroy_5Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t partial apply for closure #1 in static Entity.loadReferences(root:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return closure #1 in static Entity.loadReferences(root:)(a1, a2, v6);
}

uint64_t partial apply for closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 95) & 0xFFFFFFFFFFFFFFF8;
  return closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), v2 + v9, *(v2 + v10), v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t outlined init with copy of LoadTrace(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for RealityFileLoadInformation(0) - 8);
  v6 = (*(v5 + 80) + 136) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + 40, *(v2 + 128), v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t outlined destroy of LoadTrace(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for __RKEntityTrigger);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for AnimationResource);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for __RKEntityAction);
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, type metadata accessor for __RKEntityAction);
}

{
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, type metadata accessor for AnimationResource);
}

{
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, type metadata accessor for Entity);
}

uint64_t specialized static Entity.enumerateCore(entity:recursive:block:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v113 = a3;
  v116 = a2;
  v97 = type metadata accessor for Data.Deallocator();
  v7 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v9 = &v89[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v89[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v89[-v14];
  v15 = type metadata accessor for UUID();
  v96 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v101 = &v89[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v102 = &v89[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v94 = &v89[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v105 = &v89[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v89[-v24];

  v115 = a5;

  ChildCount = REEntityGetChildCount();
  if ((ChildCount - 0x1000000000000000) >> 61 != 7)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:

    __break(1u);
LABEL_70:
    type metadata accessor for Entity();
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v27 = ChildCount;
  v95 = swift_slowAlloc();
  REEntityGetChildren();
  if (v27 < 0)
  {
    goto LABEL_68;
  }

  v112 = v25;
  v100 = v12;
  v93 = v9;
  if (v27)
  {
    v28 = 0;
    v92 = (v7 + 104);
    v91 = (v7 + 8);
    v90 = *MEMORY[0x1E6969010];
    v108 = (v96 + 32);
    v106 = (v96 + 16);
    v103 = (v96 + 56);
    v99 = (v96 + 48);
    v107 = (v96 + 8);
    v29 = v95;
    v114 = v15;
    v98 = a4;
    do
    {
      v31 = *v29++;
      v30 = v31;
      if (!v31)
      {
        goto LABEL_69;
      }

      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v32 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        if (REEntityIsBeingDestroyed())
        {
          goto LABEL_65;
        }

        specialized static Entity.entityInfoType(_:)(v30);
        if (v34)
        {
          v33 = (*(v34 + 232))();
          v35 = *(v33 + 16);

          MEMORY[0x1C68F9740](v35, 0);
          *(v33 + 16) = v30;
          MEMORY[0x1C68F9740](v30, v33);

          goto LABEL_13;
        }

        v32 = makeEntity(for:)(v30);
      }

      v33 = v32;
LABEL_13:
      swift_beginAccess();
      if (!static __RKEntityInteractionsComponent.registration || !REEntityGetCustomComponent() || (Object = RECustomComponentGetObject()) == 0)
      {
        v37 = MEMORY[0x1E69E7CC0];
        goto LABEL_19;
      }

      v37 = *(Object + 16);
      if (v37)
      {

        goto LABEL_19;
      }

      v72 = *Object;
      if (!*Object)
      {
        goto LABEL_61;
      }

      v111 = v28;
      v73 = strlen(v72);
      v74 = v93;
      (*v92)(v93, v90, v97);
      Data.Deallocator._deallocator.getter();
      if (v73)
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();

        v75 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
        v76 = __DataStorage._capacity.modify();
        *v77 |= 0x8000000000000000;
        v78.n128_f64[0] = v76(v117, 0);
        v73 = specialized Data._Representation.init(_:count:)(v75, v73, v78);
        v80 = v79;
      }

      else
      {
        v86 = Data.Deallocator._deallocator.getter();
        v86(v72, 0);

        v80 = 0xC000000000000000;
      }

      (*v91)(v74, v97);
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit34__RKEntityInteractionSpecificationVGMd, &_sSay10RealityKit34__RKEntityInteractionSpecificationVGMR);
      lazy protocol witness table accessor for type [__RKEntityInteractionSpecification] and conformance <A> [A]();
      v28 = v111;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (v28)
      {

        outlined consume of Data._Representation(v73, v80);

        v28 = 0;
LABEL_61:
        v37 = MEMORY[0x1E69E7CC0];
        v15 = v114;
        goto LABEL_19;
      }

      outlined consume of Data._Representation(v73, v80);
      v37 = v117[0];
      v15 = v114;
LABEL_19:
      if (*(v37 + 16))
      {
        v38 = v28;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = *(a4 + 16);
        v40 = v118;
        *(a4 + 16) = 0x8000000000000000;
        v41 = specialized __RawDictionaryStorage.find<A>(_:)();
        v43 = v40[2];
        v44 = (v42 & 1) == 0;
        v45 = __OFADD__(v43, v44);
        v46 = v43 + v44;
        if (v45)
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v47 = v42;
        if (v40[3] >= v46)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v87 = v41;
            specialized _NativeDictionary.copy()();
            v41 = v87;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v46, isUniquelyReferenced_nonNull_native);
          v41 = specialized __RawDictionaryStorage.find<A>(_:)();
          if ((v47 & 1) != (v48 & 1))
          {
            goto LABEL_70;
          }
        }

        v15 = v114;
        v49 = v118;
        if (v47)
        {
          *(v118[7] + 8 * v41) = v37;
        }

        else
        {
          v118[(v41 >> 6) + 8] |= 1 << v41;
          *(v49[6] + 8 * v41) = v33;
          *(v49[7] + 8 * v41) = v37;
          v50 = v49[2];
          v45 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v45)
          {
            goto LABEL_66;
          }

          v49[2] = v51;
        }

        *(a4 + 16) = v49;
        swift_endAccess();
        v28 = v38;
      }

      else
      {
      }

      swift_beginAccess();
      if (static __RKEntityUUIDComponent.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
      {
        v110 = v29;
        v111 = v27;
        v52 = v105;
        UUID.init(uuid:)();
        v53 = *v108;
        v54 = v112;
        (*v108)(v112, v52, v15);
        v55 = v115;
        swift_beginAccess();
        v56 = *(v55 + 16);
        if (*(v56 + 16) && (v57 = specialized __RawDictionaryStorage.find<A>(_:)(v54), (v58 & 1) != 0))
        {
          v59 = *(v56 + 56) + *(v96 + 72) * v57;
          v60 = v94;
          v104 = *(v96 + 16);
          v104(v94, v59, v15);
          v61 = v109;
          v53(v109, v60, v15);
        }

        else
        {
          v62 = v109;
          UUID.init()();
          v63 = v115;
          v64 = a4;
          v65 = v15;
          v66 = v102;
          v104 = *v106;
          v104(v102, v62, v65);
          v67 = swift_isUniquelyReferenced_nonNull_native();
          v118 = *(v63 + 16);
          v68 = v66;
          v15 = v65;
          a4 = v64;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v68, v54, v67);
          v61 = v62;
          *(v63 + 16) = v118;
        }

        swift_endAccess();
        (*v103)(v61, 0, 1, v15);
        if (static __RKEntityUUIDComponent.registration)
        {
          v69 = v15;
          v70 = v100;
          outlined init with copy of [String : String](v61, v100, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          if ((*v99)(v70, 1, v69) == 1)
          {
            outlined destroy of BodyTrackingComponent?(v70, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            CustomComponent = REEntityGetCustomComponent();
            v29 = v110;
            v27 = v111;
            if (CustomComponent)
            {
              REEntityRemoveComponentByClass();
            }

            outlined destroy of BodyTrackingComponent?(v109, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v15 = v114;
            a4 = v98;
            goto LABEL_55;
          }

          v53(v101, v70, v69);
          v81 = REEntityGetCustomComponent();
          v15 = v69;
          v29 = v110;
          v27 = v111;
          if (v81)
          {
            a4 = v98;
            goto LABEL_52;
          }

          v82 = REEntityAddComponentByClass();
          a4 = v98;
          if (v82)
          {
LABEL_52:
            if (RECustomComponentGetObject())
            {
              v83 = v102;
              v84 = v101;
              v104(v102, v101, v15);
              __RKEntityUUIDComponent.uuid.setter(v83);
              outlined destroy of BodyTrackingComponent?(v109, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              (*v107)(v84, v15);
              goto LABEL_55;
            }
          }

          outlined destroy of BodyTrackingComponent?(v109, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          (*v107)(v101, v69);
          goto LABEL_55;
        }

        outlined destroy of BodyTrackingComponent?(v61, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v29 = v110;
        v27 = v111;
LABEL_55:
        (*v107)(v112, v15);
      }

      if (v116)
      {

        v85 = v115;

        specialized static Entity.enumerateCore(entity:recursive:block:)(v33, 1, v113, a4, v85);
      }

      --v27;
    }

    while (v27);
  }

  MEMORY[0x1C6902A30](v95, -1, -1);
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12PhysicsJoint_pMd, &_s17RealityFoundation12PhysicsJoint_pMR);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5(0);
  swift_arrayDestroy();
  v14 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      v15 = v6[2];
      v16 = v15 - v8;
      if (!__OFSUB__(v15, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    v21 = __CocoaSet.count.getter();
    v16 = v21 - v8;
    if (!__OFSUB__(v21, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        v20 = __CocoaSet.count.getter();
      }

      else
      {
        v20 = v6[2];
      }

      if (!__OFADD__(v20, v12))
      {
        v6[2] = v20 + v12;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;

    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }
}

void specialized static RealityFileLoadInformationResolver.urlContainsPathExtension(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = URL.pathComponents.getter();
  v6 = v5 + 40;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (1)
  {
    if (v7 + v8 == -1)
    {
LABEL_5:

      return;
    }

    if (++v8 >= *(v5 + 16))
    {
      break;
    }

    v9 = v6 + 16;

    MEMORY[0x1C68F3410](a2, a3);
    v10._countAndFlagsBits = 46;
    v10._object = 0xE100000000000000;
    v11 = String.hasSuffix(_:)(v10);

    v6 = v9;
    if (v11)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t specialized static Entity.loadModelAsync(named:in:options:asyncOptions:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v62 = a4;
  v64 = a1;
  Trace = type metadata accessor for LoadTrace(0);
  MEMORY[0x1EEE9AC00](Trace - 8);
  v8 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = [objc_opt_self() mainBundle];
  }

  v14 = a3;
  v15 = specialized static __ServiceLocator.shared.getter();
  v16 = *(*(v15 + 168) + 16);
  swift_beginAccess();
  v17 = *(v15 + 24);
  swift_unownedRetainStrong();
  v18 = *(v17 + 32);

  v60 = v16;
  v19 = v18;

  *v12 = v19;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v20 = v19;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  v22 = *(v10 + 8);
  v21 = v10 + 8;
  v22(v12, v9);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_9;
  }

  v61 = v20;
  v12 = *(*(v15 + 168) + 24);
  *&v66 = 0;
  *(&v66 + 1) = 0xE000000000000000;

  _StringGuts.grow(_:)(17);

  *&v66 = v64;
  *(&v66 + 1) = a2;
  MEMORY[0x1C68F3410](0x7562206D6F726620, 0xED000020656C646ELL);
  v23 = [v13 bundleIdentifier];
  v63 = v13;
  if (v23)
  {
    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v27 = 0x80000001C18ED640;
    v25 = 0xD000000000000010;
  }

  MEMORY[0x1C68F3410](v25, v27);

  v21 = 2;
  LoadTracer.beginLoad(loadType:logMsgTarget:)(2u, v66, *(&v66 + 1), v8);

  type metadata accessor for LoadRequestDependencies();
  v13 = swift_allocObject();
  v28 = MEMORY[0x1E69E7CC0];
  v13[2] = MEMORY[0x1E69E7CC0];
  v58[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v13[3] = v29;
  swift_beginAccess();
  v13[2] = v28;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    goto LABEL_19;
  }

LABEL_9:
  v59 = v8;
  v30 = static Entity.asynchronousLoadOptions;
  v31 = *(v62 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA05ModelC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA05ModelC0CGMR);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = v64;
  *(v32 + 16) = v64;
  *(v32 + 24) = a2;
  *(v32 + 32) = v30;
  *(v32 + 33) = v31;
  *(v32 + 34) = 256;
  *(v32 + 36) = v21;
  swift_weakAssign();
  swift_beginAccess();
  outlined init with copy of [String : String](v15 + 176, &v66, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  if (!*(&v67 + 1))
  {

    outlined destroy of BodyTrackingComponent?(&v66, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
LABEL_16:
    v52 = swift_allocObject();
    *(v52 + 16) = v33;
    *(v52 + 24) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
    v44 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit11ModelEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit11ModelEntityCs5Error_pGSgGMR);
    v53 = swift_allocObject();
    v54 = swift_allocObject();
    *(v54 + 16) = 0;
    *(v53 + 16) = v54;
    *(v53 + 24) = 0;
    *(v53 + 32) = -1;
    *(v44 + 16) = v53;
    v55 = swift_allocObject();
    v55[2] = partial apply for closure #2 in static Entity.loadModelAsync(named:in:options:asyncOptions:);
    v55[3] = v52;
    v55[4] = v53;
    v55[5] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit11ModelEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit11ModelEntityCs5Error_pGMR);
    swift_allocObject();

    *(v44 + 24) = Future.init(_:)();
    v56 = v59;
    specialized LoadTracer.subscribe<A>(to:with:)(v44, v59);

    outlined destroy of LoadTrace(v56, type metadata accessor for LoadTrace);
    return v44;
  }

  v58[1] = v12;
  outlined init with take of ForceEffectBase(&v66, v72);
  v35 = v73;
  v34 = v74;
  __swift_project_boxed_opaque_existential_1(v72, v73);
  v36 = *(v34 + 16);

  if ((v36(v33, a2, v63, v35, v34) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v72);
    v33 = v64;
    goto LABEL_16;
  }

  v37 = *(v62 + 80);
  if (v37)
  {
    v38 = v37 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
    *v38 = 1;
    *(v38 + 8) = 0;
  }

  outlined init with copy of Entity.__LoadOptions(v62, &v66);
  outlined init with copy of __REAssetService(v72, v65);
  v39 = swift_allocObject();
  v40 = v69;
  *(v39 + 72) = v68;
  *(v39 + 88) = v40;
  *(v39 + 104) = v70;
  v41 = v67;
  *(v39 + 40) = v66;
  *(v39 + 16) = v64;
  *(v39 + 24) = a2;
  *(v39 + 32) = v63;
  v42 = v71;
  *(v39 + 56) = v41;
  *(v39 + 120) = v42;
  *(v39 + 128) = v32;
  *(v39 + 136) = v61;
  outlined init with take of ForceEffectBase(v65, v39 + 144);
  v43 = v60;
  *(v39 + 184) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
  v44 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit11ModelEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit11ModelEntityCs5Error_pGSgGMR);
  v45 = swift_allocObject();
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v45 + 16) = v46;
  *(v45 + 24) = 0;
  *(v45 + 32) = -1;
  *(v44 + 16) = v45;
  v47 = swift_allocObject();
  v47[2] = partial apply for closure #1 in static Entity.loadModelAsync(named:in:options:asyncOptions:);
  v47[3] = v39;
  v47[4] = v45;
  v47[5] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit11ModelEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit11ModelEntityCs5Error_pGMR);
  swift_allocObject();
  v48 = v43;
  v49 = v61;

  v50 = v63;

  *(v44 + 24) = Future.init(_:)();
  v51 = v59;
  specialized LoadTracer.subscribe<A>(to:with:)(v44, v59);

  outlined destroy of LoadTrace(v51, type metadata accessor for LoadTrace);
  __swift_destroy_boxed_opaque_existential_1(v72);
  return v44;
}

uint64_t specialized static Entity.loadModelAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v63 = a3;
  v62 = a2;
  v67 = a1;
  v70 = type metadata accessor for URL();
  v7 = *(v70 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v66) = *a5;
  v13 = specialized static __ServiceLocator.shared.getter();
  v14 = *(*(v13 + 168) + 16);
  swift_beginAccess();
  v15 = *(v13 + 24);
  swift_unownedRetainStrong();
  v16 = *(v15 + 32);

  v68 = v14;
  v17 = v16;

  *v12 = v17;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v18 = v17;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v15)
  {
    v64 = v8;
    type metadata accessor for LoadRequestDependencies();
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E7CC0];
    *(v20 + 16) = MEMORY[0x1E69E7CC0];
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v20 + 24) = v22;
    swift_beginAccess();
    *(v20 + 16) = v21;
    v23 = v67;
    v24 = URL.absoluteString.getter();
    v26 = v25;
    v61 = a4;
    LOBYTE(v21) = *(a4 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA05ModelC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA05ModelC0CGMR);
    v27 = swift_allocObject();
    swift_weakInit();
    *(v27 + 16) = v24;
    *(v27 + 24) = v26;
    *(v27 + 32) = v66;
    *(v27 + 33) = v21;
    *(v27 + 34) = 256;
    *(v27 + 36) = 2;
    swift_weakAssign();
    swift_beginAccess();
    outlined init with copy of [String : String](v13 + 176, &v72, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
    if (*(&v73 + 1))
    {
      v66 = v18;
      outlined init with take of ForceEffectBase(&v72, v78);
      v28 = v79;
      v29 = v80;
      __swift_project_boxed_opaque_existential_1(v78, v79);
      v30 = *(v29 + 24);

      if (v30(v23, v28, v29))
      {
        v60 = v20;
        v31 = v61;
        v32 = *(v61 + 80);
        if (v32)
        {
          v33 = v32 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
          *v33 = 1;
          *(v33 + 8) = 0;
        }

        (*(v7 + 16))(v69, v23, v70);
        outlined init with copy of Entity.__LoadOptions(v31, &v72);
        outlined init with copy of __REAssetService(v78, v71);
        v34 = (*(v7 + 80) + 16) & ~*(v7 + 80);
        v35 = (v64 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
        v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
        v37 = (v36 + 95) & 0xFFFFFFFFFFFFFFF8;
        v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
        v39 = swift_allocObject();
        (*(v7 + 32))(v39 + v34, v69, v70);
        v40 = (v39 + v35);
        v41 = v63;
        *v40 = v62;
        v40[1] = v41;
        v42 = v39 + v36;
        v43 = v73;
        *v42 = v72;
        *(v42 + 16) = v43;
        *(v42 + 80) = v77;
        v44 = v76;
        *(v42 + 48) = v75;
        *(v42 + 64) = v44;
        *(v42 + 32) = v74;
        *(v39 + v37) = v27;
        outlined init with take of ForceEffectBase(v71, v39 + v38);
        *(v39 + ((v38 + 47) & 0xFFFFFFFFFFFFFFF8)) = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
        v45 = swift_allocObject();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit11ModelEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit11ModelEntityCs5Error_pGSgGMR);
        v46 = swift_allocObject();
        v47 = swift_allocObject();
        *(v47 + 16) = 0;
        *(v46 + 16) = v47;
        *(v46 + 24) = 0;
        *(v46 + 32) = -1;
        *(v45 + 16) = v46;
        v48 = swift_allocObject();
        v48[2] = partial apply for closure #1 in static Entity.loadModelAsync(contentsOf:withName:options:asyncOptions:);
        v48[3] = v39;
        v49 = v60;
        v48[4] = v46;
        v48[5] = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit11ModelEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit11ModelEntityCs5Error_pGMR);
        swift_allocObject();

        v50 = Future.init(_:)();

        *(v45 + 24) = v50;
        __swift_destroy_boxed_opaque_existential_1(v78);
        return v45;
      }

      __swift_destroy_boxed_opaque_existential_1(v78);
      v51 = v20;
      v18 = v66;
    }

    else
    {

      outlined destroy of BodyTrackingComponent?(&v72, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
      v51 = v20;
    }

    v52 = v69;
    v53 = v70;
    (*(v7 + 16))(v69, v23, v70);
    v54 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v55 = swift_allocObject();
    (*(v7 + 32))(v55 + v54, v52, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
    v45 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit11ModelEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit11ModelEntityCs5Error_pGSgGMR);
    v56 = swift_allocObject();
    v57 = swift_allocObject();
    *(v57 + 16) = 0;
    *(v56 + 16) = v57;
    *(v56 + 24) = 0;
    *(v56 + 32) = -1;
    *(v45 + 16) = v56;
    v58 = swift_allocObject();
    v58[2] = partial apply for closure #2 in static Entity.loadBodyTrackedAsync(contentsOf:withName:);
    v58[3] = v55;
    v58[4] = v56;
    v58[5] = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit11ModelEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit11ModelEntityCs5Error_pGMR);
    swift_allocObject();

    v59 = Future.init(_:)();

    *(v45 + 24) = v59;
    return v45;
  }

  __break(1u);
  return result;
}

uint64_t specialized static Entity.finishUSDLoad(forEntity:withOptions:)(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v2[16] = type metadata accessor for MainActor();
  v2[17] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[18] = v4;
  v2[19] = v3;

  return MEMORY[0x1EEE6DFA0](specialized static Entity.finishUSDLoad(forEntity:withOptions:), v4, v3);
}

uint64_t specialized static Entity.finishUSDLoad(forEntity:withOptions:)()
{
  type metadata accessor for LoadRequestDependencies();
  v1 = swift_allocObject();
  *(v0 + 160) = v1;
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v1 + 24) = v3;
  swift_beginAccess();
  *(v1 + 16) = v2;
  REEntityGetName();
  v4 = String.init(cString:)();
  v6 = v5;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  v7 = static Entity.asynchronousLoadOptions;
  v16 = *(v0 + 112);
  swift_beginAccess();
  v8 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMR);
  inited = swift_initStackObject();
  *(v0 + 168) = inited;
  swift_weakInit();
  *(inited + 16) = v4;
  *(inited + 24) = v6;
  *(inited + 32) = v7;
  *(inited + 33) = v8;
  *(inited + 34) = 1;
  *(inited + 36) = 1;
  swift_weakAssign();
  v10 = static MainActor.shared.getter();
  *(v0 + 176) = v10;
  v11 = swift_task_alloc();
  *(v0 + 184) = v11;
  *(v11 + 16) = inited;
  *(v11 + 24) = v16;
  v12 = swift_task_alloc();
  *(v0 + 192) = v12;
  *v12 = v0;
  v12[1] = specialized static Entity.finishUSDLoad(forEntity:withOptions:);
  v13 = MEMORY[0x1E69E85E0];
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v12, v10, v13, 0xD000000000000025, 0x80000001C18EDD80, partial apply for closure #1 in static Entity.finishUSDLoad(forEntity:withOptions:), v11, v14);
}

{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = specialized static Entity.finishUSDLoad(forEntity:withOptions:);
  }

  else
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = specialized static Entity.finishUSDLoad(forEntity:withOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

{

  swift_setDeallocating();

  swift_weakDestroy();

  v1 = *(v0 + 8);

  return v1();
}

{

  swift_setDeallocating();

  swift_weakDestroy();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void specialized static Entity.applyHackForRealityIOUSDImports(rootEntity:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v24 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1898160;
  *(inited + 32) = a1;

  v8 = 0;
  v25 = 0;
  do
  {
    while (1)
    {
      v9 = inited >> 62;
      if (inited >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_56;
        }

        if (!__CocoaSet.count.getter())
        {
          goto LABEL_57;
        }
      }

      else if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        return;
      }

      if ((inited & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1C68F41F0](0, inited);
        v11 = inited & 0xFFFFFFFFFFFFFF8;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v10 = *(inited + 32);

        v11 = inited & 0xFFFFFFFFFFFFFF8;
        if (!v9)
        {
LABEL_7:
          v12 = *(v11 + 16);
          if (!v12)
          {
            goto LABEL_54;
          }

          goto LABEL_16;
        }
      }

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_54;
      }

      if (__CocoaSet.count.getter() < 1)
      {
        goto LABEL_55;
      }

      v12 = __CocoaSet.count.getter();
LABEL_16:
      v13 = v12 - 1;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_53;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v30 = inited;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          if (v13 <= *((inited & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

LABEL_22:
        __CocoaSet.count.getter();
        goto LABEL_23;
      }

      if (v9)
      {
        goto LABEL_22;
      }

LABEL_23:
      inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v30 = inited;
LABEL_24:
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0, type metadata accessor for Entity);
      v30 = inited;
      swift_beginAccess();
      v15 = objc_getAssociatedObject(v10, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey);
      swift_endAccess();
      if (v15)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v26 = 0u;
        v27 = 0u;
      }

      v28[0] = v26;
      v28[1] = v27;
      if (*(&v27 + 1))
      {
        if ((swift_dynamicCast() & 1) != 0 && v29)
        {

          if (v25)
          {
            goto LABEL_47;
          }

          v25 = v10;
        }
      }

      else
      {
        outlined destroy of BodyTrackingComponent?(v28, &_sypSgMd, &_sypSgMR);
      }

      v16 = type metadata accessor for AnchoringComponent(0);

      if (REEntityGetComponent())
      {
        AnchoringComponent.init(from:)(v6);
        v17 = 0;
      }

      else
      {
        v17 = 1;
      }

      v18 = *(v16 - 8);
      v19 = *(v18 + 56);
      v19(v6, v17, 1, v16);

      LODWORD(v18) = (*(v18 + 48))(v6, 1, v16);
      outlined destroy of BodyTrackingComponent?(v6, &_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
      if (v18 != 1)
      {
        if (v8 >= 1)
        {
          goto LABEL_47;
        }

        v8 = 1;
      }

      specialized Array.append<A>(contentsOf:)(v10);
      inited = v30;
      if (v30 >> 62)
      {
        break;
      }

      if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }
    }
  }

  while (__CocoaSet.count.getter());
LABEL_43:

  if (v8 != 1)
  {
    goto LABEL_48;
  }

  v20 = v25;
  if (v25)
  {
    v21 = v24;
    v19(v24, 1, 1, v16);

    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09AnchoringD0V_TtB5(v21, 0, v20);
    outlined destroy of BodyTrackingComponent?(v21, &_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
    v22 = *(v20 + 16);

    v23 = *(v20 + 16);

    if (v22 != v23)
    {
      __break(1u);
LABEL_47:

LABEL_48:
    }
  }
}

void specialized static Entity.addInputTargetComponentsAndCollisionShapesToTapTriggerTargets(for:)(uint64_t a1)
{
  v2 = type metadata accessor for __RKEntityTriggerSpecification(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Data.Deallocator();
  v9 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for UUID();
  v11 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  MEMORY[0x1EEE9AC00](v12);
  v75 = v68 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v79 = v68 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v68 - v18;
  if (!a1)
  {
    return;
  }

  v68[0] = v6;
  v78 = v17;
  v85 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1898160;
  *(inited + 32) = a1;
  v68[1] = a1;
  swift_retain_n();
  swift_beginAccess();
  swift_beginAccess();
  v73 = 0;
  v21 = (v11 + 32);
  v71 = v11;
  v22 = (v11 + 8);
  v70 = *MEMORY[0x1E6969010];
  v69 = (v9 + 104);
  v23 = MEMORY[0x1E69E7CC8];
  v77 = v21;
  v76 = v22;
  do
  {
    while (1)
    {
      v24 = inited >> 62;
      if (inited >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_73;
        }

        if (!__CocoaSet.count.getter())
        {
          goto LABEL_74;
        }
      }

      else if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      if ((inited & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1C68F41F0](0, inited);
        v26 = inited & 0xFFFFFFFFFFFFFF8;
        if (!v24)
        {
          goto LABEL_8;
        }
      }

      else
      {
        if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v25 = *(inited + 32);

        v26 = inited & 0xFFFFFFFFFFFFFF8;
        if (!v24)
        {
LABEL_8:
          v27 = *(v26 + 16);
          if (!v27)
          {
            goto LABEL_70;
          }

          goto LABEL_17;
        }
      }

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_70;
      }

      if (__CocoaSet.count.getter() < 1)
      {
        goto LABEL_71;
      }

      v27 = __CocoaSet.count.getter();
LABEL_17:
      v28 = v27 - 1;
      if (__OFSUB__(v27, 1))
      {
        goto LABEL_68;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v84 = inited;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v24)
        {
          if (v28 <= *((inited & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

LABEL_23:
        __CocoaSet.count.getter();
        goto LABEL_24;
      }

      if (v24)
      {
        goto LABEL_23;
      }

LABEL_24:
      inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v84 = inited;
LABEL_25:
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0, type metadata accessor for Entity);
      v84 = inited;
      if (static __RKEntityUUIDComponent.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
      {
        v30 = v79;
        UUID.init(uuid:)();
        v31 = v30;
        v32 = v80;
        (*v21)(v19, v31, v80);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83 = v23;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, v19, isUniquelyReferenced_nonNull_native);
        v23 = v83;
        (*v22)(v19, v32);
      }

      if (!static __RKEntityInteractionsComponent.registration)
      {
        goto LABEL_37;
      }

      if (!REEntityGetCustomComponent())
      {
        goto LABEL_37;
      }

      Object = RECustomComponentGetObject();
      if (!Object)
      {
        goto LABEL_37;
      }

      if (*(Object + 16))
      {

        goto LABEL_38;
      }

      v36 = *Object;
      if (*Object)
      {
        v37 = strlen(*Object);
        v38 = v72;
        (*v69)(v72, v70, v74);
        v39 = specialized Data.init(bytesNoCopy:count:deallocator:)(v36, v37, v38);
        v41 = v40;
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit34__RKEntityInteractionSpecificationVGMd, &_sSay10RealityKit34__RKEntityInteractionSpecificationVGMR);
        lazy protocol witness table accessor for type [__RKEntityInteractionSpecification] and conformance <A> [A]();
        v42 = v73;
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        if (v42)
        {

          outlined consume of Data._Representation(v39, v41);

          v73 = 0;
          v35 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v73 = 0;

          outlined consume of Data._Representation(v39, v41);
          v35 = v83;
        }

        v21 = v77;
        v22 = v76;
      }

      else
      {
LABEL_37:
        v35 = MEMORY[0x1E69E7CC0];
      }

LABEL_38:
      specialized Array.append<A>(contentsOf:)(v35);
      specialized Array.append<A>(contentsOf:)(v25);
      inited = v84;
      if (v84 >> 62)
      {
        break;
      }

      if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
      {
        goto LABEL_44;
      }
    }
  }

  while (__CocoaSet.count.getter() > 0);
LABEL_44:

  v43 = swift_allocObject();
  *(v43 + 16) = MEMORY[0x1E69E7CD0];
  v44 = v43 + 16;
  v45 = *(v85 + 16);
  if (v45)
  {
    v46 = v85 + ((*(v68[0] + 80) + 32) & ~*(v68[0] + 80));
    v47 = *(v68[0] + 72);
    v48 = v71;
    do
    {
      outlined init with copy of LoadTrace(v46, v8, type metadata accessor for __RKEntityInteractionSpecification);
      outlined init with copy of LoadTrace(v8, v4, type metadata accessor for __RKEntityTriggerSpecification);
      outlined destroy of LoadTrace(v8, type metadata accessor for __RKEntityInteractionSpecification);
      fetchTapTriggerTargetIdentifiers #1 (triggerSpecification:) in static Entity.addInputTargetComponentsAndCollisionShapesToTapTriggerTargets(for:)(v4, v43);
      outlined destroy of LoadTrace(v4, type metadata accessor for __RKEntityTriggerSpecification);
      v46 += v47;
      --v45;
    }

    while (v45);
  }

  else
  {

    v48 = v71;
  }

  swift_beginAccess();
  v49 = *v44;
  v50 = *v44 + 56;
  v51 = 1 << *(*v44 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(*v44 + 56);
  v54 = (v51 + 63) >> 6;
  v74 = v48 + 16;
  v79 = v49;

  for (i = 0; v53; v48 = v71)
  {
LABEL_59:
    while (1)
    {
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v59 = v80;
      v60 = v75;
      (*(v48 + 16))(v75, *(v79 + 6) + *(v48 + 72) * (v58 | (i << 6)), v80);
      v61 = v78;
      (*(v48 + 32))(v78, v60, v59);
      if (*(v23 + 16))
      {
        break;
      }

      v56 = *v76;
LABEL_54:
      v56(v78, v80);
      if (!v53)
      {
        goto LABEL_55;
      }
    }

    v62 = specialized __RawDictionaryStorage.find<A>(_:)(v61);
    v56 = *v76;
    if ((v63 & 1) == 0)
    {
      goto LABEL_54;
    }

    v64 = *(*(v23 + 56) + 8 * v62);

    v56(v61, v80);
    v65 = lazy protocol witness table accessor for type InputTargetComponent.DirectInputType.DirectInputOption and conformance InputTargetComponent.DirectInputType.DirectInputOption();
    v82 = MEMORY[0x1C68F39B0](2, &type metadata for InputTargetComponent.DirectInputType.DirectInputOption, v65);
    specialized Set._Variant.insert(_:)(&v81, 0);
    specialized Set._Variant.insert(_:)(&v81, 1);
    v66 = v82;

    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation011InputTargetD0V_TtB5(0x300000001, v66, 0, v64);

    v67 = *(v64 + 16);

    if (v67 != *(v64 + 16))
    {
      goto LABEL_72;
    }

    Entity.generateCollisionShapes(recursive:static:)(1, 0);
  }

LABEL_55:
  while (1)
  {
    v57 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v57 >= v54)
    {

      return;
    }

    v53 = *(v50 + 8 * v57);
    ++i;
    if (v53)
    {
      i = v57;
      goto LABEL_59;
    }
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
}

_BYTE *specialized static Entity.__load(contentsOf:withName:loadOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v75 = a3;
  v78 = a4;
  v74 = a2;
  Information = type metadata accessor for RealityFileLoadInformation(0);
  v80 = *(Information - 8);
  v81 = Information;
  MEMORY[0x1EEE9AC00](Information);
  v77 = &v72[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v79 = &v72[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v72[-v10];
  v85 = type metadata accessor for DispatchPredicate();
  v11 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v13 = &v72[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Trace = type metadata accessor for LoadTrace(0);
  MEMORY[0x1EEE9AC00](Trace - 8);
  v16 = &v72[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = specialized static __ServiceLocator.shared.getter();
  v18 = *(*(v17 + 168) + 24);

  v104 = a1;
  v19 = URL.lastPathComponent.getter();
  v84 = v16;
  v82 = v18;
  LoadTracer.beginLoad(loadType:logMsgTarget:)(1u, v19, v20, v16);

  if (one-time initialization token for synchronousLoadOptions != -1)
  {
    swift_once();
  }

  v21 = static Entity.synchronousLoadOptions;
  v22 = URL.absoluteString.getter();
  v24 = v23;
  swift_beginAccess();
  v25 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMR);
  inited = swift_initStackObject();
  swift_weakInit();
  *(inited + 16) = v22;
  *(inited + 24) = v24;
  v73 = v21;
  *(inited + 32) = v21;
  *(inited + 33) = v25;
  *(inited + 34) = 1;
  *(inited + 36) = 1;
  swift_weakAssign();
  swift_beginAccess();
  v27 = *(v17 + 24);
  swift_unownedRetainStrong();
  v28 = *(v27 + 32);

  v29 = v28;

  *v13 = v29;
  v30 = v85;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v85);
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v30);
  if (v27)
  {
    type metadata accessor for RealityFileLoadInformationResolver();
    v32 = v83;
    v33 = v104;
    static RealityFileLoadInformationResolver.resolve(url:)(v104, v83);
    v34 = v79;
    outlined init with copy of [String : String](v32, v79, &_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
    v35 = v81;
    if ((*(v80 + 48))(v34, 1, v81) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v34, &_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
      swift_beginAccess();
      outlined init with copy of [String : String](v17 + 176, &v102, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
      if (v103)
      {
        outlined init with take of ForceEffectBase(&v102, &v90);
        v36 = v92[0];
        v37 = v92[1];
        __swift_project_boxed_opaque_existential_1(&v90, v92[0]);
        if ((*(v37 + 24))(v33, v36, v37))
        {
          v81 = inited;
          v85 = v17;
          v38 = *(v78 + 80);
          if (v38)
          {
            v39 = v38 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
            *v39 = 1;
            *(v39 + 8) = 0;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
          v40 = swift_initStackObject();
          *(v40 + 16) = xmmword_1C18CF0C0;
          *(v40 + 32) = 1701869940;
          v41 = MEMORY[0x1E69E6158];
          *(v40 + 40) = 0xE400000000000000;
          *(v40 + 48) = 0x6D6F724664616F4CLL;
          *(v40 + 56) = 0xEB000000004C5255;
          *(v40 + 72) = v41;
          *(v40 + 80) = 0x73746E65746E6F63;
          *(v40 + 88) = 0xEA0000000000664FLL;
          v42 = type metadata accessor for URL();
          *(v40 + 120) = v42;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v40 + 96));
          (*(*(v42 - 8) + 16))(boxed_opaque_existential_1, v33, v42);
          *(v40 + 128) = 0x656D614E68746977;
          *(v40 + 136) = 0xE800000000000000;
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v45 = v75;
          *(v40 + 144) = v74;
          *(v40 + 152) = v45;
          *(v40 + 168) = v44;
          *(v40 + 176) = 0xD000000000000015;
          *(v40 + 184) = 0x80000001C18ED680;
          v46 = MEMORY[0x1E69E6370];
          *(v40 + 192) = static RKARSystemCore.generateDecimatedMeshes;
          *(v40 + 216) = v46;
          *(v40 + 224) = 0xD000000000000018;
          *(v40 + 232) = 0x80000001C18EDE40;
          v47 = v78;
          *(v40 + 240) = *(v78 + 49);
          *(v40 + 264) = v46;
          *(v40 + 272) = 0x694C79726F6D656DLL;
          *(v40 + 280) = 0xEB0000000074696DLL;
          v48 = *(v47 + 56);
          v49 = *(v47 + 64);
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
          *(v40 + 288) = v48;
          *(v40 + 296) = v49;
          *(v40 + 312) = v50;
          strcpy((v40 + 320), "featuresToSkip");
          *(v40 + 335) = -18;
          v51 = *(v47 + 68);
          *(v40 + 360) = &type metadata for Entity.__LoadOptions.LoadableFeatures;
          *(v40 + 336) = v51;

          v52 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v40);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
          swift_arrayDestroy();
          v53 = v92[0];
          Error = v92[1];
          __swift_project_boxed_opaque_existential_1(&v90, v92[0]);
          v55 = v76;
          v56 = (*(Error + 4))(v52, v53, Error);
          if (v55)
          {

            outlined destroy of BodyTrackingComponent?(v32, &_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
            outlined destroy of LoadTrace(v84, type metadata accessor for LoadTrace);
          }

          else
          {
            Error = v56;

            specialized static Entity.applyHackForRealityIOUSDImports(rootEntity:)(Error);
            specialized Entity.LoadFinisher.setupAfterUSDLoadSync(_:)(Error, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:), v69);
            v71 = v84;
            LoadTracer.endLoad(of:with:)(Error, v84);

            outlined destroy of BodyTrackingComponent?(v32, &_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
            outlined destroy of LoadTrace(v71, type metadata accessor for LoadTrace);
          }

          __swift_destroy_boxed_opaque_existential_1(&v90);
          return Error;
        }

        __swift_destroy_boxed_opaque_existential_1(&v90);
      }

      else
      {
        outlined destroy of BodyTrackingComponent?(&v102, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
      }

      Error = type metadata accessor for Entity.LoadError(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
      swift_allocError();
      v67 = v66;
      *v66 = URL.absoluteString.getter();
      v67[1] = v68;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      outlined destroy of BodyTrackingComponent?(v32, &_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
      outlined destroy of LoadTrace(v84, type metadata accessor for LoadTrace);
    }

    else
    {
      Error = v77;
      outlined init with take of RealityFileLoadInformation(v34, v77, type metadata accessor for RealityFileLoadInformation);
      v96 = 256;
      v91 = 0u;
      memset(v92, 0, sizeof(v92));
      v99 = 0;
      v100 = 0;
      LOBYTE(v90) = 2;
      v57 = v35;
      v58 = v78;
      outlined assign with copy of __DownsamplingStrategy?(v78, &v92[1]);
      v93 = *(v58 + 40);
      v94 = v74;
      v95 = v75;
      v98 = v73 != 2;
      v97 = (v73 & 0xFE) != 2;
      v101 = *(v58 + 80);
      v59 = &Error[*(v57 + 20)];
      v61 = *v59;
      v60 = v59[1];

      v62 = v61;
      v63 = v76;
      __SceneResourceCache.loadSceneResource(url:sceneName:loadOptions:)(Error, v62, v60, &v90, &v102);
      if (v63)
      {

        outlined destroy of BodyTrackingComponent?(v32, &_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
        outlined destroy of LoadTrace(v84, type metadata accessor for LoadTrace);
        outlined destroy of LoadTrace(Error, type metadata accessor for RealityFileLoadInformation);
      }

      else
      {
        outlined init with copy of __REAssetService(&v102, &v89);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27SceneResourceLoadResultBase_pMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24SceneResourceEntityMaker_pMd, &_s17RealityFoundation24SceneResourceEntityMaker_pMR);
        swift_dynamicCast();
        v64 = v87;
        v65 = v88;
        __swift_project_boxed_opaque_existential_1(v86, v87);
        Error = (*(v65 + 8))(v64, v65);
        __swift_destroy_boxed_opaque_existential_1(v86);
        specialized Entity.LoadFinisher.setupAfterRealityLoadSync(_:)(Error);
        v70 = v84;
        LoadTracer.endLoad(of:with:)(Error, v84);

        __swift_destroy_boxed_opaque_existential_1(&v102);
        outlined destroy of BodyTrackingComponent?(v32, &_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
        outlined destroy of LoadTrace(v70, type metadata accessor for LoadTrace);
        outlined destroy of LoadTrace(v77, type metadata accessor for RealityFileLoadInformation);
      }

      outlined destroy of __REAssetBundle.LoadOptions(&v90);
    }

    return Error;
  }

  __break(1u);
  return result;
}

char *specialized static Entity.__loadAnchor(contentsOf:withName:downsamplingStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v55 = a2;
  v79 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  Error = &v52 - v6;
  Information = type metadata accessor for RealityFileLoadInformation(0);
  v58 = *(Information - 8);
  v59 = Information;
  MEMORY[0x1EEE9AC00](Information);
  v54 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = specialized static __ServiceLocator.shared.getter();
  v15 = *(*(v14 + 168) + 32);
  swift_beginAccess();
  v16 = *(v14 + 24);
  swift_unownedRetainStrong();
  v17 = *(v16 + 32);

  v60 = v15;

  v18 = v17;

  *v13 = v18;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v18)
  {
    v53 = a4;
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
  v19 = static Entity.synchronousLoadOptions;
  v20 = v79;
  v21 = URL.absoluteString.getter();
  v23 = v22;
  swift_beginAccess();
  v24 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA06AnchorC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA06AnchorC0CGMR);
  inited = swift_initStackObject();
  swift_weakInit();
  *(inited + 16) = v21;
  *(inited + 24) = v23;
  *(inited + 32) = v19;
  *(inited + 33) = v24;
  *(inited + 34) = 1;
  *(inited + 36) = 4;
  swift_weakAssign();
  swift_beginAccess();
  outlined init with copy of [String : String](v14 + 176, &v77, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  if (v78)
  {
    outlined init with take of ForceEffectBase(&v77, &v65);
    v26 = v67[0];
    v27 = v67[1];
    __swift_project_boxed_opaque_existential_1(&v65, v67[0]);
    if ((*(v27 + 24))(v20, v26, v27))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_1C189FFC0;
      *(v28 + 32) = 1701869940;
      v29 = MEMORY[0x1E69E6158];
      *(v28 + 40) = 0xE400000000000000;
      *(v28 + 48) = 0xD000000000000011;
      *(v28 + 56) = 0x80000001C18EDF40;
      *(v28 + 72) = v29;
      *(v28 + 80) = 0x73746E65746E6F63;
      *(v28 + 88) = 0xEA0000000000664FLL;
      v30 = type metadata accessor for URL();
      *(v28 + 120) = v30;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v28 + 96));
      (*(*(v30 - 8) + 16))(boxed_opaque_existential_1, v20, v30);
      *(v28 + 128) = 0x656D614E68746977;
      *(v28 + 136) = 0xE800000000000000;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v33 = v56;
      *(v28 + 144) = v55;
      *(v28 + 152) = v33;
      *(v28 + 168) = v32;
      *(v28 + 176) = 0xD000000000000015;
      *(v28 + 184) = 0x80000001C18ED680;
      v34 = static RKARSystemCore.generateDecimatedMeshes;
      *(v28 + 216) = MEMORY[0x1E69E6370];
      *(v28 + 192) = v34;

      v35 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v28);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      Error = v67[0];
      v36 = v67[1];
      __swift_project_boxed_opaque_existential_1(&v65, v67[0]);
      v37 = v57;
      (*(v36 + 32))(v35, Error, v36);

      if (!v37)
      {
        type metadata accessor for AnchorEntity();
        Error = swift_dynamicCastClassUnconditional();
        specialized Entity.LoadFinisher.setupAfterUSDLoadSync(_:)(Error, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:), v50);
      }

      __swift_destroy_boxed_opaque_existential_1(&v65);
      return Error;
    }

    __swift_destroy_boxed_opaque_existential_1(&v65);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v77, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  }

  type metadata accessor for RealityFileLoadInformationResolver();
  static RealityFileLoadInformationResolver.resolve(url:)(v79, Error);
  v38 = v59;
  if ((*(v58 + 48))(Error, 1, v59) == 1)
  {
    outlined destroy of BodyTrackingComponent?(Error, &_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
    Error = type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
    swift_allocError();
    v40 = v39;
    *v39 = URL.absoluteString.getter();
    v40[1] = v41;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v42 = v54;
    outlined init with take of RealityFileLoadInformation(Error, v54, type metadata accessor for RealityFileLoadInformation);
    v71 = 256;
    v66 = 0u;
    memset(v67, 0, sizeof(v67));
    v68 = 0;
    v75 = 0;
    v76 = 0;
    v74 = 0;
    LOBYTE(v65) = 2;
    outlined assign with copy of __DownsamplingStrategy?(v53, &v67[1]);
    v69 = v55;
    v70 = v56;
    v73 = v19 != 2;
    v72 = (v19 & 0xFE) != 2;
    v43 = (v42 + *(v38 + 20));
    v45 = *v43;
    v44 = v43[1];

    v46 = v45;
    v47 = v57;
    __SceneResourceCache.loadSceneResource(url:sceneName:loadOptions:)(v42, v46, v44, &v65, &v77);
    if (!v47)
    {
      outlined init with copy of __REAssetService(&v77, &v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27SceneResourceLoadResultBase_pMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24SceneResourceEntityMaker_pMd, &_s17RealityFoundation24SceneResourceEntityMaker_pMR);
      swift_dynamicCast();
      v48 = v62;
      v49 = v63;
      __swift_project_boxed_opaque_existential_1(v61, v62);
      Error = (*(v49 + 16))(v48, v49);
      __swift_destroy_boxed_opaque_existential_1(v61);
      specialized Entity.LoadFinisher.setupAfterRealityLoadSync(_:)(Error);
      __swift_destroy_boxed_opaque_existential_1(&v77);
    }

    outlined destroy of LoadTrace(v42, type metadata accessor for RealityFileLoadInformation);
    outlined destroy of __REAssetBundle.LoadOptions(&v65);
  }

  return Error;
}

uint64_t partial apply for closure #2 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for RealityFileLoadInformation(0) - 8);
  v6 = (*(v5 + 80) + 88) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #2 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:)(a1, a2, v2 + 16, *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_32Tm()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + v5));

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in static Entity.loadBodyTrackedAsync(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void, void, void, void, unint64_t, void))
{
  v7 = *(type metadata accessor for URL() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  return a3(a1, a2, v3 + v8, *(v3 + v9), *(v3 + v9 + 8), *(v3 + v10), *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), v3 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8), *(v3 + ((((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t specialized static Entity.loadModelAsync(named:in:)(uint64_t a1, uint64_t a2, void *a3)
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
  v7 = specialized static Entity.loadModelAsync(named:in:options:asyncOptions:)(a1, a2, a3, v11);
  outlined destroy of Entity.__LoadOptions(v11);
  return v7;
}

unint64_t specialized static Entity.loadModel(contentsOf:withName:loadOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a2;
  v46 = a3;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v11 = *(v10 + 24);
  swift_unownedRetainStrong();
  v12 = *(v11 + 32);

  v13 = v12;

  *v9 = v13;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v11)
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
  v14 = static Entity.synchronousLoadOptions;
  v15 = URL.absoluteString.getter();
  v17 = v16;
  swift_beginAccess();
  v18 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA05ModelC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA05ModelC0CGMR);
  inited = swift_initStackObject();
  swift_weakInit();
  *(inited + 16) = v15;
  *(inited + 24) = v17;
  *(inited + 32) = v14;
  *(inited + 33) = v18;
  *(inited + 34) = 256;
  *(inited + 36) = 2;
  swift_weakAssign();
  swift_beginAccess();
  outlined init with copy of [String : String](v10 + 176, &v47, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  if (!v48)
  {
    outlined destroy of BodyTrackingComponent?(&v47, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
LABEL_12:
    Error = type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
    swift_allocError();
    v40 = v39;
    *v39 = URL.absoluteString.getter();
    v40[1] = v41;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return Error;
  }

  outlined init with take of ForceEffectBase(&v47, v49);
  v20 = v50;
  v21 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  if (((*(v21 + 24))(a1, v20, v21) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v49);
    goto LABEL_12;
  }

  v22 = *(a4 + 80);
  if (v22)
  {
    v23 = v22 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
    *v23 = 1;
    *(v23 + 8) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1C18CF0C0;
  *(v24 + 32) = 1701869940;
  v25 = MEMORY[0x1E69E6158];
  *(v24 + 40) = 0xE400000000000000;
  *(v24 + 48) = 0xD000000000000010;
  *(v24 + 56) = 0x80000001C18EDEE0;
  *(v24 + 72) = v25;
  *(v24 + 80) = 0x73746E65746E6F63;
  *(v24 + 88) = 0xEA0000000000664FLL;
  v26 = type metadata accessor for URL();
  *(v24 + 120) = v26;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v24 + 96));
  (*(*(v26 - 8) + 16))(boxed_opaque_existential_1, a1, v26);
  *(v24 + 128) = 0x656D614E68746977;
  *(v24 + 136) = 0xE800000000000000;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v29 = v46;
  *(v24 + 144) = v45;
  *(v24 + 152) = v29;
  *(v24 + 168) = v28;
  *(v24 + 176) = 0xD000000000000015;
  *(v24 + 184) = 0x80000001C18ED680;
  v30 = MEMORY[0x1E69E6370];
  *(v24 + 192) = static RKARSystemCore.generateDecimatedMeshes;
  *(v24 + 216) = v30;
  *(v24 + 224) = 0xD000000000000018;
  *(v24 + 232) = 0x80000001C18EDE40;
  *(v24 + 240) = *(a4 + 49);
  *(v24 + 264) = v30;
  *(v24 + 272) = 0x694C79726F6D656DLL;
  *(v24 + 280) = 0xEB0000000074696DLL;
  v31 = *(a4 + 56);
  v32 = *(a4 + 64);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  *(v24 + 288) = v31;
  *(v24 + 296) = v32;
  *(v24 + 312) = v33;
  strcpy((v24 + 320), "featuresToSkip");
  *(v24 + 335) = -18;
  v34 = *(a4 + 68);
  *(v24 + 360) = &type metadata for Entity.__LoadOptions.LoadableFeatures;
  *(v24 + 336) = v34;

  Error = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v24);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v36 = v50;
  v37 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  v38 = v52;
  (*(v37 + 32))(Error, v36, v37);
  if (v38)
  {
  }

  else
  {

    type metadata accessor for ModelEntity();
    v43 = swift_dynamicCastClass();
    if (v43)
    {
      Error = v43;
      specialized Entity.LoadFinisher.setupAfterUSDLoadSync(_:)(v43, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:), v44);
      swift_setDeallocating();

      swift_weakDestroy();

      __swift_destroy_boxed_opaque_existential_1(v49);
      return Error;
    }

    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v49);
  return Error;
}

uint64_t specialized static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:)(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v29 = a1;
  v30 = type metadata accessor for URL();
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = specialized static __ServiceLocator.shared.getter();
  v10 = *(*(v9 + 168) + 16);
  swift_beginAccess();
  v11 = *(v9 + 24);
  swift_unownedRetainStrong();
  v12 = *(v11 + 32);

  v27 = v10;
  v13 = v12;

  v14 = *(*(v9 + 168) + 32);
  *v8 = v13;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v15 = v13;

  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v10)
  {
    outlined init with copy of [String : String](v28, v31, &_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
    v17 = v30;
    (*(v2 + 16))(&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v30);
    v18 = (*(v2 + 80) + 64) & ~*(v2 + 80);
    v19 = (v3 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    v21 = v31[1];
    *(v20 + 16) = v31[0];
    *(v20 + 32) = v21;
    *(v20 + 48) = v32;
    *(v20 + 56) = v14;
    (*(v2 + 32))(v20 + v18, v4, v17);
    *(v20 + v19) = v15;
    *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCySayAA6EntityCGGMd, &_s10RealityKit11LoadRequestCySayAA6EntityCGGMR);
    v22 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOySay0A3Kit6EntityCGs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOySay0A3Kit6EntityCGs5Error_pGSgGMR);
    v23 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v23 + 16) = v24;
    *(v23 + 24) = 0;
    *(v23 + 32) = -1;
    *(v22 + 16) = v23;
    v25 = swift_allocObject();
    v25[2] = partial apply for closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:);
    v25[3] = v20;
    v25[4] = v23;
    v25[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCySay10RealityKit6EntityCGs5Error_pGMd, &_s7Combine6FutureCySay10RealityKit6EntityCGs5Error_pGMR);
    swift_allocObject();

    v26 = Future.init(_:)();

    *(v22 + 24) = v26;
    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t specialized Entity.init(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[34] = a3;
  v4[35] = v3;
  v4[32] = a1;
  v4[33] = a2;
  type metadata accessor for MainActor();
  v4[36] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[37] = v6;
  v4[38] = v5;

  return MEMORY[0x1EEE6DFA0](specialized Entity.init(named:in:), v6, v5);
}

uint64_t specialized Entity.init(named:in:)()
{
  v1 = *(v0 + 272);
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
  v2 = swift_allocObject();
  Date.init()();
  v3 = v2 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
  *v3 = 0;
  *(v3 + 8) = 2;
  *(v2 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_loadRequestStats) = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_async) = 1;
  v4 = (v2 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
  *v4 = 0xD00000000000001CLL;
  v4[1] = 0x80000001C18EDEA0;
  *(v0 + 96) = v2;
  outlined init with copy of Entity.__LoadOptions(v0 + 16, v0 + 104);
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 312) = v6;
  *v6 = v0;
  v6[1] = specialized Entity.init(named:in:);
  v7 = *(v0 + 272);
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);

  return Entity.init(named:in:options:)(v9, v8, v7, v0 + 104);
}

{

  outlined destroy of Entity.__LoadOptions(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 328);

  return v1(v2);
}

{

  outlined destroy of Entity.__LoadOptions(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized Entity.init(named:in:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 320) = v1;

  if (v1)
  {
    v5 = v4[37];
    v6 = v4[38];
    v7 = specialized Entity.init(named:in:);
  }

  else
  {
    v4[41] = a1;
    v5 = v4[37];
    v6 = v4[38];
    v7 = specialized Entity.init(named:in:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t closure #1 in static Entity.loadReferences(root:)partial apply(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return closure #1 in static Entity.loadReferences(root:)(a1, a2, v6);
}

unint64_t lazy protocol witness table accessor for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures()
{
  result = lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures;
  if (!lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.__LoadOptions.LoadableFeatures, &type metadata for Entity.__LoadOptions.LoadableFeatures, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures;
  if (!lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.__LoadOptions.LoadableFeatures, &type metadata for Entity.__LoadOptions.LoadableFeatures, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures;
  if (!lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.__LoadOptions.LoadableFeatures, &type metadata for Entity.__LoadOptions.LoadableFeatures, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures;
  if (!lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.__LoadOptions.LoadableFeatures, &type metadata for Entity.__LoadOptions.LoadableFeatures, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Entity.__LoadOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for Entity.__LoadOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Entity.__AsyncLoadOptions(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 2;
  }

  else
  {
    v7 = -3;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

void type metadata completion function for Entity.LoadError(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (String, String)();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata completion function for RealityFileLoadInformation(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t outlined init with take of RealityFileLoadInformation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of __REAnchoringType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in static Entity.finishUSDLoad(forEntity:withOptions:)(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);

  return closure #1 in closure #1 in static Entity.finishUSDLoad(forEntity:withOptions:)(a1, a2 & 1);
}

void partial apply for specialized closure #1 in Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:)(uint64_t a1)
{
  partial apply for specialized closure #1 in Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:)(a1, &block_descriptor_198, &unk_1F411D858, thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply, &block_descriptor_205);
}

{
  partial apply for specialized closure #1 in Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:)(a1, &block_descriptor_261, &unk_1F411DB78, thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply, &block_descriptor_268);
}

double block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t partial apply for specialized closure #2 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:)(uint64_t a1, char a2)
{
  return closure #1 in closure #1 in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(a1, a2 & 1, *(v2 + 16), v2 + 24, *(v2 + 112), *(v2 + 120), specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:), specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:));
}

{
  return specialized closure #2 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:)(a1, a2 & 1, *(v2 + 16), v2 + 24, *(v2 + 112), *(v2 + 120));
}

{
  return closure #1 in closure #1 in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(a1, a2 & 1, *(v2 + 16), v2 + 24, *(v2 + 112), *(v2 + 120), specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:), specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:));
}

{
  return closure #1 in closure #1 in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(a1, a2 & 1, *(v2 + 16), v2 + 24, *(v2 + 112), *(v2 + 120), specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:), specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:));
}

uint64_t objectdestroy_213Tm()
{
  outlined consume of Data._Representation(v0[3], v0[4]);

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t objectdestroy_234Tm()
{

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  }

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

void partial apply for specialized closure #1 in Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:)(char a1)
{
  partial apply for specialized closure #1 in Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:)(a1, &block_descriptor_323_0, &unk_1F411DE48, thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply, &block_descriptor_330);
}

{
  partial apply for specialized closure #1 in Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:)(a1, &block_descriptor_401, &unk_1F411E1E0, thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply, &block_descriptor_408);
}

uint64_t partial apply for specialized closure #1 in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:)()
{
  return partial apply for specialized closure #1 in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:)(specialized closure #1 in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:));
}

{
  return partial apply for specialized closure #1 in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:)(specialized closure #1 in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:));
}

uint64_t objectdestroy_188Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t partial apply for closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 56);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:)(a1, a2, v2 + 16, v8, v2 + v6, v9, v10);
}

uint64_t partial apply for doLoadAllEntitiesFromURLAsync #1 () in closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 56);
  v5 = *(v0 + v3);
  v6 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return doLoadAllEntitiesFromURLAsync #1 () in closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:)(v0 + 16, v4, v0 + v2, v5, v7, v8);
}

void partial apply for closure #1 in doLoadAllEntitiesFromURLAsync #1 () in closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  closure #1 in doLoadAllEntitiesFromURLAsync #1 () in closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:)(v3, v0 + v2, v5, v6);
}

uint64_t objectdestroy_25Tm()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in static Entity.loadModelAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in static Entity.loadModelAsync(contentsOf:withName:options:asyncOptions:)(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v7 + 8), v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8)), (v2 + ((((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t partial apply for doLoadAnchorEntityFromURLAsync #1 () in closure #2 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:)()
{
  v1 = *(type metadata accessor for RealityFileLoadInformation(0) - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  return doLoadAnchorEntityFromURLAsync #1 () in closure #2 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:)(v0 + 16, *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_339Tm()
{
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  if (*(v0 + 104))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  }

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t objectdestroy_356Tm()
{
  outlined consume of Data._Representation(v0[3], v0[4]);

  if (v0[12])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  }

  return MEMORY[0x1EEE6BDD0](v0, 200, 7);
}

uint64_t objectdestroy_368Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_374Tm()
{
  outlined consume of Data._Representation(v0[3], v0[4]);

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t objectdestroy_380Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  if (v0[11])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  }

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t objectdestroy_228Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for doLoadEntityFromURLAsync #1 () in closure #1 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)()
{
  v1 = *(type metadata accessor for RealityFileLoadInformation(0) - 8);
  v2 = (*(v1 + 80) + 136) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  return doLoadEntityFromURLAsync #1 () in closure #1 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + 40, *(v0 + 128), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

double partial apply for closure #1 in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 95) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(v0 + v2, *(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + v5), *(v0 + v6), *(v0 + v7), v0 + v8, *(v0 + v9), *(v0 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), (v0 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_219Tm()
{
  v1 = (type metadata accessor for LoadTrace(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[11];
  v7 = type metadata accessor for DispatchTime();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

void partial apply for closure #1 in LoadTracer.subscribe<A>(to:with:)(uint64_t a1)
{
  v3 = *(type metadata accessor for LoadTrace(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in LoadTracer.subscribe<A>(to:with:)(a1, v1 + v4, v5);
}

uint64_t objectdestroy_222Tm()
{
  v1 = (type metadata accessor for LoadTrace(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[11];
  v7 = type metadata accessor for DispatchTime();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t partial apply for specialized closure #2 in LoadTracer.subscribe<A>(to:with:)(uint64_t *a1)
{
  v3 = *(type metadata accessor for LoadTrace(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return specialized closure #2 in LoadTracer.subscribe<A>(to:with:)(*a1, (v1 + v4), *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_669Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);

  if (v0[12])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  }

  return MEMORY[0x1EEE6BDD0](v0, 176, 7);
}

uint64_t partial apply for closure #1 in closure #1 in static Entity.loadReferences(root:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return closure #1 in closure #1 in static Entity.loadReferences(root:)(a1, v4, v5, v6);
}

uint64_t objectdestroy_553Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t objectdestroy_581Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

void BoundingBox.formUnion(_:)()
{
  REAABBExpandedToIncludePoint();
  *v0 = v1;
  v0[1] = v2;
}

double one-time initialization function for empty()
{
  result = 1.40444843e306;
  static BoundingBox.empty = xmmword_1C189A7F0;
  *algn_1EBEB1450 = xmmword_1C189A800;
  return result;
}

double static BoundingBox.empty.getter()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  return *&static BoundingBox.empty;
}

uint64_t BoundingBox.hash(into:)()
{
  specialized SIMD.hash(into:)();

  return specialized SIMD.hash(into:)();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance BoundingBox.CodingKeys()
{
  if (*v0)
  {
    return 7889261;
  }

  else
  {
    return 7235949;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance BoundingBox.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BoundingBox.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance BoundingBox.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int BoundingBox.hashValue.getter()
{
  Hasher.init(_seed:)();
  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BoundingBox()
{
  Hasher.init(_seed:)();
  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance BoundingBox()
{
  specialized SIMD.hash(into:)();

  return specialized SIMD.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BoundingBox()
{
  Hasher.init(_seed:)();
  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)();
  return Hasher._finalize()();
}

void BoundingBox.formUnion(_:)(__n128 a1, __n128 a2)
{
  REAABBExpandedToIncludeBox();
  *v2 = v3;
  v2[1] = v4;
}

Swift::Void __swiftcall BoundingBox.transform(by:)(simd_float4x4 *by)
{
  v2.n128_f64[0] = REAABBTransform(*v1, v1[1]);
  *v1 = v2;
  v1[1] = v3;
}

uint64_t BoundingBox.encode(to:)(void *a1, __n128 a2, __n128 a3)
{
  v10 = a3;
  v11 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit11BoundingBoxV10CodingKeys33_335A3D0ECF4DC5C056DD585CBCEAF8D9LLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit11BoundingBoxV10CodingKeys33_335A3D0ECF4DC5C056DD585CBCEAF8D9LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v11;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, MEMORY[0x1E69E7458]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v12 = v10;
    v13 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for Decodable.init(from:) in conformance BoundingBox@<X0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = specialized BoundingBox.init(from:)(a2);
  if (!v2)
  {
    *a1 = v5;
    a1[1] = v6;
  }

  return result;
}

uint64_t specialized static BoundingBox.== infix(_:_:)(float32x4_t a1, int8x16_t a2, float32x4_t a3, int8x16_t a4)
{
  if (vmovn_s32(vceqq_f32(a1, a3)).u8[0] & 1) != 0 && (vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(vextq_s8(a1, a1, 0xCuLL), a2, 8uLL), vextq_s8(vextq_s8(a3, a3, 0xCuLL), a4, 8uLL)))))
  {
    return vmovn_s32(vceqq_f32(*&a2, *&a4)).i8[4] & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys()
{
  result = lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys;
  if (!lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BoundingBox.CodingKeys, &unk_1F411F6F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys;
  if (!lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BoundingBox.CodingKeys, &unk_1F411F6F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys;
  if (!lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BoundingBox.CodingKeys, &unk_1F411F6F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys;
  if (!lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BoundingBox.CodingKeys, &unk_1F411F6F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys);
  }

  return result;
}

uint64_t specialized BoundingBox.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit11BoundingBoxV10CodingKeys33_335A3D0ECF4DC5C056DD585CBCEAF8D9LLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit11BoundingBoxV10CodingKeys33_335A3D0ECF4DC5C056DD585CBCEAF8D9LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BoundingBox.CodingKeys and conformance BoundingBox.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v9 = 0;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, MEMORY[0x1E69E7468]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8[1] = v10;
    v9 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v8[0] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type BoundingBox and conformance BoundingBox()
{
  result = lazy protocol witness table cache variable for type BoundingBox and conformance BoundingBox;
  if (!lazy protocol witness table cache variable for type BoundingBox and conformance BoundingBox)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BoundingBox, &type metadata for BoundingBox, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BoundingBox and conformance BoundingBox);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _Proto_AntialiasingMode_v1 and conformance _Proto_AntialiasingMode_v1()
{
  result = lazy protocol witness table cache variable for type _Proto_AntialiasingMode_v1 and conformance _Proto_AntialiasingMode_v1;
  if (!lazy protocol witness table cache variable for type _Proto_AntialiasingMode_v1 and conformance _Proto_AntialiasingMode_v1)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _Proto_AntialiasingMode_v1, &type metadata for _Proto_AntialiasingMode_v1, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_AntialiasingMode_v1 and conformance _Proto_AntialiasingMode_v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AntialiasingMode and conformance AntialiasingMode()
{
  result = lazy protocol witness table cache variable for type AntialiasingMode and conformance AntialiasingMode;
  if (!lazy protocol witness table cache variable for type AntialiasingMode and conformance AntialiasingMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AntialiasingMode, &type metadata for AntialiasingMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AntialiasingMode and conformance AntialiasingMode);
  }

  return result;
}

void *specialized AssetServiceScopedRegistry.instance(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36[3] = a3;
  v36[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v9 = *(a4 + 32);
  v10 = v9(a3, a4);
  v11 = *(a2 + 16);
  os_unfair_lock_lock(v11 + 4);
  swift_beginAccess();
  v12 = *(a2 + 24);
  if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
  }

  else
  {
    os_unfair_lock_unlock(v11 + 4);
    outlined init with copy of __REAssetService(v36, aBlock);
    type metadata accessor for __RealityFileURLResolver();
    v16 = swift_allocObject();
    v30 = v9;
    v17 = __swift_mutable_project_boxed_opaque_existential_1(aBlock, v32);
    v29 = v10;
    v18 = MEMORY[0x1EEE9AC00](v17);
    v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v20, v18);
    v15 = specialized __RealityFileURLResolver.init(_:)(v20, v16, a3, a4);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    os_unfair_lock_lock(v11 + 4);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(a2 + 24);
    *(a2 + 24) = 0x8000000000000000;
    v23 = v29;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v29, isUniquelyReferenced_nonNull_native);
    *(a2 + 24) = v35;
    swift_endAccess();
    v30(a3, a4);
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v23;
    v33 = partial apply for specialized closure #1 in AssetServiceScopedRegistry.instance(for:);
    v34 = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v32 = &block_descriptor_46;
    v26 = _Block_copy(aBlock);

    REAssetManagerAddCleanupCallback();
    _Block_release(v26);
  }

  os_unfair_lock_unlock(v11 + 4);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v15;
}

double block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t static __SceneResource.fromCoreUnretained(_:)(void *a1)
{
  v1 = *a1;
  RERetain();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}