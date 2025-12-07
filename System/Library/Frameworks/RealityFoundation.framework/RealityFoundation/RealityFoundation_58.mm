void specialized __REAssetService.firstUnloadedAssetIncludingDependencies(_:)(uint64_t a1)
{
  if (!REAssetHandleIsLoaded())
  {

    return;
  }

  v2 = __REAssetManager.__getDependencies(asset:)(a1);
  MEMORY[0x1EEE9AC00](v2);
  v4[2] = &v5;
  v3 = specialized Sequence.compactMap<A>(_:)(closure #1 in __REAssetService.firstUnloadedAssetIncludingDependencies(_:)specialized partial apply, v4, v2);

  if (v3 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_9;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

    return;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68F41F0](0, v3);
    goto LABEL_9;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_9;
  }

  __break(1u);
}

uint64_t static __REAssetBundle.__init(element:assetService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1898160;
  *(inited + 32) = a1;
  v12 = MEMORY[0x1E69E7CC8];
  v10[2] = a2;
  v10[3] = &v12;

  v7 = specialized Sequence.compactMap<A>(_:)(closure #1 in static __REAssetBundle.__init(elements:assetService:)partial apply, v10, inited);

  v8 = v12;
  outlined init with copy of __REAssetService(a2, v11);
  return __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)(v7, v11, v8, 0, a3);
}

void closure #1 in static __REAssetBundle.__init(elements:assetService:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, Swift::Int *a3@<X2>, uint64_t *a4@<X8>)
{
  v58 = a3;
  v59 = a4;
  v60 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = &v53 - v6;
  v7 = type metadata accessor for UUID();
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *a1;
  REEntityGetName();
  v9 = String.init(cString:)();
  v11 = v10;
  v68 = 0x2A3F227C3E3C3ALL;
  v69 = 0xE700000000000000;
  v70 = xmmword_1C18D30A0;
  v12 = String.Iterator.next()();
  if (v12.value._object)
  {
    object = v12.value._object;
    lazy protocol witness table accessor for type String and conformance String();
    countAndFlagsBits = v12.value._countAndFlagsBits;
    do
    {
      v65[0] = v9;
      v65[1] = v11;
      v63 = countAndFlagsBits;
      v64 = object;
      v61 = 95;
      v62 = 0xE100000000000000;
      v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v16 = v15;

      v17 = String.Iterator.next()();
      countAndFlagsBits = v17.value._countAndFlagsBits;
      object = v17.value._object;
      v11 = v16;
    }

    while (v17.value._object);
  }

  else
  {
    v16 = v11;
  }

  v68 = 0;
  v69 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v68 = 0x3A79726F6D656DLL;
  v69 = 0xE700000000000000;
  MEMORY[0x1C68F3410](v9, v16);

  v65[0] = static __REAssetBundle.sceneConversionCounter;
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v18);

  MEMORY[0x1C68F3410](0x656C69706D6F632ELL, 0xEE00656E65637364);
  if (static __REAssetBundle.sceneConversionCounter == -1)
  {
    __break(1u);
    goto LABEL_32;
  }

  v19 = v68;
  v20 = v69;
  ++static __REAssetBundle.sceneConversionCounter;
  outlined init with copy of __REAssetService(v60, &v68);
  outlined init with copy of __REAssetService(&v68, v65);
  type metadata accessor for __REAsset();
  v21 = swift_allocObject();
  v22 = v66;
  v23 = v67;
  __swift_project_boxed_opaque_existential_1(v65, v66);
  (*(v23 + 32))(v22, v23);
  String.utf8CString.getter();
  v24 = REAssetManagerSceneAssetCreateFromEntity();

  if (!v24)
  {
    lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
    v30 = swift_allocError();
    *v31 = v19;
    *(v31 + 8) = v20;
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(v65);
    __swift_destroy_boxed_opaque_existential_1(&v68);
    v32 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v33 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v33, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v68 = v36;
      *v34 = 136315394;
      REEntityGetName();
      v37 = String.init(cString:)();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v68);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2112;
      v40 = v30;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v41;
      *v35 = v41;
      _os_log_impl(&dword_1C1358000, v33, v32, "Failed to create asset from entity %s: %@", v34, 0x16u);
      outlined destroy of BodyTrackingComponent?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1C6902A30](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1C6902A30](v36, -1, -1);
      MEMORY[0x1C6902A30](v34, -1, -1);
    }

    else
    {
    }

    v21 = 0;
    goto LABEL_30;
  }

  *(v21 + 16) = v24;
  __swift_destroy_boxed_opaque_existential_1(v65);
  __swift_destroy_boxed_opaque_existential_1(&v68);
  SceneNullable = REEntityGetSceneNullable();
  if (SceneNullable)
  {
    v26 = SceneNullable;
    v27 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    v29 = v55;
    v28 = v56;
    if (v27)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v26);
    }

    v42 = v57;
    Scene.__sceneIdentifier.getter(v57);

    if ((*(v29 + 48))(v42, 1, v28) != 1)
    {
      v44 = v54;
      (*(v29 + 32))(v54, v42, v28);
      UUID.uuidString.getter();
      v43 = v45;
      (*(v29 + 8))(v44, v28);
      goto LABEL_20;
    }
  }

  else
  {
    v42 = v57;
    (*(v55 + 56))(v57, 1, 1, v56);
  }

  outlined destroy of BodyTrackingComponent?(v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v43 = 0;
LABEL_20:
  REEntityGetName();
  String.init(cString:)();
  String.utf8CString.getter();

  if (v43)
  {
    String.utf8CString.getter();
  }

  v46 = RESceneDescriptorCreateFromParams();

  swift_unknownObjectRelease();
  type metadata accessor for RESceneDescriptor();
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  v48 = v58;
  v49 = *v58;
  if ((*v58 & 0xC000000000000001) == 0)
  {

    goto LABEL_29;
  }

  if (v49 < 0)
  {
    v50 = *v58;
  }

  else
  {
    v50 = v49 & 0xFFFFFFFFFFFFFF8;
  }

  v51 = __CocoaSet.count.getter();
  if (!__OFADD__(v51, 1))
  {
    *v48 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC10RealityKit9__REAssetC_0E10Foundation17RESceneDescriptorCTt1g5(v50, v51 + 1);
LABEL_29:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = *v48;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v47, v21, isUniquelyReferenced_nonNull_native);
    *v48 = v68;

LABEL_30:
    *v59 = v21;
    return;
  }

LABEL_32:
  __break(1u);
}

uint64_t static __REAssetBundle.__init(elements:assetService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, void *, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v12 = MEMORY[0x1E69E7CC8];
  v10[2] = a2;
  v10[3] = &v12;
  v7 = a4(a3, v10, a1);
  v8 = v12;
  outlined init with copy of __REAssetService(a2, v11);
  return __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)(v7, v11, v8, 0, a5);
}

void closure #1 in static __REAssetBundle.__init(realityScenes:assetService:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, Swift::Int *a3@<X2>, uint64_t *a4@<X8>)
{
  v54 = a3;
  v55 = a4;
  v56 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v49 - v6;
  v53 = type metadata accessor for UUID();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *a1;
  RESceneGetName();
  v8 = String.init(cString:)();
  v10 = v9;
  v64 = 0x2A3F227C3E3C3ALL;
  v65 = 0xE700000000000000;
  v66 = xmmword_1C18D30A0;
  v11 = String.Iterator.next()();
  if (v11.value._object)
  {
    object = v11.value._object;
    lazy protocol witness table accessor for type String and conformance String();
    countAndFlagsBits = v11.value._countAndFlagsBits;
    do
    {
      v61[0] = v8;
      v61[1] = v10;
      v59 = countAndFlagsBits;
      v60 = object;
      v57 = 95;
      v58 = 0xE100000000000000;
      v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v15 = v14;

      v16 = String.Iterator.next()();
      countAndFlagsBits = v16.value._countAndFlagsBits;
      object = v16.value._object;
      v10 = v15;
    }

    while (v16.value._object);
  }

  else
  {
    v15 = v10;
  }

  v64 = 0;
  v65 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v64 = 0x3A79726F6D656DLL;
  v65 = 0xE700000000000000;
  MEMORY[0x1C68F3410](v8, v15);

  v61[0] = static __REAssetBundle.sceneConversionCounter;
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v17);

  MEMORY[0x1C68F3410](0x656C69706D6F632ELL, 0xEE00656E65637364);
  if (static __REAssetBundle.sceneConversionCounter == -1)
  {
    __break(1u);
  }

  else
  {
    v19 = v64;
    v18 = v65;
    ++static __REAssetBundle.sceneConversionCounter;
    outlined init with copy of __REAssetService(v56, &v64);
    outlined init with copy of __REAssetService(&v64, v61);
    type metadata accessor for __REAsset();
    v20 = swift_allocObject();
    v22 = v62;
    v21 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    (*(v21 + 32))(v22, v21);
    String.utf8CString.getter();
    v23 = REAssetManagerSceneAssetCreate();

    if (!v23)
    {
      lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
      v28 = swift_allocError();
      *v29 = v19;
      *(v29 + 8) = v18;
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0;
      swift_willThrow();
      swift_deallocPartialClassInstance();
      __swift_destroy_boxed_opaque_existential_1(v61);
      __swift_destroy_boxed_opaque_existential_1(&v64);
      v30 = static os_log_type_t.error.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v31 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v31, v30))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v64 = v34;
        *v32 = 136315394;
        RESceneGetName();
        v35 = String.init(cString:)();
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v64);

        *(v32 + 4) = v37;
        *(v32 + 12) = 2112;
        v38 = v28;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 14) = v39;
        *v33 = v39;
        _os_log_impl(&dword_1C1358000, v31, v30, "Failed to create asset from scene %s: %@", v32, 0x16u);
        outlined destroy of BodyTrackingComponent?(v33, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1C6902A30](v33, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x1C6902A30](v34, -1, -1);
        MEMORY[0x1C6902A30](v32, -1, -1);
      }

      else
      {
      }

      v20 = 0;
      goto LABEL_25;
    }

    *(v20 + 16) = v23;
    __swift_destroy_boxed_opaque_existential_1(v61);
    __swift_destroy_boxed_opaque_existential_1(&v64);
    v24 = v52;
    Scene.__sceneIdentifier.getter(v52);
    v25 = v51;
    v26 = v53;
    if ((*(v51 + 48))(v24, 1, v53) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v27 = 0;
    }

    else
    {
      v40 = v50;
      (*(v25 + 32))(v50, v24, v26);
      UUID.uuidString.getter();
      v27 = v41;
      (*(v25 + 8))(v40, v26);
    }

    RESceneGetName();
    String.init(cString:)();
    String.utf8CString.getter();

    if (v27)
    {
      String.utf8CString.getter();
    }

    v42 = RESceneDescriptorCreateFromParams();

    swift_unknownObjectRelease();
    type metadata accessor for RESceneDescriptor();
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    v44 = v54;
    v45 = *v54;
    if ((*v54 & 0xC000000000000001) == 0)
    {

      goto LABEL_22;
    }

    if (v45 < 0)
    {
      v46 = *v54;
    }

    else
    {
      v46 = v45 & 0xFFFFFFFFFFFFFF8;
    }

    v47 = __CocoaSet.count.getter();
    if (!__OFADD__(v47, 1))
    {
      *v44 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC10RealityKit9__REAssetC_0E10Foundation17RESceneDescriptorCTt1g5(v46, v47 + 1);
LABEL_22:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = *v44;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, v20, isUniquelyReferenced_nonNull_native);
      *v44 = v64;

LABEL_25:
      *v55 = v20;
      return;
    }
  }

  __break(1u);
}

void closure #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:)(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  if (a1)
  {
    String.utf8CString.getter();
    v5 = REZipArchiveCopyFileAsData();

    if (v5)
    {
      v6 = v5;
      v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      *a4 = v7;
      a4[1] = v9;
      return;
    }

    lazy protocol witness table accessor for type LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:) and conformance LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:)();
    swift_allocError();
    *v11 = 0;
  }

  else
  {
    lazy protocol witness table accessor for type LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:) and conformance LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:)();
    swift_allocError();
    *v10 = 1;
  }

  swift_willThrow();
}

void *static __REAssetBundle.loadAssetMap(url:)@<X0>(uint64_t a1@<X8>)
{
  result = URL.withUnsafeFileSystemRepresentation<A>(_:)();
  if (!v1)
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type __REAssetBundle.AssetMap and conformance __REAssetBundle.AssetMap();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v4, v5);

    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.AssetMap and conformance __REAssetBundle.AssetMap()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap and conformance __REAssetBundle.AssetMap;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap and conformance __REAssetBundle.AssetMap)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.AssetMap, &type metadata for __REAssetBundle.AssetMap, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap and conformance __REAssetBundle.AssetMap);
  }

  return result;
}

void static __REAssetBundle.__init_REKit2(realityFile:realityFilename:downsampledTextureDescriptors:assetService:coreServiceLocator:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v102[5] = *MEMORY[0x1E69E9840];
  RealityFileHeader = RERealityFileGetRealityFileHeader();
  if (!RealityFileHeader)
  {
    v17 = 0x80000001C18F0100;
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    v19 = 0xD000000000000026;
    goto LABEL_16;
  }

  if (*(a7 + 99) & 1) == 0 && (*(a7 + 98))
  {
    v17 = 0x80000001C18F0190;
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    v19 = 0xD0000000000000C3;
LABEL_16:
    *v18 = v19;
    *(v18 + 8) = v17;
LABEL_17:
    *(v18 + 16) = 4;
    swift_willThrow();
    return;
  }

  v99 = a7;
  v91 = RealityFileHeader;
  AssetDescriptorCount = RERealityFileGetAssetDescriptorCount();
  if (AssetDescriptorCount < 0)
  {
    __break(1u);
    goto LABEL_59;
  }

  v22 = AssetDescriptorCount;
  v93 = a3;
  v94 = a4;
  v90 = a6;
  v92 = a2;
  if (AssetDescriptorCount)
  {
    v23 = 0;
    a6 = MEMORY[0x1E69E7CC0];
    do
    {
      AssetDescriptorAtIndex = RERealityFileGetAssetDescriptorAtIndex();
      if (AssetDescriptorAtIndex)
      {
        v25 = AssetDescriptorAtIndex;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a6 + 2) + 1, 1, a6);
        }

        v27 = *(a6 + 2);
        v26 = *(a6 + 3);
        if (v27 >= v26 >> 1)
        {
          a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, a6);
        }

        *(a6 + 2) = v27 + 1;
        *&a6[8 * v27 + 32] = v25;
      }

      ++v23;
    }

    while (v22 != v23);
  }

  else
  {
    a6 = MEMORY[0x1E69E7CC0];
  }

  v28 = *(v99 + 112);
  v97 = *(v99 + 104);
  if (v28)
  {
    if (v28 == 1)
    {
      v29 = specialized static __REAssetBundle.getSceneNamesFromRealityFile(realityFile:)(a1, v21);
      if (!v29[2])
      {

        _StringGuts.grow(_:)(43);

        strcpy(v102, "Reality file '");
        HIBYTE(v102[1]) = -18;
        MEMORY[0x1C68F3410](v92, v93);
        MEMORY[0x1C68F3410](0xD00000000000001BLL, 0x80000001C18F0170);
        v61 = v102[1];
        lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
        swift_allocError();
        *v18 = v102[0];
        *(v18 + 8) = v61;
        goto LABEL_17;
      }

      v89 = a8;
      v31 = v29[4];
      v30 = v29[5];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C1887600;
      *(v32 + 32) = v31;
      *(v32 + 40) = v30;
    }

    else
    {
      v89 = a8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C1887600;
      *(v32 + 32) = v97;
      *(v32 + 40) = v28;
    }
  }

  else
  {
    v89 = a8;
    v32 = specialized static __REAssetBundle.getSceneNamesFromRealityFile(realityFile:)(a1, v21);
  }

  v96 = v32;
  v33 = *(a5 + 3);
  v34 = *(a5 + 4);
  v35 = __swift_project_boxed_opaque_existential_1(a5, v33);
  v95 = &v88;
  v36 = v99;
  LOBYTE(v101) = *v99;
  MEMORY[0x1EEE9AC00](v35);
  v86 = a5;
  v87 = v36;
  outlined copy of __REAssetBundle.LoadOptions.ContentRequest(v97, v28);
  Request = type metadata accessor for __AssetLoadRequest();
  v38 = v98;
  __REAssetService.performOnEngineQueue<A>(with:_:)(&v101, partial apply for closure #1 in static __REAssetBundle.loadScenes(requestedSceneNames:assetService:coreServiceLocator:downsampledTextureDescriptors:realityFilename:realityFile:header:realityFileAssetDescriptors:loadOptions:), &v84, v33, Request, v34);
  if (v38)
  {

    return;
  }

  v88 = 0;
  v97 = a5;
  a4 = v102[0];
  v39 = *(v36 + 120);
  if (v39)
  {
    Stats = REAssetLoadRequestGetStats();
    type metadata accessor for __AssetLoadRequest.Statistics();
    v41 = swift_allocObject();
    RERetain();
    *(v41 + 16) = Stats;
    v42 = OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_loadRequestStats;
    swift_beginAccess();

    MEMORY[0x1C68F3650](v43);
    if (*((*(v39 + v42) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v39 + v42) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_29:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      goto LABEL_30;
    }

LABEL_59:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_29;
  }

LABEL_30:
  v98 = a4;
  v44 = *(a6 + 2);
  v45 = MEMORY[0x1E69E7CC0];
  if (v44)
  {
    v46 = (a6 + 32);
    do
    {
      v49 = *v46;
      if (RERealityFileAssetDescriptorAsSceneDescriptor())
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v102[0] = v45;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 16) + 1, 1);
          v45 = v102[0];
        }

        v48 = *(v45 + 16);
        v47 = *(v45 + 24);
        if (v48 >= v47 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1);
          v45 = v102[0];
        }

        *(v45 + 16) = v48 + 1;
        *(v45 + 8 * v48 + 32) = v49;
      }

      ++v46;
      --v44;
    }

    while (v44);
  }

  v102[0] = 0;
  v51 = v97;
  v52 = *(v97 + 3);
  v53 = *(v97 + 4);
  __swift_project_boxed_opaque_existential_1(v97, v52);
  (*(v53 + 32))(v52, v53);
  AssetDescriptorWithEntryNameAndPostLoad = RERealityFileCreateAssetDescriptorWithEntryNameAndPostLoad();
  if (AssetDescriptorWithEntryNameAndPostLoad)
  {
    v55 = AssetDescriptorWithEntryNameAndPostLoad;
    v56 = *(v51 + 3);
    v57 = *(v51 + 4);
    v58 = __swift_project_boxed_opaque_existential_1(v51, v56);
    v95 = &v88;
    v100 = *v99;
    MEMORY[0x1EEE9AC00](v58);
    v82 = v51;
    v83 = v94;
    v84 = v98;
    v85 = v45;
    v86 = v96;
    v87 = v55;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit9__REAssetC_Say0A10Foundation02__C10DescriptorCGs13OpaquePointerVtGMd, &_sSay10RealityKit9__REAssetC_Say0A10Foundation02__C10DescriptorCGs13OpaquePointerVtGMR);
    v60 = v88;
    __REAssetService.performOnEngineQueue<A>(with:_:)(&v100, partial apply for closure #3 in static __REAssetBundle.loadScenes(requestedSceneNames:assetService:coreServiceLocator:downsampledTextureDescriptors:realityFilename:realityFile:header:realityFileAssetDescriptors:loadOptions:), v81, v56, v59, v57);
    if (v60)
    {

      RERelease();
    }

    else
    {
      v94 = v55;

      v64 = v101;
      v65 = *(v51 + 3);
      v66 = *(v51 + 4);
      __swift_project_boxed_opaque_existential_1(v51, v65);
      __REAssetService.asManager.getter(v65, v66);
      v67 = v99;
      LOBYTE(v101) = *v99;
      __REAssetManager.waitForLoadRequest(_:with:)(v98, &v101);

      MEMORY[0x1EEE9AC00](v69);
      v81[0] = v51;
      v81[1] = v92;
      v82 = v93;
      v83 = v94;
      v84 = v67;
      v85 = v91;
      v86 = v90;
      v70 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10RealityKit9__REAssetC_Say0D10Foundation02__F10DescriptorCGs13OpaquePointerVtG_AH_AlI07RESceneH0CtsAE_pTg5(partial apply for closure #4 in static __REAssetBundle.loadScenes(requestedSceneNames:assetService:coreServiceLocator:downsampledTextureDescriptors:realityFilename:realityFile:header:realityFileAssetDescriptors:loadOptions:), &v80, v64);

      RERelease();

      v71 = *(v70 + 16);
      if (v71)
      {
        v102[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v72 = 32;
        v73 = v71;
        do
        {

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v72 += 24;
          --v73;
        }

        while (v73);
        v74 = v102[0];
        v102[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v75 = 48;
        do
        {

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v75 += 24;
          --v71;
        }

        while (v71);

        v76 = v102[0];
      }

      else
      {

        v76 = MEMORY[0x1E69E7CC0];
        v74 = MEMORY[0x1E69E7CC0];
      }

      v78 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC10RealityKit9__REAssetC_0F10Foundation17RESceneDescriptorCs12Zip2SequenceVySayAGGSayAJGGTt0g5Tf4g_n(v77, v76);

      RERealityFileGetMinVersionFromRealityFileHeader();
      if (one-time initialization token for __sdkBundleVersion != -1)
      {
        swift_once();
      }

      String.utf8CString.getter();
      String.utf8CString.getter();
      v79 = RERealityFileHeaderCreateFromVersionInfo();

      outlined init with copy of __REAssetService(v97, v102);
      __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)(v74, v102, v78, v79, v89);
    }
  }

  else
  {

    v62 = v102[0];
    if (v102[0])
    {
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
      swift_allocError();
      *v63 = v62;
    }

    else
    {
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v68 = 0xD000000000000029;
      *(v68 + 8) = 0x80000001C18F0140;
      *(v68 + 16) = 4;
    }

    swift_willThrow();
  }
}

uint64_t closure #1 in static __REAssetBundle.loadScenes(requestedSceneNames:assetService:coreServiceLocator:downsampledTextureDescriptors:realityFilename:realityFile:header:realityFileAssetDescriptors:loadOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  outlined init with copy of __REAssetService(a1, v7);
  result = specialized __AssetLoadRequest.__allocating_init(assetService:shouldLoadOnPeers:shouldWaitForPeers:)(v7, *(a2 + 99), *(a2 + 98));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *closure #3 in static __REAssetBundle.loadScenes(requestedSceneNames:assetService:coreServiceLocator:downsampledTextureDescriptors:realityFilename:realityFile:header:realityFileAssetDescriptors:loadOptions:)@<X0>(void *ImmutableWithAssetDescriptors@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v18 = a6;
  v19 = a4;
  v9 = ImmutableWithAssetDescriptors;
  v17 = a7;
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = (a2 + 32);
    do
    {
      v20 = *v11;
      v13 = v9[3];
      v12 = v9[4];
      __swift_project_boxed_opaque_existential_1(v9, v13);
      (*(v12 + 32))(v13, v12);
      ImmutableWithAssetDescriptors = REAssetHandleGetOrCreateImmutableWithAssetDescriptors();
      if (ImmutableWithAssetDescriptors)
      {
        REAssetLoadRequestAddAsset();
        ImmutableWithAssetDescriptors = RERelease();
      }

      ++v11;
      --v10;
    }

    while (v10);
  }

  MEMORY[0x1EEE9AC00](ImmutableWithAssetDescriptors);
  v16[2] = a5;
  v16[3] = v9;
  v16[4] = v18;
  v16[5] = a3;
  v14 = v21;
  result = specialized Sequence.compactMap<A>(_:)(partial apply for closure #2 in closure #3 in static __REAssetBundle.loadScenes(requestedSceneNames:assetService:coreServiceLocator:downsampledTextureDescriptors:realityFilename:realityFile:header:realityFileAssetDescriptors:loadOptions:), v16, v19);
  if (!v14)
  {
    *v17 = result;
  }

  return result;
}

