uint64_t specialized USDImportService.loadBodyTrackedAsync(contentsOf:withName:fulfill:postLoad:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v104 = a5;
  v103 = a4;
  v122 = a3;
  v120 = a2;
  v110 = type metadata accessor for DispatchWorkItemFlags();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110, v6);
  v107 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for DispatchQoS();
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v8);
  v105 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
  v123 = *(v114 - 8);
  v11.n128_f32[0] = MEMORY[0x28223BE20](v114, v10);
  v99 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v11);
  v100 = &v98 - v14;
  v113 = type metadata accessor for __EngineRef();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v15);
  v111 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  v19.n128_f32[0] = MEMORY[0x28223BE20](v17 - 8, v18);
  v101 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v19);
  v23 = &v98 - v22;
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v28.n128_f32[0] = MEMORY[0x28223BE20](v24, v27);
  v29 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v28);
  v32 = &v98 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v115 = *(v33 - 8);
  v35.n128_f32[0] = MEMORY[0x28223BE20](v33 - 8, v34);
  v116 = v36;
  v117 = &v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v37, v35);
  v40 = &v98 - v39;
  v41 = *(v25 + 16);
  v41(&v98 - v39, a1, v24, v38);
  v42 = *(v25 + 56);
  v124 = v40;
  v42(v40, 0, 1, v24);
  (v41)(v32, a1, v24);
  v43 = *(v123 + 56);
  v125 = v23;
  v44 = v23;
  v45 = v114;
  v43(v44, 1, 1, v114);
  (v41)(v29, a1, v24);
  v46 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v47 = swift_allocObject();
  v118 = v25;
  v119 = v47;
  v48 = *(v25 + 32);
  v121 = v24;
  v48(v47 + v46, v29, v24);
  URL._bridgeToObjectiveC()(v49);
  v51 = v50;
  v52 = RIOPxrUsdStageCreateWithFileURL();

  if (!v52)
  {
    goto LABEL_6;
  }

  TopLevelEntityFromStage = RIOPxrUsdUtilsCreateTopLevelEntityFromStage();
  type metadata accessor for __ServiceLocator();
  v54 = TopLevelEntityFromStage;
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  v55 = v111;
  dispatch thunk of __Engine.__coreEngine.getter();

  __AssetRef.__as<A>(_:)();
  (*(v112 + 8))(v55, v113);
  SingleUseImporterWithStage = RIOImportSessionCreateSingleUseImporterWithStage();
  type metadata accessor for ImportSession(0);
  swift_allocObject();
  v58 = _s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ011BodyTrackedK0C_Tt0g5(SingleUseImporterWithStage, v57);
  if (!v58)
  {

LABEL_6:
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.engine.getter();

    v68 = __Engine.queue.getter();

    v69 = v124;
    v70 = v117;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v124, v117, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v71 = (*(v115 + 80) + 32) & ~*(v115 + 80);
    v72 = swift_allocObject();
    v73 = v122;
    *(v72 + 16) = v120;
    *(v72 + 24) = v73;
    outlined init with take of URL?(v70, v72 + v71);
    aBlock[4] = closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
    aBlock[5] = v72;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_496;
    v74 = _Block_copy(aBlock);

    v75 = v105;
    static DispatchQoS.unspecified.getter();
    v126 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v76 = v107;
    v77 = v110;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26670F3A0](0, v75, v76, v74);
    _Block_release(v74);

    (*(v109 + 8))(v76, v77);
    (*(v106 + 8))(v75, v108);
    outlined destroy of Any?(v125, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    (*(v118 + 8))(v32, v121);
    outlined destroy of Any?(v69, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  v59 = v58;
  v60 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();

  RIOImportSessionSetIsLoadModelUseCase();
  v61 = *&v59[v60];
  URL._bridgeToObjectiveC()(v62);
  v64 = v63;
  RIOImportSessionSetOriginalUrl();

  v65 = v101;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v125, v101, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  v66 = v123;
  v67 = (*(v123 + 48))(v65, 1, v45);
  v98 = v32;
  v113 = v60;
  if (v67 == 1)
  {

    outlined destroy of Any?(v65, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  }

  else
  {
    v79 = v100;
    (*(v66 + 32))(v100, v65, v45);

    v80 = v99;
    static Entity.__LoadOptions.LoadableFeatures.audio.getter();
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures, MEMORY[0x277CDB140], MEMORY[0x277CDB148]);
    v81 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v82 = *(v66 + 8);
    v82(v80, v45);
    if (v81)
    {
      RIOImportSessionSetLoadAudio();
    }

    v82(v79, v45);
  }

  v83 = v117;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v124, v117, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v84 = (*(v115 + 80) + 40) & ~*(v115 + 80);
  v85 = (v116 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
  v87 = (v86 + 23) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v89 = v120;
  v88[2] = v59;
  v88[3] = v89;
  v88[4] = v122;
  outlined init with take of URL?(v83, v88 + v84);
  *(v88 + v85) = v59;
  v90 = (v88 + v86);
  v91 = v119;
  *v90 = partial apply for closure #2 in USDImportService.loadBodyTrackedAsync(contentsOf:withName:fulfill:postLoad:);
  v90[1] = v91;
  *(v88 + v87) = v102;
  v92 = (v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8));
  v93 = v103;
  v94 = v104;
  *v92 = v103;
  v92[1] = v94;
  v95 = &v59[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion];
  swift_beginAccess();
  v96 = *v95;
  v97 = v95[1];
  *v95 = partial apply for specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:);
  v95[1] = v88;
  swift_retain_n();

  sub_26187DB8C(v93, v94);

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v96, v97);
  ImportSession.sceneUpdatePassCompletion.didset();

  RIOImportSessionUpdate();

  outlined destroy of Any?(v125, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  (*(v118 + 8))(v98, v121);
  return outlined destroy of Any?(v124, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

void type metadata completion function for USDImportService.LoadError(uint64_t a1)
{
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String : Any]();
    if (v2 <= 0x3F)
    {
      type metadata accessor for (numBytes: Int, availableBytes: Int)();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for URL?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for URL?);
    }
  }
}

void type metadata accessor for (numBytes: Int, availableBytes: Int)()
{
  if (!lazy cache variable for type metadata for (numBytes: Int, availableBytes: Int))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (numBytes: Int, availableBytes: Int));
    }
  }
}

uint64_t outlined init with copy of USDImportService.LoadError(uint64_t a1, uint64_t a2)
{
  Error = type metadata accessor for USDImportService.LoadError(0);
  (*(*(Error - 8) + 16))(a2, a1, Error);
  return a2;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)()
{
  return partial apply for specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:));
}

{
  return partial apply for specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:));
}

{
  return partial apply for specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:));
}

{
  return partial apply for specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:));
}

uint64_t specialized static USDImportService.loadModel_createImportSession(stage:url:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = type metadata accessor for __EngineRef();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  dispatch thunk of __Engine.__coreEngine.getter();

  __AssetRef.__as<A>(_:)();
  (*(v5 + 8))(v8, v4);
  SingleUseImporterWithStage = RIOImportSessionCreateSingleUseImporterWithStage();
  type metadata accessor for ImportSession(0);
  swift_allocObject();
  v10 = a3(SingleUseImporterWithStage);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();

    RIOImportSessionSetIsLoadModelUseCase();
    v12 = *(v10 + v11);
    URL._bridgeToObjectiveC()(v13);
    v15 = v14;
    RIOImportSessionSetOriginalUrl();
  }

  return v10;
}

char *specialized USDImportService.generatePostLoadData(from:entity:)(uint64_t a1, uint64_t a2)
{
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  ServiceLocator = REEngineGetServiceLocator();
  if (!MEMORY[0x2667102E0](ServiceLocator))
  {
    if (one-time initialization token for rioAudio != -1)
    {
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  v58 = a2;
  v59 = v4;
  v6 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v7 = *(a1 + v6);
  SceneCount = RIOImportSessionGetSceneCount();
  if (SceneCount < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_28:
    *(&v61[0] + 1) = MEMORY[0x277D837D0];
    strcpy(&v60, "PostLoadData");
    BYTE13(v60) = 0;
    HIWORD(v60) = -5120;
    outlined init with take of Any(&v60, v73);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v59;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v73, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v53 = v72;
    *(&v61[0] + 1) = type metadata accessor for Entity();
    *&v60 = v58;
    outlined init with take of Any(&v60, v73);

    v54 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v53;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v73, 0x797469746E65, 0xE600000000000000, v54);
    v55 = v72;
    *(&v61[0] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
    *&v60 = v11;
    outlined init with take of Any(&v60, v73);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v55;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v73, 0x646574726F706D69, 0xEE0073656E656353, v56);

    return v72;
  }

  v9 = SceneCount;
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = RIOImportSessionCopySceneAssetName();
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16 || (String.utf8CString.getter(), AssetHandle = REAssetManagerCreateAssetHandle(), , __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR), (*(swift_initStackObject() + 16) = AssetHandle) == 0))
    {

      goto LABEL_5;
    }

    v18 = RIOImportSessionCopySceneName();
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    IsSceneActive = RIOImportSessionIsSceneActive();
    v63[0] = 1701869940;
    v63[1] = 0xE400000000000000;
    v63[2] = 0xD000000000000010;
    v63[3] = 0x80000002619975E0;
    v63[5] = MEMORY[0x277D837D0];
    v64[0] = 0x6D614E656E656373;
    v64[1] = 0xE900000000000065;
    v64[2] = v19;
    v64[3] = v21;
    v64[5] = MEMORY[0x277D837D0];
    strcpy(v65, "sceneAssetName");
    v65[15] = -18;
    v66 = v13;
    v67 = v15;
    v68 = MEMORY[0x277D837D0];
    v69[0] = 0x657669746361;
    v69[1] = 0xE600000000000000;
    v71 = MEMORY[0x277D839B0];
    v70 = IsSceneActive;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v23 = static _DictionaryStorage.allocate(capacity:)();

    v4 = &v62;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v63, &v60, &_sSS_yptMd, &_sSS_yptMR);
    v24 = v60;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(v60, *(&v60 + 1));
    if (v26)
    {
      break;
    }

    v27 = v23 + 8;
    *(v23 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v25;
    *(v23[6] + 16 * v25) = v24;
    outlined init with take of Any(v61, (v23[7] + 32 * v25));
    v28 = v23[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_31;
    }

    v23[2] = v30;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v64, &v60, &_sSS_yptMd, &_sSS_yptMR);
    v31 = v60;
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(v60, *(&v60 + 1));
    if (v33)
    {
      break;
    }

    *(v27 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    *(v23[6] + 16 * v32) = v31;
    outlined init with take of Any(v61, (v23[7] + 32 * v32));
    v34 = v23[2];
    v29 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v29)
    {
      goto LABEL_31;
    }

    v23[2] = v35;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v65, &v60, &_sSS_yptMd, &_sSS_yptMR);
    v36 = v60;
    v37 = specialized __RawDictionaryStorage.find<A>(_:)(v60, *(&v60 + 1));
    if (v38)
    {
      break;
    }

    *(v27 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    *(v23[6] + 16 * v37) = v36;
    outlined init with take of Any(v61, (v23[7] + 32 * v37));
    v39 = v23[2];
    v29 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v29)
    {
      goto LABEL_31;
    }

    v23[2] = v40;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v69, &v60, &_sSS_yptMd, &_sSS_yptMR);
    v41 = v60;
    v42 = specialized __RawDictionaryStorage.find<A>(_:)(v60, *(&v60 + 1));
    if (v43)
    {
      break;
    }

    *(v27 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
    *(v23[6] + 16 * v42) = v41;
    outlined init with take of Any(v61, (v23[7] + 32 * v42));
    v44 = v23[2];
    v29 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (v29)
    {
      goto LABEL_31;
    }

    v23[2] = v45;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    swift_arrayDestroy();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
    }

    v47 = v11[2];
    v46 = v11[3];
    if (v47 >= v46 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v11);
    }

    v11[2] = v47 + 1;
    v11[v47 + 4] = v23;
LABEL_5:
    if (v9 == ++v10)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_24:
  v48 = type metadata accessor for Logger();
  __swift_project_value_buffer(v48, static Logger.rioAudio);
  v49 = static os_log_type_t.error.getter();
  v50 = Logger.logObject.getter();
  if (os_log_type_enabled(v50, v49))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_26187B000, v50, v49, "generatePostLoadData could not get an AssetManager.", v51, 2u);
    MEMORY[0x266713AD0](v51, -1, -1);
  }

  return v4;
}

void partial apply for specialized closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  specialized closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(v2, v3, v4, v5, v6);
}

{
  partial apply for specialized closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(MEMORY[0x277CDABB8]);
}

{
  partial apply for specialized closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(MEMORY[0x277CDABD8]);
}

{
  partial apply for specialized closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(MEMORY[0x277CDAD18]);
}

uint64_t partial apply for specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(uint64_t (*a1)(void, void, void, char *, void, void, void, void, void, void))
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return a1(*(v1 + 2), *(v1 + 3), *(v1 + 4), &v1[v4], *&v1[v5], *&v1[v6], *&v1[v6 + 8], *&v1[(v6 + 23) & 0xFFFFFFFFFFFFFFF8], *&v1[(((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8], *&v1[((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8]);
}

uint64_t lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_21Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_247Tm()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_152Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_119Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_125Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + v4))
  {
  }

  if (*(v0 + v7))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v2 | 7);
}

uint64_t specialized UsdGeomXformable.localTransformation(at:)@<X0>(float32x4_t *a1@<X8>)
{
  result = RIOPxrUsdGeomXformableXformQueryGetLocalTransformation();
  if (result)
  {
    v4 = 0;
    v5 = vcvt_hight_f32_f64(vcvt_f32_f64(0), 0);
    v6 = v5;
    v7 = v5;
    v8 = v5;
  }

  else
  {
    v4 = 1;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v5 = 0uLL;
  }

  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4].i8[0] = v4;
  return result;
}

uint64_t closure #1 in static ActionBuilder.generateTransformActionSpecifications(inputs:)(__n128 a1, __n128 a2, __n128 a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v65 = a11;
  v63 = a10;
  v60 = a9;
  v56 = a3;
  v57 = a2;
  v58 = a1;
  v67 = a8;
  v55 = a6;
  v61 = type metadata accessor for __RKEntityMoveEaseType();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v11);
  v64 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for __RKEntityMoveEase();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v13);
  v52 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for __RKEntityMoveSelection();
  v15 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for __RKEntityActionSpecification();
  v24 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v25);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v30.n128_f32[0] = MEMORY[0x28223BE20](v28 - 8, v29);
  v32 = &v50 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v33, v30);
  v35 = *(v20 + 56);
  v68 = &v50 - v36;
  v37 = v35(v34);
  v38 = specialized Inputs.pathsForRelationship(named:requestContext:)(0xD000000000000010, 0x80000002619945A0, v37);
  v62 = v27;
  if (*(v38 + 16))
  {
    v39 = *(v38 + 32);

    Inputs.identifierForEntity(withInputKey:)(0xD000000000000010, 0x8000000261994560, v32);

    v40 = v68;
    outlined destroy of Any?(v68, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined init with take of UUID?(v32, v40);
  }

  else
  {
  }

  (*(v20 + 16))(v23, v55, v19);
  v56.n128_u64[0] = v57.n128_u64[0];
  (*(v15 + 16))(v18, v60, v51);
  (*(v53 + 16))(v52, v63, v54);
  (*(v59 + 16))(v64, v65, v61);
  outlined init with copy of UUID?(v68, v32);
  v69 = 0;
  v41 = v62;
  __RKEntityTransformActionArguments.init(target:location:orientation:scale:duration:moveType:ease:easeType:respectPhysics:physicsLinearCoefficient:physicsAngularCoefficient:relativeToEntity:)();
  v42 = v66;
  (*(v24 + 104))(v41, *MEMORY[0x277CDAFB8], v66);
  v43 = v67;
  v44 = *v67;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v43 = v44;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1, v44);
    *v43 = v44;
  }

  v47 = v44[2];
  v46 = v44[3];
  if (v47 >= v46 >> 1)
  {
    *v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v44);
  }

  outlined destroy of Any?(v68, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v48 = *v43;
  *(v48 + 16) = v47 + 1;
  return (*(v24 + 32))(v48 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v47, v41, v42);
}

void *specialized static ActionBuilder.generateTransformActionSpecifications(inputs:)(char *a1)
{
  v74 = type metadata accessor for __RKEntityGroupActionOrder();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v2);
  v72 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v75 = &v65 - v6;
  v77 = type metadata accessor for __RKEntityMoveEaseType();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v7);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v65 - v12;
  v14 = type metadata accessor for __RKEntityMoveEase();
  v78 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit23__RKEntityMoveSelectionOSgMd, &_s10RealityKit23__RKEntityMoveSelectionOSgMR);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v65 - v20;
  v22 = type metadata accessor for __RKEntityMoveSelection();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = specialized Inputs.pathsForRelationship(named:requestContext:)(0x7261546D726F6678, 0xEB00000000746567, v25);
  v69 = v21;
  v71 = a1;
  v66 = v17;
  v65 = v9;
  v68 = v27;
  v67 = v14;
  v70 = v23;
  if (!*(v28 + 16))
  {

    return MEMORY[0x277D84F90];
  }

  v30 = *(v28 + 32);

  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n(0x6E6F697461727564, 0xE800000000000000, v31);
  v33 = v32;

  v34 = v69;
  __RKEntityMoveSelection.init(inputs:)(v69);
  v35 = v70;
  v36 = v22;
  (*(v70 + 56))(v34, 0, 1, v22);
  (*(v35 + 32))(v68, v34, v22);

  v37 = v13;
  __RKEntityMoveEase.init(inputs:)(v13);
  v69 = v30;
  v38 = v78;
  v39 = v67;
  (*(v78 + 56))(v37, 0, 1, v67);
  v40 = v66;
  (*(v38 + 32))(v66, v37, v39);

  v41 = v75;
  __RKEntityMoveEaseType.init(inputs:)(v75);
  v42 = v76;
  v43 = v77;
  (*(v76 + 56))(v41, 0, 1, v77);
  v44 = v65;
  (*(v42 + 32))(v65, v41, v43);
  result = RIOBuilderInputsCopyStage();
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v45 = result;
  v46 = v69;
  HasPrimAtPrimPath = RIOPxrUsdStageHasPrimAtPrimPath();

  if (!HasPrimAtPrimPath)
  {

    (*(v42 + 8))(v44, v77);
    (*(v38 + 8))(v40, v39);
    (*(v70 + 8))(v68, v36);
    return MEMORY[0x277D84F90];
  }

  result = RIOBuilderInputsCopyStage();
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v48 = result;
  if (String.count.getter() < 1)
  {
    v49 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v49 = RIOPxrTfTokenCreateWithCString();
  }

  v50 = v49;
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  inited = swift_initStackObject();
  *(inited + 16) = PrimIfNeeded;
  type metadata accessor for XformPrim(0);
  v53 = swift_initStackObject();
  v53[7] = &type metadata for Schema;
  v53[8] = &protocol witness table for Schema;
  v53[2] = inited;
  v53[3] = inited;

  specialized UsdGeomXformable.localTransformation(at:)(&v80);
  v54 = v66;
  v55 = Transform.init(matrix:)();
  v79 = MEMORY[0x277D84F90];
  *&v57 = MEMORY[0x28223BE20](v55, v56);
  *(&v65 - 12) = v71;
  *(&v65 - 11) = &v79;
  *(&v65 - 5) = v57;
  *(&v65 - 4) = v58;
  *(&v65 - 3) = v59;
  *(&v65 - 4) = v33;
  *(&v65 - 3) = v68;
  *(&v65 - 2) = v54;
  *(&v65 - 1) = v44;
  specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static ActionBuilder.generateTransformActionSpecifications(inputs:), (&v65 - 14));
  v60 = v79;
  if (*(v79 + 16) >= 2uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v75 = type metadata accessor for __RKEntityActionSpecification();
    v61 = *(v75 - 8);
    v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_2619891C0;
    (*(v73 + 104))(v72, *MEMORY[0x277CDAEF8], v74);

    __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
    v44 = v65;
    v42 = v76;
    (*(v61 + 104))(v60 + v62, *MEMORY[0x277CDAFA0], v75);
    v54 = v66;
  }

  v63 = v70;
  v64 = v77;

  (*(v42 + 8))(v44, v64);
  (*(v38 + 8))(v54, v39);
  (*(v63 + 8))(v68, v36);
  return v60;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t SceneDescriptionFoundations.PrimSpec.description.getter()
{
  _StringGuts.grow(_:)(22);

  v0 = RIOPxrSdfPrimSpecCopyLayer();
  v1 = RIOPxrSdfLayerCopyIdentifier();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x26670F080](v2, v4);

  return 0xD000000000000014;
}