void closure #2 in closure #3 in static __REAssetBundle.loadScenes(requestedSceneNames:assetService:coreServiceLocator:downsampledTextureDescriptors:realityFilename:realityFile:header:realityFileAssetDescriptors:loadOptions:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a6@<X8>)
{
  v9 = *a1;
  v29[0] = 0;
  if (RESceneDescriptorGetSceneName())
  {
    v29[0] = String.init(cString:)();
    v29[1] = v10;
  }

  if ((specialized Sequence.contains(where:)(a2, v29) & 1) == 0)
  {

    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    return;
  }

  v27 = v9;
  RERealityFileAssetDescriptorGetFilename();
  v12 = a3[3];
  v11 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v12);
  v13 = *(v11 + 32);
  v13(v12, v11);
  v14 = REAssetManagerResolveAssetDescriptor();
  if (v14)
  {
    v28 = v14;
    v13(v12, v11);
    ImmutableWithAssetDescriptors = REAssetHandleGetOrCreateImmutableWithAssetDescriptors();
    if (!ImmutableWithAssetDescriptors)
    {
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v24 = 0xD000000000000033;
      *(v24 + 8) = 0x80000001C18F02B0;
      *(v24 + 16) = 4;
      swift_willThrow();
LABEL_17:
      RERelease();

      return;
    }

    v16 = ImmutableWithAssetDescriptors;
    v17 = REAssetGetType();
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v18 == 0x656E656353 && v20 == 0xE500000000000000)
    {

      v23 = v27;
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v23 = v27;
      if ((v22 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    REAssetSetNetworkSharingMode();
LABEL_16:
    REAssetLoadRequestAddAsset();
    type metadata accessor for __REAsset();
    v25 = swift_allocObject();
    *(v25 + 16) = v16;
    v30 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    RERetain();
    type metadata accessor for __REAssetDescriptor();
    *(swift_allocObject() + 16) = v28;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v26 = v30;
    *a6 = v25;
    a6[1] = v26;
    a6[2] = v23;
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t closure #4 in static __REAssetBundle.loadScenes(requestedSceneNames:assetService:coreServiceLocator:downsampledTextureDescriptors:realityFilename:realityFile:header:realityFileAssetDescriptors:loadOptions:)@<X0>(__int128 **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a8@<X7>, __int128 **a9@<X8>, uint64_t *a10)
{
  v11 = v10;
  v72 = a8;
  v73 = a6;
  v77 = a2;
  v76 = a9;
  v81 = *MEMORY[0x1E69E9840];
  v71 = type metadata accessor for UUID();
  v70 = *(v71 - 1);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v74 = a1[1];
  v75 = a1[2];

  v18 = REAssetHandleCopyCompiledExtension();
  v19 = String.init(_:)(v18);
  if (v19._countAndFlagsBits == 0x64656C69706D6F63 && v19._object == 0xED0000656E656373)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
LABEL_6:
      v22 = v76;
      v23 = v74;
      *v76 = v17;
      v22[1] = v23;

      v24 = v75;
      RERetain();
      type metadata accessor for RESceneDescriptor();
      result = swift_allocObject();
      *(result + 16) = v24;
      v22[2] = result;
      return result;
    }
  }

  v26 = v77;
  outlined init with copy of __REAssetService(v77, v80);

  v29 = specialized Scene.init(_:assetService:)(v27, v80, v28);
  if (v10)
  {
  }

  else
  {
    v30 = v29;

    specialized static __REAssetBundle.registerAnchoringComponentARReferences(scene:realityFilename:assetDescriptor:assetService:)(v30, a3, a4, a5, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yXltGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yXltGMR);
    inited = swift_initStackObject();
    v32 = MEMORY[0x1E6998F08];
    v68 = xmmword_1C1887600;
    *(inited + 16) = xmmword_1C1887600;
    v33 = *v32;
    *(inited + 32) = v33;
    v34 = v33;
    *(inited + 40) = Bool._bridgeToObjectiveC()();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_yXlTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of BodyTrackingComponent?(inited + 32, &_sSo11CFStringRefa_yXltMd, &_sSo11CFStringRefa_yXltMR);
    v79 = 0;
    RERealityFileGetMinVersionFromRealityFileHeader();
    type metadata accessor for CFStringRef(0);
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, protocol conformance descriptor for CFStringRef);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    Processing = RERealityFilePostLoadProcessing();

    if (Processing)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
      v37 = swift_initStackObject();
      v37[1] = v68;
      *(v37 + 4) = a5;
      v67 = *v73;
      swift_beginAccess();
      if (static __RKEntityInteractionsComponent.registration)
      {
        v72 = 0;
        closure #1 in Scene.entitiesWithInteractions()(v30, *(static __RKEntityInteractionsComponent.registration + 3));
        v39 = v38;
        if (v38 >> 62)
        {
LABEL_40:
          v40 = __CocoaSet.count.getter();
        }

        else
        {
          v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v41 = v77;
        if (v40)
        {
          v62 = v17;
          v66 = v37;
          v63 = v30;
          v42 = 0;
          v43 = 0;
          v65 = v39 & 0xC000000000000001;
          v64 = v39 & 0xFFFFFFFFFFFFFF8;
          do
          {
            if (v65)
            {
              MEMORY[0x1C68F41F0](v42, v39);
              v44 = v42 + 1;
              if (__OFADD__(v42, 1))
              {
LABEL_24:
                __break(1u);
                goto LABEL_25;
              }
            }

            else
            {
              if (v42 >= *(v64 + 16))
              {
                __break(1u);
                goto LABEL_40;
              }

              v44 = v42 + 1;
              if (__OFADD__(v42, 1))
              {
                goto LABEL_24;
              }
            }

            *&v68 = v44;
            v30 = v40;
            v45 = swift_allocObject();
            *(v45 + 16) = 0;
            outlined init with copy of __REAssetService(v41, v80);
            v46 = swift_allocObject();
            v17 = v66;
            *(v46 + 16) = v66;
            outlined init with take of ForceEffectBase(v80, v46 + 24);
            *(v46 + 64) = v67;
            *(v46 + 72) = v45;
            v47 = v72;
            Entity.remapAudioActions(_:)(partial apply for closure #1 in remapElement #1 (element:) in static __REAssetBundle.fixupSceneInteractions(scene:assetDescriptors:assetService:queueOptions:), v46);
            v72 = v47;
            if (v47)
            {

              v11 = v72;
              goto LABEL_30;
            }

            swift_beginAccess();
            v48 = *(v45 + 16);

            v43 |= v48;
            ++v42;
            v41 = v77;
            v37 = v80;
          }

          while (v68 != v40);

          swift_setDeallocating();
          if ((v43 & 1) == 0)
          {
            v17 = v62;
            goto LABEL_38;
          }

          *&v80[0] = 0;
          *(&v80[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(23);

          *&v80[0] = 0x3A79726F6D656DLL;
          *(&v80[0] + 1) = 0xE700000000000000;
          v53 = v69;
          UUID.init()();
          _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v54 = v71;
          v55 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1C68F3410](v55);

          (*(v70 + 8))(v53, v54);
          MEMORY[0x1C68F3410](0x656C69706D6F632ELL, 0xEE00656E65637364);
          v56 = v80[0];
          v58 = *(v41 + 3);
          v57 = *(v41 + 4);
          v59 = __swift_project_boxed_opaque_existential_1(v41, v58);
          v71 = &v62;
          v78 = *v73;
          MEMORY[0x1EEE9AC00](v59);
          *(&v62 - 4) = v63;
          *(&v62 - 3) = v41;
          *(&v62 - 1) = v56;
          v60 = type metadata accessor for __REAsset();
          v61 = v72;
          __REAssetService.performOnEngineQueue<A>(with:_:)(&v78, partial apply for closure #1 in closure #4 in static __REAssetBundle.loadScenes(requestedSceneNames:assetService:coreServiceLocator:downsampledTextureDescriptors:realityFilename:realityFile:header:realityFileAssetDescriptors:loadOptions:), (&v62 - 6), v58, v60, v57);
          v11 = v61;

          if (v61)
          {
            goto LABEL_31;
          }

          v17 = *&v80[0];
        }

        else
        {

          swift_setDeallocating();
LABEL_38:
        }

        goto LABEL_6;
      }

      swift_setDeallocating();
      lazy protocol witness table accessor for type SerializationError and conformance SerializationError();
      v11 = swift_allocError();
      *v51 = xmmword_1C18BBCB0;
      *(v51 + 16) = 0;
      swift_willThrow();
    }

    else
    {
LABEL_25:
      v49 = v79;
      if (v79)
      {
        type metadata accessor for CFErrorRef(0);
        _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
        v11 = swift_allocError();
        *v50 = v49;
      }

      else
      {
        lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
        v11 = swift_allocError();
        *v52 = 0xD000000000000026;
        *(v52 + 8) = 0x80000001C18F0260;
        *(v52 + 16) = 4;
      }

      swift_willThrow();
    }

LABEL_30:
  }

LABEL_31:
  *a10 = v11;
  return result;
}

uint64_t closure #1 in closure #4 in static __REAssetBundle.loadScenes(requestedSceneNames:assetService:coreServiceLocator:downsampledTextureDescriptors:realityFilename:realityFile:header:realityFileAssetDescriptors:loadOptions:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  outlined init with copy of __REAssetService(a2, v18);
  outlined init with copy of __REAssetService(v18, v15);
  type metadata accessor for __REAsset();
  v7 = swift_allocObject();
  v9 = v16;
  v8 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v10 = *(v8 + 32);

  v10(v9, v8);
  String.utf8CString.getter();
  v11 = REAssetManagerSceneAssetCreate();

  if (v11)
  {

    *(v7 + 16) = v11;
    __swift_destroy_boxed_opaque_existential_1(v15);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a5 = v7;
  }

  else
  {
    lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
    swift_allocError();
    *v13 = a3;
    *(v13 + 8) = a4;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(v15);
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  return result;
}

uint64_t __REAssetBundle.writeWithCPlusPlus(to:with:)(uint64_t a1, __int128 *a2)
{
  v169 = a1;
  v201 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for UUID();
  v171 = *(v5 - 8);
  v172 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v170 = &v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for URL();
  v175 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v8 = &v163 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v174 = &v163 - v10;
  v11 = a2[5];
  v198 = a2[4];
  v199 = v11;
  *v200 = a2[6];
  *&v200[11] = *(a2 + 107);
  v12 = a2[1];
  v194 = *a2;
  v195 = v12;
  v13 = a2[3];
  v196 = a2[2];
  v197 = v13;
  v14 = RERealityFileWritingParametersCreate();
  RERealityFileWritingParametersSetRestrictedToSeed();
  v15 = [objc_opt_self() mainBundle];
  v16 = [v15 bundleIdentifier];

  v167 = v8;
  if (v16)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = &v163;
  *&v187 = v18;
  *(&v187 + 1) = v20;
  MEMORY[0x1EEE9AC00](v17);
  *(&v163 - 2) = &v187;
  v22 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v163 - 4), &outlined read-only object #0 of __REAssetBundle.writeWithCPlusPlus(to:with:));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  swift_arrayDestroy();

  if (v22)
  {
    RERealityFileWritingParametersSetCrossEngineValidationDisablement();
  }

  RERealityFileWritingParametersSetMakeSnapshotOfDynamicTextures();
  RERealityFileWritingParametersSetWriteMeshesToVvmSidecars();
  if (v200[26] > 1u)
  {
    v23 = v181;
    if (v200[26] != 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v23 = v181;
  }

  RERealityFileWritingParametersSetReducedTextureSize();
LABEL_10:
  v184 = MEMORY[0x1E69E7CC0];
  v24 = v23[5];
  v25 = v23[6];
  __swift_project_boxed_opaque_existential_1(v23 + 2, v24);
  __REAssetService.asManager.getter(v24, v25);
  v26 = v23[1];
  specialized __REAssetManager.loadAssetsAndDependencies<A>(_:with:_:)(v26, v194, &v184);
  if (v2)
  {

LABEL_13:

    return RERelease();
  }

  v166 = v26;

  v192 = v199;
  v193[0] = *v200;
  *(v193 + 11) = *&v200[11];
  v187 = v194;
  v188 = v195;
  v189 = v196;
  v190 = v197;
  v191 = v198;
  v27 = __REAssetBundle.ExportOptions.getVersioningDetails()(v198);
  v29 = 0;
  v31 = v27;
  v32 = v28;
  v165 = v14;
  if ((BYTE1(v199) & 1) == 0)
  {
    v182 = MEMORY[0x1E69E7CC0];

    if (v31)
    {
      goto LABEL_46;
    }

    goto LABEL_54;
  }

  if (v28 <= 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = v28;
  }

  LODWORD(v178) = v33;
  DefaultVersion = v27;
  if (!v27)
  {
    DefaultVersion = RERealityFileWriterGetDefaultVersion();
  }

  v168 = v184;
  if (!(v184 >> 62))
  {
    v34 = *((v184 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_23;
    }

LABEL_53:
    v182 = MEMORY[0x1E69E7CC0];

    if (v31)
    {
      goto LABEL_46;
    }

    goto LABEL_54;
  }

  v34 = __CocoaSet.count.getter();
  if (!v34)
  {
    goto LABEL_53;
  }

LABEL_23:
  LODWORD(v164) = v32;
  v180 = 0;
  if (v34 >= 1)
  {
    v35 = 0;
    v36 = v168;
    v176 = v168 & 0xC000000000000001;
    v182 = MEMORY[0x1E69E7CC0];
    v177 = v34;
    do
    {
      if (v176)
      {
        v37 = MEMORY[0x1C68F41F0](v35, v36);
      }

      else
      {
      }

      v183 = v37;
      REAssetGetRequiredReleaseInfo();
      Release = RERealityKitReleaseInfoGetRelease();
      v39 = RERealityKitReleaseInfoGetAdjustmentLog();
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v44 = HIBYTE(v42) & 0xF;
      if ((v42 & 0x2000000000000000) == 0)
      {
        v44 = v40 & 0xFFFFFFFFFFFFLL;
      }

      if (v44)
      {
        *&v187 = v40;
        *(&v187 + 1) = v42;
        MEMORY[0x1EEE9AC00](v43);
        *(&v163 - 2) = &v187;
        v45 = v180;
        v46 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), (&v163 - 4), v182);
        v180 = v45;
        if (v46)
        {

          v36 = v168;
        }

        else
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v47 = v182;
          }

          else
          {
            v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v182 + 2) + 1, 1, v182);
          }

          v36 = v168;
          v49 = *(v47 + 2);
          v48 = *(v47 + 3);
          v50 = (v49 + 1);
          if (v49 >= v48 >> 1)
          {
            v182 = (v49 + 1);
            v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v47);
            v50 = v182;
            v47 = v52;
          }

          *(v47 + 2) = v50;
          v182 = v47;
          v51 = &v47[16 * v49];
          *(v51 + 4) = v40;
          *(v51 + 5) = v42;
        }
      }

      else
      {
      }

      ++v35;
      if (v31 <= Release)
      {
        v31 = Release;
      }

      RERelease();
    }

    while (v177 != v35);
    v29 = v180;
    LODWORD(v32) = v164;

    if (v31)
    {
LABEL_46:
      if (!RERealityFileWritingParametersSetMajorVersion())
      {
        lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
        swift_allocError();
        *v62 = v31;
        *(v62 + 8) = 0;
        *(v62 + 16) = 1;
        swift_willThrow();
        goto LABEL_13;
      }

      v3 = v32;
      v21 = v29;
      v53 = RERealityFileWriterGetAllDeploymentTargetsFromVersion();
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      *&v187 = 0;
      *(&v187 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      MEMORY[0x1C68F3410](0xD00000000000002DLL, 0x80000001C18EFE00);
      MEMORY[0x1C68F3410](v54, v56);

      MEMORY[0x1C68F3410](0x74616C20646E6120, 0xEB000000002E7265);
      v26 = *(&v187 + 1);
      v32 = v187;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_48;
      }

      goto LABEL_139;
    }

LABEL_54:
    v61 = v182;
    if (!*(v182 + 2))
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  __break(1u);
LABEL_139:
  v182 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v182 + 2) + 1, 1, v182);
LABEL_48:
  v57 = v182;
  v59 = *(v182 + 2);
  v58 = *(v182 + 3);
  if (v59 >= v58 >> 1)
  {
    v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v182);
  }

  *(v57 + 2) = v59 + 1;
  v60 = &v57[16 * v59];
  *(v60 + 4) = v32;
  *(v60 + 5) = v26;
  v61 = v57;
  v29 = v21;
  LODWORD(v32) = v3;
LABEL_55:
  logReleaseAdjustments(logs:)(v61);
LABEL_56:
  v180 = v29;
  v182 = v61;
  if (v32)
  {
    RERealityFileWritingParametersSetTargetPlatform();
  }

  v63 = RERealityFileWriterCreateWithParameters();
  v64 = swift_allocObject();
  *(v64 + 16) = 1;
  v168 = v64 + 16;
  outlined init with copy of __REAssetBundle(v181, v186);
  v65 = swift_allocObject();
  *(v65 + 16) = v63;
  v66 = v199;
  *(v65 + 88) = v198;
  *(v65 + 104) = v66;
  *(v65 + 120) = *v200;
  *(v65 + 131) = *&v200[11];
  v67 = v195;
  *(v65 + 24) = v194;
  *(v65 + 40) = v67;
  v68 = v197;
  *(v65 + 56) = v196;
  *(v65 + 72) = v68;
  v69 = v186[0];
  v70 = v186[1];
  v71 = v186[2];
  *(v65 + 200) = v186[3];
  *(v65 + 184) = v71;
  *(v65 + 168) = v70;
  *(v65 + 152) = v69;
  *(v65 + 216) = v64;
  v185[4] = partial apply for closure #1 in __REAssetBundle.writeWithCPlusPlus(to:with:);
  v185[5] = v65;
  v185[0] = MEMORY[0x1E69E9820];
  v185[1] = 1107296256;
  v185[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned RESceneRemappingCallbackResult);
  v185[3] = &block_descriptor_52;
  v72 = _Block_copy(v185);

  outlined init with copy of __REAssetBundle.ExportOptions(&v194, &v187);

  RERealityFileWriterAddSceneRemappingCallback();
  _Block_release(v72);
  v73 = *&v200[16];
  if (*&v200[16])
  {
    v74 = swift_allocObject();
    *(v74 + 16) = v73;
    *&v189 = partial apply for closure #2 in __REAssetBundle.writeWithCPlusPlus(to:with:);
    *(&v189 + 1) = v74;
    *&v187 = MEMORY[0x1E69E9820];
    *(&v187 + 1) = 1107296256;
    *&v188 = thunk for @escaping @callee_guaranteed (@guaranteed CFMutableArrayRef, @guaranteed CFMutableArrayRef) -> ();
    *(&v188 + 1) = &block_descriptor_19;
    v75 = _Block_copy(&v187);

    RERealityFileWriterAddRemappingCustomizationCallback();
    _Block_release(v75);
  }

  if (one-time initialization token for temporaryURL != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v173, static __REAssetBundle.temporaryURL);
  v76 = v170;
  UUID.init()();
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v77 = v172;
  dispatch thunk of CustomStringConvertible.description.getter();
  (*(v171 + 8))(v76, v77);
  URL.appendingPathComponent(_:)();

  *&v186[0] = 0;
  URL.absoluteString.getter();
  String.utf8CString.getter();

  v78 = RERealityFileWriterOpen();

  if (!v78)
  {
    v100 = *&v186[0];
    v101 = v175;
    if (*&v186[0])
    {
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
      swift_allocError();
      *v102 = v100;
    }

    else
    {
      *&v187 = 0;
      *(&v187 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(41);

      *&v187 = 0xD000000000000026;
      *(&v187 + 1) = 0x80000001C18EFE50;
      v103 = URL.absoluteString.getter();
      MEMORY[0x1C68F3410](v103);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      v104 = v187;
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v105 = v104;
      *(v105 + 16) = 4;
    }

    swift_willThrow();
    v106 = v174;
    $defer #4 () in __REAssetBundle.writeWithCPlusPlus(to:with:)();
    (*(v101 + 8))(v106, v173);

    RERelease();
    goto LABEL_13;
  }

  v79 = v175;
  if (*(&v199 + 1))
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
    RERealityFileWriterSetConfigurationSetNames();
  }

  v81 = v166;
  if (*v200)
  {
    v82 = Array._bridgeToObjectiveC()().super.isa;
    RERealityFileWriterSetDefaultConfigurationNames();
  }

  if ((v195 & 1) == 0 && !*(&v194 + 1))
  {
    RERealityFileWriterSetCompressionMethod();
  }

  v164 = v63;
  if (v81 >> 62)
  {
    v83 = __CocoaSet.count.getter();
    v163 = v64;
    if (v83)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v83 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v163 = v64;
    if (v83)
    {
LABEL_72:
      if (v83 < 1)
      {
        __break(1u);
      }

      v84 = 0;
      v85 = v181[7];
      v181 = (v85 & 0xC000000000000001);
      DefaultVersion = v81 & 0xC000000000000001;
      v86 = v85 & 0xFFFFFFFFFFFFFF8;
      if (v85 < 0)
      {
        v86 = v85;
      }

      v176 = v86;
      v177 = v85;
      v183 = MEMORY[0x1E69E7CC0];
      v172 = v83;
      while (1)
      {
        if (DefaultVersion)
        {
          MEMORY[0x1C68F41F0](v84, v81);
          if (v181)
          {
            goto LABEL_80;
          }
        }

        else
        {

          if (v181)
          {
LABEL_80:
            v87 = __CocoaDictionary.lookup(_:)();
            if (v87)
            {
              v185[0] = v87;
              type metadata accessor for RESceneDescriptor();
              swift_dynamicCast();
              if (v187)
              {
                goto LABEL_87;
              }
            }

            goto LABEL_76;
          }
        }

        if (*(v177 + 16))
        {
          v88 = specialized __RawDictionaryStorage.find<A>(_:)();
          if (v89)
          {
            v90 = *(*(v177 + 56) + 8 * v88);

            if (v90)
            {
LABEL_87:
              v178 = REAssetWithMetadataCreate();
              if (RESceneDescriptorGetSceneName())
              {
                v91 = String.init(cString:)();
                v93 = v92;
              }

              else
              {
                v91 = 0;
                v93 = 0xE000000000000000;
              }

              RESceneDescriptorGetSceneIdentifier();
              String.init(cString:)();
              String.utf8CString.getter();
              String.utf8CString.getter();

              REAssetWithMetadataSetSceneMetadata();

              REAssetWithMetadataSetTreatAsScene();
              if (*&v200[8] && *(*&v200[8] + 16))
              {
                specialized __RawDictionaryStorage.find<A>(_:)(v91, v93);
                v95 = v94;

                v81 = v166;
                if (v95)
                {

                  v96 = Array._bridgeToObjectiveC()().super.isa;

                  REAssetWithMetadataSetConfigurationNames();
                }
              }

              else
              {

                v81 = v166;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v183 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v183 + 2) + 1, 1, v183);
              }

              v79 = v175;
              v98 = *(v183 + 2);
              v97 = *(v183 + 3);
              if (v98 >= v97 >> 1)
              {
                v183 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1, v183);
              }

              v99 = v183;
              *(v183 + 2) = v98 + 1;
              *&v99[8 * v98 + 32] = v178;
              v83 = v172;
              goto LABEL_77;
            }
          }
        }

LABEL_76:

LABEL_77:
        if (v83 == ++v84)
        {
          goto LABEL_106;
        }
      }
    }
  }

  v183 = MEMORY[0x1E69E7CC0];
LABEL_106:
  RERealityFileAssetWriteReportCreate();
  v107 = v183 + 32;
  if ((RERealityFileWriterWriteAssetArrayAndDependencies() & 1) == 0)
  {
    v126 = RERealityFileAssetWriteReportGetError();
    if (v126)
    {
      v127 = v126;
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
      swift_allocError();
      *v128 = v127;
    }

    else
    {
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v131 = xmmword_1C18D30B0;
      *(v131 + 16) = 5;
    }

    v132 = v173;
    swift_willThrow();
    RERelease();
    for (i = *(v183 + 2); i; --i)
    {
      v107 += 8;
      RERelease();
    }

    goto LABEL_123;
  }

  swift_beginAccess();
  RERealityFileWriterCertifyFreeOfChangeSceneActions();
  if (!RERealityFileWriterClose())
  {
    v129 = *&v186[0];
    if (*&v186[0])
    {
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
      swift_allocError();
      *v130 = v129;
    }

    else
    {
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v135 = 0xD000000000000018;
      *(v135 + 8) = 0x80000001C18EFE80;
      *(v135 + 16) = 4;
    }

    v132 = v173;
    swift_willThrow();
    RERelease();
    for (j = *(v183 + 2); j; --j)
    {
      v107 += 8;
      RERelease();
    }

LABEL_123:

    v137 = v174;
    $defer #4 () in __REAssetBundle.writeWithCPlusPlus(to:with:)();
    (*(v79 + 8))(v137, v132);

    RERelease();

    return RERelease();
  }

  v181 = objc_opt_self();
  v108 = [v181 defaultManager];
  v109 = v169;
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v111 = MEMORY[0x1C68F3280](countAndFlagsBits);

  v112 = [v108 fileExistsAtPath_];

  if (v112)
  {
    v113 = static os_log_type_t.info.getter();
    v114 = *(v79 + 16);
    v115 = v167;
    v116 = v173;
    v114(v167, v109, v173);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v117 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v117, v113))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      LODWORD(DefaultVersion) = v113;
      v120 = v119;
      v185[0] = v119;
      *v118 = 136315138;
      v121 = URL.lastPathComponent.getter();
      v122 = v115;
      v124 = v123;
      (*(v175 + 8))(v122, v116);
      v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v124, v185);

      *(v118 + 4) = v125;
      _os_log_impl(&dword_1C1358000, v117, DefaultVersion, "Deleting file %s that already exists at dest", v118, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v120);
      MEMORY[0x1C6902A30](v120, -1, -1);
      MEMORY[0x1C6902A30](v118, -1, -1);
    }

    else
    {

      (*(v175 + 8))(v115, v116);
    }

    v134 = v181;
    v138 = [v181 defaultManager];
    URL._bridgeToObjectiveC()(v139);
    v141 = v140;
    v185[0] = 0;
    v142 = [v138 removeItemAtURL:v140 error:v185];

    if (v142)
    {
      v143 = v185[0];
    }

    else
    {
      v144 = v185[0];
      v145 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v180 = 0;
    }
  }

  else
  {
    v134 = v181;
  }

  v146 = [v134 defaultManager];
  URL._bridgeToObjectiveC()(v147);
  v149 = v148;
  URL._bridgeToObjectiveC()(v150);
  v152 = v151;
  v185[0] = 0;
  v153 = [v146 moveItemAtURL:v149 toURL:v151 error:v185];

  if (!v153)
  {
    v158 = v185[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    RERelease();
    v159 = *(v183 + 2);
    for (k = v175; v159; --v159)
    {
      v107 += 8;
      RERelease();
    }

    v161 = v174;
    $defer #4 () in __REAssetBundle.writeWithCPlusPlus(to:with:)();
    (*(k + 8))(v161, v173);

    RERelease();

    return RERelease();
  }

  v154 = v185[0];
  RERelease();
  v155 = *(v183 + 2);
  v156 = v175;
  if (v155)
  {
    v157 = v173;
    do
    {
      v107 += 8;
      RERelease();
      --v155;
    }

    while (v155);
  }

  else
  {
    v157 = v173;
  }

  v162 = v174;
  $defer #4 () in __REAssetBundle.writeWithCPlusPlus(to:with:)();
  (*(v156 + 8))(v162, v157);

  RERelease();

  return RERelease();
}

void logReleaseAdjustments(logs:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v2 = BidirectionalCollection<>.joined(separator:)();
  v4 = v3;
  v5 = *(a1 + 16);
  if (v5 <= 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0xD00000000000007FLL;
  }

  if (v5 <= 1)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0x80000001C18EFFC0;
  }

  v8 = static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C1897FD0;
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v11 = lazy protocol witness table accessor for type String and conformance String();
  *(v9 + 32) = 0xD000000000000024;
  *(v9 + 40) = 0x80000001C18EFF90;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 64) = v11;
  *(v9 + 72) = v6;
  *(v9 + 80) = v7;
  *(v9 + 136) = v10;
  *(v9 + 144) = v11;
  *(v9 + 112) = v2;
  *(v9 + 120) = v4;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
  v12 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v8, &dword_1C1358000, v12, "%{public}s %{public}s%{public}s", 31, 2, v9);
}

uint64_t closure #1 in __REAssetBundle.writeWithCPlusPlus(to:with:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Scene();
  swift_allocObject();
  v10 = Scene.init(coreScene:)(a1);
  v11 = specialized static __REAssetBundle.remapSceneAnchorsBeforeWrite(fileWriter:scene:)(a2, v10);

  v12 = a3[5];
  v17[4] = a3[4];
  v17[5] = v12;
  v18[0] = a3[6];
  *(v18 + 11) = *(a3 + 107);
  v13 = a3[1];
  v17[0] = *a3;
  v17[1] = v13;
  v14 = a3[3];
  v17[2] = a3[2];
  v17[3] = v14;
  swift_allocObject();
  v15 = Scene.init(coreScene:)(a1);
  swift_beginAccess();
  LOBYTE(a5) = specialized static __REAssetBundle.remapSceneInteractionsBeforeWrite(with:assetService:fileWriter:scene:freeOfChangeSceneActions:)(v17, (a4 + 16), a2, v15, (a5 + 16));
  swift_endAccess();

  return (v11 | a5) & 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned RESceneRemappingCallbackResult)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

void closure #2 in __REAssetBundle.writeWithCPlusPlus(to:with:)(void *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v6 = (a3 + 56);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;

      v11 = MEMORY[0x1C68F3280](v7, v8);

      [a1 addObject_];

      v12 = MEMORY[0x1C68F3280](v9, v10);

      [a2 addObject_];

      v6 += 4;
      --v3;
    }

    while (v3);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed CFMutableArrayRef, @guaranteed CFMutableArrayRef) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

void $defer #4 () in __REAssetBundle.writeWithCPlusPlus(to:with:)()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v9[0] = 0;
  v4 = [v0 removeItemAtURL:v2 error:v9];

  v5 = v9[0];
  if (v4)
  {

    v6 = v5;
  }

  else
  {
    v7 = v9[0];
    v8 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

unint64_t *closure #3 in static __REAssetBundle.createDownsampledTextureDescriptors(assetService:realityFile:realityFileURL:downsamplingStrategy:queueOptions:)@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a5@<X4>, unint64_t **a6@<X8>)
{
  v7 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v7 >= *(a2 + 16))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v7 >= *(a3 + 16))
  {
    goto LABEL_11;
  }

  if (*(a3 + 8 * v7 + 32) <= 1)
  {
    *a6 = 0;
  }

  else
  {
    RERealityFileAssetDescriptorGetFilename();
    v9 = a5[3];
    v10 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v9);
    (*(v10 + 32))(v9, v10);
    result = RERealityFileCreateAssetDescriptorWithEntryNameAndTextureDownsampleHint();
    if (result)
    {
      *a6 = result;
    }

    else
    {
      _StringGuts.grow(_:)(56);
      MEMORY[0x1C68F3410](0xD000000000000036, 0x80000001C18F00A0);
      RERealityFileAssetDescriptorGetFilename();
      v11 = String.init(cString:)();
      MEMORY[0x1C68F3410](v11);

      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v12 = 0;
      *(v12 + 8) = 0xE000000000000000;
      *(v12 + 16) = 4;
      return swift_willThrow();
    }
  }

  return result;
}

void closure #1 in remapElement #1 (element:) in static __REAssetBundle.fixupSceneInteractions(scene:assetDescriptors:assetService:queueOptions:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a3;
  v37 = a1;
  v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays13OpaquePointerVG_AGs5NeverOTg5(partial apply for closure #1 in closure #1 in remapElement #1 (element:) in static __REAssetBundle.fixupSceneInteractions(scene:assetDescriptors:assetService:queueOptions:), v35, a2);
  v12 = a3[3];
  v13 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v12);
  v39 = a4;
  v33 = v11;
  v34 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13OpaquePointerVSgMd, &_ss13OpaquePointerVSgMR);
  __REAssetService.performOnEngineQueue<A>(with:_:)(&v39, partial apply for closure #2 in closure #1 in remapElement #1 (element:) in static __REAssetBundle.fixupSceneInteractions(scene:assetDescriptors:assetService:queueOptions:), v32, v12, v14, v13);
  if (v6)
  {
    v15 = *(v11 + 16);
    if (v15)
    {
      v16 = v11 + 32;
      do
      {
        v16 += 8;
        RERelease();
        --v15;
      }

      while (v15);
    }
  }

  else if (v38[0])
  {
    swift_beginAccess();
    *(a5 + 16) = 1;
    v17 = a6;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(a1, a6, type metadata accessor for __RKEntityAudioActionArguments);
    v18 = REAssetHandleCopyAssetIdentifierString();
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = (v17 + *(type metadata accessor for __RKEntityAudioActionArguments(0) + 20));

    *v22 = v19;
    v22[1] = v21;
    RERelease();
    v23 = *(v11 + 16);
    if (v23)
    {
      v24 = 32;
      do
      {
        RERelease();
        v24 += 8;
        --v23;
      }

      while (v23);
    }
  }

  else
  {
    strcpy(v38, "Invalid path ");
    HIWORD(v38[1]) = -4864;
    v25 = type metadata accessor for __RKEntityAudioActionArguments(0);
    MEMORY[0x1C68F3410](*(a1 + *(v25 + 20)), *(a1 + *(v25 + 20) + 8));
    v26 = v38[0];
    v27 = v38[1];
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v28 = v26;
    *(v28 + 8) = v27;
    *(v28 + 16) = 4;
    swift_willThrow();
    v29 = *(v11 + 16);
    if (v29)
    {
      v30 = v11 + 32;
      do
      {
        v30 += 8;
        RERelease();
        --v29;
      }

      while (v29);
    }
  }
}

uint64_t closure #1 in closure #1 in remapElement #1 (element:) in static __REAssetBundle.fixupSceneInteractions(scene:assetDescriptors:assetService:queueOptions:)@<X0>(void *a2@<X1>, uint64_t *a4@<X8>)
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  (*(v6 + 32))(v5, v6);
  type metadata accessor for __RKEntityAudioActionArguments(0);
  String.utf8CString.getter();
  v7 = REAssetManagerResolveAssetDescriptor();

  if (v7)
  {
    *a4 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in closure #1 in remapElement #1 (element:) in static __REAssetBundle.fixupSceneInteractions(scene:assetDescriptors:assetService:queueOptions:)@<X0>(void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 32))(v4, v5);
  result = REAssetHandleGetOrCreateImmutableWithAssetDescriptors();
  *a3 = result;
  return result;
}

void Entity.remapAudioActions(_:)(double (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v37 = a1;
  v38 = a2;
  v5 = type metadata accessor for __RKEntityActionSpecification(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v31 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  swift_beginAccess();
  v16 = MEMORY[0x1E69E7CC0];
  if (!static __RKEntityInteractionsComponent.registration)
  {
    v18 = MEMORY[0x1E69E7CC0];
    v19 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v19)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  if (REEntityGetCustomComponent())
  {
    Object = RECustomComponentGetObject();
    if (Object)
    {
      v18 = *(Object + 16);
      if (v18)
      {

        v19 = *(v18 + 16);
        if (!v19)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v18 = __RKEntityInteractionsComponent.decodedJSON()();
        v19 = *(v18 + 16);
        if (!v19)
        {
          goto LABEL_19;
        }
      }

LABEL_10:
      v33 = v19;
      v34 = v15;
      v31 = v2;
      v42 = v16;
      v39 = v18;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
      v20 = v39;
      v21 = 0;
      v22 = v42;
      v32 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v35 = v39 + v32;
      while (v21 < *(v20 + 16))
      {
        v23 = *(v40 + 72);
        v24 = v36;
        _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(v35 + v23 * v21, v36, type metadata accessor for __RKEntityInteractionSpecification);
        _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(v24, v10, type metadata accessor for __RKEntityInteractionSpecification);
        remap #1 (_:) in Entity.remapAudioActions(_:)(v24 + *(v8 + 20), v37, v38, v7);
        if (v4)
        {

          _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v24, type metadata accessor for __RKEntityInteractionSpecification);
          _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v10, type metadata accessor for __RKEntityInteractionSpecification);

          return;
        }

        v41 = 0;
        _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v24, type metadata accessor for __RKEntityInteractionSpecification);
        v25 = v8;
        v26 = &v10[*(v8 + 20)];
        v27 = v7;
        outlined assign with take of __RKEntityActionSpecification(v7, v26);
        v28 = v34;
        outlined init with take of __RKEntityActionSpecification(v10, v34, type metadata accessor for __RKEntityInteractionSpecification);
        v42 = v22;
        v30 = *(v22 + 16);
        v29 = *(v22 + 24);
        if (v30 >= v29 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
          v22 = v42;
        }

        ++v21;
        *(v22 + 16) = v30 + 1;
        outlined init with take of __RKEntityActionSpecification(v28, v22 + v32 + v30 * v23, type metadata accessor for __RKEntityInteractionSpecification);
        v7 = v27;
        v8 = v25;
        v4 = v41;
        v20 = v39;
        if (v33 == v21)
        {

          goto LABEL_20;
        }
      }

      __break(1u);
      return;
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
  v19 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v19)
  {
    goto LABEL_10;
  }

LABEL_19:

  v22 = MEMORY[0x1E69E7CC0];
LABEL_20:
  if (!static __RKEntityInteractionsComponent.registration)
  {
LABEL_26:

    return;
  }

  if (*(v22 + 16))
  {
    if ((REEntityGetCustomComponent() || REEntityAddComponentByClass()) && RECustomComponentGetObject())
    {
      __RKEntityInteractionsComponent.specifications.setter(v22);
      return;
    }

    goto LABEL_26;
  }

  if (REEntityGetCustomComponent())
  {
    REEntityRemoveComponentByClass();
  }
}

uint64_t Entity.storageForAudioActions.getter()
{
  v1 = v0;

  if (REEntityGetChildCount() < 1)
  {
LABEL_20:

    v12 = REEntityCreate();
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v13 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
        goto LABEL_34;
      }

      specialized static Entity.entityInfoType(_:)(v12);
      if (v14)
      {
        v6 = (*(v14 + 232))();
        v15 = *(v6 + 16);

        MEMORY[0x1C68F9740](v15, 0);
        *(v6 + 16) = v12;
        MEMORY[0x1C68F9740](v12, v6);

LABEL_26:
        Entity.name.setter(0xD000000000000016, 0x80000001C18EFF20);
        specialized HasHierarchy.setParent(_:preservingWorldTransform:)(v1, 0);
        return v6;
      }

      v13 = makeEntity(for:)(v12);
    }

    v6 = v13;
    goto LABEL_26;
  }

  v2 = 0;
  while (1)
  {
    result = REEntityGetChildCount();
    if (v2 >= result)
    {
      break;
    }

    result = REEntityGetChild();
    if (!result)
    {
      goto LABEL_35;
    }

    v4 = result;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v5 = swift_dynamicCastClassUnconditional();
LABEL_7:
      v6 = v5;
      goto LABEL_11;
    }

    result = REEntityIsBeingDestroyed();
    if (result)
    {
      goto LABEL_33;
    }

    specialized static Entity.entityInfoType(_:)(v4);
    if (!v7)
    {
      v5 = makeEntity(for:)(v4);
      goto LABEL_7;
    }

    v6 = (*(v7 + 232))();
    v8 = *(v6 + 16);

    MEMORY[0x1C68F9740](v8, 0);
    *(v6 + 16) = v4;
    MEMORY[0x1C68F9740](v4, v6);

LABEL_11:
    result = REEntityGetChildCount();
    if (v2 >= result)
    {
      goto LABEL_32;
    }

    REEntityGetName();
    if (String.init(cString:)() == 0xD000000000000016 && 0x80000001C18EFF20 == v9)
    {

LABEL_28:

      return v6;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      goto LABEL_28;
    }

    ++v2;

    if (v2 >= REEntityGetChildCount())
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t closure #1 in static __REAssetBundle.remapInteractionEntityBeforeWrite(with:assetService:fileWriter:element:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v60 = a5;
  v58 = a6;
  v59 = a7;
  v11 = type metadata accessor for __RKEntityAudioActionArguments(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(a1, v14, type metadata accessor for __RKEntityAudioActionArguments);
  v15 = *(v12 + 28);
  v62 = v14;
  v16 = &v14[v15];
  v17 = *v16;
  v18 = *(v16 + 1);
  v57 = v16;
  swift_beginAccess();
  v19 = *(a2 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
    *(a2 + 16) = v19;
  }

  v22 = *(v19 + 2);
  v21 = *(v19 + 3);
  if (v22 >= v21 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
  }

  *(v19 + 2) = v22 + 1;
  v23 = &v19[16 * v22];
  *(v23 + 4) = v17;
  *(v23 + 5) = v18;
  *(a2 + 16) = v19;
  swift_endAccess();
  v24 = a3[3];
  v25 = a3[4];
  v26 = __swift_project_boxed_opaque_existential_1(a3, v24);
  v27 = *a4;
  LOBYTE(v65) = *a4;
  MEMORY[0x1EEE9AC00](v26);
  *(&v56 - 4) = a3;
  *(&v56 - 3) = v17;
  *(&v56 - 2) = v18;
  v28 = type metadata accessor for __REAsset();
  v29 = v61;
  __REAssetService.performOnEngineQueue<A>(with:_:)(&v65, partial apply for closure #1 in closure #1 in static __REAssetBundle.remapInteractionEntityBeforeWrite(with:assetService:fileWriter:element:), (&v56 - 6), v24, v28, v25);
  if (v29)
  {
    goto LABEL_14;
  }

  v30 = v63;
  v65 = MEMORY[0x1E69E7CC0];
  v31 = a3[3];
  v32 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v31);
  __REAssetService.asManager.getter(v31, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1C1898160;
  *(v33 + 32) = v30;

  specialized __REAssetManager.loadAssetsAndDependencies<A>(_:with:_:)(v33, v27, &v65);

  REAssetWithMetadataCreate();
  RERealityFileAssetWriteReportCreate();
  if (!RERealityFileWriterWriteAsset())
  {

    v42 = RERealityFileAssetWriteReportGetError();
    if (v42)
    {
      v43 = v42;
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
      swift_allocError();
      *v44 = v43;
    }

    else
    {
      v63 = 0;
      v64 = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      v63 = 0xD000000000000017;
      v64 = 0x80000001C18EFED0;
      v50 = REAssetCopyDescription();
      countAndFlagsBits = String.init(_:)(v50)._countAndFlagsBits;
      MEMORY[0x1C68F3410](countAndFlagsBits);

      MEMORY[0x1C68F3410](11815, 0xE200000000000000);
      v52 = v63;
      v53 = v64;
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v54 = v52;
      *(v54 + 8) = v53;
      *(v54 + 16) = 4;
    }

    goto LABEL_13;
  }

  v34 = RERealityFileAssetWriteReportGetSerializationString();

  if (!v34)
  {
    v63 = 0;
    v64 = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    v63 = 0xD00000000000002ELL;
    v64 = 0x80000001C18EFEF0;
    v45 = REAssetCopyDescription();
    v46 = String.init(_:)(v45)._countAndFlagsBits;
    MEMORY[0x1C68F3410](v46);

    MEMORY[0x1C68F3410](11815, 0xE200000000000000);
    v47 = v63;
    v48 = v64;
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v49 = v47;
    *(v49 + 8) = v48;
    *(v49 + 16) = 4;
LABEL_13:
    swift_willThrow();
    RERelease();
    RERelease();

LABEL_14:
    v41 = v62;
    return _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v41, type metadata accessor for __RKEntityAudioActionArguments);
  }

  v35 = String.init(cString:)();
  v37 = v36;

  v38 = v57;
  *v57 = v35;
  v38[1] = v37;
  v39 = v58;
  swift_beginAccess();
  *(v39 + 16) = 1;
  v40 = v62;
  _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(v62, v59, type metadata accessor for __RKEntityAudioActionArguments);
  RERelease();
  RERelease();

  v41 = v40;
  return _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v41, type metadata accessor for __RKEntityAudioActionArguments);
}

uint64_t closure #1 in closure #1 in static __REAssetBundle.remapInteractionEntityBeforeWrite(with:assetService:fileWriter:element:)@<X0>(void *a1@<X0>, uint64_t *a4@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 32))(v5, v6);
  String.utf8CString.getter();
  AssetHandle = REAssetManagerCreateAssetHandle();

  if (AssetHandle)
  {
    type metadata accessor for __REAsset();
    result = swift_allocObject();
    *(result + 16) = AssetHandle;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #3 in static __REAssetBundle.remapInteractionEntityBeforeWrite(with:assetService:fileWriter:element:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 32))(v4, v5);
  String.utf8CString.getter();
  AssetHandle = REAssetManagerCreateAssetHandle();

  if (AssetHandle)
  {
    REAudioPlayerComponentRegisterAsset();
    return RERelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance __REAssetBundle.ExportOptions.PlatformOS@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  if (v3 <= 1)
  {
    if (!v3)
    {
      *a1 = 5459817;
      a1[1] = 0xE300000000000000;
      return outlined copy of __REAssetBundle.ExportOptions.PlatformOS(v2, v3);
    }

    if (v3 == 1)
    {
      *a1 = 0x534F63616DLL;
      a1[1] = 0xE500000000000000;
      return outlined copy of __REAssetBundle.ExportOptions.PlatformOS(v2, v3);
    }

LABEL_12:
    *a1 = v2;
    a1[1] = v3;
    return outlined copy of __REAssetBundle.ExportOptions.PlatformOS(v2, v3);
  }

  if (v3 == 2 || v3 == 3)
  {
    *a1 = 0x534F6E6F69736976;
    a1[1] = 0xE800000000000000;
    return outlined copy of __REAssetBundle.ExportOptions.PlatformOS(v2, v3);
  }

  if (v3 != 4)
  {
    goto LABEL_12;
  }

  *a1 = 1397716596;
  a1[1] = 0xE400000000000000;
  return outlined copy of __REAssetBundle.ExportOptions.PlatformOS(v2, v3);
}

double protocol witness for Hashable.hash(into:) in conformance __REAssetBundle.ExportOptions.PlatformOS(uint64_t a1)
{
  outlined copy of __REAssetBundle.ExportOptions.PlatformOS(*v1, *(v1 + 8));
  String.hash(into:)();

  return result;
}

Swift::Int __REAssetBundle.ExportOptions.PlatformRequirement.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return outlined copy of __REAssetBundle.ExportOptions.PlatformOS(v2, v3);
}

__n128 __REAssetBundle.ExportOptions.DeploymentTarget.init(platform:version:)@<Q0>(__n128 *a1@<X0>, unsigned __int32 a2@<W1>, unsigned __int32 a3@<W2>, unsigned __int32 a4@<W3>, __n128 *a5@<X8>)
{
  result = *a1;
  *a5 = *a1;
  a5[1].n128_u32[0] = a2;
  a5[1].n128_u32[1] = a3;
  a5[1].n128_u32[2] = a4;
  a5[1].n128_u8[12] = 0;
  return result;
}

uint64_t __REAssetBundle.ExportOptions.DeploymentTarget.init(platform:version:platformRequirement:)@<X0>(uint64_t *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  result = *a1;
  v10 = a1[1];
  v11 = *a5;
  if (v11 == 1 && v10 >= 5)
  {
    outlined consume of __REAssetBundle.ExportOptions.PlatformOS(result, v10);
    result = 0;
    v13 = 0;
    v16 = 0;
    v10 = 5;
  }

  else
  {
    v13 = a2 | (a3 << 32);
    v14 = v11 == 0;
    v15 = 0x100000000;
    if (v14)
    {
      v15 = 0;
    }

    v16 = v15 | a4;
  }

  *a6 = result;
  *(a6 + 8) = v10;
  *(a6 + 16) = v13;
  *(a6 + 24) = v16;
  *(a6 + 28) = BYTE4(v16);
  return result;
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.ExportOptions.PlatformOS, &type metadata for __REAssetBundle.ExportOptions.PlatformOS, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.ExportOptions.PlatformRequirement and conformance __REAssetBundle.ExportOptions.PlatformRequirement()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformRequirement and conformance __REAssetBundle.ExportOptions.PlatformRequirement;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformRequirement and conformance __REAssetBundle.ExportOptions.PlatformRequirement)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetBundle.ExportOptions.PlatformRequirement, &type metadata for __REAssetBundle.ExportOptions.PlatformRequirement, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformRequirement and conformance __REAssetBundle.ExportOptions.PlatformRequirement);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __REAssetBundle.ExportOptions.PlatformOS(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for __REAssetBundle.ExportOptions.PlatformOS(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __REAssetBundle.ExportOptions.DeploymentTarget(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 29))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 5;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for __REAssetBundle.ExportOptions.DeploymentTarget(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 2147483643;
    if (a3 > 0x7FFFFFFA)
    {
      *(result + 29) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFA)
    {
      *(result + 29) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:) and conformance LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:)()
{
  result = lazy protocol witness table cache variable for type LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:) and conformance LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:);
  if (!lazy protocol witness table cache variable for type LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:) and conformance LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:))
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:), &unk_1F4122738, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:) and conformance LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:));
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:) and conformance LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:);
  if (!lazy protocol witness table cache variable for type LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:) and conformance LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:))
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:), &unk_1F4122738, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:) and conformance LoadNamedFileError #1 in static __REAssetBundle.loadNamedFileContents(bundleUrl:fileName:));
  }

  return result;
}

void remap #1 (_:) in Entity.remapAudioActions(_:)(uint64_t a1@<X0>, double (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v49 = a3;
  v50 = a2;
  v44 = a4;
  v7 = type metadata accessor for __RKEntityAudioActionArguments(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for __RKEntityActionSpecification(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v48 = a1;
  _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(a1, &v40 - v18, type metadata accessor for __RKEntityActionSpecification);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    v48 = v11;
    v26 = *v19;
    v27 = *(v19 + 1);
    v28 = v19[16];
    v29 = *(v19 + 3);
    v53 = v19[32];
    v30 = v19[33];
    v31 = v27;
    v43 = v30;
    v52 = v26;
    v32 = *(v27 + 16);
    if (!v32)
    {

      v34 = MEMORY[0x1E69E7CC0];
      v39 = v44;
LABEL_21:
      *v39 = v26;
      *(v39 + 8) = v34;
      *(v39 + 16) = v28;
      *(v39 + 24) = v29;
      *(v39 + 32) = v53;
      *(v39 + 33) = v43;
LABEL_22:
      swift_storeEnumTagMultiPayload();
      return;
    }

    v40 = v29;
    v41 = v28;
    v42 = v10;
    v51 = MEMORY[0x1E69E7CC0];

    v46 = v32;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
    v33 = 0;
    v34 = v51;
    v35 = v48;
    v45 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v47 = v31 + v45;
    while (v33 < *(v31 + 16))
    {
      v36 = *(v35 + 72);
      _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(v47 + v36 * v33, v13, type metadata accessor for __RKEntityActionSpecification);
      remap #1 (_:) in Entity.remapAudioActions(_:)(v13, v50, v49, v16);
      if (v5)
      {
        _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v13, type metadata accessor for __RKEntityActionSpecification);

        return;
      }

      _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v13, type metadata accessor for __RKEntityActionSpecification);
      v51 = v34;
      v38 = *(v34 + 16);
      v37 = *(v34 + 24);
      if (v38 >= v37 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
        v34 = v51;
      }

      ++v33;
      *(v34 + 16) = v38 + 1;
      outlined init with take of __RKEntityActionSpecification(v16, v34 + v45 + v38 * v36, type metadata accessor for __RKEntityActionSpecification);
      v35 = v48;
      if (v46 == v33)
      {
        swift_bridgeObjectRelease_n();
        v26 = v52;
        v39 = v44;
        LOBYTE(v28) = v41;
        v29 = v40;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(v48, v44, type metadata accessor for __RKEntityActionSpecification);
      _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v19, type metadata accessor for __RKEntityActionSpecification);
      return;
    }

    outlined init with take of __RKEntityActionSpecification(v19, v9, type metadata accessor for __RKEntityAudioActionArguments);
    v21 = &v9[*(v7 + 20)];
    v23 = *v21;
    v22 = *(v21 + 1);
    v24 = v23 & 0xFFFFFFFFFFFFLL;
    if ((v22 & 0x2000000000000000) != 0)
    {
      v25 = HIBYTE(v22) & 0xF;
    }

    else
    {
      v25 = v24;
    }

    if (!v25)
    {
      _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v9, type metadata accessor for __RKEntityAudioActionArguments);
      _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(v48, v44, type metadata accessor for __RKEntityActionSpecification);
      return;
    }

    v50(v9);
    _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v9, type metadata accessor for __RKEntityAudioActionArguments);
    if (!v4)
    {
      goto LABEL_22;
    }
  }
}