uint64_t SceneDescriptionFoundations.PrimSpec.debugDescription.getter()
{
  _StringGuts.grow(_:)(22);

  v0 = RIOPxrSdfPrimSpecCopyLayer();
  v1 = RIOPxrSdfLayerCopyIdentifier();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x26670F080](v2, v4);

  MEMORY[0x26670F080](0xD000000000000014, 0x8000000261997610);

  MEMORY[0x26670F080](62, 0xE100000000000000);
  return 0x6570536D6972503CLL;
}

uint64_t SceneDescriptionFoundations.PrimSpec.layer()()
{
  v0 = RIOPxrSdfPrimSpecCopyLayer();
  type metadata accessor for SceneDescriptionFoundations.Layer();
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

uint64_t SceneDescriptionFoundations.PrimSpec.path()@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfPrimSpecCopyPath();
  *a1 = result;
  return result;
}

uint64_t SceneDescriptionFoundations.PrimSpec.attribute(at:)@<X0>(uint64_t *a2@<X8>)
{
  result = RIOPxrSdfPrimSpecCopyAttribute();
  *a2 = result;
  return result;
}

uint64_t static SdrRegistry.nodeNames.getter()
{
  v0 = RIOPxrSdrRegistryCopyNodeNames();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  return MEMORY[0x277D84F90];
}

uint64_t static SdrRegistry.shaderNodeByName(name:)(uint64_t a1, uint64_t a2)
{
  String.utf8CString.getter();
  v2 = RIOPxrSdrRegistryGetShaderNodeByName();

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for SdrShaderNode();
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t SdrShaderNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SdrShaderNode.inputNames.getter(uint64_t (*a1)(void))
{
  v2 = a1(*(v1 + 16));
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  return MEMORY[0x277D84F90];
}

uint64_t SdrShaderProperty.__allocating_init(base:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SdrShaderNode.shaderInput<A>(withName:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  v6 = *a1;
  type metadata accessor for SdrShaderProperty(0, a2, a3, a4);
  v7 = a4(*(v4 + 16), v6);
  result = swift_allocObject();
  *(result + 16) = v7;
  return result;
}

uint64_t SdrShaderNode.family.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdrShaderNodeCopyFamily();
  *a1 = result;
  return result;
}

uint64_t SdrShaderProperty.name.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdrShaderPropertyCopyName();
  *a1 = result;
  return result;
}

uint64_t SdrShaderProperty.type.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdrShaderPropertyCopyType();
  *a1 = result;
  return result;
}

void SdrShaderProperty.defaultValue.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = RIOPxrSdrShaderPropertyCopyDefaultValue();
  RIOPxrVtValueRef.mapUSDValue<A>()(*(v3 + 80), a1);
}

uint64_t SdrShaderNode.name.getter(uint64_t (*a1)(void))
{
  v2 = a1(*(v1 + 16));
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t __RKEntityGroupActionOrder.init(inputs:)@<X0>(uint64_t a2@<X8>)
{
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(&v16);
  if (v3)
  {

LABEL_3:
    lazy protocol witness table accessor for type __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError and conformance __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError();
    swift_allocError();
    swift_willThrow();
  }

  v6 = v16;
  v7 = RIOPxrTfTokenCopyString();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  v12 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityGroupActionOrderUSD.init(rawValue:), v11);

  if (v12)
  {
    if (v12 != 1)
    {
      goto LABEL_3;
    }

    v13 = MEMORY[0x277CDAEF8];
  }

  else
  {

    v13 = MEMORY[0x277CDAF00];
  }

  v14 = *v13;
  v15 = type metadata accessor for __RKEntityGroupActionOrder();
  return (*(*(v15 - 8) + 104))(a2, v14, v15);
}

unint64_t lazy protocol witness table accessor for type __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError and conformance __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError and conformance __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError and conformance __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError and conformance __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError and conformance __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError and conformance __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError and conformance __RKEntityGroupActionOrder.EmphasisAnimationTypeLoadingError);
  }

  return result;
}

void specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for RIOPxrSdfPathRef(0);
    lazy protocol witness table accessor for type RIOImportSessionRef and conformance RIOImportSessionRef(&lazy protocol witness table cache variable for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef, type metadata accessor for RIOPxrSdfPathRef, &protocol conformance descriptor for RIOPxrSdfPathRef);
    Set.Iterator.init(_cocoa:)();
    v2 = v17;
    v3 = v18;
    v5 = v19;
    v4 = v20;
    v6 = v21;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v4 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v6;
    v12 = v4;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      outlined consume of Set<PropertyDirtyState>.Iterator._Variant(v2);
      return;
    }

    while (1)
    {
      v15 = v14;
      specialized Set._Variant.insert(_:)(&v22, v15);
      v16 = v22;

      v4 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for RIOPxrSdfPathRef(0);
        swift_dynamicCast();
        v14 = v22;
        v12 = v4;
        v13 = v6;
        if (v22)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t InputDescriptor.convertToCore()()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(v0 + 48) >> 4;
  if (v5 <= 3)
  {
    if (*(v0 + 48) >> 4 <= 1u)
    {
      if (v5)
      {
        v6 = MEMORY[0x26670EFB0](v1, v2);
        if (String.count.getter() <= 0)
        {
          v7 = RIOPxrTfTokenEmpty();
        }

        else
        {
          String.utf8CString.getter();
          v7 = RIOPxrTfTokenCreateWithCString();
        }

        v17 = RIOBuilderParentPrimInputDescriptorCreate();
      }

      else
      {
        v6 = MEMORY[0x26670EFB0](v1, v2);
        if (String.count.getter() <= 0)
        {
          v7 = RIOPxrTfTokenEmpty();
        }

        else
        {
          String.utf8CString.getter();
          v7 = RIOPxrTfTokenCreateWithCString();
        }

        v17 = RIOBuilderCurrentPrimInputDescriptorCreate();
      }

      goto LABEL_39;
    }

    if (v5 == 2)
    {
      v6 = MEMORY[0x26670EFB0](v1, v2);
      if (String.count.getter() <= 0)
      {
        v8 = RIOPxrTfTokenEmpty();
      }

      else
      {
        String.utf8CString.getter();
        v8 = RIOPxrTfTokenCreateWithCString();
      }

      v15 = v4;
      v16 = RIOBuilderChildPrimInputDescriptorCreate();
    }

    else
    {
      v6 = MEMORY[0x26670EFB0](v1, v2);
      if (String.count.getter() <= 0)
      {
        v8 = RIOPxrTfTokenEmpty();
      }

      else
      {
        String.utf8CString.getter();
        v8 = RIOPxrTfTokenCreateWithCString();
      }

      v15 = v4;
      v16 = RIOBuilderDescendantPrimInputDescriptorCreate();
    }

LABEL_49:
    v18 = v16;

    goto LABEL_50;
  }

  if (*(v0 + 48) >> 4 <= 5u)
  {
    if (v5 == 4)
    {
      v6 = MEMORY[0x26670EFB0](v1, v2);
      if (String.count.getter() <= 0)
      {
        v9 = RIOPxrTfTokenEmpty();
      }

      else
      {
        String.utf8CString.getter();
        v9 = RIOPxrTfTokenCreateWithCString();
      }

      v20 = v4[2];
      if (v20)
      {
        v26[0] = MEMORY[0x277D84F90];
        specialized ContiguousArray.reserveCapacity(_:)();
        v21 = v4 + 4;
        do
        {
          v22 = *v21++;
          v23 = v22;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v20;
        }

        while (v20);
      }

      type metadata accessor for RIOPxrTfTokenRef(0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v18 = RIOBuilderDescendantPrimsInputDescriptorCreate();

      goto LABEL_50;
    }

    v6 = MEMORY[0x26670EFB0](v1, v2);
    if (String.count.getter() <= 0)
    {
      v8 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();
      v8 = RIOPxrTfTokenCreateWithCString();
    }

    v15 = v4;
    v16 = RIOBuilderRelatedPrimInputDescriptorCreate();
    goto LABEL_49;
  }

  if (v5 == 6)
  {
    v6 = MEMORY[0x26670EFB0](v1, v2);
    if (String.count.getter() <= 0)
    {
      v8 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();
      v8 = RIOPxrTfTokenCreateWithCString();
    }

    v15 = v4;
    v16 = RIOBuilderStaticPrimInputDescriptorCreate();
    goto LABEL_49;
  }

  if (v5 == 7)
  {
    v6 = MEMORY[0x26670EFB0](v1, v2);
    if (String.count.getter() <= 0)
    {
      v7 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();
      v7 = RIOPxrTfTokenCreateWithCString();
    }

    v17 = RIOBuilderEntityGeneratingPrimDescriptorCreate();
LABEL_39:
    v18 = v17;

LABEL_50:
    return v18;
  }

  v10 = *v0;
  v11 = v2;
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = v3;

  v13 = MEMORY[0x26670EFB0](v10, v11);
  if (String.count.getter() <= 0)
  {
    v14 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();
    v14 = RIOPxrTfTokenCreateWithCString();
  }

  v26[4] = partial apply for closure #1 in InputDescriptor.convertToCore();
  v26[5] = v12;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 1107296256;
  v26[2] = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdStageRef, @guaranteed RIOPxrSdfPathRef) -> (@unowned Unmanaged<CFSetRef>);
  v26[3] = &block_descriptor_18;
  v19 = _Block_copy(v26);

  v18 = RIOBuilderCustomCallbackInputDescriptorCreate();

  _Block_release(v19);

  return v18;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
    do
    {
      v9 = *v3;
      v5 = *v4++;
      v6 = *v3;
      v7 = v5;
      v8 = dispatch thunk of static Equatable.== infix(_:_:)();

      if ((v8 & 1) == 0)
      {
        break;
      }

      ++v3;
      --v2;
    }

    while (v2);
  }
}

uint64_t InputDescriptor.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = v6 >> 4;
  if (v6 >> 4 <= 3)
  {
    if (v6 >> 4 <= 1)
    {
      if (v7)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_26198AB70;
        v9 = 0x7250746E65726170;
        v10 = 0xEA00000000006D69;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_26198AB70;
        v9 = 0x50746E6572727563;
        v10 = 0xEB000000006D6972;
      }

      v17 = v9;
      v18 = v10;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (v6 >> 4 <= 5)
  {
    if (v7 == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_261990420;

      AnyHashable.init<A>(_:)();
      AnyHashable.init<A>(_:)();
      v18 = v2;
      AnyHashable.init<A>(_:)();
      v17 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO16ToolsFoundationsO5TokenVGMd, &_sSay9RealityIO16ToolsFoundationsO5TokenVGMR);
      lazy protocol witness table accessor for type [ToolsFoundations.Token] and conformance <A> [A]();
      goto LABEL_19;
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_261990420;

    AnyHashable.init<A>(_:)();
    AnyHashable.init<A>(_:)();
    v18 = v2;
    AnyHashable.init<A>(_:)();
    v17 = v4;
    lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
    v13 = v4;
    goto LABEL_19;
  }

  if (v7 != 6)
  {
    if (v7 != 7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_26198AB70;

      AnyHashable.init<A>(_:)();
      AnyHashable.init<A>(_:)();
      v17 = v3;
      v18 = v2;
      AnyHashable.init<A>(_:)();
      v12 = v6 & 1;
      goto LABEL_17;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26198AB70;
    v17 = 0xD000000000000014;
    v18 = 0x80000002619976A0;
LABEL_15:

    AnyHashable.init<A>(_:)();
    AnyHashable.init<A>(_:)();
    v17 = v3;
    v18 = v2;
    AnyHashable.init<A>(_:)();
    v12 = v4 & 1;
LABEL_17:
    LOBYTE(v17) = v12;
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_261990420;

  AnyHashable.init<A>(_:)();
  AnyHashable.init<A>(_:)();
  v18 = v2;
  AnyHashable.init<A>(_:)();
  v17 = v4;
  lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path();
  v11 = v4;
LABEL_19:
  AnyHashable.init<A>(_:)();
  LOBYTE(v17) = v5 & 1;
LABEL_20:
  AnyHashable.init<A>(_:)();
  v14 = *(v8 + 16);
  if (v14)
  {
    v15 = v8 + 32;
    do
    {
      outlined init with copy of AnyHashable(v15, &v17);
      AnyHashable.hash(into:)();
      outlined destroy of AnyHashable(&v17);
      v15 += 40;
      --v14;
    }

    while (v14);
  }
}

Swift::Int InputDescriptor.hashValue.getter()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  Hasher.init(_seed:)();
  InputDescriptor.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InputDescriptor()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  Hasher.init(_seed:)();
  InputDescriptor.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InputDescriptor()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  Hasher.init(_seed:)();
  InputDescriptor.hash(into:)(v4);
  return Hasher._finalize()();
}

void ImportSession.hash(into:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v3 = *(v1 + v2);
  type metadata accessor for RIOImportSessionRef(0);
  lazy protocol witness table accessor for type RIOImportSessionRef and conformance RIOImportSessionRef(&lazy protocol witness table cache variable for type RIOImportSessionRef and conformance RIOImportSessionRef, type metadata accessor for RIOImportSessionRef, &protocol conformance descriptor for RIOImportSessionRef);
  v4 = v3;
  _CFObject.hash(into:)();
}

Swift::Int ImportSession.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v2 = *(v0 + v1);
  type metadata accessor for RIOImportSessionRef(0);
  lazy protocol witness table accessor for type RIOImportSessionRef and conformance RIOImportSessionRef(&lazy protocol witness table cache variable for type RIOImportSessionRef and conformance RIOImportSessionRef, type metadata accessor for RIOImportSessionRef, &protocol conformance descriptor for RIOImportSessionRef);
  v3 = v2;
  _CFObject.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ImportSession()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v3 = *(v1 + v2);
  type metadata accessor for RIOImportSessionRef(0);
  lazy protocol witness table accessor for type RIOImportSessionRef and conformance RIOImportSessionRef(&lazy protocol witness table cache variable for type RIOImportSessionRef and conformance RIOImportSessionRef, type metadata accessor for RIOImportSessionRef, &protocol conformance descriptor for RIOImportSessionRef);
  v4 = v3;
  _CFObject.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ImportSession(uint64_t a1)
{
  v2 = *v1;
  v3 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v4 = *(v2 + v3);
  type metadata accessor for RIOImportSessionRef(0);
  lazy protocol witness table accessor for type RIOImportSessionRef and conformance RIOImportSessionRef(&lazy protocol witness table cache variable for type RIOImportSessionRef and conformance RIOImportSessionRef, type metadata accessor for RIOImportSessionRef, &protocol conformance descriptor for RIOImportSessionRef);
  v5 = v4;
  _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ImportSession()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v3 = *(v1 + v2);
  type metadata accessor for RIOImportSessionRef(0);
  lazy protocol witness table accessor for type RIOImportSessionRef and conformance RIOImportSessionRef(&lazy protocol witness table cache variable for type RIOImportSessionRef and conformance RIOImportSessionRef, type metadata accessor for RIOImportSessionRef, &protocol conformance descriptor for RIOImportSessionRef);
  v4 = v3;
  _CFObject.hash(into:)();

  return Hasher._finalize()();
}

Class closure #1 in InputDescriptor.convertToCore()(void *a1, void *a2, uint64_t (*a3)(uint64_t, id *))
{
  type metadata accessor for Stage();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v13 = a2;
  v7 = a1;
  v8 = a2;
  v9 = a3(v6, &v13);

  IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v9);

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo16RIOPxrSdfPathRefa_SayAEGTt0g5Tf4g_n(IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n);

  type metadata accessor for RIOPxrSdfPathRef(0);
  lazy protocol witness table accessor for type RIOImportSessionRef and conformance RIOImportSessionRef(&lazy protocol witness table cache variable for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef, type metadata accessor for RIOPxrSdfPathRef, &protocol conformance descriptor for RIOPxrSdfPathRef);
  isa = Set._bridgeToObjectiveC()().super.isa;

  return isa;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdStageRef, @guaranteed RIOPxrSdfPathRef) -> (@unowned Unmanaged<CFSetRef>)(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  v8 = v5(v6, v7);

  return v8;
}

uint64_t static InputDescriptor.create(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = RIOBuilderInputDescriptorCopyType();
  v5 = v4;
  v6 = 0;
  countAndFlagsBits = 0;
  object = 0xE000000000000000;
  v9 = 1;
  if (v4 <= 3)
  {
    if (v4 == 1)
    {
      v31 = RIOBuilderCurrentPrimInputDescriptorCopyInputName();
      v32 = String.init(_:)(v31);
      countAndFlagsBits = v32._countAndFlagsBits;
      object = v32._object;
      v33 = MEMORY[0x2667105C0](a1);
      v34 = RIOPxrTfTokenCopyString();
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v35;

      v36 = RIOBuilderCurrentPrimInputDescriptorCopyOptionality();
      result = 0;
      v6 = 0;
      v9 = v36 == 0;
    }

    else if (v4 == 2)
    {
      v48 = RIOBuilderParentPrimInputDescriptorCopyInputName();
      v49 = String.init(_:)(v48);
      countAndFlagsBits = v49._countAndFlagsBits;
      object = v49._object;
      v50 = MEMORY[0x2667108E0](a1);
      v51 = RIOPxrTfTokenCopyString();
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v52;

      v53 = RIOBuilderParentPrimInputDescriptorCopyOptionality();
      result = 0;
      v9 = v53 == 0;
      v6 = 16;
    }

    else
    {
      v10 = 0;
      v11 = 0xE000000000000000;
      result = 0;
      if (v5 == 3)
      {
        v18 = RIOBuilderChildPrimInputDescriptorCopyInputName();
        v19 = String.init(_:)(v18);
        countAndFlagsBits = v19._countAndFlagsBits;
        object = v19._object;
        v20 = MEMORY[0x266710500](a1);
        v21 = RIOPxrTfTokenCopyString();
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v22;

        v9 = RIOBuilderChildPrimInputDescriptorCopyChildPrimType();
        result = RIOBuilderChildPrimInputDescriptorCopyOptionality() == 0;
        v6 = 32;
      }
    }
  }

  else if (v4 > 5)
  {
    if (v4 == 6)
    {
      v42 = RIOBuilderEntityGeneratingPrimInputDescriptorCopyInputName();
      v43 = String.init(_:)(v42);
      countAndFlagsBits = v43._countAndFlagsBits;
      object = v43._object;
      v44 = MEMORY[0x266710750](a1);
      v45 = RIOPxrTfTokenCopyString();
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v46;

      v47 = RIOBuilderEntityGeneratingPrimInputDescriptorCopyOptionality();
      result = 0;
      v9 = v47 == 0;
      v6 = 112;
    }

    else
    {
      v10 = 0;
      v11 = 0xE000000000000000;
      result = 0;
      if (v5 == 7)
      {
        v23 = RIOBuilderCustomCallbackInputDescriptorCopyInputName();
        v24 = String.init(_:)(v23);
        countAndFlagsBits = v24._countAndFlagsBits;
        object = v24._object;
        v25 = MEMORY[0x266710750](a1);
        v26 = RIOPxrTfTokenCopyString();
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v27;

        v28 = RIOBuilderEntityGeneratingPrimInputDescriptorCopyOptionality();
        v29 = RIOBuilderCustomCallbackInputDescriptorCopyCallbackFunction();
        v30 = swift_allocObject();
        *(v30 + 16) = v29;
        result = swift_allocObject();
        *(result + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned RIOPxrUsdStageRef, @unowned RIOPxrSdfPathRef) -> (@unowned Unmanaged<CFSetRef>);
        *(result + 24) = v30;
        if (v28)
        {
          v6 = 0x80;
        }

        else
        {
          v6 = -127;
        }

        v9 = partial apply for closure #1 in static InputDescriptor.create(from:);
      }
    }
  }

  else if (v4 == 4)
  {
    v37 = RIOBuilderRelatedPrimInputDescriptorCopyInputName();
    v38 = String.init(_:)(v37);
    countAndFlagsBits = v38._countAndFlagsBits;
    object = v38._object;
    v39 = MEMORY[0x266710960](a1);
    v40 = RIOPxrTfTokenCopyString();
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v41;

    v9 = RIOBuilderRelatedPrimInputDescriptorCopyPropertyNameOnCurrentPrimWithRelationship();
    result = RIOBuilderRelatedPrimInputDescriptorCopyOptionality() == 0;
    v6 = 80;
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
    result = 0;
    if (v5 == 5)
    {
      v13 = RIOBuilderStaticPrimInputDescriptorCopyInputName();
      v14 = String.init(_:)(v13);
      countAndFlagsBits = v14._countAndFlagsBits;
      object = v14._object;
      v15 = MEMORY[0x2667109E0](a1);
      v16 = RIOPxrTfTokenCopyString();
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v17;

      v9 = RIOBuilderStaticPrimInputDescriptorCopyPrimPath();
      result = RIOBuilderStaticPrimInputDescriptorCopyOptionality() == 0;
      v6 = 96;
    }
  }

  *a2 = countAndFlagsBits;
  *(a2 + 8) = object;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v9;
  *(a2 + 40) = result;
  *(a2 + 48) = v6;
  return result;
}