BOOL specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
    }
  }

  return result;
}

double block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v3 = CFErrorRef._domain.getter();
    if (!*MEMORY[0x1E6998F00])
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v4 = v2;
    if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    if (CFErrorRef._code.getter() == 8)
    {
      if (CFErrorRef._userInfo.getter())
      {
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          if (*MEMORY[0x1E6998F10])
          {
            v9 = v8;
            v10 = *MEMORY[0x1E6998F10];
            v11 = [v9 __swift_objectForKeyedSubscript_];

            swift_unknownObjectRelease();
            if (v11)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v18 = 0u;
              v19 = 0u;
            }

            v20 = v18;
            v21 = v19;
            if (*(&v19 + 1))
            {
              if (swift_dynamicCast())
              {

                lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
                swift_allocError();
                *v16 = v18;
                *(v16 + 8) = 0;
                *(v16 + 16) = 0;
LABEL_34:
                swift_willThrow();
                goto LABEL_35;
              }

              goto LABEL_35;
            }

LABEL_37:

            goto LABEL_25;
          }

          goto LABEL_39;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (CFErrorRef._code.getter() != 21)
      {
        goto LABEL_35;
      }

      if (CFErrorRef._userInfo.getter())
      {
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          if (*MEMORY[0x1E6998F10])
          {
            v13 = v12;
            v14 = *MEMORY[0x1E6998F10];
            v15 = [v13 __swift_objectForKeyedSubscript_];

            swift_unknownObjectRelease();
            if (v15)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v18 = 0u;
              v19 = 0u;
            }

            v20 = v18;
            v21 = v19;
            if (*(&v19 + 1))
            {
              if (swift_dynamicCast())
              {

                lazy protocol witness table accessor for type LocalizedRealityFileError and conformance LocalizedRealityFileError();
                swift_allocError();
                *v17 = v18;
                goto LABEL_34;
              }

LABEL_35:

              return;
            }

            goto LABEL_37;
          }

LABEL_40:
          __break(1u);
          return;
        }

LABEL_23:

        swift_unknownObjectRelease();
        goto LABEL_24;
      }
    }

LABEL_24:
    v20 = 0u;
    v21 = 0u;
LABEL_25:
    outlined destroy of BodyTrackingComponent?(&v20, &_sypSgMd, &_sypSgMR);
  }
}

void specialized static __REAssetBundle.findTextureEntryDescriptors(in:)(uint64_t a1, __n128 a2)
{
  AssetDescriptorCount = RERealityFileGetAssetDescriptorCount();
  if (AssetDescriptorCount < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    v3 = AssetDescriptorCount;
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (v3 != v4)
    {
      if (v4 >= v3)
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_15;
      }

      AssetDescriptorAtIndex = RERealityFileGetAssetDescriptorAtIndex();
      if (!AssetDescriptorAtIndex)
      {
        goto LABEL_17;
      }

      v8 = AssetDescriptorAtIndex;
      RERealityFileAssetDescriptorGetFilename();
      String.init(cString:)();
      v9._object = 0x80000001C18F00E0;
      v9._countAndFlagsBits = 0xD000000000000010;
      v10 = String.hasSuffix(_:)(v9);

      ++v4;
      if (v10)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
        }

        v12 = *(v5 + 2);
        v11 = *(v5 + 3);
        if (v12 >= v11 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v5);
        }

        *(v5 + 2) = v12 + 1;
        *&v5[8 * v12 + 32] = v8;
        v4 = v6;
      }
    }
  }
}

void *specialized static __REAssetBundle.createDownsampledTextureDescriptors(assetService:realityFile:realityFileURL:downsamplingStrategy:queueOptions:)(void *a1, uint64_t a2, __n128 a3, uint64_t a4, void *a5)
{
  v31 = a5;
  v36[1] = *MEMORY[0x1E69E9840];
  v34 = a2;
  specialized static __REAssetBundle.findTextureEntryDescriptors(in:)(a2, a3);
  v7 = v6;
  v8 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  v33 = *(v6 + 16);
  if (v33)
  {
    v9 = 0;
    while (1)
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
      }

      v10 = MEMORY[0x1C6901EB0]();
      v36[0] = 0;
      v11 = a1[3];
      v12 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v11);
      (*(v12 + 32))(v11, v12);
      v13 = RERealityFileCopyTextureDescriptor();
      if (!v13)
      {
        break;
      }

      v14 = v13;
      MEMORY[0x1C68F3650]();
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v9;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v8 = v35;
      objc_autoreleasePoolPop(v10);
      if (v33 == v9)
      {
        goto LABEL_8;
      }
    }

    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v25 = 0xD00000000000003ELL;
    *(v25 + 8) = 0x80000001C18F0060;
    *(v25 + 16) = 4;
    swift_willThrow();
    objc_autoreleasePoolPop(v10);
    goto LABEL_18;
  }

LABEL_8:
  v15 = v31[3];
  v16 = v31[4];
  __swift_project_boxed_opaque_existential_1(v31, v15);
  (*(v16 + 8))(v36, v8, v15, v16);
  v17 = v32;
  if (v32)
  {

LABEL_18:

    return a1;
  }

  v18 = v36[0];
  if (v36[0])
  {
    v19 = *(v36[0] + 16);
    if (v19)
    {
      v32 = 0;
      v33 = v7;
      v36[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
      v20 = v36[0];
      v21 = *(v36[0] + 16);
      v22 = 32;
      do
      {
        v23 = *(v18 + v22);
        v36[0] = v20;
        v24 = *(v20 + 24);
        if (v21 >= v24 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v21 + 1, 1);
          v20 = v36[0];
        }

        *(v20 + 16) = v21 + 1;
        *(v20 + 8 * v21 + 32) = v23;
        v22 += 8;
        ++v21;
        --v19;
      }

      while (v19);

      v17 = v32;
      v7 = v33;
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    MEMORY[0x1EEE9AC00](v27);
    v30[2] = v7;
    v30[3] = v20;
    v30[4] = v34;
    v30[5] = a1;
    v29 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #3 in static __REAssetBundle.createDownsampledTextureDescriptors(assetService:realityFile:realityFileURL:downsamplingStrategy:queueOptions:), v30, 0, v28);
    if (!v17)
    {
      a1 = v29;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return a1;
}

uint64_t specialized Scene.init(_:assetService:)(uint64_t a1, void *a2, __n128 a3)
{
  v4 = RESceneCreate();
  type metadata accessor for Scene();
  swift_allocObject();
  v5 = Scene.init(coreScene:)(v4);

  RERelease();

  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  (*(v7 + 32))(v6, v7);
  if ((RESceneLoadFromAsset() & 1) == 0)
  {
    v8 = REAssetHandleCopyAssetIdentifierString();
    v9 = String.init(_:)(v8);
    lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
    swift_allocError();
    *v10 = v9;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v5;
}

uint64_t specialized static __REAssetBundle.registerAnchorReferenceRawData(refData:assetService:fileNamesTuple:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (one-time initialization token for instances != -1)
  {
    swift_once();
  }

  v14 = specialized AssetServiceScopedRegistry.instance(for:)(a3);

  v15 = type metadata accessor for __RealityFileURLResolver();
  outlined init with copy of __REAssetService((v14 + 2), &v32);
  v16 = v33;
  v17 = v34;
  v18 = __swift_project_boxed_opaque_existential_1(&v32, v33);
  specialized static __RealityFileURLResolver.instance(for:)(v18, v15, v16, v17);

  __swift_destroy_boxed_opaque_existential_1(&v32);
  if (one-time initialization token for schemePrefix != -1)
  {
    swift_once();
  }

  v32 = static __RealityFileURLResolver.schemePrefix;

  MEMORY[0x1C68F3410](a4, a5);
  v19 = v32;
  outlined init with copy of __REAssetService((v14 + 2), &v32);
  v20 = v33;
  v21 = v34;
  v22 = __swift_project_boxed_opaque_existential_1(&v32, v33);
  specialized static __RealityFileURLResolver.instance(for:)(v22, v15, v20, v21);

  __swift_destroy_boxed_opaque_existential_1(&v32);
  *&v32 = 0x2F737465737361;
  *(&v32 + 1) = 0xE700000000000000;
  MEMORY[0x1C68F3410](a6, a7);
  v23 = v32;
  v24._countAndFlagsBits = 47;
  v24._object = 0xE100000000000000;
  if (String.hasSuffix(_:)(v24) || (v25 = 47, v26 = 0xE100000000000000, v27._countAndFlagsBits = 47, v27._object = 0xE100000000000000, String.hasPrefix(_:)(v27)))
  {
    v25 = 0;
    v26 = 0xE000000000000000;
  }

  v32 = v19;

  MEMORY[0x1C68F3410](v25, v26);

  MEMORY[0x1C68F3410](v23, *(&v23 + 1));

  v28 = v32;
  swift_beginAccess();
  outlined copy of Data._Representation(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v14[9];
  v14[9] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, v28, *(&v28 + 1), isUniquelyReferenced_nonNull_native);

  v14[9] = v31;
  swift_endAccess();
}

uint64_t specialized static __REAssetBundle.registerAnchoringComponentARReferences(scene:realityFilename:assetDescriptor:assetService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v87 = a5;
  v86 = a4;
  v85 = a3;
  v84 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v97 = &v79 - v6;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Data.Deallocator();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v95 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v100 = &v79 - v17;
  v102 = type metadata accessor for __REAnchoringType(0);
  v18 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v99 = &v79 - v21;
  swift_beginAccess();
  if (static __REAnchoring.registration)
  {
    result = RESceneGetComponentsOfCustomType();
    if (v23 < 0)
    {
      __break(1u);
LABEL_40:
      __break(1u);
    }

    else
    {
      v24 = v23;
      if (v23)
      {
        v25 = result;
        v83 = v13;
        v94 = v10;
        v105 = (v18 + 48);
        v98 = (v18 + 56);
        v82 = (v11 + 104);
        v81 = *MEMORY[0x1E6969010];
        v80 = (v11 + 8);
        v92 = (v8 + 32);
        v89 = (v8 + 56);
        v88 = (v8 + 48);
        v79 = (v8 + 8);
        v91 = v7;
        v26 = v87;
        v27 = v97;
        v28 = v95;
        while (1)
        {
          Object = RECustomComponentGetObject();
          if (!Object)
          {
            lazy protocol witness table accessor for type SerializationError and conformance SerializationError();
            swift_allocError();
            *v75 = 0;
            *(v75 + 8) = 0;
            *(v75 + 16) = 2;
            return swift_willThrow();
          }

          v33 = Object;
          v34 = type metadata accessor for __REAnchoring(0);
          outlined init with copy of [String : String](v33 + *(v34 + 20), v28, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
          v35 = *v105;
          v36 = v102;
          if ((*v105)(v28, 1, v102) == 1)
          {
            v37 = *v33;
            if (*v33)
            {
              v38 = strlen(*v33);
              v39 = v83;
              (*v82)(v83, v81, v94);
              Data.Deallocator._deallocator.getter();
              v90 = v24;
              if (v38)
              {
                type metadata accessor for __DataStorage();
                swift_allocObject();

                v40 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
                v41 = __DataStorage._capacity.modify();
                *v42 |= 0x8000000000000000;
                v43.n128_f64[0] = v41(&v103, 0);
                v44 = specialized Data._Representation.init(_:count:)(v40, v38, v43);
                v46 = v45;
              }

              else
              {
                v49 = Data.Deallocator._deallocator.getter();
                v49(v37, 0);

                v44 = 0;
                v46 = 0xC000000000000000;
              }

              (*v80)(v39, v94);
              type metadata accessor for JSONDecoder();
              swift_allocObject();
              JSONDecoder.init()();
              _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type __REAnchoringType and conformance __REAnchoringType, type metadata accessor for __REAnchoringType, protocol conformance descriptor for __REAnchoringType);
              v47 = v100;
              v48 = v102;
              v50 = v44;
              v51 = v46;
              v52 = v96;
              dispatch thunk of JSONDecoder.decode<A>(_:from:)();
              v53 = v91;
              if (v52)
              {

                outlined consume of Data._Representation(v50, v51);

                (*v98)(v47, 1, 1, v48);
                v96 = 0;
              }

              else
              {
                v96 = 0;
                (*v98)(v47, 0, 1, v48);

                outlined consume of Data._Representation(v50, v51);
              }

              v26 = v87;
              v28 = v95;
              v7 = v53;
              v24 = v90;
            }

            else
            {
              v47 = v100;
              v48 = v102;
              (*v98)(v100, 1, 1, v102);
            }

            v54 = v35(v28, 1, v48);
            v27 = v97;
            if (v54 != 1)
            {
              outlined destroy of BodyTrackingComponent?(v28, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
            }

            v36 = v102;
          }

          else
          {
            v47 = v100;
            outlined init with take of __RKEntityActionSpecification(v28, v100, type metadata accessor for __REAnchoringType);
            (*v98)(v47, 0, 1, v36);
          }

          if (v35(v47, 1, v36) == 1)
          {
            break;
          }

          v55 = v47;
          v56 = v99;
          outlined init with take of __RKEntityActionSpecification(v55, v99, type metadata accessor for __REAnchoringType);
          _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(v56, v101, type metadata accessor for __REAnchoringType);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 3)
          {
            (*v92)(v27, v101, v7);
            (*v89)(v27, 0, 1, v7);
          }

          else if (EnumCaseMultiPayload == 1)
          {
            v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMd, &_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMR) + 48);
            v59 = v101;
            (*v92)(v27, v101, v7);
            (*v89)(v27, 0, 1, v7);
            v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
            (*(*(v60 - 8) + 8))(v59 + v58, v60);
          }

          else
          {
            (*v89)(v27, 1, 1, v7);
            _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v101, type metadata accessor for __REAnchoringType);
          }

          if ((*v88)(v27, 1, v7) == 1)
          {
            _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v99, type metadata accessor for __REAnchoringType);
            v29 = v27;
            v30 = &_s10Foundation3URLVSgMd;
            v31 = &_s10Foundation3URLVSgMR;
            goto LABEL_6;
          }

          (*v92)(v93, v27, v7);
          v61 = URL.lastPathComponent.getter();
          v63 = v62;
          v64 = v26[3];
          v65 = v26[4];
          __swift_project_boxed_opaque_existential_1(v26, v64);
          (*(v65 + 32))(v64, v65);
          String.utf8CString.getter();
          v66 = REAssetManagerResolveAssetDescriptor();

          if (!v66)
          {
            goto LABEL_40;
          }

          v68 = v26[3];
          v67 = v26[4];
          __swift_project_boxed_opaque_existential_1(v26, v68);
          (*(v67 + 32))(v68, v67);
          RawDataForAssetDescriptor = REAssetManagerLoadRawDataForAssetDescriptor();
          if (!RawDataForAssetDescriptor)
          {
            v103 = 0;
            v104 = 0xE000000000000000;
            _StringGuts.grow(_:)(33);

            v103 = 0xD00000000000001ELL;
            v104 = 0x80000001C18F0290;
            MEMORY[0x1C68F3410](v61, v63);

            MEMORY[0x1C68F3410](46, 0xE100000000000000);
            v76 = v103;
            v77 = v104;
            lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
            swift_allocError();
            *v78 = v76;
            *(v78 + 8) = v77;
            *(v78 + 16) = 4;
            swift_willThrow();
            RERelease();
            (*v79)(v93, v91);
            return _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v99, type metadata accessor for __REAnchoringType);
          }

          v70 = RawDataForAssetDescriptor;
          v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v72;

          specialized static __REAssetBundle.registerAnchorReferenceRawData(refData:assetService:fileNamesTuple:)(v71, v73, v26, v84, v85, v61, v63);

          outlined consume of Data._Representation(v71, v73);
          RERelease();
          v7 = v91;
          (*v79)(v93, v91);
          result = _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v99, type metadata accessor for __REAnchoringType);
          v27 = v97;
          v28 = v95;
LABEL_7:
          v25 += 8;
          if (!--v24)
          {
            return result;
          }
        }

        v29 = v47;
        v30 = &_s10RealityKit17__REAnchoringTypeOSgMd;
        v31 = &_s10RealityKit17__REAnchoringTypeOSgMR;
LABEL_6:
        result = outlined destroy of BodyTrackingComponent?(v29, v30, v31);
        goto LABEL_7;
      }
    }
  }

  else
  {
    lazy protocol witness table accessor for type SerializationError and conformance SerializationError();
    swift_allocError();
    *v74 = xmmword_1C18D30C0;
    *(v74 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t specialized static __REAssetBundle.remapSceneAnchorsBeforeWrite(fileWriter:scene:)(uint64_t a1, uint64_t a2)
{
  v142 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v132 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v131 = &v119 - v6;
  v141 = type metadata accessor for URLComponents();
  v164 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v130 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v129 = &v119 - v9;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v10 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v145 = &v119 - v11;
  v156 = type metadata accessor for URL();
  v12 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v128 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v144 = &v119 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v127 = &v119 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v143 = &v119 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgSgMd, &_s10RealityKit17__REAnchoringTypeOSgSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v152 = &v119 - v21;
  v151 = type metadata accessor for Data.Deallocator();
  v22 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v153 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  v24 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v122 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v121 = &v119 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v155 = &v119 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v163 = &v119 - v31;
  v32 = type metadata accessor for __REAnchoringType(0);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v159 = &v119 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v158 = &v119 - v36;
  swift_beginAccess();
  if (static __REAnchoring.registration)
  {
    result = RESceneGetComponentsOfCustomType();
    v157 = result;
    if ((v38 & 0x8000000000000000) == 0)
    {
      v162 = v2;
      if (!v38)
      {
        LOBYTE(v41) = 0;
        return v41 & 1;
      }

      v39 = v10;
      v40 = 0;
      v41 = 0;
      v166 = (v33 + 48);
      v161 = (v33 + 56);
      v135 = *MEMORY[0x1E6969010];
      v134 = (v22 + 104);
      v133 = (v22 + 8);
      v150 = (v12 + 32);
      v138 = (v12 + 48);
      v137 = (v164 + 8);
      v140 = (v12 + 8);
      v148 = (v24 + 56);
      v119 = v39;
      v139 = (v39 + 32);
      v147 = (v24 + 48);
      v42 = v156;
      v43 = v152;
      v154 = v38;
      v136 = v32;
LABEL_5:
      v120 = v41;
      v44 = v153;
      v45 = v155;
      while (v40 < v38)
      {
        if (__OFADD__(v40, 1))
        {
          goto LABEL_63;
        }

        Object = RECustomComponentGetObject();
        if (!Object)
        {
          lazy protocol witness table accessor for type SerializationError and conformance SerializationError();
          swift_allocError();
          *v109 = 0;
          *(v109 + 8) = 0;
          *(v109 + 16) = 2;
          goto LABEL_46;
        }

        v50 = Object;
        v51 = type metadata accessor for __REAnchoring(0);
        outlined init with copy of [String : String](v50 + *(v51 + 20), v45, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
        v52 = *v166;
        v53 = (*v166)(v45, 1, v32);
        v164 = v40 + 1;
        if (v53 == 1)
        {
          v54 = *v50;
          if (*v50)
          {
            v55 = strlen(*v50);
            (*v134)(v44, v135, v151);
            v56 = v44;
            Data.Deallocator._deallocator.getter();
            if (v55)
            {
              type metadata accessor for __DataStorage();
              swift_allocObject();

              v57 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
              v58 = __DataStorage._capacity.modify();
              *v59 |= 0x8000000000000000;
              v60.n128_f64[0] = v58(v165, 0);
              v55 = specialized Data._Representation.init(_:count:)(v57, v55, v60);
              v62 = v61;
            }

            else
            {
              v64 = Data.Deallocator._deallocator.getter();
              v64(v54, 0);

              v62 = 0xC000000000000000;
            }

            (*v133)(v56, v151);
            type metadata accessor for JSONDecoder();
            swift_allocObject();
            JSONDecoder.init()();
            _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type __REAnchoringType and conformance __REAnchoringType, type metadata accessor for __REAnchoringType, protocol conformance descriptor for __REAnchoringType);
            v65 = v162;
            v66 = v163;
            dispatch thunk of JSONDecoder.decode<A>(_:from:)();
            if (v65)
            {

              outlined consume of Data._Representation(v55, v62);

              v160 = *v161;
              v160(v66, 1, 1, v32);
              v162 = 0;
            }

            else
            {
              v162 = 0;
              v160 = *v161;
              v160(v66, 0, 1, v32);

              outlined consume of Data._Representation(v55, v62);
            }

            v43 = v152;
            v44 = v153;
            v45 = v155;
          }

          else
          {
            v160 = *v161;
            v160(v163, 1, 1, v32);
          }

          v67 = v52(v45, 1, v32);
          v42 = v156;
          if (v67 != 1)
          {
            outlined destroy of BodyTrackingComponent?(v45, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
          }

          v63 = v163;
        }

        else
        {
          v63 = v163;
          outlined init with take of __RKEntityActionSpecification(v45, v163, type metadata accessor for __REAnchoringType);
          v160 = *v161;
          v160(v63, 0, 1, v32);
        }

        if (v52(v63, 1, v32) == 1)
        {
          v46 = v63;
          v47 = &_s10RealityKit17__REAnchoringTypeOSgMd;
          v48 = &_s10RealityKit17__REAnchoringTypeOSgMR;
        }

        else
        {
          v68 = v158;
          outlined init with take of __RKEntityActionSpecification(v63, v158, type metadata accessor for __REAnchoringType);
          _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(v68, v159, type metadata accessor for __REAnchoringType);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 3)
          {
            v91 = *v150;
            (*v150)();
            v92 = v162;
            v93 = Data.init(contentsOf:options:)();
            v162 = v92;
            if (v92)
            {
              goto LABEL_57;
            }

            v95 = v93;
            v96 = v94;
            v126 = v91;
            RERealityFileAssetWriteReportCreate();
            isa = Data._bridgeToObjectiveC()().super.isa;
            URL.path.getter();
            String.utf8CString.getter();

            v98 = RERealityFileWriterWriteDataEntry();

            if ((v98 & 1) == 0)
            {
              v111 = RERealityFileAssetWriteReportGetError();
              if (v111)
              {
                v112 = v111;
                type metadata accessor for CFErrorRef(0);
                _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
                swift_allocError();
                *v113 = v112;
              }

              else
              {
                lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
                swift_allocError();
                *v117 = 0xD00000000000002CLL;
                *(v117 + 8) = 0x80000001C18EFF40;
                *(v117 + 16) = 4;
              }

              swift_willThrow();
              RERelease();
              outlined consume of Data._Representation(v95, v96);
LABEL_57:
              (*v140)(v144, v156);
LABEL_61:
              _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v158, type metadata accessor for __REAnchoringType);
              return v41 & 1;
            }

            v125 = v96;
            v99 = v95;
            result = RERealityFileAssetWriteReportGetSerializationString();
            if (!result)
            {
              goto LABEL_68;
            }

            v100 = v130;
            URLComponents.init()();
            v101 = String.init(cString:)();
            MEMORY[0x1C68F1FD0](v101);
            v102 = v132;
            URLComponents.url.getter();
            v42 = v156;
            result = (*v138)(v102, 1, v156);
            if (result == 1)
            {
              goto LABEL_67;
            }

            (*v137)(v100, v141);
            v103 = v128;
            v104 = v126;
            (v126)(v128, v102, v42);
            RERelease();
            outlined consume of Data._Representation(v99, v125);
            (*v140)(v144, v42);
            v43 = v152;
            v104(v152, v103, v42);
            v32 = v136;
            swift_storeEnumTagMultiPayload();
            v160(v43, 0, 1, v32);
            v90 = v149;
            (*v148)(v43, 0, 1, v149);
            v44 = v153;
          }

          else if (EnumCaseMultiPayload == 1)
          {
            v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMd, &_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMR);
            v70 = *(v126 + 48);
            v71 = *v150;
            v72 = v143;
            v73 = v159;
            (*v150)(v143, v159, v42);
            v74 = *v139;
            v75 = v73 + v70;
            v76 = v72;
            (*v139)(v145, v75, v146);
            v77 = v162;
            v78 = Data.init(contentsOf:options:)();
            v162 = v77;
            if (v77)
            {
              v110 = v119;
LABEL_60:
              (*(v110 + 8))(v145, v146);
              (*v140)(v76, v156);
              goto LABEL_61;
            }

            v80 = v78;
            v81 = v79;
            v124 = v74;
            v125 = v71;
            RERealityFileAssetWriteReportCreate();
            v82 = Data._bridgeToObjectiveC()().super.isa;
            URL.path.getter();
            String.utf8CString.getter();

            v83 = RERealityFileWriterWriteDataEntry();

            if ((v83 & 1) == 0)
            {
              v114 = RERealityFileAssetWriteReportGetError();
              if (v114)
              {
                v115 = v114;
                type metadata accessor for CFErrorRef(0);
                _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
                swift_allocError();
                *v116 = v115;
              }

              else
              {
                lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
                swift_allocError();
                *v118 = 0xD00000000000002CLL;
                *(v118 + 8) = 0x80000001C18EFF40;
                *(v118 + 16) = 4;
              }

              v110 = v119;
              v76 = v143;
              swift_willThrow();
              RERelease();
              outlined consume of Data._Representation(v80, v81);
              goto LABEL_60;
            }

            v123 = v50;
            result = RERealityFileAssetWriteReportGetSerializationString();
            if (!result)
            {
              goto LABEL_66;
            }

            v84 = v129;
            URLComponents.init()();
            v85 = String.init(cString:)();
            MEMORY[0x1C68F1FD0](v85);
            v86 = v131;
            URLComponents.url.getter();
            v42 = v156;
            result = (*v138)(v86, 1, v156);
            if (result == 1)
            {
              goto LABEL_65;
            }

            (*v137)(v84, v141);
            v87 = v86;
            v88 = v125;
            (v125)(v127, v87, v42);
            RERelease();
            outlined consume of Data._Representation(v80, v81);
            (*v140)(v143, v42);
            v89 = *(v126 + 48);
            v43 = v152;
            v88();
            v124(v43 + v89, v145, v146);
            v32 = v136;
            swift_storeEnumTagMultiPayload();
            v160(v43, 0, 1, v32);
            v90 = v149;
            (*v148)(v43, 0, 1, v149);
            v44 = v153;
          }

          else
          {
            v90 = v149;
            (*v148)(v43, 1, 1, v149);
            _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v159, type metadata accessor for __REAnchoringType);
          }

          v105 = (*v147)(v43, 1, v90);
          v45 = v155;
          if (v105 != 1)
          {
            v106 = v121;
            outlined init with take of __REAnchoringType?(v43, v121);
            v107 = v122;
            outlined init with copy of [String : String](v106, v122, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
            __REAnchoring.type.setter(v107);
            outlined destroy of BodyTrackingComponent?(v106, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
            result = _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v158, type metadata accessor for __REAnchoringType);
            v41 = 1;
            v40 = v164;
            v38 = v154;
            if (v164 != v154)
            {
              goto LABEL_5;
            }

            return v41 & 1;
          }

          _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v158, type metadata accessor for __REAnchoringType);
          v46 = v43;
          v47 = &_s10RealityKit17__REAnchoringTypeOSgSgMd;
          v48 = &_s10RealityKit17__REAnchoringTypeOSgSgMR;
        }

        result = outlined destroy of BodyTrackingComponent?(v46, v47, v48);
        ++v40;
        v38 = v154;
        if (v164 == v154)
        {
          LOBYTE(v41) = v120;
          return v41 & 1;
        }
      }

      __break(1u);
LABEL_63:
      __break(1u);
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }

  else
  {
    lazy protocol witness table accessor for type SerializationError and conformance SerializationError();
    swift_allocError();
    *v108 = xmmword_1C18D30C0;
    *(v108 + 16) = 0;
LABEL_46:
    swift_willThrow();
    return v41 & 1;
  }

  return result;
}