uint64_t closure #1 in static InputDescriptor.create(from:)(uint64_t a1, void *a2, uint64_t (*a3)(void, void))
{
  v3 = a3(*(a1 + 16), *a2);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOPxrSdfPathRef(0);
    lazy protocol witness table accessor for type RIOImportSessionRef and conformance RIOImportSessionRef(&lazy protocol witness table cache variable for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef, type metadata accessor for RIOPxrSdfPathRef, &protocol conformance descriptor for RIOPxrSdfPathRef);
    static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  return MEMORY[0x277D84FA0];
}

uint64_t specialized static InputDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v65[0] = *a1;
  v65[1] = v2;
  v65[2] = v5;
  v65[3] = v4;
  v63 = v6;
  v64 = v7;
  v65[4] = v6;
  v65[5] = v7;
  v66 = v8;
  v67 = v10;
  v68 = v9;
  v69 = v12;
  v70 = v11;
  v71 = v13;
  v72 = v14;
  v16 = v8 >> 4;
  v73 = v15;
  if (v8 >> 4 <= 3)
  {
    if (v8 >> 4 <= 1)
    {
      if (v16)
      {
        if ((v15 & 0xF0) != 0x10)
        {
          goto LABEL_57;
        }
      }

      else if (v15 >= 0x10)
      {
        goto LABEL_57;
      }

      goto LABEL_32;
    }

    if (v16 == 2)
    {
      if ((v15 & 0xF0) != 0x20)
      {
        goto LABEL_57;
      }
    }

    else if ((v15 & 0xF0) != 0x30)
    {
      goto LABEL_57;
    }

LABEL_48:
    v51 = v13;
    v58 = v14;
    if (v3 == v10 && v2 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v5 == v12 && v4 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
    {
      type metadata accessor for RIOPxrTfTokenRef(0);
      v37 = v9;
      v27 = v51;
      outlined copy of InputDescriptor(v10, v37, v12, v11, v51, v58, v15);
      v28 = v63;
      v29 = v64;
      outlined copy of InputDescriptor(v3, v2, v5, v4, v63, v64, v8);
      v30 = &lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef;
      v31 = type metadata accessor for RIOPxrTfTokenRef;
      v32 = &protocol conformance descriptor for RIOPxrTfTokenRef;
      goto LABEL_55;
    }

LABEL_61:
    v41 = v10;
    v42 = v9;
    v43 = v12;
    v44 = v11;
    v13 = v51;
    v14 = v58;
    goto LABEL_58;
  }

  if (v8 >> 4 > 5)
  {
    if (v16 != 6)
    {
      if (v16 != 7)
      {
        if ((v15 & 0xF0) == 0x80)
        {
          if (v3 == v10 && v2 == v9 || (v53 = v13, v60 = v14, v36 = _stringCompareWithSmolCheck(_:_:expecting:)(), v13 = v53, v14 = v60, (v36 & 1) != 0))
          {
            if (v5 == v12 && v4 == v11)
            {
              outlined copy of InputDescriptor(v10, v9, v5, v4, v13, v14, v15);
              outlined copy of InputDescriptor(v3, v2, v5, v4, v63, v64, v8);
              outlined destroy of (InputDescriptor, InputDescriptor)(v65);
            }

            else
            {
              v55 = v13;
              v62 = v14;
              v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
              outlined copy of InputDescriptor(v10, v9, v12, v11, v55, v62, v15);
              outlined copy of InputDescriptor(v3, v2, v5, v4, v63, v64, v8);
              outlined destroy of (InputDescriptor, InputDescriptor)(v65);
              if ((v48 & 1) == 0)
              {
                goto LABEL_59;
              }
            }

            v40 = v15 ^ v8 ^ 1;
            return v40 & 1;
          }
        }

        goto LABEL_57;
      }

      if ((v15 & 0xF0) != 0x70)
      {
LABEL_57:
        v41 = v10;
        v42 = v9;
        v43 = v12;
        v44 = v11;
LABEL_58:
        outlined copy of InputDescriptor(v41, v42, v43, v44, v13, v14, v15);
        outlined copy of InputDescriptor(v3, v2, v5, v4, v63, v64, v8);
        outlined destroy of (InputDescriptor, InputDescriptor)(v65);
LABEL_59:
        v40 = 0;
        return v40 & 1;
      }

LABEL_32:
      if (v3 == v10 && v2 == v9 || (v52 = v13, v59 = v14, v33 = _stringCompareWithSmolCheck(_:_:expecting:)(), v13 = v52, v14 = v59, (v33 & 1) != 0))
      {
        if (v5 == v12 && v4 == v11)
        {
          v34 = v13;
          outlined copy of InputDescriptor(v10, v9, v5, v4, v13, v14, v15);
          v35 = v63;
          outlined copy of InputDescriptor(v3, v2, v5, v4, v63, v64, v8);
          outlined destroy of (InputDescriptor, InputDescriptor)(v65);
        }

        else
        {
          v54 = v13;
          v61 = v14;
          v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v46 = v12;
          v34 = v54;
          outlined copy of InputDescriptor(v10, v9, v46, v11, v54, v61, v15);
          v35 = v63;
          outlined copy of InputDescriptor(v3, v2, v5, v4, v63, v64, v8);
          outlined destroy of (InputDescriptor, InputDescriptor)(v65);
          if ((v47 & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        v40 = v34 ^ v35 ^ 1;
        return v40 & 1;
      }

      goto LABEL_57;
    }

    if ((v15 & 0xF0) != 0x60)
    {
      goto LABEL_57;
    }

    v51 = v13;
    v58 = v14;
    if (v3 == v10 && v2 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v5 == v12 && v4 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
    {
      type metadata accessor for RIOPxrSdfPathRef(0);
      v26 = v9;
      v27 = v51;
      outlined copy of InputDescriptor(v10, v26, v12, v11, v51, v58, v15);
      v28 = v63;
      v29 = v64;
      outlined copy of InputDescriptor(v3, v2, v5, v4, v63, v64, v8);
      v30 = &lazy protocol witness table cache variable for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef;
      v31 = type metadata accessor for RIOPxrSdfPathRef;
      v32 = &protocol conformance descriptor for RIOPxrSdfPathRef;
LABEL_55:
      lazy protocol witness table accessor for type RIOImportSessionRef and conformance RIOImportSessionRef(v30, v31, v32);
      v38 = v28;
      v39 = v27;
      v24 = static _CFObject.== infix(_:_:)();
      outlined destroy of (InputDescriptor, InputDescriptor)(v65);

      v25 = v58 ^ v29;
      goto LABEL_56;
    }

    goto LABEL_61;
  }

  if (v16 != 4)
  {
    if ((v15 & 0xF0) != 0x50)
    {
      goto LABEL_57;
    }

    goto LABEL_48;
  }

  if ((v15 & 0xF0) != 0x40)
  {
    goto LABEL_57;
  }

  if (v3 != v10 || v2 != v9)
  {
    v49 = v13;
    v56 = v14;
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v13 = v49;
    v14 = v56;
    if ((v17 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  if (v5 != v12 || v4 != v11)
  {
    v50 = v13;
    v57 = v14;
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v13 = v50;
    v14 = v57;
    if ((v18 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  v19 = v10;
  v20 = v9;
  v21 = v13;
  v22 = v14;
  outlined copy of InputDescriptor(v19, v20, v12, v11, v13, v14, v15);
  outlined copy of InputDescriptor(v3, v2, v5, v4, v63, v64, v8);
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v63, v21);
  v24 = v23;
  outlined destroy of (InputDescriptor, InputDescriptor)(v65);
  v25 = v22 ^ v64;
LABEL_56:
  v40 = v24 & (v25 ^ 1);
  return v40 & 1;
}

unint64_t lazy protocol witness table accessor for type [ToolsFoundations.Token] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ToolsFoundations.Token] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ToolsFoundations.Token] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9RealityIO16ToolsFoundationsO5TokenVGMd, &_sSay9RealityIO16ToolsFoundationsO5TokenVGMR);
    lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ToolsFoundations.Token] and conformance <A> [A]);
  }

  return result;
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

uint64_t getEnumTagSinglePayload for InputDescriptor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x78 && *(a1 + 49))
  {
    return (*a1 + 120);
  }

  v3 = ((*(a1 + 48) >> 4) & 0xFFFFFF8F | (16 * ((*(a1 + 48) >> 1) & 7))) ^ 0x7F;
  if (v3 >= 0x77)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for InputDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x77)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 120;
    if (a3 >= 0x78)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x78)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 2 * (((-a2 >> 4) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t outlined destroy of (InputDescriptor, InputDescriptor)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO15InputDescriptorO_ACtMd, &_s9RealityIO15InputDescriptorO_ACtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type RIOImportSessionRef and conformance RIOImportSessionRef(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id one-time initialization function for PreliminaryGravitationalForcePrimTypeName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static PhysicsComponentBuilder.PreliminaryGravitationalForcePrimTypeName = result;
  return result;
}

id one-time initialization function for GravityAccelerationPropertyName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static PhysicsComponentBuilder.GravityAccelerationPropertyName = result;
  return result;
}

id one-time initialization function for GravityDirectionPropertyName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static PhysicsComponentBuilder.GravityDirectionPropertyName = result;
  return result;
}

id one-time initialization function for GravityMagnitudePropertyName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static PhysicsComponentBuilder.GravityMagnitudePropertyName = result;
  return result;
}

uint64_t closure #1 in closure #1 in PhysicsComponentBuilder.stageSubscription.getter()
{
  if (one-time initialization token for GravityDirectionPropertyName != -1)
  {
    swift_once();
  }

  v0 = static PhysicsComponentBuilder.GravityDirectionPropertyName;
  type metadata accessor for NamedPropertyDirtyState();
  v1 = swift_allocObject();
  v1[4] = v0;
  v2 = v0;
  v3 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v1[2] = v3;
  v1[3] = v5;
  v6 = one-time initialization token for GravityMagnitudePropertyName;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static PhysicsComponentBuilder.GravityMagnitudePropertyName;
  v8 = swift_allocObject();
  v8[4] = v7;
  v9 = v7;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v8[2] = v3;
  v8[3] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A9D0;
  *(inited + 32) = v1;
  *(inited + 40) = v8;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v3;
}

uint64_t closure #2 in PhysicsComponentBuilder.stageSubscription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A8E0;
  if (one-time initialization token for PreliminaryGravitationalForcePrimTypeName != -1)
  {
    swift_once();
  }

  v1 = static PhysicsComponentBuilder.PreliminaryGravitationalForcePrimTypeName;
  *(inited + 32) = static PhysicsComponentBuilder.PreliminaryGravitationalForcePrimTypeName;
  v2 = one-time initialization token for GravitationalForcePrimTypeName;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = static PhysicsComponentBuilder.GravitationalForcePrimTypeName;
  *(inited + 40) = static PhysicsComponentBuilder.GravitationalForcePrimTypeName;
  v5 = v4;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v7 = v6;
  swift_setDeallocating();
  swift_arrayDestroy();
  if (one-time initialization token for GravityAccelerationPropertyName != -1)
  {
    swift_once();
  }

  v8 = static PhysicsComponentBuilder.GravityAccelerationPropertyName;
  type metadata accessor for NamedPropertyDirtyState();
  v9 = swift_allocObject();
  v9[4] = v8;
  v10 = v8;
  v11 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v9[2] = v11;
  v9[3] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_26198A640;
  *(v14 + 32) = v9;

  specialized Sequence.forEach(_:)(v14);

  swift_setDeallocating();
  swift_arrayDestroy();
  type metadata accessor for TypeNamePrimDirtyState();
  v15 = swift_allocObject();
  v15[5] = v7;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v16);
  type metadata accessor for RIOPxrTfTokenRef(0);
  v17 = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_n(v11);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v18 = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v11);
  v19 = Array._bridgeToObjectiveC()().super.isa;

  v20 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v15[2] = v11;
  v15[3] = v11;
  v15[4] = v20;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_26198A640;
  *(v21 + 32) = v15;

  specialized Sequence.forEach(_:)(v21);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v11;
}

void PhysicsComponentBuilder.run(inputs:)()
{
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(&v13, static EntityBuilder.OutputName, *(&static EntityBuilder.OutputName + 1));
  if (!v15)
  {
    outlined destroy of Any?(&v13);
    return;
  }

  type metadata accessor for EntityProxy(0);
  if (swift_dynamicCast())
  {
    if (EntityProxy.parent.getter())
    {
      Inputs.prim.getter();
      if (one-time initialization token for GravityAccelerationPropertyName != -1)
      {
        swift_once();
      }

      _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySdG_Tt1B5(&v7);

      if (v9)
      {
        Inputs.prim.getter();
        if (one-time initialization token for GravityDirectionPropertyName != -1)
        {
          swift_once();
        }

        _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySdG_Tt1B5(&v10);

        if ((v12 & 1) == 0)
        {
          v2 = v11;
          v3 = v10;
          Inputs.prim.getter();
          if (one-time initialization token for GravityMagnitudePropertyName != -1)
          {
            swift_once();
          }

          _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySdG_Tt1B5(&v13);

          if ((v16 & 1) == 0)
          {
            if (EntityProxy.setGravity(_:)(vmulq_f64(v3, v13), v14 * v2))
            {
              swift_beginAccess();
              v1 = objc_getAssociatedObject(v0, &static BuilderAssociatedKeys.CoreReference);
              swift_endAccess();
              if (v1)
              {
                _bridgeAnyObjectToAny(_:)();
                swift_unknownObjectRelease();
                outlined init with take of Any(&v5, &v6);
                type metadata accessor for RIOBuilderRef(0);
                swift_dynamicCast();
                RIOBuilderAddComponent();
              }

              else
              {
                __break(1u);
              }

              return;
            }
          }
        }
      }

      else
      {
        EntityProxy.setGravity(_:)(v7, *&v8);
      }
    }
  }
}

uint64_t EntityProxy.setGravity(_:)(float64x2_t a1, double a2)
{
  if (!static __RKScenePhysics.registration.getter())
  {
    return 0;
  }

  __RKScenePhysics.Registration.componentType.getter();

  __AssetRef.__as<A>(_:)();
  v2 = REEntityGetOrAddComponentByClass();
  if (RECustomComponentGetObject())
  {
    __RKScenePhysics.gravity.setter();
  }

  return v2;
}

uint64_t closure #1 in PhysicsComponentBuilder.clear(inputs:)()
{
  result = static __RKScenePhysics.registration.getter();
  if (result)
  {
    __RKScenePhysics.Registration.componentType.getter();

    __AssetRef.__as<A>(_:)();
    return REEntityRemoveComponentByClass();
  }

  return result;
}

uint64_t specialized PhysicsComponentBuilder.stageSubscription.getter()
{
  if (one-time initialization token for GravityPrimTypeName != -1)
  {
    swift_once();
  }

  v0 = static PhysicsComponentBuilder.GravityPrimTypeName;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v0;
  v2 = v0;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v4 = v3;
  swift_setDeallocating();
  outlined destroy of ToolsFoundations.Token(inited + 32);
  v5 = closure #1 in closure #1 in PhysicsComponentBuilder.stageSubscription.getter();
  type metadata accessor for TypeNamePrimDirtyState();
  v6 = swift_allocObject();
  v6[5] = v4;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v7);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_n(v5);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  v10 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v6[2] = v10;
  v6[3] = v5;
  v6[4] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_26198A640;
  *(v13 + 32) = v6;

  specialized Sequence.forEach(_:)(v13);

  swift_setDeallocating();
  swift_arrayDestroy();
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v14 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v10, v10, 0);

  v15 = closure #2 in PhysicsComponentBuilder.stageSubscription.getter();
  swift_allocObject();
  v16 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v10, v15, 0);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_26198A9D0;
  *(v17 + 32) = v14;
  *(v17 + 40) = v16;

  specialized Sequence.forEach(_:)(v17);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v10;
}

uint64_t specialized PhysicsComponentBuilder.inputDescriptors()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198AB50;
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v1 = static EntityBuilder.OutputName;
  v2 = one-time initialization token for OutputIdentifier;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = static EntityBuilder.OutputIdentifier;
  v3 = *algn_27FEC8E68;
  *(inited + 32) = v1;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 64) = xmmword_26198A8F0;
  *(inited + 80) = 0;
  *(inited + 88) = 0xD00000000000001ALL;
  *(inited + 96) = 0x8000000261994F30;
  *(inited + 104) = 0xD00000000000001ALL;
  *(inited + 112) = 0x8000000261994F30;
  *(inited + 120) = 0;
  *(inited + 128) = 0;
  *(inited + 136) = 0;
  *(inited + 144) = 0xD00000000000001ALL;
  *(inited + 152) = 0x8000000261994F30;
  *(inited + 160) = 0xD00000000000001ALL;
  *(inited + 168) = 0x8000000261994F30;
  *(inited + 176) = 0;
  *(inited + 184) = 0;
  *(inited + 192) = 16;

  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO15InputDescriptorO_Tt0g5Tf4g_n(inited);
  v6 = v5;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v6;
}

void specialized PhysicsComponentBuilder.clear(inputs:)(uint64_t a1)
{
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(&aBlock, static EntityBuilder.OutputName, *(&static EntityBuilder.OutputName + 1));
  if (!v8)
  {
LABEL_8:
    outlined destroy of Any?(&aBlock);
    return;
  }

  type metadata accessor for EntityProxy(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v1 = EntityProxy.parent.getter();
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = partial apply for closure #1 in PhysicsComponentBuilder.clear(inputs:);
    *(v3 + 24) = v2;
    v9 = partial apply for thunk for @callee_guaranteed () -> ();
    v10 = v3;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v7 = thunk for @escaping @callee_guaranteed () -> ();
    v8 = &block_descriptor_19;
    v4 = _Block_copy(&aBlock);

    RIOBuilderInputsPerformBlockSyncOnEngineQueue();

    _Block_release(v4);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_8;
  }
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t closure #1 in static ActionBuilder.generateLookAtCameraActionSpecifications(inputs:)(double a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v24[0] = a2;
  v24[1] = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for __RKEntityActionSpecification();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a5, v8, v16);
  __RKEntityLookAtCameraActionArguments.init(target:duration:animationDuration:direction:rotation:upVector:loops:)();
  (*(v14 + 104))(v18, *MEMORY[0x277CDAF58], v13);
  v19 = *a6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
    *a6 = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
    *a6 = v19;
  }

  v19[2] = v22 + 1;
  return (*(v14 + 32))(v19 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v22, v18, v13);
}

uint64_t specialized static ActionBuilder.generateLookAtCameraActionSpecifications(inputs:)()
{
  v0 = type metadata accessor for __RKEntityGroupActionOrder();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n(0x6E6F697461727564, 0xE800000000000000, v3);
  v7 = v6;
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA7Vector3VySdG_Tt1g5(&v19);
  v18[0] = v19;
  v18[1] = v20[0];
  v8 = _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA7Vector3VySdG_Tt1g5(&v19);
  v9.n128_u64[0] = vcvt_f32_f64(v19);
  *&v10 = *v20;
  v9.n128_u64[1] = v10;
  *&v19.f64[0] = MEMORY[0x277D84F90];
  *&v11 = MEMORY[0x28223BE20](v8, v9);
  *&v18[-3] = &v19;
  *(&v18[-3] + 1) = v7;
  v18[-2] = v12;
  v18[-1] = v11;
  specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static ActionBuilder.generateLookAtCameraActionSpecifications(inputs:), &v18[-4]);
  result = *&v19.f64[0];
  if (*(*&v19.f64[0] + 16) > 1uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v14 = type metadata accessor for __RKEntityActionSpecification();
    v15 = *(v14 - 8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2619891C0;
    (*(v1 + 104))(v5, *MEMORY[0x277CDAEF8], v0);

    __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
    (*(v15 + 104))(v17 + v16, *MEMORY[0x277CDAFA0], v14);

    return v17;
  }

  return result;
}

uint64_t one-time initialization function for virtualEnvProbeComponent()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.virtualEnvProbeComponent = result;
  return result;
}