uint64_t specialized static __REAssetBundle.remapSceneInteractionsBeforeWrite(with:assetService:fileWriter:scene:freeOfChangeSceneActions:)(__int128 *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v6 = v5;
  v69 = a3;
  v79 = a2;
  v74 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v61 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for __RKEntityActionSpecification(0);
  v72 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[5];
  v88 = a1[4];
  v89 = v14;
  v90[0] = a1[6];
  *(v90 + 11) = *(a1 + 107);
  v15 = a1[1];
  v84 = *a1;
  v85 = v15;
  v16 = a1[3];
  v86 = a1[2];
  v87 = v16;
  swift_beginAccess();
  if (static __RKEntityInteractionsComponent.registration)
  {
    closure #1 in Scene.entitiesWithInteractions()(a4, *(static __RKEntityInteractionsComponent.registration + 3));
    v18 = v17;
    if (v17 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v20 = 0;
      v21 = 0;
      v22 = v18 & 0xC000000000000001;
      v64 = (v18 + 32);
      v65 = v18 & 0xFFFFFFFFFFFFFF8;
      v62 = a5;
      v63 = v18;
      v59 = v18 & 0xC000000000000001;
      v60 = i;
      v58 = v13;
      while (1)
      {
        v68 = v21;
        if (v22)
        {
          v53 = v20;
          v71 = MEMORY[0x1C68F41F0](v20, v18);
          v24 = v20 + 1;
          if (__OFADD__(v53, 1))
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v20 >= *(v65 + 16))
          {
            goto LABEL_42;
          }

          v71 = v64[v20];

          v23 = __OFADD__(v20, 1);
          v24 = v20 + 1;
          if (v23)
          {
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }
        }

        v67 = v24;
        v25 = Entity.storageForAudioActions.getter();
        v26 = swift_allocObject();
        *(v26 + 16) = 0;
        v66 = v26 + 16;
        v27 = swift_allocObject();
        *(v27 + 16) = MEMORY[0x1E69E7CC0];
        v28 = v27 + 16;
        outlined init with copy of __REAssetService(v79, v83);
        v13 = swift_allocObject();
        *(v13 + 2) = v27;
        outlined init with take of ForceEffectBase(v83, (v13 + 24));
        v29 = v89;
        *(v13 + 8) = v88;
        *(v13 + 9) = v29;
        *(v13 + 10) = v90[0];
        *(v13 + 171) = *(v90 + 11);
        v30 = v85;
        *(v13 + 4) = v84;
        *(v13 + 5) = v30;
        v31 = v87;
        *(v13 + 6) = v86;
        *(v13 + 7) = v31;
        *(v13 + 24) = v69;
        *(v13 + 25) = v26;
        outlined init with copy of __REAssetBundle.ExportOptions(&v84, v82);
        Entity.remapAudioActions(_:)(partial apply for closure #1 in static __REAssetBundle.remapInteractionEntityBeforeWrite(with:assetService:fileWriter:element:), v13);
        if (v6)
        {

          return v55 & 1;
        }

        v32 = v26;
        if (REEntityGetComponent())
        {
          REEntityRemoveComponent();
        }

        v70 = v25;
        v78 = REEntityGetOrAddComponent();
        swift_beginAccess();
        v33 = *v28;
        v77 = *(*v28 + 16);
        if (v77)
        {
          break;
        }

LABEL_16:

        swift_beginAccess();
        v40 = *(v32 + 16);

        a5 = v62;
        if (*v62)
        {
          v91 = 0;
          if (static __RKEntityInteractionsComponent.registration && REEntityGetCustomComponent() && (Object = RECustomComponentGetObject()) != 0)
          {
            v42 = *(Object + 16);
            if (v42)
            {

              v43 = *(v42 + 16);
              if (!v43)
              {
LABEL_31:

                v13 = MEMORY[0x1E69E7CC0];
LABEL_32:
                type metadata accessor for Scene();
                v52 = static Scene.containsChangeSceneActions(_:)(v13);

                v44 = v52 ^ 1;
                v6 = v91;
                goto LABEL_33;
              }
            }

            else
            {
              v42 = __RKEntityInteractionsComponent.decodedJSON()();
              v43 = *(v42 + 16);
              if (!v43)
              {
                goto LABEL_31;
              }
            }
          }

          else
          {
            v42 = MEMORY[0x1E69E7CC0];
            v43 = *(MEMORY[0x1E69E7CC0] + 16);
            if (!v43)
            {
              goto LABEL_31;
            }
          }

          LODWORD(v81) = v40;
          v82[0] = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
          v13 = v82[0];
          v45 = *(v61 + 80);
          v80 = v42;
          v46 = v42 + ((v45 + 32) & ~v45);
          v47 = *(v61 + 72);
          v48 = v58;
          do
          {
            v49 = v73;
            _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(v46, v73, type metadata accessor for __RKEntityInteractionSpecification);
            _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(v49 + *(v74 + 20), v48, type metadata accessor for __RKEntityActionSpecification);
            _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(v49, type metadata accessor for __RKEntityInteractionSpecification);
            v82[0] = v13;
            v51 = *(v13 + 2);
            v50 = *(v13 + 3);
            if (v51 >= v50 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1);
              v13 = v82[0];
            }

            *(v13 + 2) = v51 + 1;
            outlined init with take of __RKEntityActionSpecification(v48, &v13[((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v51], type metadata accessor for __RKEntityActionSpecification);
            v46 += v47;
            --v43;
          }

          while (v43);

          a5 = v62;
          v40 = v81;
          goto LABEL_32;
        }

        v44 = 0;
LABEL_33:
        v21 = v40 | v68;
        *a5 = v44 & 1;
        v22 = v59;
        v20 = v67;
        v18 = v63;
        if (v67 == v60)
        {
          goto LABEL_45;
        }
      }

      a5 = 0;
      v13 = (v33 + 40);
      v75 = v32;
      v76 = v27;
      while (a5 < *(v33 + 16))
      {
        v91 = 0;
        v34 = *(v13 - 1);
        v35 = *v13;
        v18 = v79;
        v36 = v79[3];
        v80 = v79[4];
        v37 = __swift_project_boxed_opaque_existential_1(v79, v36);
        v81 = &v58;
        LOBYTE(v82[0]) = v84;
        MEMORY[0x1EEE9AC00](v37);
        *(&v58 - 4) = v18;
        *(&v58 - 3) = v34;
        v38 = v78;
        *(&v58 - 2) = v35;
        *(&v58 - 1) = v38;

        v39 = v91;
        __REAssetService.performOnEngineQueue<A>(with:_:)(v82, partial apply for closure #3 in static __REAssetBundle.remapInteractionEntityBeforeWrite(with:assetService:fileWriter:element:), (&v58 - 6), v36, MEMORY[0x1E69E7CA8] + 8, v80);
        v6 = v39;
        if (v39)
        {

          v55 = v81;
          return v55 & 1;
        }

        ++a5;
        v13 += 16;
        v32 = v75;
        if (v77 == a5)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

    LOBYTE(v21) = 0;
LABEL_45:
    v56 = v21;

    v55 = v56;
  }

  else
  {
LABEL_38:
    lazy protocol witness table accessor for type SerializationError and conformance SerializationError();
    swift_allocError();
    *v54 = xmmword_1C18BBCB0;
    *(v54 + 16) = 0;
    swift_willThrow();
  }

  return v55 & 1;
}

uint64_t outlined assign with take of __RKEntityActionSpecification(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for __RKEntityActionSpecification(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of __RKEntityActionSpecification(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for specialized closure #1 in __REAssetManager.loadAssetsAndDependencies<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  result = specialized closure #1 in __REAssetManager.loadAssetsAndDependencies<A>(_:)(*(v1 + 16), *(v1 + 24), **(v1 + 32), *(v1 + 40));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t _sSo10CFErrorRefaABs5Error10FoundationWlTm_5(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t LoadRequest.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = type metadata accessor for Future();
  swift_getWitnessTable(MEMORY[0x1E695C038], v3);
  return Publisher.subscribe<A>(_:)();
}

uint64_t LoadRequest.deinit()
{

  return v0;
}

void LoadRequestDependencies.add(_:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3 + 4);
  outlined init with copy of Any(a1, v8);
  swift_beginAccess();
  v4 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    *(v1 + 16) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  outlined init with take of Any(v8, &v4[32 * v7 + 32]);
  *(v1 + 16) = v4;
  swift_endAccess();
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t LoadRequest.__deallocating_deinit(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocClassInstance();
}

void LoadRequestAllocatedLock.valueWithLock.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  os_unfair_lock_lock((*(v1 + 2) + 16));
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, &v1[v4]);
  os_unfair_lock_unlock((*(v1 + 2) + 16));
}

uint64_t type metadata completion function for LoadRequestAllocatedLock(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *LoadRequestAllocatedLock.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  return v0;
}

uint64_t LoadRequestAllocatedLock.__deallocating_deinit()
{
  LoadRequestAllocatedLock.deinit();

  return swift_deallocClassInstance();
}

void AudioBufferResource.CreateOptions.init()(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 2) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0;
  *(a1 + 48) = -1;
}

uint64_t AudioBufferResource.CreateOptions.mixGroupName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void AudioBufferResource.CreateOptions.mixGroupName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

void AudioBufferResource.CreateOptions.normalization.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t AudioBufferResource.CreateOptions.normalization.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

void AudioBufferResource.CreateOptions.calibration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t AudioBufferResource.CreateOptions.calibration.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

BOOL specialized static AudioBufferResource.CreateOptions.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 != *a2 || ((a1[1] ^ a2[1]) & 1) != 0 || ((a1[2] ^ a2[2]) & 1) != 0)
  {
    return result;
  }

  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = a1[32];
  v7 = *(a1 + 5);
  v8 = a1[48];
  v9 = *(a2 + 2);
  v10 = *(a2 + 3);
  v11 = a2[32];
  v12 = *(a2 + 5);
  v13 = a2[48];
  if (v4)
  {
    if (!v9 || (*(a1 + 1) != *(a2 + 1) || v4 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6 == 255)
  {
    if (v11 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v11 == 255)
    {
      return 0;
    }

    if (v6)
    {
      if (v6 != 1)
      {
        result = 0;
        if (v11 != 2 || v10 != 0.0)
        {
          return result;
        }

        goto LABEL_26;
      }

      result = 0;
      if (v11 != 1)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (v11)
      {
        return result;
      }
    }

    if (v5 != v10)
    {
      return result;
    }
  }

LABEL_26:
  result = (v8 & v13) == 255;
  if (v8 != 255 && v13 != 255)
  {
    if (v8)
    {
      if ((v13 & 1) == 0)
      {
        return 0;
      }

      return v7 == v12;
    }

    if ((v13 & 1) == 0)
    {
      return v7 == v12;
    }

    return 0;
  }

  return result;
}

uint64_t && infix<A>(_:_:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, uint64_t)@<X3>, const char *a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v10 = a2[1];
  v32[0] = *a2;
  v32[1] = v10;
  v11 = a2[3];
  v13 = *a2;
  v12 = a2[1];
  v32[2] = a2[2];
  v32[3] = v11;
  v14 = a1[3];
  v30 = a1[2];
  v31 = v14;
  v28 = v14;
  v15 = a1[1];
  v29[0] = *a1;
  v29[1] = v15;
  v24 = v13;
  v25 = v12;
  v26 = a2[2];
  v27 = a2[3];
  v21 = v29[0];
  v22 = v15;
  v23 = v30;
  Predicate = type metadata accessor for QueryPredicate(0, a3, a3, a4);
  v17 = *(*(Predicate - 8) + 16);
  v17(v33, v29, Predicate);
  v17(v33, v32, Predicate);
  v18 = a4(0, a3);
  WitnessTable = swift_getWitnessTable(a5, v18);
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, a6);
  v33[4] = v24;
  v33[5] = v25;
  v33[6] = v26;
  v33[7] = v27;
  v33[0] = v21;
  v33[1] = v22;
  v33[2] = v23;
  v33[3] = v28;
  return (*(*(v18 - 8) + 8))(v33, v18);
}

uint64_t ! prefix<A>(_:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  v7 = a1[1];
  v21[0] = *a1;
  v21[1] = v7;
  v8 = a1[3];
  v10 = *a1;
  v9 = a1[1];
  v21[2] = a1[2];
  v21[3] = v8;
  v17 = v10;
  v18 = v9;
  v19 = a1[2];
  v20 = a1[3];
  Predicate = type metadata accessor for QueryPredicate(0, a2, a3, a4);
  (*(*(Predicate - 8) + 16))(v22, v21, Predicate);
  v14 = type metadata accessor for QueryPredicates.Not(0, a2, v12, v13);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.Not<A>, v14);
  QueryPredicateProtocol.eraseToQueryPredicate()(v14, WitnessTable, a5);
  v22[0] = v17;
  v22[1] = v18;
  v22[2] = v19;
  v22[3] = v20;
  return (*(*(v14 - 8) + 8))(v22, v14);
}

uint64_t === infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  QueryType.init(_:)(partial apply for closure #1 in === infix<A, B>(_:_:), v10, v16);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a2;
  QueryType.init(_:)(partial apply for closure #2 in === infix<A, B>(_:_:), v11, &v17);
  v16[1] = v17;
  v13 = type metadata accessor for QueryPredicates.Identical(0, a3, a4, v12);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.Identical<A, B>, v13);
  QueryPredicateProtocol.eraseToQueryPredicate()(v13, WitnessTable, a5);
}

uint64_t === infix<A, B>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v5 = (*a1 + *MEMORY[0x1E69E77B0]);
  v6 = *v5;
  v7 = v5[1];
  QueryType.init(_:)(partial apply for closure #1 in === infix<A, B>(_:_:), a1, v13);
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = a2;
  QueryType.init(_:)(partial apply for closure #1 in === infix<A, B>(_:_:), v8, &v14);
  v13[1] = v14;
  v10 = type metadata accessor for QueryPredicates.Identical(0, v6, v7, v9);

  swift_unknownObjectRetain();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.Identical<A, B>, v10);
  QueryPredicateProtocol.eraseToQueryPredicate()(v10, WitnessTable, a3);
}

{
  v5 = (*a1 + *MEMORY[0x1E69E77B0]);
  v6 = *v5;
  v7 = v5[1];
  QueryType.init(_:)(partial apply for closure #1 in === infix<A, B>(_:_:), a1, v12);
  QueryType.init(_:)(partial apply for closure #1 in === infix<A, B>(_:_:), a2, &v13);
  v12[1] = v13;
  v9 = type metadata accessor for QueryPredicates.Identical(0, v6, v7, v8);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.Identical<A, B>, v9);
  QueryPredicateProtocol.eraseToQueryPredicate()(v9, WitnessTable, a3);
}

uint64_t === infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v6 = *a2;
  v7 = swift_allocObject();
  v8 = (v6 + *MEMORY[0x1E69E77B0]);
  v9 = *v8;
  v7[2] = *v8;
  v10 = v8[1];
  v7[3] = v10;
  v7[4] = a1;
  QueryType.init(_:)(partial apply for closure #1 in === infix<A, B>(_:_:), v7, v15);
  QueryType.init(_:)(partial apply for closure #2 in === infix<A, B>(_:_:), a2, &v16);
  v15[1] = v16;
  v12 = type metadata accessor for QueryPredicates.Identical(0, v9, v10, v11);
  swift_unknownObjectRetain();

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.Identical<A, B>, v12);
  QueryPredicateProtocol.eraseToQueryPredicate()(v12, WitnessTable, a3);
}

uint64_t == infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v21 = a5;
  v23 = a2;
  v24 = a6;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v9 + 16);
  v22(v12, v11);
  v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = a5;
  v15 = *(v9 + 32);
  v15(&v14[v13], v12, a4);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v14, v25);
  (v22)(v12, v23, a4);
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  v17 = v21;
  *(v16 + 4) = v21;
  v15(&v16[v13], v12, a4);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v16, &v26);
  v25[1] = v26;
  v18 = type metadata accessor for QueryPredicates.Equals(0, a3, a4, v17);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.Equals<A, B>, v18);
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, v24);
}

uint64_t == infix<A, B>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = (*a1 + *MEMORY[0x1E69E77B0]);
  v9 = v8[1];
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v20 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a1;
  v14 = *v8;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, v20);
  (*(v10 + 16))(v12, a2, v9);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v14;
  *(v16 + 3) = v9;
  *(v16 + 4) = a3;
  (*(v10 + 32))(&v16[v15], v12, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v16, &v21);
  v20[1] = v21;
  v17 = type metadata accessor for QueryPredicates.Equals(0, v14, v9, a3);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.Equals<A, B>, v17);
  QueryPredicateProtocol.eraseToQueryPredicate()(v17, WitnessTable, a4);
}

uint64_t == infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v7 = *a2;
  v8 = MEMORY[0x1E69E77B0];
  v9 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = v21 - v12;
  (*(v10 + 16))(v21 - v12, v11);
  v14 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v15 = swift_allocObject();
  v16 = *(v7 + *v8);
  *(v15 + 2) = v16;
  *(v15 + 3) = v9;
  *(v15 + 4) = a3;
  (*(v10 + 32))(&v15[v14], v13, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v15, v21);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v17, &v22);
  v21[1] = v22;
  v18 = type metadata accessor for QueryPredicates.Equals(0, v16, v9, a3);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.Equals<A, B>, v18);
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, a4);
}

uint64_t == infix<A, B>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = *a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  v10 = (v8 + *MEMORY[0x1E69E77B0]);
  v11 = *v10;
  v12 = v10[1];
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v9, v17);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, &v18);
  v17[1] = v18;
  v14 = type metadata accessor for QueryPredicates.Equals(0, v11, v12, a3);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.Equals<A, B>, v14);
  QueryPredicateProtocol.eraseToQueryPredicate()(v14, WitnessTable, a4);
}

uint64_t != infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v21 = a5;
  v23 = a2;
  v24 = a6;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v9 + 16);
  v22(v12, v11);
  v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = a5;
  v15 = *(v9 + 32);
  v15(&v14[v13], v12, a4);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v14, v25);
  (v22)(v12, v23, a4);
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  v17 = v21;
  *(v16 + 4) = v21;
  v15(&v16[v13], v12, a4);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v16, &v26);
  v25[1] = v26;
  v18 = type metadata accessor for QueryPredicates.NotEquals(0, a3, a4, v17);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.NotEquals<A, B>, v18);
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, v24);
}

uint64_t != infix<A, B>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = (*a1 + *MEMORY[0x1E69E77B0]);
  v9 = v8[1];
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v20 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a1;
  v14 = *v8;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, v20);
  (*(v10 + 16))(v12, a2, v9);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v14;
  *(v16 + 3) = v9;
  *(v16 + 4) = a3;
  (*(v10 + 32))(&v16[v15], v12, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v16, &v21);
  v20[1] = v21;
  v17 = type metadata accessor for QueryPredicates.NotEquals(0, v14, v9, a3);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.NotEquals<A, B>, v17);
  QueryPredicateProtocol.eraseToQueryPredicate()(v17, WitnessTable, a4);
}

uint64_t != infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v7 = *a2;
  v8 = MEMORY[0x1E69E77B0];
  v9 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = v21 - v12;
  (*(v10 + 16))(v21 - v12, v11);
  v14 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v15 = swift_allocObject();
  v16 = *(v7 + *v8);
  *(v15 + 2) = v16;
  *(v15 + 3) = v9;
  *(v15 + 4) = a3;
  (*(v10 + 32))(&v15[v14], v13, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v15, v21);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v17, &v22);
  v21[1] = v22;
  v18 = type metadata accessor for QueryPredicates.NotEquals(0, v16, v9, a3);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.NotEquals<A, B>, v18);
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, a4);
}

uint64_t != infix<A, B>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = *a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  v10 = (v8 + *MEMORY[0x1E69E77B0]);
  v11 = *v10;
  v12 = v10[1];
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v9, v17);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, &v18);
  v17[1] = v18;
  v14 = type metadata accessor for QueryPredicates.NotEquals(0, v11, v12, a3);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.NotEquals<A, B>, v14);
  QueryPredicateProtocol.eraseToQueryPredicate()(v14, WitnessTable, a4);
}

uint64_t < infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v21 = a5;
  v23 = a2;
  v24 = a6;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v9 + 16);
  v22(v12, v11);
  v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = a5;
  v15 = *(v9 + 32);
  v15(&v14[v13], v12, a4);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v14, v25);
  (v22)(v12, v23, a4);
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  v17 = v21;
  *(v16 + 4) = v21;
  v15(&v16[v13], v12, a4);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v16, &v26);
  v25[1] = v26;
  v18 = type metadata accessor for QueryPredicates.LessThan(0, a3, a4, v17);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.LessThan<A, B>, v18);
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, v24);
}

uint64_t < infix<A, B>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = (*a1 + *MEMORY[0x1E69E77B0]);
  v9 = v8[1];
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v20 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a1;
  v14 = *v8;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, v20);
  (*(v10 + 16))(v12, a2, v9);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v14;
  *(v16 + 3) = v9;
  *(v16 + 4) = a3;
  (*(v10 + 32))(&v16[v15], v12, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v16, &v21);
  v20[1] = v21;
  v17 = type metadata accessor for QueryPredicates.LessThan(0, v14, v9, a3);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.LessThan<A, B>, v17);
  QueryPredicateProtocol.eraseToQueryPredicate()(v17, WitnessTable, a4);
}

uint64_t < infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v7 = *a2;
  v8 = MEMORY[0x1E69E77B0];
  v9 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = v21 - v12;
  (*(v10 + 16))(v21 - v12, v11);
  v14 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v15 = swift_allocObject();
  v16 = *(v7 + *v8);
  *(v15 + 2) = v16;
  *(v15 + 3) = v9;
  *(v15 + 4) = a3;
  (*(v10 + 32))(&v15[v14], v13, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v15, v21);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v17, &v22);
  v21[1] = v22;
  v18 = type metadata accessor for QueryPredicates.LessThan(0, v16, v9, a3);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.LessThan<A, B>, v18);
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, a4);
}