uint64_t VirtualEnvironmentProbeComponentBuilder.inputDescriptors()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A8E0;
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v2 = static EntityBuilder.OutputName;
  v3 = one-time initialization token for OutputIdentifier;

  if (v3 != -1)
  {
    swift_once();
  }

  *(inited + 32) = v2;
  v5 = static EntityBuilder.OutputIdentifier;
  v4 = *algn_27FEC8E68;
  *(inited + 40) = *(&v2 + 1);
  *(inited + 48) = v5;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 56) = v4;
  *(inited + 80) = 112;
  v6 = *(v0 + 16);
  *(inited + 88) = xmmword_261990720;
  *(inited + 104) = 0xD000000000000020;
  *(inited + 112) = 0x8000000261994710;
  *(inited + 120) = v6;
  *(inited + 128) = 1;
  *(inited + 136) = 32;

  v7 = v6;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO15InputDescriptorO_Tt0g5Tf4g_n(inited);
  v9 = v8;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v9;
}

uint64_t closure #1 in VirtualEnvironmentProbeComponentBuilder.run(inputs:)(uint64_t a1, uint64_t a2, float a3)
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = Inputs.prim.getter();
  v5 = RIOPxrUsdObjectCopyName();
  v6 = RIOPxrTfTokenCopyString();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (one-time initialization token for infoID != -1)
  {
    swift_once();
  }

  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_45;
  }

  v10 = RIOPxrUsdPrimCopyAttribute();
  v11 = RIOPxrUsdAttributeCopyValue();
  if (!v11)
  {

LABEL_46:
    VirtualEnvironmentProbeComponentBuilder.clear(inputs:)();
  }

  v12 = v11;
  v13 = RIOPxrVtValueCopyToken();

  if (!v13)
  {
    goto LABEL_45;
  }

  v14 = RIOPxrTfTokenCopyString();
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == 0xD000000000000022 && 0x80000002619978B0 == v17)
  {

    goto LABEL_11;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v18 & 1) == 0)
  {
LABEL_45:

    goto LABEL_46;
  }

LABEL_11:
  if (Prim.parent.getter())
  {
    if ((RIOPxrUsdPrimEvaluateEntityOnExport() & 1) == 0)
    {
      if (one-time initialization token for virtualEnvProbeComponent != -1)
      {
        swift_once();
      }

      v81 = static OS_os_log.virtualEnvProbeComponent;
      v79 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_26198A8E0;
      v33 = RIOPxrUsdObjectCopyPath();
      v34 = RIOPxrSdfPathCopyString();
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = MEMORY[0x277D837D0];
      *(v32 + 56) = MEMORY[0x277D837D0];
      v39 = lazy protocol witness table accessor for type String and conformance String();
      *(v32 + 64) = v39;
      *(v32 + 32) = v35;
      *(v32 + 40) = v37;

      *(v32 + 96) = v38;
      *(v32 + 104) = v39;
      *(v32 + 72) = v7;
      *(v32 + 80) = v9;
      os_log(_:dso:log:type:_:)("Prim is not an entity: %{public}s for %{public}s.", 53, 2, &dword_26187B000, v81, v79, v32);
    }
  }

  if (one-time initialization token for OutputName != -1)
  {
    goto LABEL_123;
  }

LABEL_15:
  Inputs.subscript.getter(&v84, static EntityBuilder.OutputName, *(&static EntityBuilder.OutputName + 1));
  if (v85)
  {
    type metadata accessor for EntityProxy(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_55;
    }

    if ((RIOPxrUsdPrimIsActive() & 1) == 0)
    {
      VirtualEnvironmentProbeComponentBuilder.clear(inputs:)();
    }

    __AssetRef.__as<A>(_:)();
    REVirtualEnvironmentProbeComponentGetComponentType();
    v19 = REEntityGetOrAddComponentByClass();
    swift_beginAccess();
    v20 = objc_getAssociatedObject(a2, &static BuilderAssociatedKeys.CoreReference);
    result = swift_endAccess();
    if (!v20)
    {
      __break(1u);
      return result;
    }

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v83, &v84);
    type metadata accessor for RIOBuilderRef(0);
    swift_dynamicCast();
    RIOBuilderAddComponent();

    v22 = VirtualEnvironmentProbeComponentBuilder.getIBLResourcePrims(fromPrim:)(v4);
    v23 = v22;
    v74 = v22 >> 62;
    v77 = v22 & 0xFFFFFFFFFFFFFF8;
    if (v22 >> 62)
    {
      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v78 = v19;
    v80 = v23 & 0xC000000000000001;
    if (!v9)
    {
      v76 = MEMORY[0x277D84F90];
LABEL_60:
      v43 = v78;
      ResourceCount = REVirtualEnvironmentProbeComponentGetResourceCount();
      v45 = *(a2 + 32);
      if (ResourceCount == *(v45 + 16))
      {
        if (v74)
        {
          v46 = __CocoaSet.count.getter();
          v45 = *(a2 + 32);
        }

        else
        {
          v46 = *(v77 + 16);
        }

        if (ResourceCount == v46)
        {
          v47 = v45;

          _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay9RealityIO27SceneDescriptionFoundationsO9AssetPathVGAMG_Sbs5NeverOTg503_s9f4IO27hij2O9kl21VAESbIgnnd_AE_AEtSbs5M130OIegnrzr_TR03_s9a82IO39VirtualEnvironmentProbeComponentBuilderC3run6inputsyAA6InputsC_tFyyXEfU_SbAA27cde2O9fg5V_AKtT3U0_Tf3nnnpf_nTf1cn_n(v48, v47);
          v50 = v49;

          if (!ResourceCount)
          {
            goto LABEL_94;
          }

          if ((ResourceCount - 1) < *(v50 + 16))
          {
            v51 = 0;
            v75 = ResourceCount;
            do
            {
              if (v80)
              {
                MEMORY[0x26670F670](v51, v23);
              }

              else
              {
              }

              if (*(v50 + v51 + 32) == 1)
              {
                v52 = v50;
                if (one-time initialization token for iblPropertyName != -1)
                {
                  swift_once();
                }

                v53 = static VirtualEnvironmentProbeComponentBuilder.iblPropertyName;
                if (RIOPxrUsdPrimHasAttribute())
                {
                  v54 = RIOPxrUsdPrimCopyAttribute();

                  type metadata accessor for AnyAttribute();
                  v55 = swift_allocObject();
                  v55[2] = v54;
                  Inputs.createIBLAsset(on:)(v55);
                  v43 = v78;
                  REVirtualEnvironmentProbeComponentSetResource();
                  outlined consume of Result<AnyAttribute, Object.Error>(v55, 0);
                }

                else
                {

                  *&v84 = 0;
                  lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
                  swift_willThrowTypedImpl();
                  outlined consume of Object.Error(v84);
                  REVirtualEnvironmentProbeComponentSetResource();
                }

                v50 = v52;
                ResourceCount = v75;
              }

              else
              {
              }

              ++v51;
            }

            while (ResourceCount != v51);
LABEL_94:

LABEL_95:
            *(a2 + 32) = v76;

            if (!v74)
            {
              v61 = *(v77 + 16);
              goto LABEL_98;
            }

            v61 = __CocoaSet.count.getter();
            if ((v61 & 0x8000000000000000) == 0)
            {
LABEL_98:
              if (!v61)
              {
LABEL_120:

                MEMORY[0x26670FF10](v43);

                *(a2 + 41) = 1;
                return result;
              }

              v62 = 0;
              v63 = 0.0;
              while (2)
              {
                if (v80)
                {
                  MEMORY[0x26670F670](v62, v23);
                }

                else
                {
                }

                if (one-time initialization token for relativeWeightPropertyName != -1)
                {
                  swift_once();
                }

                v64 = static VirtualEnvironmentProbeComponentBuilder.relativeWeightPropertyName;
                if (RIOPxrUsdPrimHasAttribute())
                {
                  v65 = RIOPxrUsdPrimCopyAttribute();
                  type metadata accessor for AnyAttribute();
                  v66 = swift_allocObject();
                  v66[2] = v65;
                  EmptyValue = RIOPxrUsdAttributeCopyValue();
                  if (!EmptyValue)
                  {
                    EmptyValue = RIOPxrVtValueCreateEmptyValue();
                  }

                  outlined consume of Result<AnyAttribute, Object.Error>(v66, 0);

                  LODWORD(v84) = 0;
                  Float = RIOPxrVtValueGetFloat();

                  v43 = v78;
                  if (Float)
                  {
                    v69 = *&v84;
                    goto LABEL_114;
                  }
                }

                else
                {
                  *&v84 = 0;
                  lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
                  swift_willThrowTypedImpl();
                  outlined consume of Object.Error(v84);
                }

                v69 = 1.0;
LABEL_114:
                v63 = v63 + v69;
                REVirtualEnvironmentProbeComponentSetRelativeWeight();
                if (one-time initialization token for intensityPropertyName != -1)
                {
                  swift_once();
                }

                v70 = static VirtualEnvironmentProbeComponentBuilder.intensityPropertyName;
                if (RIOPxrUsdPrimHasAttribute())
                {
                  v71 = RIOPxrUsdPrimCopyAttribute();
                  type metadata accessor for AnyAttribute();
                  v72 = swift_allocObject();
                  v72[2] = v71;
                  v73 = RIOPxrUsdAttributeCopyValue();
                  if (!v73)
                  {
                    v73 = RIOPxrVtValueCreateEmptyValue();
                  }

                  outlined consume of Result<AnyAttribute, Object.Error>(v72, 0);

                  LODWORD(v84) = 0;
                  RIOPxrVtValueGetFloat();

                  v43 = v78;
                }

                else
                {
                  *&v84 = 0;
                  lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
                  swift_willThrowTypedImpl();
                  outlined consume of Object.Error(v84);
                }

                REVirtualEnvironmentProbeComponentSetIntensityExponent();

                if (v61 == ++v62)
                {
                  goto LABEL_120;
                }

                continue;
              }
            }

            __break(1u);
LABEL_126:
            __break(1u);
          }

          __break(1u);
        }
      }

      *(a2 + 32) = MEMORY[0x277D84F90];

      REVirtualEnvironmentProbeComponentClearResources();
      if (!v9)
      {
        goto LABEL_95;
      }

      if (v9 >= 1)
      {
        for (i = 0; i != v9; ++i)
        {
          if (v80)
          {
            MEMORY[0x26670F670](i, v23);
          }

          else
          {
          }

          if (one-time initialization token for iblPropertyName != -1)
          {
            swift_once();
          }

          v57 = static VirtualEnvironmentProbeComponentBuilder.iblPropertyName;
          if (RIOPxrUsdPrimHasAttribute())
          {
            v58 = RIOPxrUsdPrimCopyAttribute();

            type metadata accessor for AnyAttribute();
            v59 = swift_allocObject();
            v59[2] = v58;
            Inputs.createIBLAsset(on:)(v59);
            if (*(v60 + 16))
            {
              v43 = v78;
              REVirtualEnvironmentProbeComponentAddResource();
              outlined consume of Result<AnyAttribute, Object.Error>(v59, 0);
            }

            else
            {
              outlined consume of Result<AnyAttribute, Object.Error>(v59, 0);

              v43 = v78;
            }
          }

          else
          {

            *&v84 = 0;
            lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
            swift_willThrowTypedImpl();

            outlined consume of Object.Error(v84);
          }
        }

        goto LABEL_95;
      }

      goto LABEL_126;
    }

    v24 = 0;
    v76 = MEMORY[0x277D84F90];
LABEL_23:
    v7 = v24;
    while (1)
    {
      if (v80)
      {
        MEMORY[0x26670F670](v7, v23);
        v24 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_121;
        }
      }

      else
      {
        if (v7 >= *(v77 + 16))
        {
          goto LABEL_122;
        }

        v24 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          swift_once();
          goto LABEL_15;
        }
      }

      if (one-time initialization token for iblPropertyName != -1)
      {
        swift_once();
      }

      if (RIOPxrUsdPrimHasAttribute())
      {
        v25 = RIOPxrUsdPrimCopyAttribute();
        type metadata accessor for AnyAttribute();
        v26 = swift_allocObject();
        v26[2] = v25;
        v27 = RIOPxrUsdAttributeCopyValue();
        if (!v27)
        {
          v27 = RIOPxrVtValueCreateEmptyValue();
        }

        outlined consume of Result<AnyAttribute, Object.Error>(v26, 0);
        v28 = RIOPxrVtValueCopyAssetPath();

        if (v28)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v76 + 2) + 1, 1, v76);
          }

          v31 = *(v76 + 2);
          v30 = *(v76 + 3);
          if (v31 >= v30 >> 1)
          {
            v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v76);
          }

          *(v76 + 2) = v31 + 1;
          *&v76[8 * v31 + 32] = v28;
          if (v24 == v9)
          {
            goto LABEL_60;
          }

          goto LABEL_23;
        }
      }

      else
      {
        *&v84 = 0;
        lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
        swift_willThrowTypedImpl();

        outlined consume of Object.Error(v84);
      }

      ++v7;
      if (v24 == v9)
      {
        goto LABEL_60;
      }
    }
  }

  outlined destroy of Any?(&v84);
LABEL_55:
  if (one-time initialization token for virtualEnvProbeComponent != -1)
  {
    swift_once();
  }

  v40 = static OS_os_log.virtualEnvProbeComponent;
  v41 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_2619891C0;
  *(v42 + 56) = MEMORY[0x277D837D0];
  *(v42 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v42 + 32) = v7;
  *(v42 + 40) = v9;
  os_log(_:dso:log:type:_:)("Input is not an entity %{public}s.", 36, 2, &dword_26187B000, v40, v41, v42);
}

void _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay9RealityIO27SceneDescriptionFoundationsO9AssetPathVGAMG_Sbs5NeverOTg503_s9f4IO27hij2O9kl21VAESbIgnnd_AE_AEtSbs5M130OIegnrzr_TR03_s9a82IO39VirtualEnvironmentProbeComponentBuilderC3run6inputsyAA6InputsC_tFyyXEfU_SbAA27cde2O9fg5V_AKtT3U0_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  v29 = *(a1 + 16);
  v28 = *(a2 + 16);
  if (v28 >= v29)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v30 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v26 = a2;
  v27 = a1;
  if (v4)
  {
    v5 = (a1 + 32);
    v6 = (a2 + 32);

    v7 = v4;
    while (1)
    {
      v8 = *v5;
      v9 = *v6;
      v10 = *v5;
      v11 = v9;
      if (!v8)
      {
        break;
      }

      v12 = v11;
      type metadata accessor for RIOPxrSdfAssetPathRef(0);
      lazy protocol witness table accessor for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef(&lazy protocol witness table cache variable for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef, type metadata accessor for RIOPxrSdfAssetPathRef, &protocol conformance descriptor for RIOPxrSdfAssetPathRef);
      v13 = static _CFObject.== infix(_:_:)();

      v15 = *(v30 + 16);
      v14 = *(v30 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      }

      *(v30 + 16) = v15 + 1;
      *(v30 + v15 + 32) = (v13 & 1) == 0;
      ++v5;
      ++v6;
      if (!--v7)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {

LABEL_12:
    v17 = v28;
    v16 = v29;
    if (v29 <= v28)
    {
LABEL_21:

      return;
    }

    while (v4 < v16)
    {
      v18 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_23;
      }

      if (v17 == v4)
      {
        goto LABEL_21;
      }

      if (v4 >= v17)
      {
        goto LABEL_24;
      }

      if (__OFADD__(v4, 1))
      {
        goto LABEL_25;
      }

      v19 = *(v27 + 32 + 8 * v4);
      v20 = *(v26 + 32 + 8 * v4);
      type metadata accessor for RIOPxrSdfAssetPathRef(0);
      lazy protocol witness table accessor for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef(&lazy protocol witness table cache variable for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef, type metadata accessor for RIOPxrSdfAssetPathRef, &protocol conformance descriptor for RIOPxrSdfAssetPathRef);
      v21 = v19;
      v22 = v20;
      v23 = static _CFObject.== infix(_:_:)();

      v25 = *(v30 + 16);
      v24 = *(v30 + 24);
      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
      }

      *(v30 + 16) = v25 + 1;
      *(v30 + v25 + 32) = (v23 & 1) == 0;
      ++v4;
      v17 = v28;
      v16 = v29;
      if (v18 == v29)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
}

void VirtualEnvironmentProbeComponentBuilder.clear(inputs:)()
{
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(&v1, static EntityBuilder.OutputName, *(&static EntityBuilder.OutputName + 1));
  if (v2)
  {
    type metadata accessor for EntityProxy(0);
    if (swift_dynamicCast())
    {
      if (*(v0 + 41) == 1)
      {
        *(v0 + 32) = MEMORY[0x277D84F90];

        __AssetRef.__as<A>(_:)();
        REVirtualEnvironmentProbeComponentGetComponentType();
        REEntityRemoveComponentByClass();

        *(v0 + 41) = 0;
      }

      else
      {
      }
    }
  }

  else
  {
    outlined destroy of Any?(&v1);
  }
}

uint64_t VirtualEnvironmentProbeComponentBuilder.getIBLResourcePrims(fromPrim:)(uint64_t a1)
{
  v1 = specialized VirtualEnvironmentProbeComponentBuilder.getMode(fromPrim:)(a1);
  if (v1 == 3)
  {
    LOBYTE(v2) = 2;
  }

  else
  {
    LOBYTE(v2) = v1;
  }

  v3 = Prim.children.getter();
  v4 = v3;
  v26 = MEMORY[0x277D84F90];
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v7 = 0;
    v8 = 0;
    v9 = v2;
    v10 = v4 & 0xC000000000000001;
    v23 = v2;
    v24 = v4;
    v22 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v10)
      {
        MEMORY[0x26670F670](v8, v4);
        v2 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        goto LABEL_12;
      }

      if (v8 >= *(v5 + 16))
      {
        goto LABEL_29;
      }

      v2 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

LABEL_12:
      if (v7 >= v9)
      {

LABEL_8:
        ++v8;
        if (v2 == i)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v11 = i;
        v12 = RIOPxrUsdPrimCopyTypeName();
        v13 = *(v25 + 16);
        type metadata accessor for RIOPxrTfTokenRef(0);
        lazy protocol witness table accessor for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef, &protocol conformance descriptor for RIOPxrTfTokenRef);
        v14 = v13;
        v15 = static _CFObject.== infix(_:_:)();

        if ((v15 & 1) == 0)
        {

          i = v11;
          v9 = v23;
          v4 = v24;
          v10 = v22;
          goto LABEL_8;
        }

        v10 = v22;
        if (one-time initialization token for iblPropertyName != -1)
        {
          swift_once();
        }

        if (!RIOPxrUsdPrimHasAttribute())
        {
          lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
          swift_willThrowTypedImpl();
          outlined consume of Object.Error(0);
LABEL_25:

          i = v11;
          v9 = v23;
          v4 = v24;
          goto LABEL_8;
        }

        v16 = RIOPxrUsdPrimCopyAttribute();
        type metadata accessor for AnyAttribute();
        v17 = swift_allocObject();
        v17[2] = v16;
        EmptyValue = RIOPxrUsdAttributeCopyValue();
        if (!EmptyValue)
        {
          EmptyValue = RIOPxrVtValueCreateEmptyValue();
        }

        outlined consume of Result<AnyAttribute, Object.Error>(v17, 0);
        v19 = RIOPxrVtValueCopyAssetPath();

        if (!v19)
        {
          goto LABEL_25;
        }

        ++v7;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v8 = v2;
        i = v11;
        v20 = v2 == v11;
        v9 = v23;
        v4 = v24;
        if (v20)
        {
          goto LABEL_31;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

LABEL_31:

  return v26;
}

uint64_t VirtualEnvironmentProbeComponentBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t VirtualEnvironmentProbeComponentBuilder.init()()
{
  if (String.count.getter() < 1)
  {
    v1 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v1 = RIOPxrTfTokenCreateWithCString();
  }

  *(v0 + 16) = v1;
  *(v0 + 24) = 1065353216;
  *(v0 + 32) = MEMORY[0x277D84F90];
  *(v0 + 40) = 2;
  return v0;
}

uint64_t protocol witness for Builder.run(inputs:) in conformance VirtualEnvironmentProbeComponentBuilder(uint64_t a1)
{
  v2 = *v1;
  v7[2] = a1;
  v8 = v1;
  v9 = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in VirtualEnvironmentProbeComponentBuilder.run(inputs:);
  *(v3 + 24) = v7;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_20;
  v4 = _Block_copy(aBlock);

  RIOBuilderInputsPerformBlockSyncOnEngineQueue();
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized closure #1 in closure #1 in VirtualEnvironmentProbeComponentBuilder.stageSubscription.getter()
{
  if (one-time initialization token for infoID != -1)
  {
    swift_once();
  }

  v0 = static VirtualEnvironmentProbeComponentBuilder.infoID;
  type metadata accessor for NamedPropertyDirtyState();
  v1 = swift_allocObject();
  v1[4] = v0;
  v2 = v0;
  v3 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v1[2] = v3;
  v1[3] = v5;
  v6 = one-time initialization token for modeAttributeName;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static VirtualEnvironmentProbeComponentBuilder.modeAttributeName;
  v8 = swift_allocObject();
  v8[4] = v7;
  v9 = v7;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v8[2] = v3;
  v8[3] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A9D0;
  *(inited + 32) = v1;
  *(inited + 40) = v8;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v3;
}

uint64_t specialized closure #1 in VirtualEnvironmentProbeComponentBuilder.stageSubscription.getter()
{
  if (one-time initialization token for realityKitComponentTypeName != -1)
  {
    swift_once();
  }

  v0 = static VirtualEnvironmentProbeComponentBuilder.realityKitComponentTypeName;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v0;
  v2 = v0;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v4 = v3;
  swift_setDeallocating();
  outlined destroy of ToolsFoundations.Token(inited + 32);
  v5 = specialized closure #1 in closure #1 in VirtualEnvironmentProbeComponentBuilder.stageSubscription.getter();
  type metadata accessor for TypeNamePrimDirtyState();
  v6 = swift_allocObject();
  v6[5] = v4;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v7);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_n(v5);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  v10 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v6[2] = v10;
  v6[3] = v5;
  v6[4] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_26198A640;
  *(v13 + 32) = v6;

  specialized Sequence.forEach(_:)(v13);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v10;
}

uint64_t specialized VirtualEnvironmentProbeComponentBuilder.stageSubscription.getter()
{
  v0 = specialized closure #1 in VirtualEnvironmentProbeComponentBuilder.stageSubscription.getter();
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v1 = MEMORY[0x277D84FA0];
  v2 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(MEMORY[0x277D84FA0], v0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v2;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v1;
}

unint64_t specialized VirtualEnvironmentProbeComponentBuilder.getMode(fromPrim:)(uint64_t a1)
{
  if (one-time initialization token for modeAttributeName != -1)
  {
    swift_once();
  }

  v12 = static VirtualEnvironmentProbeComponentBuilder.modeAttributeName;
  v2 = static VirtualEnvironmentProbeComponentBuilder.modeAttributeName;
  v3 = specialized AudioMixGroupBuilder.getAttribute(named:fromPrim:)(&v12, a1);

  if (!v3)
  {
    return 3;
  }

  v4 = RIOPxrVtValueCopyToken();

  if (!v4)
  {
    return 3;
  }

  v5 = RIOPxrTfTokenCopyString();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  v10 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VirtualEnvironmentProbeComponentBuilder.Mode.init(rawValue:), v9);

  if (v10 >= 3)
  {
    return 3;
  }

  else
  {
    return v10;
  }
}

uint64_t lazy protocol witness table accessor for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Prim.type.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdPrimCopyTypeName();
  *a1 = result;
  return result;
}

uint64_t Object.path.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdObjectCopyPath();
  *a1 = result;
  return result;
}

uint64_t Object.name.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdObjectCopyName();
  *a1 = result;
  return result;
}

uint64_t _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t AnyAttribute.value.getter()
{
  result = RIOPxrUsdAttributeCopyValue();
  if (!result)
  {

    return RIOPxrVtValueCreateEmptyValue();
  }

  return result;
}

uint64_t Prim.attribute(of:)@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = *(v5 + 16);
  v11 = a2(v10, *a1);
  if (v11)
  {
    v12 = a3(v10, v9);
    a4();
    result = swift_allocObject();
    *(result + 16) = v12;
  }

  else
  {
    result = 0;
  }

  *a5 = result;
  *(a5 + 8) = v11 ^ 1;
  return result;
}

void Prim.attributeValue<A>(of:type:)(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (RIOPxrUsdPrimHasAttribute())
  {
    v8 = RIOPxrUsdPrimCopyAttribute();
    (*(a3 + 16))(v8, a2, a3, NAN);
  }

  else
  {
    v7 = *(*(a2 - 8) + 56);

    v7(a4, 1, 1, a2);
  }
}

void *Relationship.target.getter@<X0>(void *a1@<X8>)
{
  v2 = Relationship.targets.getter();
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
  }

  else
  {

    result = RIOPxrSdfPathCreateEmptyPath();
    v3 = result;
  }

  *a1 = v3;
  return result;
}

unint64_t Prim.children.getter(uint64_t (*a1)(void))
{
  v2 = a1(*(v1 + 16));
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrUsdObjectRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v5 = v4;
    if (!(v4 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }

LABEL_11:

      return MEMORY[0x277D84F90];
    }
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_4:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = v8 + 1;
        v10 = MEMORY[0x26670F670]();
        type metadata accessor for Prim();
        *(swift_allocObject() + 16) = v10;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v8 = v9;
      }

      while (v6 != v9);
    }

    else
    {
      type metadata accessor for Prim();
      v11 = 32;
      do
      {
        v12 = *(v5 + v11);
        *(swift_allocObject() + 16) = v12;
        v13 = v12;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v11 += 8;
        --v6;
      }

      while (v6);
    }

    return v4;
  }

  return result;
}

uint64_t Prim.parent.getter()
{
  v0 = RIOPxrUsdObjectCopyName();
  if (String.count.getter() < 1)
  {
    v1 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v1 = RIOPxrTfTokenCreateWithCString();
  }

  v2 = v1;
  type metadata accessor for RIOPxrTfTokenRef(0);
  _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, 255, type metadata accessor for RIOPxrTfTokenRef, &protocol conformance descriptor for RIOPxrTfTokenRef);
  v3 = static _CFObject.== infix(_:_:)();

  if (v3)
  {
    return 0;
  }

  result = RIOPxrUsdPrimCopyParent();
  if (result)
  {
    v5 = result;
    type metadata accessor for Prim();
    result = swift_allocObject();
    *(result + 16) = v5;
  }

  return result;
}

uint64_t VariantSets.getNames()(uint64_t (*a1)(void))
{
  result = a1(*(v1 + 16));
  if (result)
  {
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    result = static Array._forceBridgeFromObjectiveC(_:result:)();
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall VariantSet.setVariantSelection(variantName:)(Swift::String variantName)
{
  String.utf8CString.getter();
  RIOPxrUsdVariantSetSetVariantSelection();
}

ValueMetadata *AnyAttribute.type.getter()
{
  v0 = RIOPxrUsdAttributeCopyTypeName();
  RIOPxrSdfValueTypeNameRef.type.getter();
  v2 = v1;

  return v2;
}

uint64_t static Object.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RIOPxrUsdObjectRef(0);
  _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrUsdObjectRef and conformance RIOPxrUsdObjectRef, 255, type metadata accessor for RIOPxrUsdObjectRef, &protocol conformance descriptor for RIOPxrUsdObjectRef);
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t Prim.attributeValueResult<A>(of:type:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = type metadata accessor for Optional();
  v21 = *(v7 - 8);
  v9.n128_f32[0] = MEMORY[0x28223BE20](v7, v8);
  v11 = &v20 - v10;
  v12 = *(a2 - 8);
  MEMORY[0x28223BE20](v13, v9);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (RIOPxrUsdPrimHasAttribute())
  {
    v16 = RIOPxrUsdPrimCopyAttribute();
    (*(a3 + 16))(v16, a2, a3, NAN);
    if ((*(v12 + 48))(v11, 1, a2) == 1)
    {
      (*(v21 + 8))(v11, v7);
      v17 = RIOPxrUsdAttributeCopyTypeName();

      *a4 = v17;
    }

    else
    {

      v19 = *(v12 + 32);
      v19(v15, v11, a2);
      v19(a4, v15, a2);
    }

    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    type metadata accessor for Result();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a4 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    type metadata accessor for Result();

    return swift_storeEnumTagMultiPayload();
  }
}

void Object.subscript.setter(char *a1, void **a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v11.n128_f32[0] = MEMORY[0x28223BE20](v8, v10);
  v13 = &v27 - v12;
  v14 = *(a3 - 8);
  v16 = MEMORY[0x28223BE20](v15, v11);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  v20 = *(v9 + 16);
  v28 = a1;
  v20(v13, a1, v8, v16);
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    v21 = *(v9 + 8);
    v21(v13, v8);
    if (String.count.getter() < 1)
    {
      v22 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v22 = RIOPxrTfTokenCreateWithCString();
    }

    v24 = v22;
    RIOPxrUsdObjectClearMetadata();

    v21(v28, v8);
  }

  else
  {
    (*(v14 + 32))(v18, v13, a3);
    if (String.count.getter() < 1)
    {
      v23 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v23 = RIOPxrTfTokenCreateWithCString();
    }

    v25 = v23;
    v26 = (*(a4 + 8))(a3, a4);
    RIOPxrUsdObjectMetadataSetValue();

    (*(v9 + 8))(v28, v8);
    (*(v14 + 8))(v18, a3);
  }
}

{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v11.n128_f32[0] = MEMORY[0x28223BE20](v8, v10);
  v13 = &v22 - v12;
  v14 = *(a3 - 8);
  v16 = MEMORY[0x28223BE20](v15, v11);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  (*(v9 + 16))(v13, a1, v8, v16);
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    v20 = *(v9 + 8);
    v20(v13, v8);
    RIOPxrUsdObjectClearMetadata();
    v20(a1, v8);
  }

  else
  {
    (*(v14 + 32))(v18, v13, a3);
    v21 = (*(a4 + 8))(a3, a4);
    RIOPxrUsdObjectMetadataSetValue();

    (*(v9 + 8))(a1, v8);
    (*(v14 + 8))(v18, a3);
  }
}

{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v11.n128_f32[0] = MEMORY[0x28223BE20](v8, v10);
  v13 = &v24 - v12;
  v14 = *(a3 - 8);
  v16 = MEMORY[0x28223BE20](v15, v11);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  (*(v9 + 16))(v13, a1, v8, v16);
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    v20 = *(v9 + 8);
    v20(v13, v8);
    if (String.count.getter() < 1)
    {
      v21 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v21 = RIOPxrTfTokenCreateWithCString();
    }

    v23 = v21;
    RIOPxrUsdObjectCustomDataDictionaryClearValue();
    v20(a1, v8);
  }

  else
  {
    (*(v14 + 32))(v18, v13, a3);
    v22 = (*(a4 + 8))(a3, a4);
    RIOPxrUsdObjectUiInfoDictionarySetValue();

    (*(v9 + 8))(a1, v8);
    (*(v14 + 8))(v18, a3);
  }
}

{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v11.n128_f32[0] = MEMORY[0x28223BE20](v8, v10);
  v13 = &v24 - v12;
  v14 = *(a3 - 8);
  v16 = MEMORY[0x28223BE20](v15, v11);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  (*(v9 + 16))(v13, a1, v8, v16);
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    v20 = *(v9 + 8);
    v20(v13, v8);
    if (String.count.getter() < 1)
    {
      v21 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v21 = RIOPxrTfTokenCreateWithCString();
    }

    v23 = v21;
    RIOPxrUsdObjectCustomDataDictionaryClearValue();
    v20(a1, v8);
  }

  else
  {
    (*(v14 + 32))(v18, v13, a3);
    v22 = (*(a4 + 8))(a3, a4);
    RIOPxrUsdObjectAccessibilityInfoDictionarySetValue();

    (*(v9 + 8))(a1, v8);
    (*(v14 + 8))(v18, a3);
  }
}

char *StaticTypePrim.init(prim:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = specialized StaticTypePrim.init(prim:type:)(a1, a2, a3, a4);

  return v4;
}

char *StaticTypePrim.deinit()
{
  v1 = *v0;

  v2 = *(*v0 + 96);
  v5 = type metadata accessor for Properties(0, *(v1 + 80), v3, v4);
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  return v0;
}

uint64_t StaticTypePrim.properties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v7 = type metadata accessor for Properties(0, *(v3 + 80), v5, v6);
  return (*(*(v7 - 8) + 16))(a1, v1 + v4, v7);
}

uint64_t StaticTypePrim.subscript.getter()
{

  swift_getAtKeyPath();
}

uint64_t StaticTypePrim.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v8 = *(v2 + 16);

  v5 = swift_readAtKeyPath();
  (*(*(*(v4 + *MEMORY[0x277D84568] + 8) - 8) + 16))(a2);
  v5(v7, 0);
}

uint64_t StaticTypePrim.subscript.setter(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v4 = *a2;
  specialized StaticTypePrim.subscript.setter(a1, a2, a3);
  v5 = *(*(*(v4 + *MEMORY[0x277D84568] + 8) - 8) + 8);

  return v5(a1);
}

void (*StaticTypePrim.subscript.modify(void *a1, uint64_t *a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*a2 + *MEMORY[0x277D84568] + 8);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  StaticTypePrim.subscript.getter(a2, v11);
  return StaticTypePrim.subscript.modify;
}

void StaticTypePrim.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);

    specialized StaticTypePrim.subscript.setter(v3, v7, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {

    specialized StaticTypePrim.subscript.setter(v4, v7, v10);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);

    specialized StaticTypePrim.subscript.setter(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {

    specialized StaticTypePrim.subscript.setter(v4, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*a1)[3];
  v8 = (*a1)[2];
  v9 = *(*a1 + 72);
  v10 = *(*a1 + 1);
  v11 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[7], v4, v5);

    specialized StaticTypePrim.subscript.setter(v3, v11, v9, v8, v7, v10);
    v12 = *(v6 + 8);
    v12(v3, v5);
    v12(v4, v5);
  }

  else
  {

    specialized StaticTypePrim.subscript.setter(v4, v11, v9, v8, v7, v10);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t StaticTypePrim.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for Properties(0, *(*v5 + 80), a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v15 - v12;
  StaticTypePrim.properties.getter(&v15 - v12);
  Properties.subscript.getter(a1, v9, a2, a5, NAN);
  return (*(v10 + 8))(v13, v9);
}

uint64_t StaticTypePrim.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  specialized StaticTypePrim.subscript.setter(a1, a2, a3);
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

void (*StaticTypePrim.subscript.modify(void *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = type metadata accessor for Optional();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  StaticTypePrim.subscript.getter(a2, a3, v14, v15, v13);
  return StaticTypePrim.subscript.modify;
}

uint64_t StaticTypePrim.subscript.getter@<X0>(uint64_t *a1@<X0>, double a2@<D0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Properties(0, *(*v5 + 80), a3, a4);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v16 - v13;
  StaticTypePrim.properties.getter(&v16 - v13);
  Properties.subscript.getter(a1, v10, a4, a5, a2);
  return (*(v11 + 8))(v14, v10);
}

uint64_t StaticTypePrim.subscript.setter(uint64_t a1, uint64_t *a2, int a3, unint64_t a4, uint64_t a5, double a6)
{
  specialized StaticTypePrim.subscript.setter(a1, a2, a3, a4, a5, a6);
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void (*StaticTypePrim.subscript.modify(uint64_t *a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5, double a6))(uint64_t **a1, char a2)
{
  v13 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x50uLL);
  }

  v15 = v14;
  *a1 = v14;
  *(v14 + 24) = a5;
  *(v14 + 32) = v6;
  *(v14 + 16) = a4;
  *(v14 + 72) = a3 & 1;
  *(v14 + 8) = a6;
  *v14 = a2;
  v16 = type metadata accessor for Optional();
  v15[5] = v16;
  v17 = *(v16 - 8);
  v15[6] = v17;
  v18 = *(v17 + 64);
  if (v13)
  {
    v15[7] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v15[7] = malloc(*(v17 + 64));
    v19 = malloc(v18);
  }

  v15[8] = v19;
  StaticTypePrim.subscript.getter(a2, a6, v20, a5, v19);
  return StaticTypePrim.subscript.modify;
}

uint64_t (*StaticTypePrim.subscript.modify(uint64_t *a1, uint64_t a2))()
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = StaticTypePrim.subscript.getter(a2);
  return StaticTypePrim.subscript.modify;
}

uint64_t StaticTypePrim.subscript.modify(void *a1, char a2)
{
  if (a2)
  {

    StaticTypePrim.subscript.setter();
  }

  else
  {

    return StaticTypePrim.subscript.setter();
  }
}

unint64_t StaticTypePrim.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return StaticTypePrim.subscript.getter(a1, a2, a3, a4);
}

{
  v6 = type metadata accessor for Properties(0, *(*v4 + 80), a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - v9;
  StaticTypePrim.properties.getter(&v13 - v9);
  v11 = specialized Properties.subscript.getter(a1, v6);
  (*(v7 + 8))(v10, v6);
  return v11;
}

uint64_t StaticTypePrim.subscript.setter(uint64_t a1, uint64_t a2)
{
  return StaticTypePrim.subscript.setter(a1, a2);
}

{
  v5 = *v2;
  swift_beginAccess();
  v8 = type metadata accessor for Properties(0, *(v5 + 80), v6, v7);
  specialized Properties.subscript.setter(a1, a2, v8);
  return swift_endAccess();
}

uint64_t (*StaticTypePrim.subscript.modify(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v4;
  *a1 = StaticTypePrim.subscript.getter(a2, a2, a3, a4);
  return StaticTypePrim.subscript.modify;
}

uint64_t StaticTypePrim.subscript.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    StaticTypePrim.subscript.setter(v3, v2);
  }

  else
  {

    return StaticTypePrim.subscript.setter(v3, v2);
  }
}