uint64_t < infix<A, B>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = *a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  v10 = (v8 + *MEMORY[0x1E69E77B0]);
  v11 = *v10;
  v12 = v10[1];
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v9, v17);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, &v18);
  v17[1] = v18;
  v14 = type metadata accessor for QueryPredicates.LessThan(0, v11, v12, a3);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.LessThan<A, B>, v14);
  QueryPredicateProtocol.eraseToQueryPredicate()(v14, WitnessTable, a4);
}

uint64_t <= infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v21 = a5;
  v23 = a2;
  v24 = a6;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v9 + 16);
  v22(v12, v11);
  v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = a5;
  v15 = *(v9 + 32);
  v15(&v14[v13], v12, a4);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v14, v25);
  (v22)(v12, v23, a4);
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  v17 = v21;
  *(v16 + 4) = v21;
  v15(&v16[v13], v12, a4);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v16, &v26);
  v25[1] = v26;
  v18 = type metadata accessor for QueryPredicates.LessThanOrEqual(0, a3, a4, v17);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.LessThanOrEqual<A, B>, v18);
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, v24);
}

uint64_t <= infix<A, B>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = (*a1 + *MEMORY[0x1E69E77B0]);
  v9 = v8[1];
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v20 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a1;
  v14 = *v8;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, v20);
  (*(v10 + 16))(v12, a2, v9);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v14;
  *(v16 + 3) = v9;
  *(v16 + 4) = a3;
  (*(v10 + 32))(&v16[v15], v12, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v16, &v21);
  v20[1] = v21;
  v17 = type metadata accessor for QueryPredicates.LessThanOrEqual(0, v14, v9, a3);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.LessThanOrEqual<A, B>, v17);
  QueryPredicateProtocol.eraseToQueryPredicate()(v17, WitnessTable, a4);
}

uint64_t <= infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v7 = *a2;
  v8 = MEMORY[0x1E69E77B0];
  v9 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = v21 - v12;
  (*(v10 + 16))(v21 - v12, v11);
  v14 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v15 = swift_allocObject();
  v16 = *(v7 + *v8);
  *(v15 + 2) = v16;
  *(v15 + 3) = v9;
  *(v15 + 4) = a3;
  (*(v10 + 32))(&v15[v14], v13, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v15, v21);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v17, &v22);
  v21[1] = v22;
  v18 = type metadata accessor for QueryPredicates.LessThanOrEqual(0, v16, v9, a3);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.LessThanOrEqual<A, B>, v18);
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, a4);
}

uint64_t <= infix<A, B>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = *a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  v10 = (v8 + *MEMORY[0x1E69E77B0]);
  v11 = *v10;
  v12 = v10[1];
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v9, v17);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, &v18);
  v17[1] = v18;
  v14 = type metadata accessor for QueryPredicates.LessThanOrEqual(0, v11, v12, a3);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.LessThanOrEqual<A, B>, v14);
  QueryPredicateProtocol.eraseToQueryPredicate()(v14, WitnessTable, a4);
}

uint64_t > infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v21 = a5;
  v23 = a2;
  v24 = a6;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v9 + 16);
  v22(v12, v11);
  v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = a5;
  v15 = *(v9 + 32);
  v15(&v14[v13], v12, a4);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v14, v25);
  (v22)(v12, v23, a4);
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  v17 = v21;
  *(v16 + 4) = v21;
  v15(&v16[v13], v12, a4);
  QueryType.init(_:)(partial apply for closure #2 in > infix<A, B>(_:_:), v16, &v26);
  v25[1] = v26;
  v18 = type metadata accessor for QueryPredicates.GreaterThan(0, a3, a4, v17);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.GreaterThan<A, B>, v18);
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, v24);
}

uint64_t > infix<A, B>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = (*a1 + *MEMORY[0x1E69E77B0]);
  v9 = v8[1];
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v20 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a1;
  v14 = *v8;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, v20);
  (*(v10 + 16))(v12, a2, v9);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v14;
  *(v16 + 3) = v9;
  *(v16 + 4) = a3;
  (*(v10 + 32))(&v16[v15], v12, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v16, &v21);
  v20[1] = v21;
  v17 = type metadata accessor for QueryPredicates.GreaterThan(0, v14, v9, a3);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.GreaterThan<A, B>, v17);
  QueryPredicateProtocol.eraseToQueryPredicate()(v17, WitnessTable, a4);
}

uint64_t > infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v7 = *a2;
  v8 = MEMORY[0x1E69E77B0];
  v9 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = v21 - v12;
  (*(v10 + 16))(v21 - v12, v11);
  v14 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v15 = swift_allocObject();
  v16 = *(v7 + *v8);
  *(v15 + 2) = v16;
  *(v15 + 3) = v9;
  *(v15 + 4) = a3;
  (*(v10 + 32))(&v15[v14], v13, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v15, v21);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #2 in > infix<A, B>(_:_:), v17, &v22);
  v21[1] = v22;
  v18 = type metadata accessor for QueryPredicates.GreaterThan(0, v16, v9, a3);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.GreaterThan<A, B>, v18);
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, a4);
}

uint64_t > infix<A, B>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = *a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  v10 = (v8 + *MEMORY[0x1E69E77B0]);
  v11 = *v10;
  v12 = v10[1];
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v9, v17);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, &v18);
  v17[1] = v18;
  v14 = type metadata accessor for QueryPredicates.GreaterThan(0, v11, v12, a3);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.GreaterThan<A, B>, v14);
  QueryPredicateProtocol.eraseToQueryPredicate()(v14, WitnessTable, a4);
}

uint64_t >= infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v21 = a5;
  v23 = a2;
  v24 = a6;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v9 + 16);
  v22(v12, v11);
  v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = a5;
  v15 = *(v9 + 32);
  v15(&v14[v13], v12, a4);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v14, v25);
  (v22)(v12, v23, a4);
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  v17 = v21;
  *(v16 + 4) = v21;
  v15(&v16[v13], v12, a4);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v16, &v26);
  v25[1] = v26;
  v18 = type metadata accessor for QueryPredicates.GreaterThanOrEqual(0, a3, a4, v17);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.GreaterThanOrEqual<A, B>, v18);
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, v24);
}

uint64_t >= infix<A, B>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = (*a1 + *MEMORY[0x1E69E77B0]);
  v9 = v8[1];
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v20 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a1;
  v14 = *v8;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, v20);
  (*(v10 + 16))(v12, a2, v9);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v14;
  *(v16 + 3) = v9;
  *(v16 + 4) = a3;
  (*(v10 + 32))(&v16[v15], v12, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v16, &v21);
  v20[1] = v21;
  v17 = type metadata accessor for QueryPredicates.GreaterThanOrEqual(0, v14, v9, a3);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.GreaterThanOrEqual<A, B>, v17);
  QueryPredicateProtocol.eraseToQueryPredicate()(v17, WitnessTable, a4);
}

uint64_t >= infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v7 = *a2;
  v8 = MEMORY[0x1E69E77B0];
  v9 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = v21 - v12;
  (*(v10 + 16))(v21 - v12, v11);
  v14 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v15 = swift_allocObject();
  v16 = *(v7 + *v8);
  *(v15 + 2) = v16;
  *(v15 + 3) = v9;
  *(v15 + 4) = a3;
  (*(v10 + 32))(&v15[v14], v13, v9);
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v15, v21);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v17, &v22);
  v21[1] = v22;
  v18 = type metadata accessor for QueryPredicates.GreaterThanOrEqual(0, v16, v9, a3);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.GreaterThanOrEqual<A, B>, v18);
  QueryPredicateProtocol.eraseToQueryPredicate()(v18, WitnessTable, a4);
}

uint64_t >= infix<A, B>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = *a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  v10 = (v8 + *MEMORY[0x1E69E77B0]);
  v11 = *v10;
  v12 = v10[1];
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v9, v17);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  QueryType.init(_:)(partial apply for closure #1 in == infix<A, B>(_:_:), v13, &v18);
  v17[1] = v18;
  v14 = type metadata accessor for QueryPredicates.GreaterThanOrEqual(0, v11, v12, a3);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.GreaterThanOrEqual<A, B>, v14);
  QueryPredicateProtocol.eraseToQueryPredicate()(v14, WitnessTable, a4);
}