uint64_t MaterialCollectionBinding.__allocating_init(materialBindingAPI:base:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

void Prim.type.setter(id *a1)
{
  v1 = *a1;
  RIOPxrUsdPrimSetTypeName();
}

uint64_t Prim.properties<A>(of:)@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v8.n128_f32[0] = MEMORY[0x28223BE20](v5, v7);
  v10 = &v26 - v9;
  v11 = *(a1 - 8);
  v13.n128_f32[0] = MEMORY[0x28223BE20](v12, v8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v13);
  v18 = &v26 - v17;
  v19 = swift_dynamicCast();
  v20 = *(v11 + 56);
  if (v19)
  {
    v20(v10, 0, 1, a1);
    v21 = *(v11 + 32);
    v21(v18, v10, a1);
    v21(v15, v18, a1);
    *a2 = v2;
    v24 = type metadata accessor for Properties(0, a1, v22, v23);
    v21(&a2[*(v24 + 28)], v15, a1);
  }

  else
  {
    v20(v10, 1, 1, a1);
    (*(v6 + 8))(v10, v5);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t Properties.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  specialized Properties.subscript.setter(a1, a2, a3, a4);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void Prim.setAttribute<A>(of:value:at:custom:variability:)(uint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  (*(a6 + 32))(&v18, a5, a6);
  v13 = v18;
  Attribute = RIOPxrUsdPrimCreateAttribute();
  v15 = (*(a6 + 8))(a2, Attribute, a5, a6, a8);
  if (v15)
  {

    type metadata accessor for Attribute(0, a5, a6, v16);
    v17 = swift_allocObject();
    *(v17 + 16) = Attribute;
  }

  else
  {
    v17 = RIOPxrUsdAttributeCopyTypeName();
  }

  *a7 = v17;
  *(a7 + 8) = (v15 & 1) == 0;
}

uint64_t VariantSet.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall VariantSet.addVariant(variantName:)(Swift::String variantName)
{
  String.utf8CString.getter();
  RIOPxrUsdVariantSetAddVariant();
}

Swift::String __swiftcall VariantSet.getVariantSelection()()
{
  v0 = VariantSet.getVariantSelection()(MEMORY[0x277D00CC0]);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall VariantSet.getName()()
{
  v0 = VariantSet.getVariantSelection()(MEMORY[0x277D00CA8]);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t VariantSet.getVariantSelection()(uint64_t (*a1)(void))
{
  v2 = a1(*(v1 + 16));
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t VariantSet.getEditTarget()@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdVariantSetCopyEditTarget();
  *a1 = result;
  return result;
}

uint64_t VariantSet.hasAuthoredVariant(variantName:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = String.utf8CString.getter();
  v7 = a3(v5, v6 + 32);

  return v7;
}

Swift::String __swiftcall VariantSets.getVariantSelection(variantSetName:)(Swift::String variantSetName)
{
  String.utf8CString.getter();
  v1 = RIOPxrUsdVariantSetsCopyVariantSelection();

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::Bool __swiftcall VariantSets.setSelection(variantSetName:variantName:)(Swift::String variantSetName, Swift::String variantName)
{
  String.utf8CString.getter();
  String.utf8CString.getter();
  v2 = RIOPxrUsdVariantSetsSetSelection();

  return v2;
}

uint64_t VariantSets.getAllVariantSelections()()
{
  RIOPxrUsdVariantSetsCopyAllVariantSelections();
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  result = static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  return result;
}

uint64_t MaterialCollectionBinding.init(materialBindingAPI:base:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t MaterialCollectionBinding.deinit()
{

  return v0;
}

uint64_t MaterialCollectionBinding.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MaterialCollectionBinding.materialPath.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdShadeMaterialBindingAPICopyCollectionBindingMaterialPath();
  *a1 = result;
  return result;
}

uint64_t MaterialCollectionBinding.collectionPath.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdShadeMaterialBindingAPICopyCollectionBindingCollectionPath();
  *a1 = result;
  return result;
}

uint64_t MaterialCollectionBinding.primCollectionName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdShadeMaterialBindingAPICopyCollectionBindingPrimCollectionName();
  *a1 = result;
  return result;
}

void MaterialCollectionBinding.bindingStrength.getter(uint64_t *a1@<X8>)
{
  v2 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  v3 = RIOPxrUsdShadeMaterialBindingAPICopyCollectionBindingStrength();

  *a1 = v3;
}

void key path getter for MaterialCollectionBinding.bindingStrength : MaterialCollectionBinding(uint64_t *a2@<X8>)
{
  v3 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  v4 = RIOPxrUsdShadeMaterialBindingAPICopyCollectionBindingStrength();

  *a2 = v4;
}

void key path setter for MaterialCollectionBinding.bindingStrength : MaterialCollectionBinding(uint64_t *a1, uint64_t *a2)
{
  v2 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  RIOPxrUsdShadeMaterialBindingAPISetCollectionBindingStrength();
}

void MaterialCollectionBinding.bindingStrength.setter(id *a1)
{
  v2 = *a1;
  v1 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  RIOPxrUsdShadeMaterialBindingAPISetCollectionBindingStrength();
}

void (*MaterialCollectionBinding.bindingStrength.modify(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = *(v1 + 16);
  v3 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  a1[2] = *(v1 + 24);
  v4 = RIOPxrUsdShadeMaterialBindingAPICopyCollectionBindingStrength();

  *a1 = v4;
  return MaterialCollectionBinding.bindingStrength.modify;
}

void MaterialCollectionBinding.bindingStrength.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    v4 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
    RIOPxrUsdShadeMaterialBindingAPISetCollectionBindingStrength();
  }

  else
  {
    v4 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
    RIOPxrUsdShadeMaterialBindingAPISetCollectionBindingStrength();
  }
}

uint64_t Object.hash(into:)(uint64_t a1)
{
  type metadata accessor for RIOPxrUsdObjectRef(0);
  _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrUsdObjectRef and conformance RIOPxrUsdObjectRef, 255, type metadata accessor for RIOPxrUsdObjectRef, &protocol conformance descriptor for RIOPxrUsdObjectRef);
  return _CFObject.hash(into:)();
}

uint64_t Object.description.getter()
{
  v0 = RIOPxrUsdObjectCopyPath();
  v1 = RIOPxrSdfPathCopyString();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t Object.debugDescription.getter()
{
  HIDWORD(v12[1]) = -335544320;
  MEMORY[0x26670F080](60, 0xE100000000000000);
  v0 = _typeName(_:qualified:)();
  MEMORY[0x26670F080](v0);

  MEMORY[0x26670F080](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26670F080](62, 0xE100000000000000);
  strcpy(v12, "\n  - name : ");
  v1 = RIOPxrUsdObjectCopyName();
  v2 = RIOPxrTfTokenCopyString();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x26670F080](v3, v5);

  MEMORY[0x26670F080](v12[0], v12[1]);

  strcpy(v12, "\n  - path : ");
  v6 = RIOPxrUsdObjectCopyPath();
  v7 = RIOPxrSdfPathCopyString();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  MEMORY[0x26670F080](v8, v10);

  MEMORY[0x26670F080](v12[0], v12[1]);

  MEMORY[0x26670F080](0x736162202D20200ALL, 0xEC000000203A2065);
  type metadata accessor for RIOPxrUsdObjectRef(0);
  _print_unlocked<A, B>(_:_:)();

  MEMORY[0x26670F080](0, 0xE000000000000000);

  return 0;
}

Swift::Int Object.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Object();
  _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type Object and conformance Object, v0, type metadata accessor for Object, &protocol conformance descriptor for Object);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Object(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for Object();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Object(uint64_t a1)
{
  type metadata accessor for RIOPxrUsdObjectRef(0);
  _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrUsdObjectRef and conformance RIOPxrUsdObjectRef, 255, type metadata accessor for RIOPxrUsdObjectRef, &protocol conformance descriptor for RIOPxrUsdObjectRef);
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Object(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Object(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for RIOPxrUsdObjectRef(0);
  _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrUsdObjectRef and conformance RIOPxrUsdObjectRef, 255, type metadata accessor for RIOPxrUsdObjectRef, &protocol conformance descriptor for RIOPxrUsdObjectRef);
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Object()
{
  v0 = RIOPxrUsdObjectCopyPath();
  v1 = RIOPxrSdfPathCopyString();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t (*Object.allowedTokens.modify(unint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = Object.allowedTokens.getter();
  return Object.allowedTokens.modify;
}

void Object.allowedTokens.setter(uint64_t a1, void (*a2)(void), void (*a3)(uint64_t, Class))
{
  v7 = *(v3 + 16);
  v8 = *(a1 + 16);
  if (v8)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = 32;
    do
    {
      v10 = *(a1 + v9);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 += 8;
      --v8;
    }

    while (v8);
  }

  a2(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  a3(v7, isa);
}

uint64_t (*Object.inheritsPath.modify(unint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = Object.inheritsPath.getter();
  return Object.inheritsPath.modify;
}

uint64_t Object.allowedTokens.modify(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

uint64_t Object.authoredMetadata()(uint64_t (*a1)(void))
{
  v2 = a1(*(v1 + 16));
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOPxrTfTokenRef(0);
    type metadata accessor for RIOPxrVtValueRef(0);
    _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, 255, type metadata accessor for RIOPxrTfTokenRef, &protocol conformance descriptor for RIOPxrTfTokenRef);
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  return MEMORY[0x277D84F98];
}

void Object.subscript.getter(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = RIOPxrUsdObjectCopyMetadata();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOPxrTfTokenRef(0);
    type metadata accessor for RIOPxrVtValueRef(0);
    _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, 255, type metadata accessor for RIOPxrTfTokenRef, &protocol conformance descriptor for RIOPxrTfTokenRef);
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v6 = *(*(a2 - 8) + 56);

  v6(a3, 1, 1, a2);
}

{
  if (String.count.getter() < 1)
  {
    v5 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v5 = RIOPxrTfTokenCreateWithCString();
  }

  v6 = v5;
  v8 = RIOPxrUsdObjectMetadataCopyValue();

  if (v8)
  {
    RIOPxrVtValueRef.mapUSDValue<A>()(a2, a3);
  }

  else
  {
    v7 = *(*(a2 - 8) + 56);

    v7(a3, 1, 1, a2);
  }
}

void (*Object.subscript.modify(void *a1, void **a2, uint64_t a3, uint64_t a4))(uint64_t **a1, uint64_t a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = type metadata accessor for Optional();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v17 = *a2;
  v11[6] = v15;
  v11[7] = v17;
  v18 = v17;
  Object.subscript.getter(a3, v16);

  return Object.subscript.modify;
}

{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = type metadata accessor for Optional();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v17 = *a2;
  v11[6] = v15;
  v11[7] = v17;
  v20 = v17;
  v18 = v17;
  Object.subscript.getter(&v20, a3, v16);

  return Object.subscript.modify;
}

{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = type metadata accessor for Optional();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v17 = *a2;
  v11[6] = v15;
  v11[7] = v17;
  v20 = v17;
  v18 = v17;
  Object.subscript.getter(&v20, a3, v16);

  return Object.subscript.modify;
}

{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = type metadata accessor for Optional();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v17 = *a2;
  v11[6] = v15;
  v11[7] = v17;
  v18 = v17;
  Object.subscript.getter(a3, v16);

  return Object.subscript.modify;
}

void Object.subscript.modify(uint64_t **a1, uint64_t a2)
{
  Object.subscript.modify(a1, a2, Object.subscript.setter);
}

{
  Object.subscript.modify(a1, a2, Object.subscript.setter);
}

{
  Object.subscript.modify(a1, a2, Object.subscript.setter);
}

{
  Object.subscript.modify(a1, a2, Object.subscript.setter);
}

void Object.subscript.getter(void *a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  Object.subscript.getter(a1, a2, MEMORY[0x277D00B10], x8_0);
}

{
  Object.subscript.getter(a1, a2, MEMORY[0x277D00AD0], x8_0);
}

void key path getter for Object.subscript<A>(metadata:) : <A>ObjectA(uint64_t a1, id *a2, uint64_t a3, void (*a4)(id *, uint64_t, uint64_t))
{
  v5 = *(a2 + a3 - 16);
  v6 = *(a2 + a3 - 8);
  v8 = *a2;
  v7 = v8;
  a4(&v8, v5, v6);
}

void Object.subscript.getter(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, void)@<X3>, uint64_t a4@<X8>)
{
  v7 = a3(*(v4 + 16), *a1);
  if (v7)
  {
    v9 = v7;
    RIOPxrVtValueRef.mapUSDValue<A>()(a2, a4);
  }

  else
  {
    v8 = *(*(a2 - 8) + 56);

    v8(a4, 1, 1, a2);
  }
}

void Object.subscript.getter(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = RIOPxrUsdObjectCustomDataDictionaryCopyValue();
  if (v6)
  {
    v8 = v6;
    RIOPxrVtValueRef.mapUSDValue<A>()(a3, a4);
  }

  else
  {
    v7 = *(*(a3 - 8) + 56);

    v7(a4, 1, 1, a3);
  }
}

{
  v6 = RIOPxrUsdObjectMetadataCopyValue();
  if (v6)
  {
    v8 = v6;
    RIOPxrVtValueRef.mapUSDValue<A>()(a3, a4);
  }

  else
  {
    v7 = *(*(a3 - 8) + 56);

    v7(a4, 1, 1, a3);
  }
}

void key path getter for Object.subscript<A>(customData:key:) : <A>ObjectA(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + 8);
  v6 = *a1;
  v7 = v5;
  Object.subscript.getter(v4, a3);
}

void key path setter for Object.subscript<A>(customData:key:) : <A>ObjectA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = type metadata accessor for Optional();
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v18 - v11;
  v14 = *a3;
  v13 = *(a3 + 8);
  (*(v15 + 16))(&v18 - v11, a1, v10);
  v18 = v13;
  v19 = v14;
  v16 = v14;
  v17 = v13;
  Object.subscript.setter(v12, &v19, &v18, v6, v7);
}

void Object.subscript.setter(char *a1, void **a2, void **a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v12.n128_f32[0] = MEMORY[0x28223BE20](v9, v11);
  v14 = &v24 - v13;
  v15 = *(a4 - 8);
  v17 = MEMORY[0x28223BE20](v16, v12);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  v21 = *a3;
  (*(v10 + 16))(v14, a1, v9, v17);
  if ((*(v15 + 48))(v14, 1, a4) == 1)
  {
    v22 = *(v10 + 8);
    v22(v14, v9);
    RIOPxrUsdObjectCustomDataDictionaryClearValue();
    v22(a1, v9);
  }

  else
  {
    (*(v15 + 32))(v19, v14, a4);
    v23 = (*(v25 + 8))(a4);
    RIOPxrUsdObjectCustomDataDictionarySetValue();

    (*(v10 + 8))(a1, v9);
    (*(v15 + 8))(v19, a4);
  }
}

{
  v25 = a5;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v12.n128_f32[0] = MEMORY[0x28223BE20](v9, v11);
  v14 = &v24 - v13;
  v15 = *(a4 - 8);
  v17 = MEMORY[0x28223BE20](v16, v12);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  v21 = *a3;
  (*(v10 + 16))(v14, a1, v9, v17);
  if ((*(v15 + 48))(v14, 1, a4) == 1)
  {
    v22 = *(v10 + 8);
    v22(v14, v9);
    RIOPxrUsdObjectClearMetadata();

    v22(a1, v9);
  }

  else
  {
    (*(v15 + 32))(v19, v14, a4);
    v23 = (*(v25 + 8))(a4);
    RIOPxrUsdObjectMetadataSetValue();

    (*(v10 + 8))(a1, v9);
    (*(v15 + 8))(v19, a4);
  }
}

void (*Object.subscript.modify(void *a1, void **a2, void **a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[1] = a5;
  v12[2] = v5;
  *v12 = a4;
  v14 = type metadata accessor for Optional();
  v13[3] = v14;
  v15 = *(v14 - 8);
  v13[4] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[5] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[5] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v18 = v17;
  v19 = *a2;
  v13[6] = v17;
  v13[7] = v19;
  v20 = *a3;
  v13[8] = *a3;
  v21 = v19;
  v22 = v20;
  v23 = v21;
  v24 = v22;
  Object.subscript.getter(a4, v18);

  return Object.subscript.modify;
}

{
  v11 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[1] = a5;
  v12[2] = v5;
  *v12 = a4;
  v14 = type metadata accessor for Optional();
  v13[3] = v14;
  v15 = *(v14 - 8);
  v13[4] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[5] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[5] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v18 = v17;
  v19 = *a2;
  v13[6] = v17;
  v13[7] = v19;
  v20 = *a3;
  v13[8] = *a3;
  v21 = v20;
  v22 = v19;
  v23 = v21;
  v24 = v22;
  Object.subscript.getter(a4, v18);

  return Object.subscript.modify;
}

void Object.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  if (a2)
  {
    v7 = v2[3];
    v8 = v2[4];
    v9 = v2[1];
    v10 = *v2;
    (*(v8 + 16))((*a1)[5], v6, v7);
    v13 = v4;
    v14 = v3;
    Object.subscript.setter(v5, &v13, &v14, v10, v9);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v11 = v2[1];
    v12 = *v2;
    v13 = (*a1)[7];
    v14 = v3;
    Object.subscript.setter(v6, &v13, &v14, v12, v11);
  }

  free(v6);
  free(v5);

  free(v2);
}

{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  if (a2)
  {
    v7 = v2[3];
    v8 = v2[4];
    v9 = v2[1];
    v10 = *v2;
    (*(v8 + 16))((*a1)[5], v6, v7);
    v13 = v4;
    v14 = v3;
    Object.subscript.setter(v5, &v13, &v14, v10, v9);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v11 = v2[1];
    v12 = *v2;
    v13 = (*a1)[7];
    v14 = v3;
    Object.subscript.setter(v6, &v13, &v14, v12, v11);
  }

  free(v6);
  free(v5);

  free(v2);
}

uint64_t key path setter for Object.subscript<A>(metadata:) : <A>ObjectA(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t (*a5)(char *, void **, uint64_t, uint64_t))
{
  v8 = *(a3 + a4 - 16);
  v9 = *(a3 + a4 - 8);
  v10 = type metadata accessor for Optional();
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v19 - v13;
  v15 = *a3;
  (*(v16 + 16))(&v19 - v13, a1, v12);
  v20 = v15;
  v17 = v15;
  return a5(v14, &v20, v8, v9);
}

void Object.subscript.modify(uint64_t **a1, char a2, void (*a3)(void *, uint64_t *, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[6];
  v6 = (*a1)[7];
  v7 = (*a1)[5];
  if (a2)
  {
    v8 = v4[3];
    v9 = v4[4];
    v10 = v4[1];
    v11 = *v4;
    (*(v9 + 16))((*a1)[5], v5, v8);
    v14 = v6;
    a3(v7, &v14, v11, v10);
    (*(v9 + 8))(v5, v8);
  }

  else
  {
    v12 = v4[1];
    v13 = *v4;
    v14 = (*a1)[7];
    a3(v5, &v14, v13, v12);
  }

  free(v5);
  free(v7);

  free(v4);
}

void key path getter for Object.subscript<A>(metadata:_:) : <A>ObjectA(void **a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *a1;
  v7 = a1[1];
  v6 = v5;
  Object.subscript.getter(v4, a3);
}

void key path setter for Object.subscript<A>(metadata:_:) : <A>ObjectA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = type metadata accessor for Optional();
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v18 - v11;
  v14 = *a3;
  v13 = *(a3 + 8);
  (*(v15 + 16))(&v18 - v11, a1, v10);
  v18 = v13;
  v19 = v14;
  v16 = v13;
  v17 = v14;
  Object.subscript.setter(v12, &v19, &v18, v6, v7);
}

unint64_t Prim.filteredChildren(predicate:)(void *a1)
{
  return Prim.filteredChildren(predicate:)(a1, MEMORY[0x277D00B60]);
}

{
  return Prim.filteredChildren(predicate:)(a1, MEMORY[0x277D00BB0], MEMORY[0x277D00B60]);
}

{
  return Prim.filteredChildren(predicate:)(a1, MEMORY[0x277D00BD0], MEMORY[0x277D00B60]);
}

uint64_t PrimFlagsPredicate.init(_:)@<X0>(uint64_t *a3@<X8>)
{
  result = RIOPxrUsdPrimFlagsPredicateCreateWithTerm();
  *a3 = result;
  return result;
}

void (*Prim.type.modify(uint64_t *a1))(id *a1)
{
  a1[1] = *(v1 + 16);
  *a1 = RIOPxrUsdPrimCopyTypeName();
  return Prim.type.modify;
}

void Prim.type.modify(id *a1)
{
  v1 = *a1;
  RIOPxrUsdPrimSetTypeName();
}

uint64_t (*Prim.specifier.modify(uint64_t *a1))()
{
  a1[1] = *(v1 + 16);
  *a1 = RIOPxrUsdPrimGetSpecifier();
  return Prim.specifier.modify;
}

char *Prim.propertyOrder.getter()
{
  v0 = RIOPxrUsdPrimGetPropertyOrder();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    type metadata accessor for RIOPxrTfTokenRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v3 = v2;
    if (!(v2 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_13:

      return MEMORY[0x277D84F90];
    }
  }

  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = v2;
    if ((v3 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        v8 = MEMORY[0x26670F670](i, v3);
        v10 = *(v6 + 16);
        v9 = *(v6 + 24);
        if (v10 >= v9 >> 1)
        {
          v11 = v8;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v8 = v11;
        }

        *(v6 + 16) = v10 + 1;
        *(v6 + 8 * v10 + 32) = v8;
      }
    }

    else
    {
      v12 = 32;
      do
      {
        v13 = *(v2 + 16);
        v14 = *(v2 + 24);
        v15 = *(v3 + v12);
        if (v13 >= v14 >> 1)
        {
          v16 = v14 > 1;
          v17 = v15;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16, v13 + 1, 1);
          v15 = v17;
        }

        *(v2 + 16) = v13 + 1;
        *(v2 + 8 * v13 + 32) = v15;
        v12 += 8;
        --v4;
      }

      while (v4);
    }

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t (*Prim.propertyOrder.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = Prim.propertyOrder.getter();
  return Prim.propertyOrder.modify;
}

uint64_t Prim.addReference(assetPath:path:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *a3;
  v7 = *(v4 + 16);
  v8 = String.utf8CString.getter();
  v9 = a4(v7, v8 + 32, v6);

  return v9;
}

uint64_t Prim.addReference(assetURL:path:)(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *a2;
  v7 = *(v4 + 16);
  a3();
  v8 = String.utf8CString.getter();

  v9 = a4(v7, v8 + 32, v6);

  return v9;
}

uint64_t Prim.setSpecializes(_:)(uint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, Class))
{
  v6 = *(v3 + 16);
  v7 = *(a1 + 16);
  if (v7)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = (a1 + 32);
    do
    {
      v10 = *v9++;
      v11 = v10;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v7;
    }

    while (v7);
  }

  a2(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = a3(v6, isa);

  return v13;
}

unint64_t Relationship.targets.getter(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(BOOL, uint64_t, uint64_t))
{
  v6 = a1(*(v3 + 16));
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    a2(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v9 = v8;
    if (!(v8 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_4;
      }

LABEL_13:

      return MEMORY[0x277D84F90];
    }
  }

  v10 = __CocoaSet.count.getter();
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = a3(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = v8;
    if ((v9 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v10; ++i)
      {
        v14 = MEMORY[0x26670F670](i, v9);
        v16 = *(v12 + 16);
        v15 = *(v12 + 24);
        if (v16 >= v15 >> 1)
        {
          v17 = v14;
          a3(v15 > 1, v16 + 1, 1);
          v14 = v17;
        }

        *(v12 + 16) = v16 + 1;
        *(v12 + 8 * v16 + 32) = v14;
      }
    }

    else
    {
      v18 = 32;
      do
      {
        v19 = *(v8 + 16);
        v20 = *(v8 + 24);
        v21 = *(v9 + v18);
        if (v19 >= v20 >> 1)
        {
          v22 = v20 > 1;
          v23 = v21;
          a3(v22, v19 + 1, 1);
          v21 = v23;
        }

        *(v8 + 16) = v19 + 1;
        *(v8 + 8 * v19 + 32) = v21;
        v18 += 8;
        --v10;
      }

      while (v10);
    }

    return v12;
  }

  __break(1u);
  return result;
}