uint64_t type metadata instantiation function for QueryPredicates.GreaterThanOrEqual(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for QueryPredicates.GreaterThan(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for QueryPredicates.LessThanOrEqual(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for QueryPredicates.LessThan(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for QueryPredicates.NotEquals(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for QueryPredicates.Equals(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for QueryPredicates.Identical(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for QueryPredicates.Not(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for QueryPredicates.Or(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for QueryPredicates.And(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for QueryPredicates.Or(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for QueryPredicates.Or(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t QueryPredicates.And.evaluate(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[1];
  v28[0] = *v4;
  v28[1] = v5;
  v6 = v4[3];
  v8 = *v4;
  v7 = v4[1];
  v9 = v6;
  v29 = v4[2];
  v30 = v6;
  v10 = v4[5];
  v11 = v4[6];
  v31 = v4[4];
  v32 = v10;
  v12 = v4[7];
  v33 = v11;
  v34 = v12;
  v24 = v8;
  v25 = v7;
  v26 = v29;
  v27 = v9;
  Predicate = type metadata accessor for QueryPredicate(0, *(a2 + 16), a3, a4);
  v14 = *(Predicate - 8);
  v15 = *(v14 + 16);
  v15(v35, v28, Predicate);
  v16 = QueryPredicate.evaluate(value:)();
  v35[0] = v24;
  v35[1] = v25;
  v35[2] = v26;
  v35[3] = v27;
  v17 = *(v14 + 8);
  v17(v35, Predicate);
  if (v16)
  {
    v20 = v31;
    v21 = v32;
    v22 = v33;
    v23 = v34;
    v15(&v24, &v31, Predicate);
    v18 = QueryPredicate.evaluate(value:)();
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v27 = v23;
    v17(&v24, Predicate);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.And<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = QueryPredicates.And.evaluate(value:)(a1, a2, a3, a4);
  *a5 = result & 1;
  return result;
}

uint64_t QueryPredicates.Or.evaluate(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[1];
  v28[0] = *v4;
  v28[1] = v5;
  v6 = v4[3];
  v8 = *v4;
  v7 = v4[1];
  v9 = v6;
  v29 = v4[2];
  v30 = v6;
  v10 = v4[5];
  v11 = v4[6];
  v31 = v4[4];
  v32 = v10;
  v12 = v4[7];
  v33 = v11;
  v34 = v12;
  v24 = v8;
  v25 = v7;
  v26 = v29;
  v27 = v9;
  Predicate = type metadata accessor for QueryPredicate(0, *(a2 + 16), a3, a4);
  v14 = *(Predicate - 8);
  v15 = *(v14 + 16);
  v15(v35, v28, Predicate);
  v16 = QueryPredicate.evaluate(value:)();
  v35[0] = v24;
  v35[1] = v25;
  v35[2] = v26;
  v35[3] = v27;
  v17 = *(v14 + 8);
  v17(v35, Predicate);
  if (v16)
  {
    v18 = 1;
  }

  else
  {
    v20 = v31;
    v21 = v32;
    v22 = v33;
    v23 = v34;
    v15(&v24, &v31, Predicate);
    v18 = QueryPredicate.evaluate(value:)();
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v27 = v23;
    v17(&v24, Predicate);
  }

  return v18 & 1;
}

uint64_t QueryPredicates.And.enumerate(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[1];
  v26[0] = *v3;
  v26[1] = v6;
  v7 = v3[3];
  v26[2] = v3[2];
  v26[3] = v7;
  v8 = v3[5];
  v27 = v3[4];
  v28 = v8;
  v9 = v3[7];
  v29 = v3[6];
  v30 = v9;
  ObjectType = swift_getObjectType();
  v11 = v3[1];
  v32 = *v3;
  v33 = v11;
  v12 = v3[3];
  v34 = v3[2];
  v35 = v12;
  v13 = *(a2 + 8);
  v14 = *(a3 + 16);
  Predicate = type metadata accessor for QueryPredicate(0, v14, v15, v16);
  v18 = *(Predicate - 8);
  v19 = *(v18 + 16);
  v19(v31, v26, Predicate);
  v19(v31, &v27, Predicate);
  v13(&v32, v14, ObjectType, a2);
  v31[0] = v32;
  v31[1] = v33;
  v31[2] = v34;
  v31[3] = v35;
  v20 = *(v18 + 8);
  v20(v31, Predicate);
  v22 = v27;
  v23 = v28;
  v24 = v29;
  v25 = v30;
  v13(&v22, v14, ObjectType, a2);
  v32 = v22;
  v33 = v23;
  v34 = v24;
  v35 = v25;
  return v20(&v32, Predicate);
}

uint64_t protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.Or<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = QueryPredicates.Or.evaluate(value:)(a1, a2, a3, a4);
  *a5 = result & 1;
  return result;
}

BOOL QueryPredicates.Not.evaluate(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[1];
  v17[0] = *v4;
  v17[1] = v5;
  v6 = v4[3];
  v8 = *v4;
  v7 = v4[1];
  v17[2] = v4[2];
  v17[3] = v6;
  v13 = v8;
  v14 = v7;
  v15 = v4[2];
  v16 = v4[3];
  Predicate = type metadata accessor for QueryPredicate(0, *(a2 + 16), a3, a4);
  v10 = *(Predicate - 8);
  (*(v10 + 16))(v18, v17, Predicate);
  v11 = QueryPredicate.evaluate(value:)();
  v18[0] = v13;
  v18[1] = v14;
  v18[2] = v15;
  v18[3] = v16;
  (*(v10 + 8))(v18, Predicate);
  return (v11 & 1) == 0;
}

uint64_t QueryPredicates.Not.enumerate(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[1];
  v22[0] = *v3;
  v22[1] = v6;
  v7 = v3[3];
  v22[2] = v3[2];
  v22[3] = v7;
  ObjectType = swift_getObjectType();
  v9 = v3[1];
  v18 = *v3;
  v19 = v9;
  v10 = v3[3];
  v20 = v3[2];
  v21 = v10;
  v11 = *(a2 + 8);
  v12 = *(a3 + 16);
  Predicate = type metadata accessor for QueryPredicate(0, v12, v13, v14);
  v16 = *(Predicate - 8);
  (*(v16 + 16))(v23, v22, Predicate);
  v11(&v18, v12, ObjectType, a2);
  v23[0] = v18;
  v23[1] = v19;
  v23[2] = v20;
  v23[3] = v21;
  return (*(v16 + 8))(v23, Predicate);
}

BOOL protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.Not<A>@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = QueryPredicates.Not.evaluate(value:)(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.Equals<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = QueryPredicates.Equals.evaluate(value:)(a1, a2, MEMORY[0x1E69E6020]);
  *a3 = result & 1;
  return result;
}

BOOL QueryPredicates.NotEquals.evaluate(value:)(uint64_t a1, uint64_t a2)
{
  v18[1] = a1;
  v3 = *(a2 + 24);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - v8;
  v10 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  v19 = *v2;
  v20 = v10;
  type metadata accessor for QueryType(0, *(v13 + 16), v3, v14);

  QueryType.evaluate(value:)();

  v19 = v11;
  v20 = v12;
  QueryType.evaluate(value:)();

  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v4 + 8);
  v16(v6, v3);
  v16(v9, v3);
  return (v15 & 1) == 0;
}

BOOL protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.NotEquals<A, B>@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = QueryPredicates.NotEquals.evaluate(value:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.LessThan<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = QueryPredicates.Equals.evaluate(value:)(a1, a2, MEMORY[0x1E69E5F48]);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.LessThanOrEqual<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = QueryPredicates.Equals.evaluate(value:)(a1, a2, MEMORY[0x1E69E5F58]);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.GreaterThan<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = QueryPredicates.Equals.evaluate(value:)(a1, a2, MEMORY[0x1E69E5F40]);
  *a3 = result & 1;
  return result;
}

uint64_t QueryPredicates.Equals.evaluate(value:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *, uint64_t, void))
{
  v20 = a1;
  v21 = a3;
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = v3[1];
  v13 = v3[2];
  v14 = v3[3];
  v22 = *v3;
  v23 = v12;
  type metadata accessor for QueryType(0, *(v15 + 16), v5, v16);

  QueryType.evaluate(value:)();

  v22 = v13;
  v23 = v14;
  QueryType.evaluate(value:)();

  v17 = v21(v11, v8, v5, *(a2 + 32));
  v18 = *(v6 + 8);
  v18(v8, v5);
  v18(v11, v5);
  return v17 & 1;
}

uint64_t protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.GreaterThanOrEqual<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = QueryPredicates.Equals.evaluate(value:)(a1, a2, MEMORY[0x1E69E5F50]);
  *a3 = result & 1;
  return result;
}

BOOL QueryPredicates.Identical.evaluate(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for QueryType(0, *(a2 + 16), *(a2 + 24), a4);

  QueryType.evaluate(value:)();

  QueryType.evaluate(value:)();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v6 == v5;
}

uint64_t QueryPredicates.Equals.enumerate(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = v3[3];
  v14 = v3[2];
  ObjectType = swift_getObjectType();
  v15 = v7;
  v16 = v6;
  v10 = *(a2 + 16);
  v12 = *(a3 + 16);
  v11 = *(a3 + 24);

  v10(&v15, v12, v11, ObjectType, a2);

  v15 = v14;
  v16 = v8;
  v10(&v15, v12, v11, ObjectType, a2);
}

BOOL protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.Identical<A, B>@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = QueryPredicates.Identical.evaluate(value:)(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.GreaterThanOrEqual<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.GreaterThanOrEqual<A, B>);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.GreaterThan<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.GreaterThan<A, B>);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.LessThanOrEqual<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.LessThanOrEqual<A, B>);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.LessThan<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.LessThan<A, B>);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.NotEquals<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.NotEquals<A, B>);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.Equals<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.Equals<A, B>);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.Identical<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.Identical<A, B>);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.Not<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.Not<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.Or<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.Or<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.And<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.And<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized QueryPredicates.Or.makeInternal()(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  type metadata accessor for Entity();
  if (swift_dynamicCastMetatype())
  {
    return a2();
  }

  v7 = swift_conformsToProtocol2();
  result = 0;
  if (v7)
  {
    if (a1)
    {
      return a3(0);
    }
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVG_SSs5NeverOTg504_s17d12Foundation22fgh3C13i24V11descriptionSSvgSSAE16jK54Vcfu_33_979d7928f60ba9ff03fee9aafd7606f7AHSSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v28 = *(a1 + 16);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v29;
  v4 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v6 = v28;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_39;
    }

    v11 = *(*(a1 + 48) + 8 * result);
    if (v11 <= 7)
    {
      switch(v11)
      {
        case 1:
          v12 = 0xE500000000000000;
          v13 = 0x646C726F77;
          goto LABEL_26;
        case 2:
          v12 = 0xE500000000000000;
          v14 = 1851878512;
          break;
        case 4:
          v12 = 0xE500000000000000;
          v14 = 1734438249;
          break;
        default:
          goto LABEL_21;
      }

      v13 = v14 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    }

    else if (v11 > 127)
    {
      if (v11 != 128)
      {
        if (v11 == 256)
        {
          v12 = 0xE400000000000000;
          v13 = 2036625250;
          goto LABEL_26;
        }

        goto LABEL_21;
      }

      v12 = 0xE400000000000000;
      v13 = 1701011814;
    }

    else
    {
      if (v11 != 8)
      {
        if (v11 == 64)
        {
          v12 = 0xE600000000000000;
          v13 = 0x6172656D6163;
          goto LABEL_26;
        }

LABEL_21:
        v13 = 0;
        v12 = 0xE000000000000000;
        goto LABEL_26;
      }

      v12 = 0xE600000000000000;
      v13 = 0x7463656A626FLL;
    }

LABEL_26:
    v15 = *(a1 + 36);
    v17 = *(v29 + 16);
    v16 = *(v29 + 24);
    if (v17 >= v16 >> 1)
    {
      v26 = *(a1 + 36);
      v27 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      v6 = v28;
      v15 = v26;
      result = v27;
    }

    *(v29 + 16) = v17 + 1;
    v18 = v29 + 16 * v17;
    *(v18 + 32) = v13;
    *(v18 + 40) = v12;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_40;
    }

    v4 = a1 + 56;
    v19 = *(a1 + 56 + 8 * v9);
    if ((v19 & v10) == 0)
    {
      goto LABEL_41;
    }

    if (v15 != *(a1 + 36))
    {
      goto LABEL_42;
    }

    v20 = v19 & (-2 << (result & 0x3F));
    if (v20)
    {
      v8 = __clz(__rbit64(v20)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v9 << 6;
      v22 = v9 + 1;
      v23 = (a1 + 64 + 8 * v9);
      while (v22 < (v8 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          outlined consume of [String : AudioResource].Index._Variant(result, v15, 0);
          v6 = v28;
          v8 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      outlined consume of [String : AudioResource].Index._Variant(result, v15, 0);
      v6 = v28;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVG_SSs5NeverOTg504_s17d12Foundation22fgh3C13i24V11descriptionSSvgSSAE28jkL55Vcfu0_33_05ee4caa7c346c634b201050f1d8d6e4AHSSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v28 = *(a1 + 16);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v29;
  v4 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v6 = v28;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_32;
    }

    v11 = *(*(a1 + 48) + 8 * result);
    if (v11 > 3)
    {
      if (v11 != 4)
      {
        if (v11 == 8)
        {
          v13 = 0xE700000000000000;
          v14 = 0x73636973796870;
          goto LABEL_19;
        }

LABEL_15:
        v14 = 0;
        v13 = 0xE000000000000000;
        goto LABEL_19;
      }

      v12 = 0x73696C6C6F63;
    }

    else
    {
      if (v11 == 1)
      {
        v13 = 0xE600000000000000;
        v14 = 0x776F64616873;
        goto LABEL_19;
      }

      if (v11 != 2)
      {
        goto LABEL_15;
      }

      v12 = 0x73756C63636FLL;
    }

    v14 = v12 & 0xFFFFFFFFFFFFLL | 0x6F69000000000000;
    v13 = 0xE90000000000006ELL;
LABEL_19:
    v15 = *(a1 + 36);
    v17 = *(v29 + 16);
    v16 = *(v29 + 24);
    if (v17 >= v16 >> 1)
    {
      v26 = *(a1 + 36);
      v27 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      v6 = v28;
      v15 = v26;
      result = v27;
    }

    *(v29 + 16) = v17 + 1;
    v18 = v29 + 16 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v13;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_33;
    }

    v4 = a1 + 56;
    v19 = *(a1 + 56 + 8 * v9);
    if ((v19 & v10) == 0)
    {
      goto LABEL_34;
    }

    if (v15 != *(a1 + 36))
    {
      goto LABEL_35;
    }

    v20 = v19 & (-2 << (result & 0x3F));
    if (v20)
    {
      v8 = __clz(__rbit64(v20)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v9 << 6;
      v22 = v9 + 1;
      v23 = (a1 + 64 + 8 * v9);
      while (v22 < (v8 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          outlined consume of [String : AudioResource].Index._Variant(result, v15, 0);
          v6 = v28;
          v8 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      outlined consume of [String : AudioResource].Index._Variant(result, v15, 0);
      v6 = v28;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void specialized Set.union<A>(_:)(uint64_t a1, Swift::Int a2)
{
  v3 = 0;
  v14[2] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    specialized Set._Variant.insert(_:)(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t *, void))
{
  v4 = result;
  v5 = 0;
  v14 = a2;
  v6 = result + 56;
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(result + 56);
  for (i = (v7 + 63) >> 6; v9; result = a3(&v13, *(*(v4 + 48) + ((v11 << 9) | (8 * v12)))))
  {
    v11 = v5;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= i)
    {

      return v14;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter()
{
  outlined init with copy of Any?(v0 + 8, &v3);
  if (v4)
  {
    outlined init with take of Any(&v3, v5);
    outlined init with take of Any(v5, &v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    return v2;
  }

  else
  {
    outlined destroy of Any?(&v3);
    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t key path setter for SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities : SpatialTrackingSession.Configuration(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  v5[0] = v3;

  return outlined assign with take of Any?(v5, a2 + 8);
}

uint64_t SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.setter(uint64_t a1)
{
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  v4[0] = a1;
  return outlined assign with take of Any?(v4, v1 + 8);
}

void (*SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 80) = v1;
  outlined init with copy of Any?(v1 + 8, v3 + 32);
  if (*(v4 + 56))
  {
    outlined init with take of Any((v4 + 32), v4);
    outlined init with take of Any(v4, (v4 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v5 = *(v4 + 72);
  }

  else
  {
    outlined destroy of Any?(v4 + 32);
    v5 = MEMORY[0x1E69E7CD0];
  }

  *(v4 + 64) = v5;
  return SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.modify;
}

void SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 80);
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  *v3 = v4;
  if (a2)
  {

    outlined assign with take of Any?(v3, v5 + 8);
  }

  else
  {
    outlined assign with take of Any?(v3, v5 + 8);
  }

  free(v3);
}

uint64_t SpatialTrackingSession.Configuration.removing(unavailableCapabilities:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of SpatialTrackingSession.Configuration(v2, a2);
  v5 = *a2;
  v6 = *a1;
  if (*(*a1 + 16) <= *(*a2 + 16) >> 3)
  {
    *&v18 = *a2;

    specialized Set._subtract<A>(_:)(v6);
    v7 = v18;
  }

  else
  {

    v7 = specialized _NativeSet.subtracting<A>(_:)(v6, v5);
  }

  v8 = a1[1];
  if (*(v8 + 16) <= *(v7 + 16) >> 3)
  {
    *&v18 = v7;
    specialized Set._subtract<A>(_:)(v8);

    v9 = v7;
  }

  else
  {
    v9 = specialized _NativeSet.subtracting<A>(_:)(v8, v7);
  }

  *a2 = v9;
  v10 = a2 + 1;
  outlined init with copy of Any?(v10, &v16);
  if (v17)
  {
    outlined init with take of Any(&v16, &v18);
    outlined init with take of Any(&v18, &v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v11 = v15;
  }

  else
  {
    outlined destroy of Any?(&v16);
    v11 = MEMORY[0x1E69E7CD0];
  }

  outlined init with copy of Any?((a1 + 2), &v16);
  if (v17)
  {
    outlined init with take of Any(&v16, &v18);
    outlined init with take of Any(&v18, &v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v12 = v15;
  }

  else
  {
    outlined destroy of Any?(&v16);
    v12 = MEMORY[0x1E69E7CD0];
  }

  if (*(v12 + 16) <= *(v11 + 16) >> 3)
  {
    *&v18 = v11;
    specialized Set._subtract<A>(_:)(v12);

    v13 = v18;
  }

  else
  {
    v13 = specialized _NativeSet.subtracting<A>(_:)(v12, v11);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  *&v18 = v13;
  return outlined assign with take of Any?(&v18, v10);
}

uint64_t SpatialTrackingSession.UnavailableCapabilities.internalUnsupportedSceneUnderstandingCapabilities.getter()
{
  outlined init with copy of Any?(v0 + 16, &v3);
  if (v4)
  {
    outlined init with take of Any(&v3, v5);
    outlined init with take of Any(v5, &v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    return v2;
  }

  else
  {
    outlined destroy of Any?(&v3);
    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t key path setter for SpatialTrackingSession.UnavailableCapabilities.internalUnsupportedSceneUnderstandingCapabilities : SpatialTrackingSession.UnavailableCapabilities(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  v5[0] = v3;

  return outlined assign with take of Any?(v5, a2 + 16);
}

uint64_t SpatialTrackingSession.UnavailableCapabilities.internalUnsupportedSceneUnderstandingCapabilities.setter(uint64_t a1)
{
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  v4[0] = a1;
  return outlined assign with take of Any?(v4, v1 + 16);
}

void (*SpatialTrackingSession.UnavailableCapabilities.internalUnsupportedSceneUnderstandingCapabilities.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 80) = v1;
  outlined init with copy of Any?(v1 + 16, v3 + 32);
  if (*(v4 + 56))
  {
    outlined init with take of Any((v4 + 32), v4);
    outlined init with take of Any(v4, (v4 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v5 = *(v4 + 72);
  }

  else
  {
    outlined destroy of Any?(v4 + 32);
    v5 = MEMORY[0x1E69E7CD0];
  }

  *(v4 + 64) = v5;
  return SpatialTrackingSession.UnavailableCapabilities.internalUnsupportedSceneUnderstandingCapabilities.modify;
}

void SpatialTrackingSession.UnavailableCapabilities.internalUnsupportedSceneUnderstandingCapabilities.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 80);
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  *v3 = v4;
  if (a2)
  {

    outlined assign with take of Any?(v3, v5 + 16);
  }

  else
  {
    outlined assign with take of Any?(v3, v5 + 16);
  }

  free(v3);
}

uint64_t SpatialTrackingSession.UnavailableCapabilities.internalUnauthorizedSceneUnderstandingCapabilities.getter()
{
  outlined init with copy of Any?(v0 + 48, &v3);
  if (v4)
  {
    outlined init with take of Any(&v3, v5);
    outlined init with take of Any(v5, &v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    return v2;
  }

  else
  {
    outlined destroy of Any?(&v3);
    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t key path setter for SpatialTrackingSession.UnavailableCapabilities.internalUnauthorizedSceneUnderstandingCapabilities : SpatialTrackingSession.UnavailableCapabilities(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  v5[0] = v3;

  return outlined assign with take of Any?(v5, a2 + 48);
}

uint64_t SpatialTrackingSession.UnavailableCapabilities.internalUnauthorizedSceneUnderstandingCapabilities.setter(uint64_t a1)
{
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  v4[0] = a1;
  return outlined assign with take of Any?(v4, v1 + 48);
}

void (*SpatialTrackingSession.UnavailableCapabilities.internalUnauthorizedSceneUnderstandingCapabilities.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 80) = v1;
  outlined init with copy of Any?(v1 + 48, v3 + 32);
  if (*(v4 + 56))
  {
    outlined init with take of Any((v4 + 32), v4);
    outlined init with take of Any(v4, (v4 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v5 = *(v4 + 72);
  }

  else
  {
    outlined destroy of Any?(v4 + 32);
    v5 = MEMORY[0x1E69E7CD0];
  }

  *(v4 + 64) = v5;
  return SpatialTrackingSession.UnavailableCapabilities.internalUnauthorizedSceneUnderstandingCapabilities.modify;
}

void SpatialTrackingSession.UnavailableCapabilities.internalUnauthorizedSceneUnderstandingCapabilities.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 80);
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  *v3 = v4;
  if (a2)
  {

    outlined assign with take of Any?(v3, v5 + 48);
  }

  else
  {
    outlined assign with take of Any?(v3, v5 + 48);
  }

  free(v3);
}

BOOL SpatialTrackingSession.UnavailableCapabilities.anyUnavailableCapabilities.getter()
{
  result = 1;
  if (!*(*v0 + 16) && !*(*(v0 + 8) + 16))
  {
    outlined init with copy of Any?(v0 + 16, &v8);
    if (v9)
    {
      outlined init with take of Any(&v8, v10);
      outlined init with take of Any(v10, &v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
      swift_dynamicCast();
      v1 = v7;
    }

    else
    {
      outlined destroy of Any?(&v8);
      v1 = MEMORY[0x1E69E7CD0];
    }

    v2 = *(v1 + 16);

    if (!v2)
    {
      outlined init with copy of Any?(v0 + 48, &v8);
      if (v9)
      {
        outlined init with take of Any(&v8, v10);
        outlined init with take of Any(v10, &v8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
        swift_dynamicCast();
        v3 = v7;
      }

      else
      {
        outlined destroy of Any?(&v8);
        v3 = MEMORY[0x1E69E7CD0];
      }

      v4 = *(v3 + 16);

      if (!v4)
      {
        v6 = *(v0 + 80);
        if (v6 == 2 || (v6 & 1) == 0)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t SpatialTrackingSession.UnavailableCapabilities.union(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  outlined init with copy of SpatialTrackingSession.UnavailableCapabilities(v3, a2);
  v6 = *a2;

  *a2 = specialized Set.union<A>(_:)(v7, v6, specialized Set._Variant.insert(_:));
  v8 = *(a2 + 8);

  *(a2 + 8) = specialized Set.union<A>(_:)(v9, v8, specialized Set._Variant.insert(_:));
  outlined init with copy of Any?(a2 + 16, &v22);
  if (v23)
  {
    outlined init with take of Any(&v22, &v24);
    outlined init with take of Any(&v24, &v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v10 = v21;
  }

  else
  {
    outlined destroy of Any?(&v22);
    v10 = MEMORY[0x1E69E7CD0];
  }

  outlined init with copy of Any?(a1 + 16, &v22);
  if (v23)
  {
    outlined init with take of Any(&v22, &v24);
    outlined init with take of Any(&v24, &v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v11 = v21;
  }

  else
  {
    outlined destroy of Any?(&v22);
    v11 = MEMORY[0x1E69E7CD0];
  }

  v12 = specialized Set.union<A>(_:)(v11, v10, specialized Set._Variant.insert(_:));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  v25 = v13;
  *&v24 = v12;
  outlined assign with take of Any?(&v24, a2 + 16);
  outlined init with copy of Any?(a2 + 48, &v22);
  if (v23)
  {
    outlined init with take of Any(&v22, &v24);
    outlined init with take of Any(&v24, &v22);
    swift_dynamicCast();
    v14 = v21;
  }

  else
  {
    outlined destroy of Any?(&v22);
    v14 = MEMORY[0x1E69E7CD0];
  }

  outlined init with copy of Any?(a1 + 48, &v22);
  if (v23)
  {
    outlined init with take of Any(&v22, &v24);
    outlined init with take of Any(&v24, &v22);
    swift_dynamicCast();
    v15 = v21;
  }

  else
  {
    outlined destroy of Any?(&v22);
    v15 = MEMORY[0x1E69E7CD0];
  }

  v16 = specialized Set.union<A>(_:)(v15, v14, specialized Set._Variant.insert(_:));
  v25 = v13;
  *&v24 = v16;
  result = outlined assign with take of Any?(&v24, a2 + 48);
  v18 = *(a2 + 80);
  if (v18 == 2)
  {
    v19 = *(a1 + 80);
  }

  else
  {
    if (v18)
    {
      v20 = 1;
    }

    else
    {
      v20 = *(a1 + 80);
    }

    v19 = v20 & 1;
  }

  *(a2 + 80) = v19;
  return result;
}

uint64_t SpatialTrackingSession.UnavailableCapabilities.init(unsupportedConfiguration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1E69E7CD0];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 80) = 2;
  v4 = *a1;
  *(a2 + 64) = 0u;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0u;
  v5 = a2 + 16;
  outlined init with copy of Any?((a1 + 1), &v9);
  if (v10)
  {
    outlined init with take of Any(&v9, &v11);
    outlined init with take of Any(&v11, &v9);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v6 = v8;
  }

  else
  {

    outlined destroy of Any?(&v9);
    v6 = MEMORY[0x1E69E7CD0];
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  *&v11 = v6;
  outlined destroy of SpatialTrackingSession.Configuration(a1);
  return outlined assign with take of Any?(&v11, v5);
}

double SpatialTrackingSession.UnavailableCapabilities.init()@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CD0];
  *a1 = MEMORY[0x1E69E7CD0];
  *(a1 + 8) = v1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 2;
  return result;
}

uint64_t SpatialTrackingSession.UnavailableCapabilities.anchor.getter()
{
  v1 = *v0;

  return specialized Set.union<A>(_:)(v2, v1, specialized Set._Variant.insert(_:));
}

double SpatialTrackingSession.Configuration.init(tracking:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = 0;
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  *a2 = a1;
  return result;
}

double SpatialTrackingSession.Configuration.init(tracking:sceneUnderstanding:)@<D0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{

  *(a3 + 40) = 0;
  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  *a3 = a1;
  return result;
}

uint64_t SpatialTrackingSession.run(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.run(_:), 0, 0);
}

uint64_t SpatialTrackingSession.run(_:)()
{
  swift_beginAccess();
  v1 = static SpatialTrackingManager.shared;
  v0[16] = static SpatialTrackingManager.shared;
  if (v1)
  {
    swift_beginAccess();
    v1[144] = 1;

    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    v2[1] = SpatialTrackingSession.run(_:);
    v3 = v0[14];
    v4 = v0[15];

    return SpatialTrackingManager.run(spatialTrackingConfiguration:)(v3, v4);
  }

  else
  {
    v6 = v0[14];
    outlined init with copy of SpatialTrackingSession.Configuration(v0[15], (v0 + 2));
    SpatialTrackingSession.UnavailableCapabilities.init(unsupportedConfiguration:)(v0 + 2, v6);
    v7 = v0[1];

    return v7();
  }
}

{

  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.run(_:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SpatialTrackingSession.stop()()
{
  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.stop(), 0, 0);
}

{
  swift_beginAccess();
  v1 = static SpatialTrackingManager.shared;
  v0[8] = static SpatialTrackingManager.shared;
  if (v1)
  {
    swift_beginAccess();
    *(v1 + 144) = 1;
    v2 = *(v1 + 16);
    v3 = *(v1 + 17);

    __swift_project_boxed_opaque_existential_1(v1 + 13, v2);
    v7 = (*(v3 + 40) + **(v3 + 40));
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = SpatialTrackingSession.stop();

    return v7(v2, v3);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

{

  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.stop(), 0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 80) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.stop(), v2, v1);
}

{

  SpatialTrackingManager.configureRFAnchorManagement(with:)(MEMORY[0x1E69E7CD0], v0);

  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.stop(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SpatialTrackingSession.autoRun(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.autoRun(_:), 0, 0);
}

uint64_t SpatialTrackingSession.autoRun(_:)()
{
  swift_beginAccess();
  v1 = static SpatialTrackingManager.shared;
  v0[16] = static SpatialTrackingManager.shared;
  if (!v1)
  {
    v3 = v0[14];
    outlined init with copy of SpatialTrackingSession.Configuration(v0[15], (v0 + 2));
    SpatialTrackingSession.UnavailableCapabilities.init(unsupportedConfiguration:)(v0 + 2, v3);
    goto LABEL_5;
  }

  swift_beginAccess();
  if (v1[144] == 1)
  {
    v2 = v0[14];
    *(v2 + 80) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
LABEL_5:
    v4 = v0[1];

    return v4();
  }

  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = SpatialTrackingSession.autoRun(_:);
  v7 = v0[14];
  v8 = v0[15];

  return SpatialTrackingManager.run(spatialTrackingConfiguration:)(v7, v8);
}

{

  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.autoRun(_:), 0, 0);
}

uint64_t SpatialTrackingSession.autoStop()()
{
  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.autoStop(), 0, 0);
}

{
  swift_beginAccess();
  v1 = static SpatialTrackingManager.shared;
  v0[8] = static SpatialTrackingManager.shared;
  if (v1 && (swift_beginAccess(), (v1[18] & 1) == 0))
  {
    v4 = v1[16];
    v5 = v1[17];

    __swift_project_boxed_opaque_existential_1(v1 + 13, v4);
    v7 = (*(v5 + 40) + **(v5 + 40));
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = SpatialTrackingSession.autoStop();

    return v7(v4, v5);
  }

  else
  {
    v2 = v0[1];

    return v2();
  }
}

{

  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.autoStop(), 0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 80) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.autoStop(), v2, v1);
}

{

  SpatialTrackingManager.configureRFAnchorManagement(with:)(MEMORY[0x1E69E7CD0], v0);

  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.autoStop(), 0, 0);
}

Swift::Int SpatialTrackingSession.Configuration.Camera.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t SpatialTrackingSession.Configuration.init(tracking:sceneUnderstanding:camera:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0;
  *(a4 + 8) = 0u;
  v7 = a4 + 8;
  *a4 = a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  v9[0] = a2;
  result = outlined assign with take of Any?(v9, v7);
  *(a4 + 40) = v6;
  return result;
}

uint64_t SpatialTrackingSession.UnavailableCapabilities.sceneUnderstanding.getter()
{
  outlined init with copy of Any?(v0 + 16, &v5);
  if (v6)
  {
    outlined init with take of Any(&v5, v7);
    outlined init with take of Any(v7, &v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v1 = v4;
  }

  else
  {
    outlined destroy of Any?(&v5);
    v1 = MEMORY[0x1E69E7CD0];
  }

  outlined init with copy of Any?(v0 + 48, &v5);
  if (v6)
  {
    outlined init with take of Any(&v5, v7);
    outlined init with take of Any(v7, &v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v2 = v4;
  }

  else
  {
    outlined destroy of Any?(&v5);
    v2 = MEMORY[0x1E69E7CD0];
  }

  return specialized Set.union<A>(_:)(v2, v1, specialized Set._Variant.insert(_:));
}

uint64_t SpatialTrackingSession.Configuration.AnchorCapability.description.getter()
{
  v1 = *v0;
  if (*v0 <= 7)
  {
    if (v1 == 1)
    {
      return 0x646C726F77;
    }

    if (v1 != 2)
    {
      if (v1 == 4)
      {
        return 0x6567616D69;
      }

      return 0;
    }

    return 0x656E616C70;
  }

  else if (v1 > 127)
  {
    if (v1 != 128)
    {
      if (v1 == 256)
      {
        return 2036625250;
      }

      return 0;
    }

    return 1701011814;
  }

  else
  {
    if (v1 != 8)
    {
      if (v1 == 64)
      {
        return 0x6172656D6163;
      }

      return 0;
    }

    return 0x7463656A626FLL;
  }
}

uint64_t SpatialTrackingSession.Configuration.SceneUnderstandingCapability.description.getter()
{
  v1 = *v0;
  if (*v0 > 3)
  {
    if (v1 == 4)
    {
      v2 = 0x73696C6C6F63;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6F69000000000000;
    }

    if (v1 == 8)
    {
      return 0x73636973796870;
    }

    return 0;
  }

  if (v1 == 1)
  {
    return 0x776F64616873;
  }

  if (v1 != 2)
  {
    return 0;
  }

  v2 = 0x73756C63636FLL;
  return v2 & 0xFFFFFFFFFFFFLL | 0x6F69000000000000;
}

uint64_t SpatialTrackingSession.Configuration.description.getter()
{
  v1 = v0;
  v2 = *v0;
  if (*(*v0 + 16))
  {
    *&v29[0] = 0x203A726F68636E61;
    *(&v29[0] + 1) = 0xE90000000000005BLL;
    *&v27 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVG_SSs5NeverOTg504_s17d12Foundation22fgh3C13i24V11descriptionSSvgSSAE16jK54Vcfu_33_979d7928f60ba9ff03fee9aafd7606f7AHSSTf3nnnpk_nTf1cn_n(v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v3 = BidirectionalCollection<>.joined(separator:)();
    v5 = v4;

    MEMORY[0x1C68F3410](v3, v5);

    MEMORY[0x1C68F3410](93, 0xE100000000000000);
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = 0x203A726F68636E61;
    *(v9 + 5) = 0xE90000000000005BLL;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of Any?((v0 + 1), &v27);
  if (v28)
  {
    outlined init with take of Any(&v27, v29);
    outlined init with take of Any(v29, &v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v10 = v26;
  }

  else
  {
    outlined destroy of Any?(&v27);
    v10 = MEMORY[0x1E69E7CD0];
  }

  v11 = *(v10 + 16);

  if (v11)
  {
    *&v29[0] = 0;
    *(&v29[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    outlined init with copy of Any?((v1 + 1), &v27);
    if (v28)
    {
      outlined init with take of Any(&v27, v29);
      outlined init with take of Any(v29, &v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
      swift_dynamicCast();
      v12 = v25;
    }

    else
    {
      outlined destroy of Any?(&v27);
      v12 = MEMORY[0x1E69E7CD0];
    }

    v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVG_SSs5NeverOTg504_s17d12Foundation22fgh3C13i24V11descriptionSSvgSSAE28jkL55Vcfu0_33_05ee4caa7c346c634b201050f1d8d6e4AHSSTf3nnnpk_nTf1cn_n(v12);

    *&v29[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v14 = BidirectionalCollection<>.joined(separator:)();
    v16 = v15;

    MEMORY[0x1C68F3410](v14, v16);

    MEMORY[0x1C68F3410](93, 0xE100000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    }

    v18 = *(v6 + 2);
    v17 = *(v6 + 3);
    if (v18 >= v17 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v6);
    }

    *(v6 + 2) = v18 + 1;
    v19 = &v6[16 * v18];
    *(v19 + 4) = 0xD000000000000015;
    *(v19 + 5) = 0x80000001C18F0350;
  }

  *&v29[0] = 0;
  *(&v29[0] + 1) = 0xE000000000000000;
  MEMORY[0x1C68F3410](0x203A6172656D6163, 0xE800000000000000);
  LOBYTE(v27) = *(v1 + 40);
  _print_unlocked<A, B>(_:_:)();
  v20 = v29[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  }

  v22 = *(v6 + 2);
  v21 = *(v6 + 3);
  if (v22 >= v21 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v6);
  }

  *(v6 + 2) = v22 + 1;
  *&v6[16 * v22 + 32] = v20;
  *&v29[0] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v23 = BidirectionalCollection<>.joined(separator:)();

  return v23;
}

unint64_t lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability()
{
  result = lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability;
  if (!lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialTrackingSession.Configuration.AnchorCapability, &type metadata for SpatialTrackingSession.Configuration.AnchorCapability, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability()
{
  result = lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability;
  if (!lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability, &type metadata for SpatialTrackingSession.Configuration.SceneUnderstandingCapability, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera()
{
  result = lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera;
  if (!lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialTrackingSession.Configuration.Camera, &type metadata for SpatialTrackingSession.Configuration.Camera, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpatialTrackingSession.Configuration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for SpatialTrackingSession.Configuration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *specialized static EmphasizeAnimations.createEmphasizePopAnimation(style:)(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 264, 0, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 52, 0, MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 118, 0, MEMORY[0x1E69E7CC0]);
  }

  specialized static EmphasizeAnimations.makeTransforms(_:_:)(v1, &v3);

  return v3;
}

uint64_t __RKMaterialParameterBlock.get(parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 24);

  v8 = v7;

  return specialized String.withCString<A>(_:)(a1, a2, v8, a3);
}

uint64_t __RKMaterialParameterBlock.set(parameter:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = String.utf8CString.getter();
  __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v4 + 32), a3);
}

Swift::Void __swiftcall __RKMaterialParameterBlock.clear(parameter:)(Swift::String parameter)
{
  object = parameter._object;
  countAndFlagsBits = parameter._countAndFlagsBits;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v4 = *(v1 + 24);
    v5 = REMaterialParameterBlockValueCopy();

    *(v1 + 24) = v5;
  }

  specialized String.withCString<A>(_:)(countAndFlagsBits, object, v1);
}

uint64_t __RKMaterialParameterBlock.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = MEMORY[0x1E69E7CC0];
  result = REMaterialParameterBlockValueCreate();
  *(a1 + 24) = result;
  return result;
}

uint64_t __RKMaterialParameterBlock.Parameter.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, uint64x2_t a4@<Q1>, __n128 a5@<Q3>)
{
  v5 = *(result + 32);
  switch(*(result + 64))
  {
    case 0:
      a4 = vdupq_n_s64(*(result + 24));
      a3.n128_u64[0] = *result;
      a5.n128_u64[0] = *(result + 8);
      a3.n128_u64[1] = a5.n128_u64[0];
      v5 = vshlq_u64(a4, xmmword_1C18A9580);
      a4.i64[0] = *(result + 16);
      a4.i16[4] = *(result + 24);
      *v5.i8 = vmovn_s64(v5);
      v5.i8[1] = v5.i8[4];
      a4.i16[5] = v5.i16[0];
      v6 = 1;
      break;
    case 1:
      v6 = 0;
      a3.n128_u64[0] = *result;
      break;
    case 2:
      a3.n128_u32[0] = *result;
      v6 = 2;
      break;
    case 3:
      a3.n128_u64[0] = *result;
      v6 = 3;
      break;
    case 4:
      a3 = *result;
      v6 = 4;
      break;
    case 5:
      a3 = *result;
      v6 = 5;
      break;
    case 6:
      a3.n128_u64[0] = *result;
      v6 = 6;
      break;
    case 7:
      a3.n128_u64[0] = *result;
      a4.i64[0] = *(result + 8);
      a3.n128_u64[1] = a4.i64[0];
      v6 = 7;
      break;
    case 8:
      a3 = *result;
      a4 = *(result + 16);
      v6 = 8;
      break;
    case 9:
      a5 = *(result + 48);
      a3 = *result;
      a4 = *(result + 16);
      a5.n128_u64[1] = *(result + 56);
      v6 = 9;
      break;
    case 0xA:
      a3.n128_u32[0] = *result & 1;
      v6 = 10;
      break;
    case 0xB:
      a3.n128_u32[0] = *result;
      v6 = 11;
      break;
    case 0xC:
      a3.n128_u64[0] = *result;
      v6 = 12;
      break;
    case 0xD:
      a3 = *result;
      v6 = 13;
      break;
    case 0xE:
      a3 = *result;
      v6 = 14;
      break;
    case 0xF:
      a3.n128_u32[0] = *result;
      v6 = 15;
      break;
    case 0x10:
      a3.n128_u64[0] = *result;
      v6 = 16;
      break;
    case 0x11:
      a3 = *result;
      v6 = 17;
      break;
    case 0x12:
      a3 = *result;
      v6 = 18;
      break;
    default:
      v6 = 19;
      v5 = 0uLL;
      a3 = 0uLL;
      a4 = 0uLL;
      a5 = 0uLL;
      break;
  }

  *a2 = a3;
  *(a2 + 16) = a4;
  *(a2 + 32) = v5;
  *(a2 + 48) = a5;
  *(a2 + 64) = v6;
  return result;
}

double __RKMaterialParameterBlock.Parameter.init(nilLiteral:)@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 19;
  return result;
}

float __RKMaterialParameterBlock.Parameter.init(integerLiteral:)@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = a1;
  *a2 = a1;
  *(a2 + 64) = 2;
  return result;
}

double protocol witness for ExpressibleByNilLiteral.init(nilLiteral:) in conformance __RKMaterialParameterBlock.Parameter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 19;
  return result;
}

float protocol witness for ExpressibleByFloatLiteral.init(floatLiteral:) in conformance __RKMaterialParameterBlock.Parameter@<S0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  *(a2 + 64) = 2;
  return result;
}

float protocol witness for ExpressibleByIntegerLiteral.init(integerLiteral:) in conformance __RKMaterialParameterBlock.Parameter@<S0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = result;
  *(a2 + 64) = 2;
  return result;
}

RealityKit::__RKMaterialParameterBlock::TransparentPass_optional __swiftcall __RKMaterialParameterBlock.TransparentPass.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKMaterialParameterBlock.TransparentPass.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t __RKMaterialParameterBlock.TransparentPass.rawValue.getter()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 2)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0 <= 1u)
  {
    return 0x726170736E617254;
  }

  else
  {
    return v1;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKMaterialParameterBlock.TransparentPass()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance __RKMaterialParameterBlock.TransparentPass(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKMaterialParameterBlock.TransparentPass()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __RKMaterialParameterBlock.TransparentPass(uint64_t *a1@<X8>)
{
  v2 = 0x726170736E617254;
  v3 = 0xEB00000000746E65;
  v4 = 0xD00000000000001ALL;
  v5 = 0x80000001C18DDBC0;
  if (*v1 != 2)
  {
    v4 = 0xD00000000000001CLL;
    v5 = 0x80000001C18DDBE0;
  }

  if (*v1)
  {
    v3 = 0xED00005241746E65;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v4;
    v6 = v5;
  }

  *a1 = v2;
  a1[1] = v6;
}

RealityKit::__RKMaterialParameterBlock::OpaquePass_optional __swiftcall __RKMaterialParameterBlock.OpaquePass.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKMaterialParameterBlock.OpaquePass.init(rawValue:), v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t __RKMaterialParameterBlock.OpaquePass.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x65757161704FLL;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000017;
  if (v1 != 3)
  {
    v4 = 0x776F64616853;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x524165757161704FLL;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKMaterialParameterBlock.OpaquePass()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance __RKMaterialParameterBlock.OpaquePass(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKMaterialParameterBlock.OpaquePass()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __RKMaterialParameterBlock.OpaquePass(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x65757161704FLL;
  v5 = 0xD000000000000015;
  v6 = 0x80000001C18DDC10;
  v7 = 0x80000001C18DDC30;
  v8 = 0xD000000000000017;
  if (v2 != 3)
  {
    v8 = 0x776F64616853;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x524165757161704FLL;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

BOOL __RKMaterialParameterBlock.transparentPassTechniqueMappingEnabled.getter()
{
  String.utf8CString.getter();

  PassTechniqueMapping = REMaterialParameterBlockValueGetPassTechniqueMapping();

  result = 1;
  if (!PassTechniqueMapping)
  {
    String.utf8CString.getter();

    v1 = REMaterialParameterBlockValueGetPassTechniqueMapping();

    if ((v1 & 1) == 0)
    {
      String.utf8CString.getter();

      v2 = REMaterialParameterBlockValueGetPassTechniqueMapping();

      if ((v2 & 1) == 0)
      {
        String.utf8CString.getter();

        v3 = REMaterialParameterBlockValueGetPassTechniqueMapping();

        if ((v3 & 1) == 0)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

Swift::Void __swiftcall __RKMaterialParameterBlock.setTransparentPassTechniqueMappingEnabled(_:)(Swift::Bool a1)
{
  LODWORD(v3) = *(v1 + 8);
  v4 = *(v1 + 16);
  if (v3 != 1 && !v4)
  {
    v5 = MEMORY[0x1E69E7CC0];
    v6 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_12:

    if (a1)
    {
      return;
    }

    goto LABEL_14;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (a1)
  {
    v7 = v5 + 40;
    do
    {
      v7 += 16;
      String.utf8CString.getter();

      REMaterialParameterBlockValueAddHashedPassTechniqueMapping();

      --v6;
    }

    while (v6);

    return;
  }

LABEL_14:
  if (v4)
  {
    v8 = v3;
  }

  else
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {

    *(v1 + 16) = MEMORY[0x1E69E7CC0];
  }

  v9 = 0;
  v15 = v3;
  do
  {
    v11 = outlined read-only object #0 of __RKMaterialParameterBlock.setTransparentPassTechniqueMappingEnabled(_:)[v9++ + 32];
    String.utf8CString.getter();

    PassTechniqueMapping = REMaterialParameterBlockValueGetPassTechniqueMapping();

    if (PassTechniqueMapping)
    {
      if ((v3 & 1) == 0)
      {
        v13 = *(v1 + 16);
        if (v13)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
          }

          v3 = *(v13 + 2);
          v14 = *(v13 + 3);
          if (v3 >= v14 >> 1)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v3 + 1, 1, v13);
          }

          *(v13 + 2) = v3 + 1;
          v10 = &v13[16 * v3];
          v10[32] = v11;
          *(v10 + 5) = 0;
          *(v1 + 16) = v13;
          LOBYTE(v3) = v15;
        }
      }

      String.utf8CString.getter();

      REMaterialParameterBlockValueRemovePassTechniqueMapping();
    }
  }

  while (v9 != 4);
}

Swift::Void __swiftcall __RKMaterialParameterBlock.reset()()
{
  v1 = REMaterialParameterBlockValueCreate();

  *(v0 + 24) = v1;
}

void __RKMaterialParameterBlock.unsafeSet(parameter:value:)(const char *a1, uint64_t a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v4 = *(a2 + 8);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 56);
  v49 = *(a2 + 48);
  v11 = *(a2 + 64);
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v48 = a1;
    v14 = *(v2 + 24);
    v47 = v10;
    v15 = v9;
    v16 = v8;
    v17 = v6;
    v18 = v7;
    v19 = v4;
    v20 = v5;
    v21 = REMaterialParameterBlockValueCopy();

    *(v2 + 24) = v21;
    v5 = v20;
    v4 = v19;
    v7 = v18;
    v6 = v17;
    v8 = v16;
    v9 = v15;
    v10 = v47;
    a1 = v48;
  }

  switch(v11)
  {
    case 1:
      *&v50 = v5;
      *(&v50 + 1) = v4;
      v51 = v7;
      v52 = v6;
      v53 = BYTE2(v6);
      v54 = BYTE3(v6);
      __RKMaterialParameterBlock.setTextureParameter(texture:key:)(&v50, a1);
      break;
    case 2:

      REMaterialParameterBlockValueSetFloat();
      break;
    case 3:

      REMaterialParameterBlockValueSetFloat2();
      break;
    case 4:
      v26 = *(v2 + 24);
      v27.n128_u64[0] = v5;
      v27.n128_u64[1] = v4;

      MEMORY[0x1EEDFCDB0](v26, a1, v27);
      break;
    case 5:

      REMaterialParameterBlockValueSetFloat4();
      break;
    case 6:
      if (REMaterialParameterBlockValueGetParameterType() == 19)
      {
        v50 = 0uLL;
        RECGColorToColorGamut();
        REMaterialParameterBlockValueSetColor3();
      }

      else
      {
        RECGColorToColorGamut();
        REMaterialParameterBlockValueSetColor4();
      }

      break;
    case 7:
      v35 = *(v2 + 24);
      v12.n128_u64[0] = v5;
      v13.n128_u64[0] = v4;

      MEMORY[0x1EEDFCDA8](v35, a1, v12, v13);
      break;
    case 8:
      v43 = *(v2 + 24);
      v44.n128_u64[0] = v5;
      v44.n128_u64[1] = v4;
      v45.n128_u64[0] = v7;
      v45.n128_u64[1] = v6;
      v46.n128_u64[0] = v9;
      v46.n128_u64[1] = v8;

      MEMORY[0x1EEDFCDB8](v43, a1, v44, v45, v46);
      break;
    case 9:
      v29 = *(v2 + 24);
      v30.n128_u64[0] = v5;
      v30.n128_u64[1] = v4;
      v31.n128_u64[0] = v7;
      v31.n128_u64[1] = v6;
      v32.n128_u64[0] = v9;
      v32.n128_u64[1] = v8;
      v33.n128_u64[0] = v49;
      v33.n128_u64[1] = v10;

      MEMORY[0x1EEDFCDC8](v29, a1, v30, v31, v32, v33);
      break;
    case 10:
      v42 = *(v2 + 24);

      MEMORY[0x1EEDFCD80](v42, a1, v5 & 1);
      break;
    case 11:
      v25 = *(v2 + 24);

      MEMORY[0x1EEDFCDD0](v25, a1, v5);
      break;
    case 12:
      v28 = *(v2 + 24);
      v12.n128_u64[0] = v5;

      MEMORY[0x1EEDFCDD8](v28, a1, v12);
      break;
    case 13:
      v38 = *(v2 + 24);
      v39.n128_u64[0] = v5;
      v39.n128_u64[1] = v4;

      MEMORY[0x1EEDFCDE0](v38, a1, v39);
      break;
    case 14:
      v23 = *(v2 + 24);
      v24.n128_u64[0] = v5;
      v24.n128_u64[1] = v4;

      MEMORY[0x1EEDFCDE8](v23, a1, v24);
      break;
    case 15:
      v34 = *(v2 + 24);

      MEMORY[0x1EEDFCE08](v34, a1, v5);
      break;
    case 16:
      v22 = *(v2 + 24);
      v12.n128_u64[0] = v5;

      MEMORY[0x1EEDFCE10](v22, a1, v12);
      break;
    case 17:
      v36 = *(v2 + 24);
      v37.n128_u64[0] = v5;
      v37.n128_u64[1] = v4;

      MEMORY[0x1EEDFCE18](v36, a1, v37);
      break;
    case 18:
      v40 = *(v2 + 24);
      v41.n128_u64[0] = v5;
      v41.n128_u64[1] = v4;

      MEMORY[0x1EEDFCE20](v40, a1, v41);
      break;
    case 19:

      REMaterialParameterBlockValueClearParameter();
      break;
    default:

      REMaterialParameterBlockValueSetTextureFromAsset();
      break;
  }
}

void __RKMaterialParameterBlock.setTextureParameter(texture:key:)(uint64_t a1, const char *a2)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = *(a1 + 27);
  REMaterialParameterBlockValueSetTextureFromAsset();
  if (v3)
  {
    v9 = v3;
    [v9 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    type metadata accessor for MTLSamplerDescriptor();
    swift_dynamicCast();
    v10 = strlen(a2);
    v11 = String.count.getter();
    v12 = __OFADD__(v10, v11);
    v13 = v10 + v11;
    if (v12)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    MEMORY[0x1EEE9AC00](v13);
    String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
    MEMORY[0x1C68F3410](0x72656C706D61735FLL, 0xE800000000000000);
    String.utf8CString.getter();
    REMaterialParameterBlockValueSetSampler();

    String.utf8CString.getter();

    REMaterialParameterBlockValueBindTextureToSamplerWithDefaultArray();
  }

  if (!v4)
  {
    REMaterialParameterBlockValueClearUVIndexForTexture();
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (HIDWORD(v4))
  {
LABEL_24:
    __break(1u);
    return;
  }

  REMaterialParameterBlockValueSetUVIndexForTexture();
LABEL_9:
  if (v8 == 5 && v5 == 2 && v6 == 3 && v7 == 4)
  {
    REMaterialParameterBlockValueClearSwizzleForTexture();
  }

  else
  {
    REMaterialParameterBlockValueSetSwizzleForTexture();
  }
}

void closure #1 in __RKMaterialParameterBlock.get(parameter:)(uint64_t a3@<X8>)
{
  switch(REMaterialParameterBlockValueGetParameterType())
  {
    case 1u:
      Texture = REMaterialParameterBlockValueGetTexture();
      if (!Texture)
      {
        goto LABEL_41;
      }

      v5 = Texture;
      if (REMaterialParameterBlockValueGetSamplerNameBoundToTexture())
      {
        v6 = REMaterialParameterBlockValueCopySampler();
      }

      else
      {
        v6 = 0;
      }

      type metadata accessor for TextureResource();
      v8 = swift_allocObject();
      *(v8 + 16) = v5;
      *(v8 + 24) = 0;
      RERetain();
      REAssetSetSwiftObject();
      SwizzleForTexture = REMaterialParameterBlockValueGetSwizzleForTexture();
      REMaterialParameterBlockValueGetUVIndexForTexture();
      if (v6)
      {
        v10 = v6;

        v11.i32[0] = 0;
        v12 = vmovl_u8(v11).u64[0];
        if (SwizzleForTexture)
        {
          v13 = -1;
        }

        else
        {
          v13 = 0;
        }

        v14 = vbsl_s8(vdup_n_s16(v13), v12, 0x5000400030002);

        *a3 = v6;
        goto LABEL_51;
      }

      if (SwizzleForTexture == 1)
      {
        v16 = REMaterialCreateDefaultSamplerDescriptor();

        v17.i32[0] = 0;
        v14 = vbsl_s8(vdup_n_s16(0xFFFFFFFF), *&vmovl_u8(v17), 0x5000400030002);

        *a3 = v16;
LABEL_51:
        *(a3 + 8) = v8;
        *(a3 + 16) = 0;
        *(a3 + 24) = vuzp1_s8(v14, v15).u32[0];
        v7 = 1;
        goto LABEL_42;
      }

      *a3 = v8;
      *(a3 + 64) = 0;
      return;
    case 2u:
      if (!REMaterialParameterBlockValueGetFloat())
      {
        goto LABEL_41;
      }

      *a3 = 0;
      v7 = 2;
      goto LABEL_42;
    case 3u:
      if (!REMaterialParameterBlockValueGetFloat2())
      {
        goto LABEL_41;
      }

      *a3 = 0;
      v7 = 3;
      goto LABEL_42;
    case 4u:
      if (!REMaterialParameterBlockValueGetFloat3())
      {
        goto LABEL_41;
      }

      *a3 = 0uLL;
      v7 = 4;
      goto LABEL_42;
    case 5u:
      if (!REMaterialParameterBlockValueGetFloat4())
      {
        goto LABEL_41;
      }

      *a3 = 0uLL;
      v7 = 5;
      goto LABEL_42;
    case 6u:
      if (!REMaterialParameterBlockValueGetFloat2x2())
      {
        goto LABEL_41;
      }

      *a3 = 0uLL;
      v7 = 7;
      goto LABEL_42;
    case 7u:
      if (!REMaterialParameterBlockValueGetFloat3x3())
      {
        goto LABEL_41;
      }

      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      v7 = 8;
      goto LABEL_42;
    case 8u:
      if (!REMaterialParameterBlockValueGetFloat4x4())
      {
        goto LABEL_41;
      }

      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      v7 = 9;
      goto LABEL_42;
    case 9u:
      if (!REMaterialParameterBlockValueGetBool())
      {
        goto LABEL_41;
      }

      *a3 = 0;
      v7 = 10;
      goto LABEL_42;
    case 0xBu:
      if (!REMaterialParameterBlockValueGetInt())
      {
        goto LABEL_41;
      }

      *a3 = 0;
      v7 = 11;
      goto LABEL_42;
    case 0xCu:
      if (!REMaterialParameterBlockValueGetUInt())
      {
        goto LABEL_41;
      }

      *a3 = 0;
      v7 = 15;
      goto LABEL_42;
    case 0xDu:
      if (!REMaterialParameterBlockValueGetInt2())
      {
        goto LABEL_41;
      }

      *a3 = 0;
      v7 = 12;
      goto LABEL_42;
    case 0xEu:
      if (!REMaterialParameterBlockValueGetUInt2())
      {
        goto LABEL_41;
      }

      *a3 = 0;
      v7 = 16;
      goto LABEL_42;
    case 0xFu:
      if (!REMaterialParameterBlockValueGetInt3())
      {
        goto LABEL_41;
      }

      *a3 = 0uLL;
      v7 = 13;
      goto LABEL_42;
    case 0x10u:
      if (!REMaterialParameterBlockValueGetUInt3())
      {
        goto LABEL_41;
      }

      *a3 = 0uLL;
      v7 = 17;
      goto LABEL_42;
    case 0x11u:
      if (!REMaterialParameterBlockValueGetInt4())
      {
        goto LABEL_41;
      }

      *a3 = 0uLL;
      v7 = 14;
      goto LABEL_42;
    case 0x12u:
      if (!REMaterialParameterBlockValueGetUInt4())
      {
        goto LABEL_41;
      }

      *a3 = 0uLL;
      v7 = 18;
      goto LABEL_42;
    case 0x13u:
      if (REMaterialParameterBlockValueGetColor3())
      {
        goto LABEL_38;
      }

      goto LABEL_41;
    case 0x14u:
      if (!REMaterialParameterBlockValueGetColor4())
      {
        goto LABEL_41;
      }

LABEL_38:
      *a3 = RECreateCGColorFromColorGamut();
      v7 = 6;
      goto LABEL_42;
    default:
LABEL_41:
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      v7 = -1;
LABEL_42:
      *(a3 + 64) = v7;
      return;
  }
}

uint64_t __RKMaterialParameterBlock.init(transparentPassTechniqueMappping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 48;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = *(v4 - 16);
      String.utf8CString.getter();
      v7 = REMaterialParameterBlockArrayComponentHashTechniqueName();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
      }

      v9 = *(v5 + 2);
      v8 = *(v5 + 3);
      if (v9 >= v8 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v5);
      }

      *(v5 + 2) = v9 + 1;
      v10 = &v5[16 * v9];
      v10[32] = v6;
      *(v10 + 5) = v7;
      v4 += 24;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  result = REMaterialParameterBlockValueCreate();
  *a2 = v5;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = result;
  return result;
}

uint64_t __RKMaterialParameterBlock.init(hashedTransparentPassTechniqueMapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 8) = 1;
  v3 = specialized _arrayForceCast<A, B>(_:)(a1);

  *a2 = v3;
  result = REMaterialParameterBlockValueCreate();
  *(a2 + 24) = result;
  return result;
}

id static __RKMaterialParameterBlock.fromCore(_:index:)@<X0>(uint64_t a3@<X8>)
{
  result = REMaterialParameterBlockArrayComponentGetBlockValueAtIndex();
  if (result)
  {
    *(a3 + 8) = 0;
    *a3 = MEMORY[0x1E69E7CC0];
    *(a3 + 16) = 0;
    *(a3 + 24) = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance MTLTextureSwizzleChannels(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[3] != a2[3])
  {
    return 0;
  }

  return *a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2];
}

uint64_t specialized static __RKMaterialParameterBlock.Parameter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v42 = *(a1 + 32);
  v43 = v2;
  v4 = *(a1 + 16);
  v41[0] = *a1;
  v41[1] = v4;
  v5 = *(a2 + 48);
  v6 = *(a2 + 16);
  v47 = *(a2 + 32);
  v48 = v5;
  v7 = *(a2 + 16);
  v45 = *a2;
  v46 = v7;
  v8 = *(a1 + 48);
  v50[2] = v42;
  v50[3] = v8;
  v50[0] = *a1;
  v50[1] = v3;
  v9 = *(a2 + 48);
  v54 = v47;
  v55 = v9;
  v44 = *(a1 + 64);
  v49 = *(a2 + 64);
  v51 = *(a1 + 64);
  v56 = *(a2 + 64);
  v52 = v45;
  v53 = v6;
  v57 = v41[0];
  switch(v44)
  {
    case 1:
      if (v49 != 1)
      {
        v26 = *&v41[0];
        goto LABEL_55;
      }

      v37 = v57;
      v38 = v4.i64[0];
      v39 = vmovn_s16(vzip2q_s8(v4, v4)).u32[0];
      v34 = v45;
      v35 = v46.i64[0];
      v36 = v46.i32[2];
      outlined init with copy of __RKMaterialParameterBlock.Parameter(&v45, v40);
      outlined init with copy of __RKMaterialParameterBlock.Parameter(v41, v40);
      outlined init with copy of __RKMaterialParameterBlock.Parameter(&v45, v40);
      outlined init with copy of __RKMaterialParameterBlock.Parameter(v41, v40);
      LOBYTE(v15) = specialized static MaterialParameters.Texture.== infix(_:_:)(&v37, &v34, v20);
      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      outlined destroy of __RKMaterialParameterBlock.Parameter(&v45);
      outlined destroy of __RKMaterialParameterBlock.Parameter(v41);
      return v15 & 1;
    case 2:
      if (v49 != 2)
      {
        goto LABEL_57;
      }

      v14 = v57.f32[0];
      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      LOBYTE(v15) = v14 == *v45.i32;
      return v15 & 1;
    case 3:
      if (v49 != 3)
      {
        goto LABEL_57;
      }

      v17 = *v57.f32;
      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      v12 = vceq_f32(v17, *v45.i8);
      if ((v12.i8[0] & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_23;
    case 4:
      if (v49 != 4)
      {
        goto LABEL_57;
      }

      v30 = v57;
      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      v10 = vceqq_f32(v30, v45);
      goto LABEL_34;
    case 5:
      if (v49 != 5)
      {
        goto LABEL_57;
      }

      v31 = v57;
      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      LOBYTE(v15) = 0;
      v21 = vceqq_f32(v31, v45);
      goto LABEL_40;
    case 6:
      if (v49 != 6)
      {
        v27 = *&v41[0];
        goto LABEL_57;
      }

      type metadata accessor for CGColorRef(0);
      outlined init with copy of __RKMaterialParameterBlock.Parameter(&v45, v40);
      outlined init with copy of __RKMaterialParameterBlock.Parameter(v41, v40);
      lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
      LOBYTE(v15) = static _CFObject.== infix(_:_:)();
LABEL_50:
      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      break;
    case 7:
      if (v49 != 7)
      {
        goto LABEL_57;
      }

      v18 = vand_s8(vceq_f32(*v57.f32, *v45.i8), vceq_f32(*&v57.u32[2], v45.u64[1]));
      v19 = vpmin_u32(v18, v18).u32[0];
      goto LABEL_49;
    case 8:
      if (v49 != 8)
      {
        goto LABEL_57;
      }

      v13 = vandq_s8(vandq_s8(vceqq_f32(v46, v4), vceqq_f32(v42, v47)), vceqq_f32(v57, v45));
      v13.i32[3] = v13.i32[2];
      goto LABEL_48;
    case 9:
      if (v49 != 9)
      {
        goto LABEL_57;
      }

      v13 = vandq_s8(vandq_s8(vceqq_f32(v42, v47), vceqq_f32(v43, v48)), vandq_s8(vceqq_f32(v46, v4), vceqq_f32(v57, v45)));
LABEL_48:
      v19 = vminvq_u32(v13);
LABEL_49:
      LODWORD(v15) = v19 >> 31;
      goto LABEL_50;
    case 10:
      if (v49 != 10)
      {
        goto LABEL_57;
      }

      v24 = v57.i8[0];
      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      LOBYTE(v15) = v24 ^ v45.i8[0] ^ 1;
      return v15 & 1;
    case 11:
      if (v49 != 11)
      {
        goto LABEL_57;
      }

      goto LABEL_20;
    case 12:
      if (v49 == 12)
      {
        goto LABEL_13;
      }

      goto LABEL_57;
    case 13:
      if (v49 == 13)
      {
        goto LABEL_33;
      }

      goto LABEL_57;
    case 14:
      if (v49 == 14)
      {
        goto LABEL_39;
      }

      goto LABEL_57;
    case 15:
      if (v49 != 15)
      {
        goto LABEL_57;
      }

LABEL_20:
      v16 = v57.i32[0];
      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      LOBYTE(v15) = v16 == v45.i32[0];
      return v15 & 1;
    case 16:
      if (v49 != 16)
      {
        goto LABEL_57;
      }

LABEL_13:
      v11 = *v57.f32;
      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      v12 = vceq_s32(v11, *v45.i8);
      if ((v12.i8[0] & 1) == 0)
      {
        goto LABEL_58;
      }

LABEL_23:
      LOBYTE(v15) = v12.i8[4];
      return v15 & 1;
    case 17:
      if (v49 != 17)
      {
        goto LABEL_57;
      }

LABEL_33:
      v32 = v57;
      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      v10 = vceqq_s32(v32, v45);
LABEL_34:
      v22 = vmovn_s32(v10);
      if ((v22.i16[0] & v22.i16[1] & 1) == 0)
      {
        goto LABEL_58;
      }

      LOBYTE(v15) = v22.i8[4];
      return v15 & 1;
    case 18:
      if (v49 != 18)
      {
        goto LABEL_57;
      }

LABEL_39:
      v33 = v57;
      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      LOBYTE(v15) = 0;
      v21 = vceqq_s32(v33, v45);
LABEL_40:
      v23 = vmovn_s32(v21);
      if (v23.i8[0] & 1) != 0 && (v23.i8[2] & 1) != 0 && (v23.i8[4])
      {
        LOBYTE(v15) = v23.i8[6];
      }

      return v15 & 1;
    case 19:
      if (v49 != 19)
      {
        goto LABEL_57;
      }

      v25 = vorrq_s8(vorrq_s8(v45, v47), vorrq_s8(v46, v48));
      if (vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)))
      {
        goto LABEL_57;
      }

      outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
      LOBYTE(v15) = 1;
      return v15 & 1;
    default:
      if (v49)
      {
LABEL_55:

LABEL_57:
        outlined init with copy of __RKMaterialParameterBlock.Parameter(&v45, v40);
        outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
LABEL_58:
        LOBYTE(v15) = 0;
      }

      else
      {
        v15 = *(v57.i64[0] + 16);
        v29 = *(v45.i64[0] + 16);
        outlined init with copy of __RKMaterialParameterBlock.Parameter(&v45, v40);
        outlined init with copy of __RKMaterialParameterBlock.Parameter(v41, v40);
        outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(v50);
        LOBYTE(v15) = v15 == v29;
      }

      break;
  }

  return v15 & 1;
}