void Prim.attribute<A>(of:type:)(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (!RIOPxrUsdPrimHasAttribute())
  {
    v8 = 0;
LABEL_6:
    v12 = 1;
    goto LABEL_7;
  }

  v7 = RIOPxrUsdPrimCopyAttribute();
  v8 = RIOPxrUsdAttributeCopyTypeName();
  (*(a3 + 32))(&v13, a2, a3);
  v9 = v13;
  type metadata accessor for RIOPxrSdfValueTypeNameRef(0);
  _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrSdfValueTypeNameRef and conformance RIOPxrSdfValueTypeNameRef, 255, type metadata accessor for RIOPxrSdfValueTypeNameRef, &protocol conformance descriptor for RIOPxrSdfValueTypeNameRef);
  v10 = static _CFObject.== infix(_:_:)();

  if ((v10 & 1) == 0)
  {

    goto LABEL_6;
  }

  type metadata accessor for Attribute(0, a2, a3, v11);
  v8 = swift_allocObject();
  v12 = 0;
  v8[2] = v7;
LABEL_7:
  *a4 = v8;
  *(a4 + 8) = v12;
}

char *Prim.schemaPropertyNames()()
{
  v2 = RIOPxrUsdPrimCopyTypeName();
  v0 = ToolsFoundations.Token.schemaPropertyNames()();

  return v0;
}

uint64_t Prim.attributes()(uint64_t (*a1)(void))
{
  v2 = a1(*(v1 + 16));
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      type metadata accessor for RIOPxrUsdObjectRef(0);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_16:

    return MEMORY[0x277D84F90];
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_7:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = v8 + 1;
        v10 = MEMORY[0x26670F670]();
        type metadata accessor for AnyAttribute();
        *(swift_allocObject() + 16) = v10;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v8 = v9;
      }

      while (v6 != v9);
    }

    else
    {
      type metadata accessor for AnyAttribute();
      v11 = 32;
      do
      {
        v12 = *(v5 + v11);
        *(swift_allocObject() + 16) = v12;
        v13 = v12;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v11 += 8;
        --v6;
      }

      while (v6);
    }

    return v3;
  }

  return result;
}

void Prim.schemaAttributes()()
{
  v6 = RIOPxrUsdPrimCopyTypeName();
  v0 = ToolsFoundations.Token.schemaPropertyNames()();

  v7 = MEMORY[0x277D84F90];
  v1 = *(v0 + 2);
  if (v1)
  {
    v2 = 0;
    do
    {
      v3 = v2;
      while (1)
      {
        if (v3 >= *(v0 + 2))
        {
          __break(1u);
          return;
        }

        v2 = v3 + 1;
        v4 = *&v0[8 * v3 + 32];
        if (RIOPxrUsdPrimHasAttribute())
        {
          break;
        }

        lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
        swift_willThrowTypedImpl();

        outlined consume of Object.Error(0);
        ++v3;
        if (v1 == v2)
        {
          goto LABEL_11;
        }
      }

      v5 = RIOPxrUsdPrimCopyAttribute();
      type metadata accessor for AnyAttribute();
      *(swift_allocObject() + 16) = v5;

      MEMORY[0x26670F130]();
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v1 - 1 != v3);
  }

LABEL_11:
}

void Prim.relationships()()
{
  v0 = Prim.propertyNames()();
  v6 = MEMORY[0x277D84F90];
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = 0;
    do
    {
      v3 = v2;
      while (1)
      {
        if (v3 >= *(v0 + 16))
        {
          __break(1u);
          return;
        }

        v2 = v3 + 1;
        v4 = *(v0 + 32 + 8 * v3);
        if (RIOPxrUsdPrimHasRelationship())
        {
          break;
        }

        lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
        swift_willThrowTypedImpl();

        outlined consume of Object.Error(0);
        ++v3;
        if (v1 == v2)
        {
          goto LABEL_11;
        }
      }

      v5 = RIOPxrUsdPrimCopyRelationship();
      type metadata accessor for Relationship();
      *(swift_allocObject() + 16) = v5;

      MEMORY[0x26670F130]();
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v1 - 1 != v3);
  }

LABEL_11:
}

uint64_t VariantSets.getVariantSet(variantSetName:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = String.utf8CString.getter();
  v7 = a3(v5, v6 + 32);

  type metadata accessor for VariantSet();
  result = swift_allocObject();
  *(result + 16) = v7;
  return result;
}

void Prim.properties()(uint64_t (*a1)(void))
{
  v1 = a1();
  v7 = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    do
    {
      v4 = v3;
      while (1)
      {
        if (v4 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v5 = *(v1 + 32 + 8 * v4);
        if (RIOPxrUsdPrimHasAttribute())
        {
          v6 = RIOPxrUsdPrimCopyAttribute();
          type metadata accessor for AnyAttribute();
          goto LABEL_11;
        }

        lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
        swift_willThrowTypedImpl();
        outlined consume of Object.Error(0);
        if (RIOPxrUsdPrimHasRelationship())
        {
          break;
        }

        ++v4;
        swift_willThrowTypedImpl();

        outlined consume of Object.Error(0);
        if (v2 == v4)
        {
          goto LABEL_14;
        }
      }

      v6 = RIOPxrUsdPrimCopyRelationship();
      type metadata accessor for Relationship();
LABEL_11:
      *(swift_allocObject() + 16) = v6;

      MEMORY[0x26670F130]();
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v3 = v4 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v2 - 1 != v4);
  }

LABEL_14:
}

void Prim.schemaProperties()()
{
  v6 = RIOPxrUsdPrimCopyTypeName();
  v0 = ToolsFoundations.Token.schemaPropertyNames()();

  v7 = MEMORY[0x277D84F90];
  v1 = *(v0 + 2);
  if (v1)
  {
    v2 = 0;
    do
    {
      v3 = v2;
      while (1)
      {
        if (v3 >= *(v0 + 2))
        {
          __break(1u);
          return;
        }

        v4 = *&v0[8 * v3 + 32];
        if (RIOPxrUsdPrimHasAttribute())
        {
          v5 = RIOPxrUsdPrimCopyAttribute();
          type metadata accessor for AnyAttribute();
          goto LABEL_11;
        }

        lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
        swift_willThrowTypedImpl();
        outlined consume of Object.Error(0);
        if (RIOPxrUsdPrimHasRelationship())
        {
          break;
        }

        ++v3;
        swift_willThrowTypedImpl();

        outlined consume of Object.Error(0);
        if (v1 == v3)
        {
          goto LABEL_14;
        }
      }

      v5 = RIOPxrUsdPrimCopyRelationship();
      type metadata accessor for Relationship();
LABEL_11:
      *(swift_allocObject() + 16) = v5;

      MEMORY[0x26670F130]();
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v2 = v3 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v1 - 1 != v3);
  }

LABEL_14:
}

uint64_t Prim.setAttribute<A>(of:color:as:at:custom:variability:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, int a3@<W3>, _BYTE *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>)
{
  v24[1] = a3;
  v16 = type metadata accessor for ManagedColor(0, a5, a6, a7);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v24 - v19;
  LOBYTE(a4) = *a4;
  v26 = *a1;
  v21 = a2;
  ManagedColor.init(_:)(v21, a5, a6, v20, v22);
  v25 = a4;
  Prim.setAttribute<A>(of:value:at:custom:variability:)(v20, v16, &protocol witness table for ManagedColor<A>, a8, a9);
  return (*(v17 + 8))(v20, v16);
}

void Prim.createAttribute<A>(of:type:custom:variability:)(uint64_t *a1, uint64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 32))(&v7, a5, a6);
  v6 = v7;
}

uint64_t Prim.setRelationship(of:targets:custom:)@<X0>(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  Relationship = RIOPxrUsdPrimCreateCreateRelationship();
  v7 = *(a2 + 16);
  if (v7)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = (a2 + 32);
    do
    {
      v9 = *v8++;
      v10 = v9;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v7;
    }

    while (v7);
  }

  type metadata accessor for RIOPxrSdfPathRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = RIOPxrUsdRelationshipSetTargets();

  if (v12)
  {
    type metadata accessor for Relationship();
    result = swift_allocObject();
    *(result + 16) = Relationship;
  }

  else
  {

    result = 1;
  }

  *a4 = result;
  *(a4 + 8) = v12 ^ 1;
  return result;
}

uint64_t (*Prim.active.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = RIOPxrUsdPrimIsActive();
  return Prim.active.modify;
}

uint64_t Prim.getVariantSets()(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = a1(*(v3 + 16));
  a3(a2);
  result = swift_allocObject();
  *(result + 16) = v6;
  return result;
}

unint64_t Object.allowedTokens.getter(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(BOOL, uint64_t, uint64_t))
{
  v6 = a1(*(v3 + 16));
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = v6;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      a2(0);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();

      v9 = v7;
      if (v7 >> 62)
      {
LABEL_15:
        v10 = __CocoaSet.count.getter();
        if (!v10)
        {
          goto LABEL_16;
        }

        goto LABEL_7;
      }
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
      if (MEMORY[0x277D84F90] >> 62)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_15;
    }
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_16:

    return MEMORY[0x277D84F90];
  }

LABEL_7:
  result = a3(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = v7;
    if ((v9 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v10; ++i)
      {
        v14 = MEMORY[0x26670F670](i, v9);
        v16 = *(v12 + 16);
        v15 = *(v12 + 24);
        if (v16 >= v15 >> 1)
        {
          v17 = v14;
          a3(v15 > 1, v16 + 1, 1);
          v14 = v17;
        }

        *(v12 + 16) = v16 + 1;
        *(v12 + 8 * v16 + 32) = v14;
      }
    }

    else
    {
      v18 = 32;
      do
      {
        v19 = *(v7 + 16);
        v20 = *(v7 + 24);
        v21 = *(v9 + v18);
        if (v19 >= v20 >> 1)
        {
          v22 = v20 > 1;
          v23 = v21;
          a3(v22, v19 + 1, 1);
          v21 = v23;
        }

        *(v7 + 16) = v19 + 1;
        *(v7 + 8 * v19 + 32) = v21;
        v18 += 8;
        --v10;
      }

      while (v10);
    }

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t (*Prim.appliedSchemas.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = Prim.appliedSchemas.getter();
  return Prim.appliedSchemas.modify;
}

uint64_t Prim.prototype.getter()
{
  result = RIOPxrUsdPrimCopyPrototype();
  if (result)
  {
    v1 = result;
    type metadata accessor for Prim();
    result = swift_allocObject();
    *(result + 16) = v1;
  }

  return result;
}

uint64_t (*Prim.taggedAsEntity.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = RIOPxrUsdPrimGetTaggedAsEntity();
  return Prim.taggedAsEntity.modify;
}

void Prim.propertyOrder.setter(uint64_t a1, void (*a2)(uint64_t, Class))
{
  v5 = *(v2 + 16);
  v6 = *(a1 + 16);
  if (v6)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = 32;
    do
    {
      v8 = *(a1 + v7);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  a2(v5, isa);
}

uint64_t (*Prim.childrenOrder.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = Prim.childrenOrder.getter();
  return Prim.childrenOrder.modify;
}

unint64_t Prim.filteredDescendants(predicate:)(void *a1)
{
  return Prim.filteredChildren(predicate:)(a1, MEMORY[0x277D00B68]);
}

{
  return Prim.filteredChildren(predicate:)(a1, MEMORY[0x277D00BB0], MEMORY[0x277D00B68]);
}

{
  return Prim.filteredChildren(predicate:)(a1, MEMORY[0x277D00BD0], MEMORY[0x277D00B68]);
}

unint64_t Prim.filteredChildren(predicate:)(void *a1, uint64_t (*a2)(void, void))
{
  v3 = a2(*(v2 + 16), *a1);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOPxrUsdObjectRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v6 = v5;
    if (!(v5 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_11:

      return MEMORY[0x277D84F90];
    }
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_4:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        v10 = v9 + 1;
        v11 = MEMORY[0x26670F670]();
        type metadata accessor for Prim();
        *(swift_allocObject() + 16) = v11;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v9 = v10;
      }

      while (v7 != v10);
    }

    else
    {
      type metadata accessor for Prim();
      v12 = 32;
      do
      {
        v13 = *(v6 + v12);
        *(swift_allocObject() + 16) = v13;
        v14 = v13;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v12 += 8;
        --v7;
      }

      while (v7);
    }

    return v5;
  }

  return result;
}

uint64_t Prim.filteredChildren(predicate:)(uint64_t a1, char a2, uint64_t (*a3)(void **))
{
  v4 = RIOPxrUsdPrimFlagsPredicateCreateWithTerm();
  v7 = v4;
  v5 = a3(&v7);

  return v5;
}

unint64_t Prim.filteredChildren(predicate:)(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, id))
{
  v5 = *(v3 + 16);
  v6 = a2(*a1);
  v7 = a3(v5, v6);

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    type metadata accessor for RIOPxrUsdObjectRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v10 = v9;
    if (!(v9 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_11:

      return MEMORY[0x277D84F90];
    }
  }

  v11 = __CocoaSet.count.getter();
  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_4:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        v14 = v13 + 1;
        v15 = MEMORY[0x26670F670]();
        type metadata accessor for Prim();
        *(swift_allocObject() + 16) = v15;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v13 = v14;
      }

      while (v11 != v14);
    }

    else
    {
      type metadata accessor for Prim();
      v16 = 32;
      do
      {
        v17 = *(v10 + v16);
        *(swift_allocObject() + 16) = v17;
        v18 = v17;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v16 += 8;
        --v11;
      }

      while (v11);
    }

    return v9;
  }

  return result;
}

void Prim.traverse(with:)(void (*a1)(uint64_t))
{
  AllPrimsPredicate = RIOPxrUsdPrimFlagsCreateAllPrimsPredicate();
  v3 = RIOPxrUsdPrimFlagsConjunctionPredicateToRIOPxrUsdPrimFlagsPredicate();

  v4 = RIOPxrUsdPrimCopyFilteredDescendants();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOPxrUsdObjectRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v2 = v3;
  }

  else
  {

    v2 = v4;
  }
}

uint64_t static PrimFlagsConjunctionPredicate.AllPrims.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdPrimFlagsCreateAllPrimsPredicate();
  *a1 = result;
  return result;
}

void __swiftcall Prim.localTransformation(at:)(simd_double4x4_optional *__return_ptr retstr, Swift::Double at)
{
  v28 = *MEMORY[0x277D85DE8];
  if (String.count.getter() < 1)
  {
    v3 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v3 = RIOPxrTfTokenCreateWithCString();
  }

  v4 = v3;
  IsAType = RIOPxrUsdPrimIsAType();

  if (IsAType && RIOPxrUsdGeomXformableXformQueryGetLocalTransformation())
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    _sSo14simd_double4x4aSgWOi_(&v10);
    v25 = v16;
    v26 = v17;
    v27 = v18;
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v19 = v10;
    v20 = v11;
  }

  else
  {
    _sSo14simd_double4x4aSgWOi0_(&v19);
  }

  v6 = v26;
  *retstr->value.columns[3].f64 = v25;
  *&retstr->value.columns[3].f64[2] = v6;
  retstr->is_nil = v27;
  v7 = v22;
  *retstr->value.columns[1].f64 = v21;
  *&retstr->value.columns[1].f64[2] = v7;
  v8 = v24;
  *retstr->value.columns[2].f64 = v23;
  *&retstr->value.columns[2].f64[2] = v8;
  v9 = v20;
  *retstr->value.columns[0].f64 = v19;
  *&retstr->value.columns[0].f64[2] = v9;
}

uint64_t Prim.timeSamples.getter()
{
  if (String.count.getter() < 1)
  {
    v0 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v0 = RIOPxrTfTokenCreateWithCString();
  }

  v1 = v0;
  IsAType = RIOPxrUsdPrimIsAType();

  v3 = MEMORY[0x277D84F90];
  if (IsAType)
  {
    CopyTimeSamples = RIOPxrUsdGeomXformableXformQueryCopyTimeSamples();
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  return v3;
}

char *Property.propertyStack(time:)()
{
  v0 = RIOPxrUsdPropertyCopyPropertyStack();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    type metadata accessor for RIOPxrSdfReferenceRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    v3 = v2;
    if (!(v2 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_13:

      return MEMORY[0x277D84F90];
    }
  }

  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = v2;
    if ((v3 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        v8 = MEMORY[0x26670F670](i, v3);
        v10 = *(v6 + 16);
        v9 = *(v6 + 24);
        if (v10 >= v9 >> 1)
        {
          v11 = v8;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v8 = v11;
        }

        *(v6 + 16) = v10 + 1;
        *(v6 + 8 * v10 + 32) = v8;
      }
    }

    else
    {
      v12 = 32;
      do
      {
        v13 = *(v2 + 16);
        v14 = *(v2 + 24);
        v15 = *(v3 + v12);
        if (v13 >= v14 >> 1)
        {
          v16 = v14 > 1;
          v17 = v15;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16, v13 + 1, 1);
          v15 = v17;
        }

        *(v2 + 16) = v13 + 1;
        *(v2 + 8 * v13 + 32) = v15;
        v12 += 8;
        --v4;
      }

      while (v4);
    }

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t Property.baseName()@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdPropertyCopyBaseName();
  *a1 = result;
  return result;
}

uint64_t Property.namespace()@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdPropertyCopyNamespace();
  *a1 = result;
  return result;
}

uint64_t Property.splitName()()
{
  v0 = RIOPxrUsdPropertyCopySplitName();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  return MEMORY[0x277D84F90];
}

uint64_t Attribute.value.setter(uint64_t a1)
{
  v3 = *v1;
  specialized Attribute.value.setter(a1);
  v4 = *(*(*(v3 + 96) - 8) + 8);

  return v4(a1);
}

uint64_t (*Attribute.value.modify(void *a1))()
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *(*v2 + 96);
  v5[1] = v7;
  v8 = *(v7 - 8);
  v5[2] = v8;
  v9 = *(v8 + 64);
  if (v4)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[4] = v10;
  static UsdAttributeValue.getValue(from:time:)(v2);
  return Attribute.value.modify;
}

void Attribute.value.modify(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (v6[2])((*a1)[3], v4, v5);
    static UsdAttributeValue.setValue(_:to:time:)(v3, v7);
    v8 = v6[1];
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    static UsdAttributeValue.setValue(_:to:time:)((*a1)[4], v7);
    (v6[1])(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Attribute.subscript.setter(uint64_t a1, double a2)
{
  v4 = *v2;
  specialized Attribute.subscript.setter(a1);
  v5 = *(*(*(v4 + 96) - 8) + 8);

  return v5(a1);
}

void (*Attribute.subscript.modify(uint64_t *a1, double a2))(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  *(v7 + 8) = v3;
  *v7 = a2;
  v9 = *(*v3 + 96);
  *(v7 + 16) = v9;
  v10 = *(v9 - 8);
  *(v7 + 24) = v10;
  v11 = *(v10 + 64);
  if (v6)
  {
    *(v7 + 32) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v7 + 32) = malloc(v11);
    v12 = malloc(v11);
  }

  *(v8 + 40) = v12;
  static UsdAttributeValue.getValue(from:time:)(v3);
  return Attribute.subscript.modify;
}

void Attribute.subscript.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  v7 = *(*a1 + 8);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    static UsdAttributeValue.setValue(_:to:time:)(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    static UsdAttributeValue.setValue(_:to:time:)(*(*a1 + 40), v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void Relationship.targets.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = 32;
    do
    {
      v5 = *(a1 + v4);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 8;
      --v3;
    }

    while (v3);

    type metadata accessor for RIOPxrSdfPathRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    RIOPxrUsdRelationshipSetTargets();
  }

  else
  {

    v6 = *(v1 + 16);

    MEMORY[0x282156278](v6, 1);
  }
}

uint64_t (*Relationship.targets.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = Relationship.targets.getter();
  return Relationship.targets.modify;
}

void key path setter for Relationship.target : Relationship(void **a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v1;
  v3 = v1;
  Relationship.targets.setter(inited);
}

void Relationship.target.setter(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v1;
  Relationship.targets.setter(inited);
}

void (*Relationship.target.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = Relationship.targets.getter();
  if (*(v5 + 16))
  {
    EmptyPath = *(v5 + 32);
  }

  else
  {

    EmptyPath = RIOPxrSdfPathCreateEmptyPath();
  }

  *(v4 + 80) = EmptyPath;
  return Relationship.target.modify;
}

void Relationship.target.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
  if (a2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2619891C0;
    *(inited + 32) = v4;
    v6 = v4;
    Relationship.targets.setter(inited);
  }

  else
  {
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_2619891C0;
    *(v7 + 32) = v4;
    Relationship.targets.setter(v7);
  }

  free(v3);
}

void AnyAttribute.value.setter(void *a1)
{
  RIOPxrUsdAttributeSetValue();
}

void (*AnyAttribute.value.modify(uint64_t *a1))(id *a1)
{
  a1[1] = *(v1 + 16);
  EmptyValue = RIOPxrUsdAttributeCopyValue();
  if (!EmptyValue)
  {
    EmptyValue = RIOPxrVtValueCreateEmptyValue();
  }

  *a1 = EmptyValue;
  return AnyAttribute.value.modify;
}

void AnyAttribute.value.modify(id *a1)
{
  v1 = *a1;
  RIOPxrUsdAttributeSetValue();
}

uint64_t AnyAttribute.subscript.getter(double a1)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (!result)
  {

    return RIOPxrVtValueCreateEmptyValue();
  }

  return result;
}

uint64_t key path getter for AnyAttribute.subscript(at:) : AnyAttribute@<X0>(uint64_t *a3@<X8>)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (!result)
  {
    result = RIOPxrVtValueCreateEmptyValue();
  }

  *a3 = result;
  return result;
}

void AnyAttribute.subscript.setter(void *a1, double a2)
{
  RIOPxrUsdAttributeSetValue();
}

void (*AnyAttribute.subscript.modify(uint64_t a1, double a2))(id *a1)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = *(v2 + 16);
  EmptyValue = RIOPxrUsdAttributeCopyValue();
  if (!EmptyValue)
  {
    EmptyValue = RIOPxrVtValueCreateEmptyValue();
  }

  *a1 = EmptyValue;
  return AnyAttribute.subscript.modify;
}

void AnyAttribute.subscript.modify(id *a1)
{
  v1 = *a1;
  RIOPxrUsdAttributeSetValue();
}

unint64_t AnyAttribute.sdfVariability.getter@<X0>(BOOL *a1@<X8>)
{
  result = RIOPxrUsdAttributeGetVariability();
  if (result > 2)
  {
    __break(1u);
  }

  else
  {
    *a1 = (result & 1) == 0;
  }

  return result;
}

uint64_t AnyAttribute.timeSamples.getter()
{
  v0 = RIOPxrUsdAttributeCopyTimeSamples();
  static Array._conditionallyBridgeFromObjectiveC(_:result:)();

  return MEMORY[0x277D84F90];
}

Swift::Void __swiftcall AnyAttribute.setConnections(connections:)(Swift::OpaquePointer connections)
{
  v1 = *(connections._rawValue + 2);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (connections._rawValue + 32);
    do
    {
      v4 = *v3++;
      v5 = v4;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrSdfPathRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  RIOPxrUsdAttributeSetConnections();
}

uint64_t Prim.propertyNames()(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(BOOL, uint64_t, uint64_t))
{
  v6 = a1(*(v3 + 16));
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      a2(0);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_20:

    return MEMORY[0x277D84F90];
  }

  v10 = __CocoaSet.count.getter();
  if (!v10)
  {
    goto LABEL_20;
  }

LABEL_7:
  result = a3(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = v7;
    if ((v9 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v10; ++i)
      {
        v14 = MEMORY[0x26670F670](i, v9);
        v16 = *(v12 + 16);
        v15 = *(v12 + 24);
        if (v16 >= v15 >> 1)
        {
          v17 = v14;
          a3(v15 > 1, v16 + 1, 1);
          v14 = v17;
        }

        *(v12 + 16) = v16 + 1;
        *(v12 + 8 * v16 + 32) = v14;
      }
    }

    else
    {
      v18 = 32;
      do
      {
        v19 = *(v7 + 16);
        v20 = *(v7 + 24);
        v21 = *(v9 + v18);
        if (v19 >= v20 >> 1)
        {
          v22 = v20 > 1;
          v23 = v21;
          a3(v22, v19 + 1, 1);
          v21 = v23;
        }

        *(v7 + 16) = v19 + 1;
        *(v7 + 8 * v19 + 32) = v21;
        v18 += 8;
        --v10;
      }

      while (v10);
    }

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t AnyAttribute.colorSpace.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdAttributeCopyColorSpace();
  *a1 = result;
  return result;
}

void AnyAttribute.colorSpace.setter(id *a1)
{
  v1 = *a1;
  RIOPxrUsdAttributeSetColorSpace();
}

void (*AnyAttribute.colorSpace.modify(uint64_t *a1))(id *a1)
{
  a1[1] = *(v1 + 16);
  *a1 = RIOPxrUsdAttributeCopyColorSpace();
  return AnyAttribute.colorSpace.modify;
}

void AnyAttribute.colorSpace.modify(id *a1)
{
  v1 = *a1;
  RIOPxrUsdAttributeSetColorSpace();
}

id key path setter for Properties.subscript<A>(dynamicMember:) : <A><A1>Properties<A>AA1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *a3;
  v7 = type metadata accessor for Properties(0, *(a3 + a4 - 24), a3, a4);

  return specialized Properties.subscript.setter(a1, v6, v7, v5);
}

uint64_t Properties.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>, double a5@<D0>)
{
  v9 = *a1;
  swift_getAtKeyPath();
  if (String.count.getter() < 1)
  {

    v10 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();

    v10 = RIOPxrTfTokenCreateWithCString();
  }

  v21 = v10;
  v11 = *(*(v9 + *MEMORY[0x277D84DE8] + 8) + 16);
  Prim.attribute<A>(of:type:)(v11, a3, &v24);

  v21 = v24;
  v22 = v25;
  type metadata accessor for Attribute(255, v11, a3, v12);
  lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
  v13 = type metadata accessor for Result();
  v14 = _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF(v13, &v20, &v23);
  v24 = v23;
  MEMORY[0x28223BE20](v14, v15);
  v19[2] = *(a2 + 16);
  v19[3] = v11;
  v19[4] = a3;
  *&v19[5] = a5;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in Properties.subscript.getter, v19, MEMORY[0x277D84A98], v11, v16, a4, v17);
}

id Properties.subscript.setter(uint64_t a1, void *a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v31 = a6;
  v33 = a4;
  v30 = a3;
  v11 = *(*(*a2 + *MEMORY[0x277D84DE8] + 8) + 16);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v15.n128_f32[0] = MEMORY[0x28223BE20](v12, v14);
  v17 = v27 - v16;
  v18 = *(v11 - 8);
  MEMORY[0x28223BE20](v19, v15);
  v21 = v27 - v20;
  v32 = v7;
  swift_getAtKeyPath();
  (*(v13 + 16))(v17, a1, v12);
  if ((*(v18 + 48))(v17, 1, v11) == 1)
  {
    v22 = *(v13 + 8);
    v22(a1, v12);

    return (v22)(v17, v12);
  }

  else
  {
    v27[1] = a2;
    v28 = v18;
    v29 = a1;
    (*(v18 + 32))(v21, v17, v11);
    if (String.count.getter() < 1)
    {

      result = RIOPxrTfTokenEmpty();
      v24 = result;
    }

    else
    {
      String.utf8CString.getter();

      v24 = RIOPxrTfTokenCreateWithCString();
    }

    v25 = v28;
    v35 = v24;
    v26 = v29;
    if (v33 > 2)
    {
      __break(1u);
    }

    else
    {
      v34 = (v33 & 1) == 0;
      Prim.setAttribute<A>(of:value:at:custom:variability:)(v21, v11, v31, &v36, a7);

      (*(v13 + 8))(v26, v12);

      outlined consume of Result<AnyAttribute, Object.Error>(v36, v37);
      return (*(v25 + 8))(v21, v11);
    }
  }

  return result;
}

void (*Properties.subscript.modify(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = type metadata accessor for Optional();
  v11[4] = v12;
  v13 = *(v12 - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  Properties.subscript.getter(a2, a3, a4, v15, NAN);
  return Properties.subscript.modify;
}

void Properties.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);

    specialized Properties.subscript.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {

    specialized Properties.subscript.setter(v4, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t key path getter for Properties.subscript<A>(of:at:custom:variability:) : <A><A1>Properties<A>AA1@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v5 = *(a1 + a2 - 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = type metadata accessor for Properties(0, *(a1 + a2 - 24), a2, a4);
  return Properties.subscript.getter(v6, v8, v5, a3, v7);
}

id key path setter for Properties.subscript<A>(of:at:custom:variability:) : <A><A1>Properties<A>AA1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 8);
  v8 = type metadata accessor for Optional();
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v22 - v11;
  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = *(a3 + 16);
  v16 = *(a3 + 24);
  (*(v17 + 16))(&v22 - v11, a1, v10);
  v20 = type metadata accessor for Properties(0, v6, v18, v19);

  return Properties.subscript.setter(v12, v13, v15, v16, v20, v7, v14);
}

void (*Properties.subscript.modify(uint64_t *a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7))(double **a1, char a2)
{
  v15 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v16 = malloc(0x58uLL);
  }

  v17 = v16;
  *a1 = v16;
  *(v16 + 32) = a6;
  *(v16 + 40) = v7;
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 80) = a3 & 1;
  *(v16 + 8) = a7;
  *v16 = a2;
  v18 = type metadata accessor for Optional();
  v17[6] = v18;
  v19 = *(v18 - 8);
  v17[7] = v19;
  v20 = *(v19 + 64);
  if (v15)
  {
    v17[8] = swift_coroFrameAlloc();
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v17[8] = malloc(*(v19 + 64));
    v21 = malloc(v20);
  }

  v17[9] = v21;
  Properties.subscript.getter(a2, a5, a6, v21, a7);
  return Properties.subscript.modify;
}

void Properties.subscript.modify(double **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 9);
  if (a2)
  {
    v5 = *(v2 + 6);
    v6 = *(v2 + 7);
    v7 = *(v2 + 4);
    v9 = *(v2 + 2);
    v8 = *(v2 + 3);
    v10 = *(v2 + 80);
    v11 = v2[1];
    v12 = *v2;
    (*(v6 + 16))(v3, v4, v5);

    Properties.subscript.setter(v3, v12, v10, v9, v8, v7, v11);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v13 = *(v2 + 4);
    v15 = *(v2 + 2);
    v14 = *(v2 + 3);
    v16 = *(v2 + 80);
    v17 = v2[1];
    v18 = *v2;

    Properties.subscript.setter(v4, v18, v16, v15, v14, v13, v17);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t (*Properties.subscript.modify(unint64_t *a1, uint64_t a2, uint64_t a3))()
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = specialized Properties.subscript.getter(a2, a3);
  return Properties.subscript.modify;
}

uint64_t key path setter for Properties.subscript(dynamicMember:) : <A>Properties<A>A(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v6 = *a3;
  v7 = type metadata accessor for Properties(0, *(a3 + a4 - 8), a3, a4);

  return a5(v8, v6, v7);
}

uint64_t (*Properties.subscript.modify(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  a1[2] = a4;
  a1[3] = v4;
  a1[1] = a2;
  *a1 = specialized Properties.subscript.getter(a2, a4);
  return Properties.subscript.modify;
}

uint64_t Properties.subscript.modify(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = *a1;
  v4 = a1[1];
  if (a2)
  {

    specialized Properties.subscript.setter(v3, v4, v2);
  }

  else
  {

    return specialized Properties.subscript.setter(v3, v4, v2);
  }
}

char *StaticTypePrim.__allocating_init(prim:type:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v6 = specialized StaticTypePrim.init(prim:type:)(a1, a2, v4, v5);

  return v6;
}

uint64_t key path setter for StaticTypePrim.subscript<A>(of:at:custom:variability:) : <A><A1>StaticTypePrim<A>AA1(uint64_t a1, uint64_t a2, double *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 16);
  v9 = *(a3 + 3);

  return specialized StaticTypePrim.subscript.setter(a1, v6, v8, v9, v5, v7);
}

uint64_t key path setter for StaticTypePrim.subscript(dynamicMember:) : <A>StaticTypePrim<A>A(void *a1, uint64_t a2, uint64_t *a3)
{

  return StaticTypePrim.subscript.setter();
}

uint64_t key path setter for StaticTypePrim.subscript(of:custom:) : <A>StaticTypePrim<A>A(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a1;

  return StaticTypePrim.subscript.setter(v4, v3);
}

uint64_t StaticTypePrim.__deallocating_deinit()
{
  StaticTypePrim.deinit();

  return swift_deallocClassInstance();
}

uint64_t StaticTypePrim.description.getter()
{
  v0 = RIOPxrUsdObjectCopyPath();
  v1 = RIOPxrSdfPathCopyString();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t StaticTypePrim.debugDescription.getter()
{
  MEMORY[0x26670F080](60, 0xE100000000000000);
  v0 = _typeName(_:qualified:)();
  MEMORY[0x26670F080](v0);

  MEMORY[0x26670F080](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26670F080](62, 0xE100000000000000);
  v1 = Object.debugDescription.getter();
  MEMORY[0x26670F080](v1);

  MEMORY[0x26670F080](10, 0xE100000000000000);

  return 0;
}

uint64_t PrimFlagsConjunctionPredicate.init()@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdPrimFlagsConjunctionPredicateCreate();
  *a1 = result;
  return result;
}

uint64_t static PrimFlagsConjunctionPredicate.&& infix(_:_:)@<X0>(uint64_t *a4@<X8>)
{
  result = RIOPxrUsdPrimFlagsCreateConjunctionPredicateJoinWithTerm();
  *a4 = result;
  return result;
}

{
  result = RIOPxrUsdPrimFlagsCreateConjunctionPredicateJoinWithTerm();
  *a4 = result;
  return result;
}

void static RIOPxrUsdTerm.&& infix(_:_:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t (*a5)(void)@<X4>, uint64_t (*a6)(void *, uint64_t, void)@<X5>, uint64_t *a7@<X8>)
{
  v13 = a5();
  v14 = a6(v13, a1, a2 & 1);

  v15 = a6(v14, a3, a4 & 1);
  *a7 = v15;
}

uint64_t PrimFlagsDisjunctionPredicate.init()@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdPrimFlagsDisjunctionPredicateCreate();
  *a1 = result;
  return result;
}

uint64_t static PrimFlagsDisjunctionPredicate.|| infix(_:_:)@<X0>(uint64_t *a4@<X8>)
{
  result = RIOPxrUsdPrimFlagsCreateDisjunctionPredicateJoinWithTerm();
  *a4 = result;
  return result;
}

{
  result = RIOPxrUsdPrimFlagsCreateDisjunctionPredicateJoinWithTerm();
  *a4 = result;
  return result;
}

uint64_t PrimFlagsPredicate.init()@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdPrimFlagsPredicateCreate();
  *a1 = result;
  return result;
}

uint64_t static PrimFlagsPredicate.Tautology.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdPrimFlagsPredicateCreateTautology();
  *a1 = result;
  return result;
}

uint64_t static PrimFlagsPredicate.Contradiction.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdPrimFlagsPredicateCreateContradiction();
  *a1 = result;
  return result;
}

uint64_t PrimFlagsPredicate.traverseInstanceProxies(_:)@<X0>(uint64_t *a2@<X8>)
{
  result = RIOPxrUsdPrimFlagsPredicateCopyTraverseInstanceProxies();
  *a2 = result;
  return result;
}

uint64_t static PrimFlagsConjunctionPredicate.! prefix(_:)@<X0>(uint64_t *a2@<X8>)
{
  result = RIOPxrUsdPrimFlagsCreateConjunctionPredicateNegation();
  *a2 = result;
  return result;
}

uint64_t PrimFlagsConjunctionPredicate.isInstanceProxiesInTraversalIncluded.getter()
{
  v0 = RIOPxrUsdPrimFlagsConjunctionPredicateToRIOPxrUsdPrimFlagsPredicate();
  v1 = RIOPxrUsdPrimFlagsPredicateIncludeInstanceProxiesInTraversal();

  return v1;
}

uint64_t static PrimFlagsConjunctionPredicate.Default.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdPrimFlagsCreateDefaultPredicate();
  *a1 = result;
  return result;
}

void PrimFlagsConjunctionPredicate.init(_:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void *, uint64_t, void)@<X3>, uint64_t *a5@<X8>)
{
  v9 = a3();
  v10 = a4(v9, a1, a2 & 1);

  *a5 = v10;
}

uint64_t static PrimFlagsDisjunctionPredicate.! prefix(_:)@<X0>(uint64_t *a2@<X8>)
{
  result = RIOPxrUsdPrimFlagsCreateDisjunctionPredicateNegation();
  *a2 = result;
  return result;
}

uint64_t PrimFlagsConjunctionPredicate.traverseInstanceProxies(_:)@<X0>(uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  v7 = a2(*v4);
  RIOPxrUsdPrimFlagsPredicateCopyTraverseInstanceProxies();

  a3(0);
  result = swift_dynamicCastUnknownClassUnconditional();
  *a4 = result;
  return result;
}

uint64_t PrimFlagsDisjunctionPredicate.isInstanceProxiesInTraversalIncluded.getter()
{
  v0 = RIOPxrUsdPrimFlagsDisjunctionPredicateToRIOPxrUsdPrimFlagsPredicate();
  v1 = RIOPxrUsdPrimFlagsPredicateIncludeInstanceProxiesInTraversal();

  return v1;
}

uint64_t PrimFlagsConjunctionPredicate.callAsFunction(prim:)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(*v2);
  v4 = RIOPxrUsdPrimFlagsPredicateVerifyRIOPxrUsdPrim();

  return v4;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys5Int16VGMd, &_ss23_ContiguousArrayStorageCys5Int16VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys5SIMD3VySiGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySiGGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys5SIMD4VySiGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4VySiGGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR, &type metadata for SceneDescriptionFoundations.Path);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR, &type metadata for ToolsFoundations.Token);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO9AssetPathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO9AssetPathVGMR, &type metadata for SceneDescriptionFoundations.AssetPath);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO8PrimSpecVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO8PrimSpecVGMR, &type metadata for SceneDescriptionFoundations.PrimSpec);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO9ReferenceVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO9ReferenceVGMR, &type metadata for SceneDescriptionFoundations.Reference);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay10RealityKit29__RKEntityActionSpecificationOGGMd, &_ss23_ContiguousArrayStorageCySay10RealityKit29__RKEntityActionSpecificationOGGMR, &_sSay10RealityKit29__RKEntityActionSpecificationOGMd, &_sSay10RealityKit29__RKEntityActionSpecificationOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay10RealityKit17AnimationResourceCGGMd, &_ss23_ContiguousArrayStorageCySay10RealityKit17AnimationResourceCGGMR, &_sSay10RealityKit17AnimationResourceCGMd, &_sSay10RealityKit17AnimationResourceCGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay10RealityKit30__RKEntityTriggerSpecificationOGGMd, &_ss23_ContiguousArrayStorageCySay10RealityKit30__RKEntityTriggerSpecificationOGGMR, &_sSay10RealityKit30__RKEntityTriggerSpecificationOGMd, &_sSay10RealityKit30__RKEntityTriggerSpecificationOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySaySdGGMd, &_ss23_ContiguousArrayStorageCySaySdGGMR, &_sSaySdGMd, &_sSaySdGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySaySfGGMd, &_ss23_ContiguousArrayStorageCySaySfGGMR, &_sSaySfGMd, &_sSaySfGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySays5Int32VGGMd, &_ss23_ContiguousArrayStorageCySays5Int32VGGMR, &_sSays5Int32VGMd, &_sSays5Int32VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO7Frame4DVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO7Frame4DVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 7);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13simd_float2x2aGMd, &_ss23_ContiguousArrayStorageCySo13simd_float2x2aGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13simd_float3x3aGMd, &_ss23_ContiguousArrayStorageCySo13simd_float3x3aGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13simd_float4x4aGMd, &_ss23_ContiguousArrayStorageCySo13simd_float4x4aGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys4Int8VGMd, &_ss23_ContiguousArrayStorageCys4Int8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2VySiGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2VySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16OutputDescriptorOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16OutputDescriptorOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO6InputsC13PropertyDeltaVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO6InputsC13PropertyDeltaVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyytGMd, &_ss23_ContiguousArrayStorageCyytGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}