void *Entity.prepareAudio(_:parentTimebase:)(uint64_t a1, void *a2)
{
  v3 = v2;
  type metadata accessor for AudioFileResource();
  v5 = swift_dynamicCastClassUnconditional();
  type metadata accessor for AudioPlaybackController();
  swift_allocObject();

  v6 = specialized AudioPlaybackController.init(resource:entity:)(v5, v3);

  v7 = a2;
  REAudioPlayerComponentSetSourceClockOrTimebase();
  RENetworkMarkComponentDirty();

  return v6;
}

uint64_t static MeshResource.makeMutable()()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v2 + 32))(v1, v2);
  Mutable = REAssetServiceMeshAssetCreateMutable();
  if (!REAssetGetSwiftObject())
  {
    goto LABEL_4;
  }

  type metadata accessor for MeshResource();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_4:
    type metadata accessor for MeshResource();
    v4 = swift_allocObject();
    *(v4 + 16) = Mutable;
    RERetain();
    REAssetSetSwiftObject();
  }

  RERelease();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t static MeshResource.makeMutable(assetService:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 32))(v1, v2);
  Mutable = REAssetServiceMeshAssetCreateMutable();
  if (!REAssetGetSwiftObject())
  {
    goto LABEL_4;
  }

  type metadata accessor for MeshResource();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_4:
    type metadata accessor for MeshResource();
    v4 = swift_allocObject();
    *(v4 + 16) = Mutable;
    RERetain();
    REAssetSetSwiftObject();
  }

  RERelease();
  return v4;
}

uint64_t MeshResource.replaceAll(with:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (!v3)
  {
    __break(1u);
    return MEMORY[0x1EEDFD058](a1, a2);
  }

  v4 = a1;
  result = REAssetHandleConvertToMutable();
  if (result)
  {
    a2 = *(v4 + 16);
    a1 = v3;

    return MEMORY[0x1EEDFD058](a1, a2);
  }

  return result;
}

Swift::Void __swiftcall MeshResource.replaceAll(with:instances:skeletons:)(Swift::OpaquePointer with, Swift::OpaquePointer instances, Swift::OpaquePointer skeletons)
{
  if (!*(v3 + 16))
  {
LABEL_60:
    __break(1u);
    return;
  }

  if (REAssetHandleConvertToMutable())
  {
    if (with._rawValue >> 62)
    {
      goto LABEL_53;
    }

    for (i = *((with._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (i)
      {
        v45 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          goto LABEL_58;
        }

        v8 = v45;
        if ((with._rawValue & 0xC000000000000001) != 0)
        {
          for (j = 0; j != i; ++j)
          {
            v10 = *(MEMORY[0x1C68F41F0](j, with._rawValue) + 16);
            swift_unknownObjectRelease();
            v12 = *(v45 + 16);
            v11 = *(v45 + 24);
            if (v12 >= v11 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
            }

            *(v45 + 16) = v12 + 1;
            *(v45 + 8 * v12 + 32) = v10;
          }
        }

        else
        {
          v13 = with._rawValue + 32;
          v14 = *(v45 + 16);
          do
          {
            v15 = *(*v13 + 16);
            v16 = *(v45 + 24);
            if (v14 >= v16 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v14 + 1, 1);
            }

            *(v45 + 16) = v14 + 1;
            *(v45 + 8 * v14 + 32) = v15;
            v13 += 8;
            ++v14;
            --i;
          }

          while (i);
        }
      }

      if (instances._rawValue >> 62)
      {
        v17 = __CocoaSet.count.getter();
      }

      else
      {
        v17 = *((instances._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = MEMORY[0x1E69E7CC0];
      if (v17)
      {
        v19 = v8;
        v46 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17 & ~(v17 >> 63), 0);
        if (v17 < 0)
        {
          goto LABEL_59;
        }

        v18 = v46;
        if ((instances._rawValue & 0xC000000000000001) != 0)
        {
          for (k = 0; k != v17; ++k)
          {
            v21 = v18;
            v22 = *(MEMORY[0x1C68F41F0](k, instances._rawValue) + 16);
            swift_unknownObjectRelease();
            v18 = v21;
            v24 = *(v21 + 16);
            v23 = *(v21 + 24);
            if (v24 >= v23 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
              v8 = v19;
              v18 = v21;
            }

            *(v18 + 16) = v24 + 1;
            *(v18 + 8 * v24 + 32) = v22;
          }
        }

        else
        {
          v25 = instances._rawValue + 32;
          v26 = *(v46 + 16);
          do
          {
            v27 = *(*v25 + 16);
            v47 = v18;
            v28 = *(v18 + 24);
            instances._rawValue = (v26 + 1);
            if (v26 >= v28 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v26 + 1, 1);
              v8 = v19;
              v18 = v47;
            }

            *(v18 + 16) = instances;
            *(v18 + 8 * v26 + 32) = v27;
            v25 += 8;
            ++v26;
            --v17;
          }

          while (v17);
        }
      }

      v29 = *(skeletons._rawValue + 2);
      v44 = MEMORY[0x1E69E7CC0];
      if (!v29)
      {
        break;
      }

      v41 = v18;
      v48 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
      v30 = 0;
      v43 = skeletons._rawValue + 32;
      v44 = v48;
      v42 = v29;
      while (1)
      {
        v31 = &v43[32 * v30];
        with._rawValue = *(v31 + 1);
        v32 = *(v31 + 2);
        v33 = *(v31 + 3);

        skeletons._rawValue = RESkeletonDefinitionCreate();
        String.utf8CString.getter();
        RESkeletonDefinitionSetName();

        v34 = *(v33 + 16);
        if (HIDWORD(v34))
        {
          break;
        }

        RESkeletonDefinitionSetJointCount();
        if (v34)
        {
          v35 = 0;
          v36 = v33 + 40;
          do
          {
            instances._rawValue = String.utf8CString.getter();
            RESkeletonDefinitionSetJointName();

            v36 += 16;
            ++v35;
          }

          while (v34 != v35);
        }

        if (HIDWORD(*(v32 + 16)))
        {
          goto LABEL_52;
        }

        RESkeletonDefinitionSetInverseBindPoses();

        v38 = *(v48 + 16);
        v37 = *(v48 + 24);
        if (v38 >= v37 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
        }

        ++v30;
        *(v48 + 16) = v38 + 1;
        *(v48 + 8 * v38 + 32) = skeletons;
        if (v30 == v42)
        {
          v18 = v41;
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      ;
    }

LABEL_43:
    if (HIDWORD(*(v8 + 16)))
    {
      __break(1u);
    }

    else if (!HIDWORD(*(v18 + 16)))
    {
      if (!HIDWORD(*(v44 + 16)))
      {
        v39 = v44 + 32;
        REMeshAssetReplaceAllWithSkinnedModels();

        for (m = *(v44 + 16); m; --m)
        {
          v39 += 8;
          RERelease();
        }

        return;
      }

LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_57;
  }
}

char *EnvironmentResource.CreateOptions.init(samplingQuality:specularCubeDimension:compression:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, _WORD *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *result;
  *a5 = *a4;
  *(a5 + 2) = v5;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  return result;
}

Swift::OpaquePointer_optional __swiftcall EnvironmentResource.CreateOptions.toCoreImageBasedLightCompilationOptions(skyboxCubeDimension:)(Swift::Int_optional skyboxCubeDimension)
{
  is_nil = skyboxCubeDimension.is_nil;
  value = skyboxCubeDimension.value;
  v4 = *(v1 + 2);
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v25 = MEMORY[0x1E69E7668];
  LODWORD(v24) = v4;
  outlined init with take of Any(&v24, v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v8, v10, isUniquelyReferenced_nonNull_native);

  v13 = MEMORY[0x1E69E6530];
  if (!is_nil)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    v25 = v13;
    *&v24 = value;
    outlined init with take of Any(&v24, v23);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v14, v16, v17);
  }

  if ((v6 & 1) == 0)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
    v25 = v13;
    *&v24 = v5;
    outlined init with take of Any(&v24, v23);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v18, v20, v21);
  }

  v22 = v7;
  result.value._rawValue = v22;
  result.is_nil = v12;
  return result;
}

uint64_t __SkyboxMaterial.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = REMaterialParameterBlockValueCreate();
  result = _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(0xD000000000000018, 0x80000001C18E7CE0, v3);
  *a1 = result;
  return result;
}

uint64_t EnvironmentResource.LoadError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 32);
  if (v3 <= 3)
  {
    if (*(v0 + 32) > 1u)
    {
      if (v3 == 2)
      {
        _StringGuts.grow(_:)(21);

        v10[0] = 0xD000000000000011;
        v10[1] = 0x80000001C18E98A0;
        MEMORY[0x1C68F3410](v1, v2);
        v4 = 10530;
        v5 = 0xE200000000000000;
      }

      else
      {
        _StringGuts.grow(_:)(27);

        strcpy(v10, "Extension ");
        HIDWORD(v10[1]) = -352321536;
        MEMORY[0x1C68F3410](v1, v2);
        v4 = 0x746F6E2073692022;
        v5 = 0xEE0064696C617620;
      }
    }

    else if (*(v0 + 32))
    {
      v8 = v0[2];
      v7 = v0[3];
      _StringGuts.grow(_:)(24);

      v10[0] = 0xD000000000000011;
      v10[1] = 0x80000001C18E98A0;
      MEMORY[0x1C68F3410](v1, v2);
      MEMORY[0x1C68F3410](2112034, 0xE300000000000000);
      v4 = v8;
      v5 = v7;
    }

    else
    {
      _StringGuts.grow(_:)(48);

      v10[0] = 0xD000000000000023;
      v10[1] = 0x80000001C18DF870;
      MEMORY[0x1C68F3410](v1, v2);
      v4 = 0x6E7562206E692022;
      v5 = 0xEB00000000656C64;
    }

    goto LABEL_15;
  }

  if (*(v0 + 32) > 5u)
  {
    if (v3 == 6)
    {
    }

    else
    {
      return 0xD00000000000001ELL;
    }
  }

  else
  {
    if (v3 == 4)
    {
      _StringGuts.grow(_:)(38);

      strcpy(v10, "Received only ");
      HIBYTE(v10[1]) = -18;
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v6);

      v4 = 0xD000000000000016;
      v5 = 0x80000001C18E9880;
LABEL_15:
      MEMORY[0x1C68F3410](v4, v5);
      return v10[0];
    }

    v10[0] = *v0;
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
    return Error.localizedDescription.getter();
  }

  return v1;
}

unint64_t EnvironmentResource.OptionError.errorDescription.getter(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xD00000000000002CLL;
  }

  _StringGuts.grow(_:)(32);

  MEMORY[0x1C68F3410](a1, a2);
  MEMORY[0x1C68F3410](0x766E692073692022, 0xEC00000064696C61);
  return 0xD000000000000012;
}

uint64_t EnvironmentResource.coreSkyboxAsset.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t EnvironmentResource.coreSkyboxAssetRef.getter@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 24);
  return result;
}

uint64_t EnvironmentResource.deinit()
{
  if (*(v0 + 16))
  {
    REAssetSetSwiftObject();
    RERelease();
  }

  swift_beginAccess();
  if (*(v0 + 24))
  {
    REAssetSetSwiftObject();
    RERelease();
  }

  return v0;
}

uint64_t EnvironmentResource.__deallocating_deinit()
{
  if (*(v0 + 16))
  {
    REAssetSetSwiftObject();
    RERelease();
  }

  swift_beginAccess();
  if (*(v0 + 24))
  {
    REAssetSetSwiftObject();
    RERelease();
  }

  return swift_deallocClassInstance();
}

void *static EnvironmentResource.load(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = specialized static EnvironmentResource.loadPrivate(named:in:allowsREIbl:)(a1, a2, a3, 0);
  if (!v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v6 = type metadata accessor for EnvironmentResource();
    *(inited + 32) = v4;
    *(inited + 56) = v6;
    *(inited + 64) = &protocol witness table for EnvironmentResource;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
  }

  return v4;
}

void *static EnvironmentResource.load(named:in:allowsREIbl:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = specialized static EnvironmentResource.loadPrivate(named:in:allowsREIbl:)(a1, a2, a3, a4);
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v7 = type metadata accessor for EnvironmentResource();
    *(inited + 32) = v5;
    *(inited + 56) = v7;
    *(inited + 64) = &protocol witness table for EnvironmentResource;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
  }

  return v5;
}

void static EnvironmentResource.__load(contentsOf:withName:)(uint64_t a1)
{
  if (URL.pathExtension.getter() == 0x657974696C616572 && v2 == 0xEA0000000000766ELL)
  {

LABEL_5:
    specialized static EnvironmentResource.loadCompiledResource(from:)();
    return;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v3)
  {
    goto LABEL_5;
  }

  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  specialized static EnvironmentResource.importResourceInternal(contentsOf:options:)(a1, v4);
}

uint64_t static EnvironmentResource.loadAsyncPrivate(named:in:)(void *a1, uint64_t a2, void *a3)
{
  v62 = a1;
  v65 = type metadata accessor for URL();
  v61 = *(v65 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v60 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = v58 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v64 = v58 - v9;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = [objc_opt_self() mainBundle];
  }

  v15 = a3;
  v16 = specialized static __ServiceLocator.shared.getter();
  v17 = *(*(v16 + 168) + 16);
  swift_beginAccess();
  v18 = *(v16 + 24);
  swift_unownedRetainStrong();
  v19 = *(v18 + 32);

  v63 = v17;
  v20 = v19;

  *v13 = v20;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v20)
  {
    v23 = v62;
    v24 = MEMORY[0x1C68F3280](v62, a2);
    v25 = MEMORY[0x1C68F3280](0x657974696C616572, 0xEA0000000000766ELL);
    v26 = [v14 URLForResource:v24 withExtension:v25];

    if (v26)
    {
      v27 = v59;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v62 = v21;
      v28 = v61;
      v29 = *(v61 + 32);
      v31 = v64;
      v30 = v65;
      v29(v64, v27, v65);
      v32 = v60;
      (*(v28 + 16))(v60, v31, v30);
      v33 = (*(v28 + 80) + 24) & ~*(v28 + 80);
      v34 = (v5 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      *(v35 + 16) = v16;
      v29((v35 + v33), v32, v30);
      v36 = v63;
      *(v35 + v34) = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMd, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMR);
      v37 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit19EnvironmentResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit19EnvironmentResourceCs5Error_pGSgGMR);
      v38 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
      v39 = swift_allocObject();
      *(v39 + 16) = 0;
      *(v38 + 16) = v39;
      *(v38 + 24) = 0;
      *(v38 + 32) = -1;
      *(v37 + 16) = v38;
      v40 = swift_allocObject();
      v40[2] = partial apply for closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:);
      v40[3] = v35;
      v40[4] = v38;
      v40[5] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit19EnvironmentResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit19EnvironmentResourceCs5Error_pGMR);
      swift_allocObject();

      v41 = v36;
      v42 = v14;
      v43 = v41;

      *(v37 + 24) = Future.init(_:)();
      v45 = specialized LoadRequest<A>.thenWaitForResourceSharing()(v44);

      (*(v28 + 8))(v64, v65);
    }

    else
    {
      v46 = swift_allocObject();
      v47 = v23;
      v48 = v46;
      v46[2] = v58[1];
      v46[3] = v47;
      v46[4] = a2;
      v46[5] = v14;
      v46[6] = v16;
      v46[7] = v21;
      v49 = v63;
      v46[8] = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMd, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMR);
      v50 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit19EnvironmentResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit19EnvironmentResourceCs5Error_pGSgGMR);
      v51 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
      v52 = swift_allocObject();
      *(v52 + 16) = 0;
      *(v51 + 16) = v52;
      *(v51 + 24) = 0;
      *(v51 + 32) = -1;
      *(v50 + 16) = v51;
      v53 = swift_allocObject();
      v53[2] = partial apply for closure #2 in static EnvironmentResource.loadAsyncPrivate(named:in:);
      v53[3] = v48;
      v53[4] = v51;
      v53[5] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit19EnvironmentResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit19EnvironmentResourceCs5Error_pGMR);
      swift_allocObject();

      v54 = v49;
      v55 = v21;

      v56 = v14;

      *(v50 + 24) = Future.init(_:)();
      v45 = specialized LoadRequest<A>.thenWaitForResourceSharing()(v57);
    }

    return v45;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v25 = a2;
  v26 = a3;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v28 = *(v10 - 8);
  v29 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  (*(v14 + 16))(v16, a4, v13);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v26;
  (*(v14 + 32))(v20 + v18, v16, v13);
  v21 = (v20 + v19);
  *v21 = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  v21[1] = v17;
  aBlock[4] = partial apply for doLoadEnvironmentAsync #1 () in closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_88;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v32 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v23 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v12, v9, v22);
  _Block_release(v22);
  (*(v30 + 8))(v9, v23);
  (*(v28 + 8))(v12, v29);
}

void doLoadEnvironmentAsync #1 () in closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v54 = a2;
  v82 = *MEMORY[0x1E69E9840];
  v55 = type metadata accessor for DispatchPredicate();
  v5 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v7 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v78, 0, 25);
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v78[25] = 1;
  v80 = 0;
  v81 = 0;
  v79 = 0;
  v73[0] = 1;
  swift_beginAccess();
  outlined init with copy of __REAssetService(a1 + 120, &v66);
  v13 = *(&v67 + 1);
  v12 = v68;
  __swift_project_boxed_opaque_existential_1(&v66, *(&v67 + 1));
  v78[27] = (*(v12 + 56))(v13, v12) & 1;
  __swift_destroy_boxed_opaque_existential_1(&v66);
  outlined init with copy of __REAssetService(a1 + 120, &v66);
  v14 = *(&v67 + 1);
  v15 = v68;
  __swift_project_boxed_opaque_existential_1(&v66, *(&v67 + 1));
  v78[26] = (*(v15 + 56))(v14, v15) & 1;
  __swift_destroy_boxed_opaque_existential_1(&v66);
  v50 = v11;
  v51 = v9;
  v16 = *(v9 + 16);
  v17 = v54;
  v54 = v8;
  v16(v11, v17, v8);
  outlined init with copy of __REAssetBundle.LoadOptions(v73, &v66);
  outlined init with copy of __REAssetService(a1 + 120, &v62);
  v18 = *(&v63 + 1);
  v19 = v64;
  __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
  LOBYTE(v59[0]) = v66;
  __REAssetService.dispatchPredicate(for:)(v59, v18, v19, v7);
  __swift_destroy_boxed_opaque_existential_1(&v62);
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v55);
  if ((v18 & 1) == 0)
  {
    __break(1u);
  }

  outlined init with copy of __REAssetService(a1 + 120, v59);
  swift_beginAccess();
  v20 = *(a1 + 16);
  v58 = 0;
  if (v70)
  {
    v21 = v60;
    v22 = v61;
    __swift_project_boxed_opaque_existential_1(v59, v60);
    (*(v22 + 32))(v21, v22);
    v23 = v50;
    URL._bridgeToObjectiveC()(v24);
    v26 = v25;
    String.utf8CString.getter();
    v27 = RERealityFileMountFileAtURLWithAliasName();

    if (v27)
    {
LABEL_4:
      v28 = v71;
      if (v71)
      {
        MajorVersionNumber = RERealityFileGetMajorVersionNumber();
        v30 = v28 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
        *v30 = MajorVersionNumber;
        *(v30 + 8) = 1;
      }

      static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v27, v59, v20, &v66, &v62);
      v36 = v60;
      v37 = v61;
      __swift_project_boxed_opaque_existential_1(v59, v60);
      (*(v37 + 32))(v36, v37);
      RERealityFileUnmount();
      __swift_destroy_boxed_opaque_existential_1(v59);
      outlined destroy of __REAssetBundle.LoadOptions(&v66);
      (*(v51 + 8))(v23, v54);
      v72[0] = v62;
      v72[1] = v63;
      v72[2] = v64;
      v72[3] = v65;
      swift_beginAccess();
      swift_unownedRetainStrong();
      outlined init with copy of __REAssetBundle(v72, &v66);
      v38 = swift_allocObject();
      v39 = v67;
      *(v38 + 16) = v66;
      *(v38 + 32) = v39;
      v40 = v69;
      *(v38 + 48) = v68;
      *(v38 + 64) = v40;
      *(v38 + 80) = v52;
      *(v38 + 88) = v53;

      __Engine.asyncOnEngineQueue(_:)(partial apply for closure #1 in doLoadEnvironmentAsync #1 () in closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:), v38);

      outlined destroy of __REAssetBundle(v72);
      outlined destroy of __REAssetBundle.LoadOptions(v73);
      return;
    }
  }

  else
  {
    v31 = v60;
    v32 = v61;
    __swift_project_boxed_opaque_existential_1(v59, v60);
    (*(v32 + 32))(v31, v32);
    v23 = v50;
    URL._bridgeToObjectiveC()(v33);
    v35 = v34;
    v27 = RERealityFileMountFileAtURL();

    if (v27)
    {
      goto LABEL_4;
    }
  }

  specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v58);
  v41 = v58;
  if (v58)
  {
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
    v42 = swift_allocError();
    *v43 = v41;
  }

  else
  {
    v56 = 0;
    v57 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v56 = 0xD00000000000001FLL;
    v57 = 0x80000001C18E1F00;
    v44 = URL.path.getter();
    MEMORY[0x1C68F3410](v44);

    MEMORY[0x1C68F3410](46, 0xE100000000000000);
    v45 = v56;
    v46 = v57;
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    v42 = swift_allocError();
    *v47 = v45;
    *(v47 + 8) = v46;
    *(v47 + 16) = 4;
  }

  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(v59);
  outlined destroy of __REAssetBundle.LoadOptions(&v66);
  (*(v51 + 8))(v23, v54);
  outlined destroy of __REAssetBundle.LoadOptions(v73);
  swift_beginAccess();
  swift_unownedRetainStrong();
  v48 = swift_allocObject();
  v48[2] = v52;
  v48[3] = v53;
  v48[4] = v42;

  v49 = v42;
  __Engine.asyncOnEngineQueue(_:)(partial apply for closure #2 in doLoadEnvironmentAsync #1 () in closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:), v48);
}

void closure #1 in doLoadEnvironmentAsync #1 () in closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:)(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1 + 8);
  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (v4 < 2)
    {
      goto LABEL_3;
    }

LABEL_7:
    if ((v3 & 0xC000000000000001) == 0)
    {
      v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        if (v7 != 1)
        {
          v8 = *(v3 + 32);
          v9 = *(v3 + 40);

          goto LABEL_11;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v8 = MEMORY[0x1C68F41F0](0, v3);
    v9 = MEMORY[0x1C68F41F0](1, v3);
LABEL_11:
    v10 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v10 + 120, v24);
    v11 = v25;
    v12 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (*(v12 + 32))(v11, v12);
    v13 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __RenderService?(v13 + 40, &v19);
    if (v20)
    {
      outlined init with take of ForceEffectBase(&v19, v21);
      v14 = v22;
      v15 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      (*(v15 + 24))(v14, v15);
      REAssetManagerPostLoadProcessImageBasedLightAsset();
      __swift_destroy_boxed_opaque_existential_1(v21);
      __swift_destroy_boxed_opaque_existential_1(v24);
      v16 = *(v8 + 16);
      v17 = *(v9 + 16);
      type metadata accessor for EnvironmentResource();
      v18 = swift_allocObject();
      *(v18 + 24) = 0;
      *(v18 + 16) = v16;
      swift_beginAccess();
      *(v18 + 24) = v17;
      RERetain();
      REAssetSetSwiftObject();
      RERetain();
      REAssetSetSwiftObject();
      a2(v18, 0);

      return;
    }

    goto LABEL_16;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4 >= 2)
  {
    goto LABEL_7;
  }

LABEL_3:
  lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
  v5 = swift_allocError();
  *v6 = v4;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 4;
  a2(v5, 1);
}

void closure #2 in static EnvironmentResource.loadAsyncPrivate(named:in:)(void (*a1)(void **), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8)
{
  v30 = a7;
  v31 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v32 = *(v16 - 8);
  v33 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;

  v20 = specialized static EnvironmentResource.resolvedPath(forName:in:allowsREIbl:)(a4, a5, a6, 1);
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    v24 = swift_allocObject();
    v24[2] = v22;
    v24[3] = v23;
    v24[4] = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
    v24[5] = v19;
    v24[6] = a4;
    v24[7] = a5;
    v25 = v31;
    v24[8] = v30;
    v24[9] = v25;
    v40 = partial apply for doLoadEnvironmentAsync #1 () in closure #2 in static EnvironmentResource.loadAsyncPrivate(named:in:);
    v41 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v39 = &block_descriptor_104_0;
    v26 = _Block_copy(&aBlock);

    v27 = v25;
    static DispatchQoS.unspecified.getter();
    v35 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v18, v15, v26);
    _Block_release(v26);
    (*(v34 + 8))(v15, v13);
    (*(v32 + 8))(v18, v33);
  }

  else
  {

    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    v28 = swift_allocError();
    *v29 = a4;
    *(v29 + 8) = a5;
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0;
    aBlock = v28;
    LOBYTE(v37) = 1;

    a1(&aBlock);
  }
}

void doLoadEnvironmentAsync #1 () in closure #2 in static EnvironmentResource.loadAsyncPrivate(named:in:)(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v11 + 120, v29);
  v13 = v30;
  v12 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  (*(v12 + 32))(v13, v12);
  v14 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __RenderService?(v14 + 40, &v24);
  if (v25)
  {
    outlined init with take of ForceEffectBase(&v24, v26);
    v16 = v27;
    v15 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v15 + 24))(v16, v15);
    String.utf8CString.getter();
    v17 = REAssetManagerImageBasedLightMemoryAssetCreateFromReiblFileAsync();

    __swift_destroy_boxed_opaque_existential_1(v26);
    __swift_destroy_boxed_opaque_existential_1(v29);
    if (v17)
    {
      swift_beginAccess();
      swift_unownedRetainStrong();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = a3;
      v18[4] = a4;
      v18[5] = a8;

      v19 = a8;
      __Engine.asyncOnEngineQueue(_:)(partial apply for closure #1 in doLoadEnvironmentAsync #1 () in closure #2 in static EnvironmentResource.loadAsyncPrivate(named:in:), v18);
    }

    else
    {
      lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
      v20 = swift_allocError();
      *v21 = a5;
      *(v21 + 8) = a6;
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      *(v21 + 32) = 2;

      a3(v20, 1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in doLoadEnvironmentAsync #1 () in closure #2 in static EnvironmentResource.loadAsyncPrivate(named:in:)(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  RERetain();
  RERelease();
  REAssetHandleLoadNow();
  if (REAssetHandleLoadFailed())
  {
    v16 = REAssetCopyDescription();
    v17 = String.init(_:)(v16);
    v38 = v12;
    v35 = a4;
    FailedMessage = REAssetHandleCopyLoadFailedMessage();
    v34 = a2;
    v19 = FailedMessage;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v9;
    v37 = v13;
    v21 = v20;
    v22 = v8;
    v24 = v23;

    lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
    v25 = swift_allocError();
    *v26 = v17;
    *(v26 + 16) = v21;
    *(v26 + 24) = v24;
    *(v26 + 32) = 1;
    swift_willThrow();
    RERelease();
    v27 = swift_allocObject();
    v27[2] = v34;
    v27[3] = a3;
    v27[4] = v25;
    aBlock[4] = partial apply for closure #1 in closure #1 in doLoadEnvironmentAsync #1 () in closure #2 in static EnvironmentResource.loadAsyncPrivate(named:in:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_113;
    v28 = _Block_copy(aBlock);

    v29 = v25;
    static DispatchQoS.unspecified.getter();
    v39 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v15, v11, v28);
    _Block_release(v28);

    (*(v36 + 8))(v11, v22);
    (*(v37 + 8))(v15, v38);
  }

  else
  {
    SkyboxTexture = REIBLAssetGetSkyboxTexture();
    type metadata accessor for EnvironmentResource();
    v32 = swift_allocObject();
    *(v32 + 24) = 0;
    *(v32 + 16) = a1;
    swift_beginAccess();
    *(v32 + 24) = SkyboxTexture;
    RERetain();
    REAssetSetSwiftObject();
    if (SkyboxTexture)
    {
      RERetain();
      REAssetSetSwiftObject();
    }

    a2(v32, 0);

    return RERelease();
  }
}

void closure #2 in doLoadEnvironmentAsync #1 () in closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:)(void (*a1)(void *, uint64_t), int a2, id a3)
{
  v4 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for CFErrorRef(0);
  swift_dynamicCast();
  Code = CFErrorGetCode(err);
  if (Code == 300 || Code == 200)
  {
    type metadata accessor for Entity.LoadError(0);
    lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError, protocol conformance descriptor for Entity.LoadError);
    v6 = swift_allocError();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (Code != 100)
    {
      lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
      v6 = swift_allocError();
      *v7 = err;
      goto LABEL_8;
    }

    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v6 = swift_allocError();
    CancellationError.init()();
  }

LABEL_8:
  a1(v6, 1);
}

void *static EnvironmentResource.defaultAR()()
{
  if (one-time initialization token for coreRE != -1)
  {
    swift_once();
  }

  v0 = specialized static EnvironmentResource.loadPrivate(named:in:allowsREIbl:)(0xD000000000000016, 0x80000001C18E96C0, static NSBundle.coreRE, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v2 = type metadata accessor for EnvironmentResource();
  *(inited + 32) = v0;
  *(inited + 56) = v2;
  *(inited + 64) = &protocol witness table for EnvironmentResource;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  return v0;
}

void *static EnvironmentResource.defaultObject()()
{
  v0 = type metadata accessor for Logger();
  MEMORY[0x1EEE9AC00](v0);
  if (one-time initialization token for coreRE != -1)
  {
    swift_once();
  }

  v1 = specialized static EnvironmentResource.loadPrivate(named:in:allowsREIbl:)(0xD00000000000001ALL, 0x80000001C18E9740, static NSBundle.coreRE, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v3 = type metadata accessor for EnvironmentResource();
  *(inited + 32) = v1;
  *(inited + 56) = v3;
  *(inited + 64) = &protocol witness table for EnvironmentResource;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  return v1;
}

uint64_t static EnvironmentResource.defaultObjectFillOnly()()
{
  v1[5] = v0;
  v2 = type metadata accessor for Logger();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x1EEE6DFA0](static EnvironmentResource.defaultObjectFillOnly(), v4, v3);
}

{
  if (one-time initialization token for coreRE != -1)
  {
    swift_once();
  }

  v1 = static EnvironmentResource.loadAsyncPrivate(named:in:)(0xD000000000000023, 0x80000001C18E9790, static NSBundle.coreRE);
  *(v0 + 96) = v1;
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = static EnvironmentResource.defaultObjectFillOnly();

  return _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v1);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 120);

  return v1(v2);
}

{
  v1 = v0[14];

  Logger.init(subsystem:category:)();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1C1358000, v3, v4, "Failed to create default environment: %@.", v6, 0xCu);
    outlined destroy of BodyTrackingComponent?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1C6902A30](v7, -1, -1);
    MEMORY[0x1C6902A30](v6, -1, -1);
  }

  v10 = v0[14];
  v12 = v0[7];
  v11 = v0[8];
  v13 = v0[6];

  (*(v12 + 8))(v11, v13);
  _StringGuts.grow(_:)(38);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1C68F3410](0xD000000000000024, 0x80000001C18E9760);
  v0[4] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t static EnvironmentResource.defaultObjectFillOnly()(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = static EnvironmentResource.defaultObjectFillOnly();
  }

  else
  {

    v4[15] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = static EnvironmentResource.defaultObjectFillOnly();
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(uint64_t a1)
{
  v1[5] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD19EnvironmentResourceCGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD19EnvironmentResourceCGGMR);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF19EnvironmentResourceCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF19EnvironmentResourceCG_GMR);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v5;
  v1[15] = v4;

  return MEMORY[0x1EEE6DFA0](_s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY0_, v5, v4);
}

uint64_t _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY0_()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v0[2] = v0[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMd, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMR);
  v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<EnvironmentResource> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMd, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMR, protocol conformance descriptor for LoadRequest<A>);
  MEMORY[0x1C68F2ED0](v4, v5);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[16] = static MainActor.shared.getter();
  v6 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type AsyncThrowingPublisher<LoadRequest<EnvironmentResource>>.Iterator and conformance AsyncThrowingPublisher<A>.Iterator, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF19EnvironmentResourceCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF19EnvironmentResourceCG_GMR, MEMORY[0x1E695BFC8]);
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TQ1_;
  v8 = v0[9];

  return MEMORY[0x1EEE6D8C8](v0 + 3, v8, v6);
}

uint64_t _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TQ1_()
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

    v7 = _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY2_;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY2_()
{

  v0[19] = v0[3];
  v1 = v0[14];
  v2 = v0[15];

  return MEMORY[0x1EEE6DFA0](_s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY3_, v1, v2);
}

uint64_t _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY3_()
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
    lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t static EnvironmentResource.defaultObjectHightlightOnly()()
{
  v1[5] = v0;
  v2 = type metadata accessor for Logger();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x1EEE6DFA0](static EnvironmentResource.defaultObjectHightlightOnly(), v4, v3);
}

{
  if (one-time initialization token for coreRE != -1)
  {
    swift_once();
  }

  v1 = static EnvironmentResource.loadAsyncPrivate(named:in:)(0xD000000000000016, 0x80000001C18E97C0, static NSBundle.coreRE);
  *(v0 + 96) = v1;
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = static EnvironmentResource.defaultObjectHightlightOnly();

  return _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v1);
}

{
  v1 = v0[14];

  Logger.init(subsystem:category:)();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1C1358000, v3, v4, "Failed to create default environment: %@.", v6, 0xCu);
    outlined destroy of BodyTrackingComponent?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1C6902A30](v7, -1, -1);
    MEMORY[0x1C6902A30](v6, -1, -1);
  }

  v10 = v0[14];
  v12 = v0[7];
  v11 = v0[8];
  v13 = v0[6];

  (*(v12 + 8))(v11, v13);
  _StringGuts.grow(_:)(38);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1C68F3410](0xD000000000000024, 0x80000001C18E9760);
  v0[4] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t static EnvironmentResource.defaultObjectHightlightOnly()(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = static EnvironmentResource.defaultObjectHightlightOnly();
  }

  else
  {

    v4[15] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = static EnvironmentResource.defaultObjectHightlightOnly();
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t static EnvironmentResource.generate(fromEquirectangular:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();

  v6 = RETextureImportOperationCreateWithCGImage();
  RETextureImportOperationSetSemantic();
  RETextureImportOperationSetMipmapMode();
  if (a3)
  {
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  v32 = 0;
  if (!RETextureImportOperationCreateAssetData())
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x1C68F3410](0xD00000000000002FLL, 0x80000001C18DF9F0);
    v15 = MEMORY[0x1C68F4250](v6);
    MEMORY[0x1C68F3410](v15);

    MEMORY[0x1C68F3410](0xD00000000000001ALL, 0x80000001C18DFA20);
    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v21 = 0;
    *(v21 + 8) = 0xE000000000000000;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 6;
    swift_willThrow();
    goto LABEL_13;
  }

  v31 = 0;
  swift_beginAccess();
  result = outlined init with copy of __RenderService?(v5 + 40, &v25);
  if (v26)
  {
    outlined init with take of ForceEffectBase(&v25, &v27);
    v8 = v29;
    v9 = v30;
    __swift_project_boxed_opaque_existential_1(&v27, v29);
    (*(v9 + 24))(v8, v9);
    v10 = RECreateCubeTextureDataFromLatLong();
    __swift_destroy_boxed_opaque_existential_1(&v27);
    if (v10)
    {
      swift_beginAccess();
      outlined init with copy of __REAssetService(v5 + 120, &v27);
      v11 = v29;
      v12 = v30;
      __swift_project_boxed_opaque_existential_1(&v27, v29);
      (*(v12 + 32))(v11, v12);
      TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
      __swift_destroy_boxed_opaque_existential_1(&v27);
      RERelease();
      RERelease();
      RERelease();

      v14 = specialized static EnvironmentResource.generateIBLAssetInternal(cubeMap:compilationOptions:compressOptions:)(TextureAssetFromData, 0, 0);
      if (!v3)
      {
        v5 = v14();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C1887600;
        v24 = type metadata accessor for EnvironmentResource();
        *(inited + 32) = v5;
        *(inited + 56) = v24;
        *(inited + 64) = &protocol witness table for EnvironmentResource;

        specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);

        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_1((inited + 32));
      }

      return v5;
    }

    v16 = v31;
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0xD000000000000022, 0x80000001C18DFA40);
    v17 = MEMORY[0x1C68F4250](v6);
    MEMORY[0x1C68F3410](v17);

    MEMORY[0x1C68F3410](0xD00000000000001ALL, 0x80000001C18DFA20);
    v18 = v28;
    if (v16)
    {
      v19 = v16;

      v18 = 0;
      v20 = 5;
    }

    else
    {
      v16 = v27;
      v20 = 6;
    }

    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v22 = v16;
    *(v22 + 8) = v18;
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    *(v22 + 32) = v20;
    swift_willThrow();
    RERelease();
LABEL_13:
    RERelease();

    return v5;
  }

  __break(1u);
  return result;
}

{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](static EnvironmentResource.generate(fromEquirectangular:withName:), v6, v5);
}

uint64_t static EnvironmentResource.generate(fromEquirectangular:withName:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;
  v5[5] = v1;

  v6 = v4;
  v7 = static EnvironmentResource.generateAsyncInternal(createCubeFunc:compilationOptions:compressOptions:)(partial apply for closure #1 in static EnvironmentResource.generateAsync(fromLatLong:withName:), v5, 0, 0);
  v0[9] = v7;

  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = static ModelEntity.classLoad(contentsOf:withName:options:asyncOptions:);

  return _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v7);
}

uint64_t static EnvironmentResource.generateAsync(fromLatLong:withName:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;

  v8 = a1;
  v9 = static EnvironmentResource.generateAsyncInternal(createCubeFunc:compilationOptions:compressOptions:)(closure #1 in static EnvironmentResource.generateAsync(fromLatLong:withName:)partial apply, v7, 0, 0);

  return v9;
}

uint64_t closure #1 in static EnvironmentResource.compressWithEngineQueueCompletion(coreIBLAsset:compressOptions:)(uint64_t a1)
{
  SkyboxTexture = REIBLAssetGetSkyboxTexture();
  type metadata accessor for EnvironmentResource();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = a1;
  swift_beginAccess();
  *(v3 + 24) = SkyboxTexture;
  RERetain();
  REAssetSetSwiftObject();
  if (SkyboxTexture)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  RERelease();
  return v3;
}

uint64_t specialized closure #2 in static EnvironmentResource.compressWithEngineQueueCompletion(coreIBLAsset:compressOptions:)(void (*a1)(uint64_t), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t (*a7)(void))
{
  if (!a1 || (v15 = , a1(v15), result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1, a2), !v7))
  {
    if (!a3 || (v17 = , a3(v17), result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a3, a4), !v7))
    {
      if (!a5)
      {
        return a7();
      }

      a5(v18);
      result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a5, a6);
      if (!v7)
      {
        return a7();
      }
    }
  }

  return result;
}

uint64_t closure #1 in static EnvironmentResource.generateAsync(fromLatLong:withName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();

  v6 = RETextureImportOperationCreateWithCGImage();
  RETextureImportOperationSetSemantic();
  RETextureImportOperationSetMipmapMode();
  if (a4)
  {
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  v28 = 0;
  if (!RETextureImportOperationCreateAssetData())
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x1C68F3410](0xD00000000000002FLL, 0x80000001C18DF9F0);
    v14 = MEMORY[0x1C68F4250](v6);
    MEMORY[0x1C68F3410](v14);

    MEMORY[0x1C68F3410](0xD00000000000001ALL, 0x80000001C18DFA20);
    TextureAssetFromData = 0xE000000000000000;
    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 0xE000000000000000;
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = 6;
    swift_willThrow();
    goto LABEL_12;
  }

  v27 = 0;
  swift_beginAccess();
  result = outlined init with copy of __RenderService?(v5 + 40, &v21);
  if (v22)
  {
    outlined init with take of ForceEffectBase(&v21, &v23);
    v8 = v25;
    v9 = v26;
    __swift_project_boxed_opaque_existential_1(&v23, v25);
    (*(v9 + 24))(v8, v9);
    v10 = RECreateCubeTextureDataFromLatLong();
    __swift_destroy_boxed_opaque_existential_1(&v23);
    if (v10)
    {
      swift_beginAccess();
      outlined init with copy of __REAssetService(v5 + 120, &v23);
      v11 = v25;
      v12 = v26;
      __swift_project_boxed_opaque_existential_1(&v23, v25);
      (*(v12 + 32))(v11, v12);
      TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
      __swift_destroy_boxed_opaque_existential_1(&v23);
      RERelease();
      RERelease();
      RERelease();

      return TextureAssetFromData;
    }

    v15 = v27;
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0xD000000000000022, 0x80000001C18DFA40);
    v16 = MEMORY[0x1C68F4250](v6);
    MEMORY[0x1C68F3410](v16);

    MEMORY[0x1C68F3410](0xD00000000000001ALL, 0x80000001C18DFA20);
    TextureAssetFromData = v24;
    if (v15)
    {
      v17 = v15;

      TextureAssetFromData = 0;
      v18 = 5;
    }

    else
    {
      v15 = v23;
      v18 = 6;
    }

    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v20 = v15;
    *(v20 + 8) = TextureAssetFromData;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = v18;
    swift_willThrow();
    RERelease();
LABEL_12:
    RERelease();

    return TextureAssetFromData;
  }

  __break(1u);
  return result;
}

uint64_t static EnvironmentResource.generateAsyncInternal(createCubeFunc:compilationOptions:compressOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v30 = a3;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = specialized static __ServiceLocator.shared.getter();
  v11 = *(*(v10 + 168) + 16);
  swift_beginAccess();
  v12 = *(v10 + 24);
  swift_unownedRetainStrong();
  v13 = *(v12 + 32);

  v14 = v11;
  v15 = v13;

  *v9 = v15;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v15)
  {
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = a2;
    v19 = v29;
    v20 = v30;
    v18[4] = v28;
    v18[5] = v20;
    v18[6] = v19;
    v18[7] = v10;
    v18[8] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMd, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMR);
    v21 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit19EnvironmentResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit19EnvironmentResourceCs5Error_pGSgGMR);
    v22 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v22 + 16) = v23;
    *(v22 + 24) = 0;
    *(v22 + 32) = -1;
    *(v21 + 16) = v22;
    v24 = swift_allocObject();
    v24[2] = partial apply for closure #1 in static EnvironmentResource.generateAsyncInternal(createCubeFunc:compilationOptions:compressOptions:);
    v24[3] = v18;
    v24[4] = v22;
    v24[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit19EnvironmentResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit19EnvironmentResourceCs5Error_pGMR);
    swift_allocObject();

    v25 = v14;

    *(v21 + 24) = Future.init(_:)();
    v27 = specialized LoadRequest<A>.thenWaitForResourceSharing()(v26);

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static EnvironmentResource.generateAsyncInternal(createCubeFunc:compilationOptions:compressOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a5;
  v28 = a6;
  v32 = a9;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v29 = *(v18 - 8);
  v30 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v23 = v28;
  v22[4] = v27;
  v22[5] = v23;
  v22[6] = a7;
  v22[7] = a8;
  v22[8] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ();
  v22[9] = v21;
  aBlock[4] = partial apply for doGenerateEnvironmentAsync #1 @Sendable () in closure #1 in static EnvironmentResource.generateAsyncInternal(createCubeFunc:compilationOptions:compressOptions:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_28;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v20, v17, v24);
  _Block_release(v24);
  (*(v31 + 8))(v17, v15);
  (*(v29 + 8))(v20, v30);
}

uint64_t doGenerateEnvironmentAsync #1 @Sendable () in closure #1 in static EnvironmentResource.generateAsyncInternal(createCubeFunc:compilationOptions:compressOptions:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, objc_class *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1();
  v13 = specialized static EnvironmentResource.generateIBLAssetInternal(cubeMap:compilationOptions:compressOptions:)(v12, a4, a5);
  v15 = v14;
  swift_beginAccess();
  swift_unownedRetainStrong();
  v16 = swift_allocObject();
  v16[2] = v13;
  v16[3] = v15;
  v16[4] = a7;
  v16[5] = a8;

  __Engine.asyncOnEngineQueue(_:)(partial apply for closure #1 in doGenerateAsync #1 @Sendable () in closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:), v16);
}

uint64_t static EnvironmentResource.__fromAssets(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for EnvironmentResource();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  if (v2)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  if (v3)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  return v4;
}

unint64_t *static EnvironmentResource.__exportCompiledResource(contentsOf:to:)(uint64_t a1, uint64_t a2)
{
  v3 = xmmword_1C18B7B50;
  v4 = 0;
  v6 = 0;
  v5 = 0;
  return specialized static EnvironmentResource.exportCompiledResource(contentsOf:to:for:options:)(a1, a2, &v3, 0, xmmword_1C18B7B50);
}

unint64_t *static EnvironmentResource.exportCompiledResource(contentsOf:to:for:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *(a3 + 2);
  v4 = *(a3 + 6);
  v5 = *(a3 + 28);
  v7 = *a3;
  v8 = v3;
  v10 = v5;
  v9 = v4;
  return specialized static EnvironmentResource.exportCompiledResource(contentsOf:to:for:options:)(a1, a2, &v7, 0, v7);
}

unint64_t *static EnvironmentResource.exportCompiledResource(contentsOf:to:for:compilationOptions:)(uint64_t a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v4 = *(a3 + 2);
  v5 = *(a3 + 6);
  v6 = *(a3 + 28);
  v8 = *a3;
  v9 = v4;
  v11 = v6;
  v10 = v5;
  return specialized static EnvironmentResource.exportCompiledResource(contentsOf:to:for:options:)(a1, a2, &v8, a4, v8);
}

uint64_t EnvironmentResource.init(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD19EnvironmentResourceCGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD19EnvironmentResourceCGGMR);
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF19EnvironmentResourceCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF19EnvironmentResourceCG_GMR);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MainActor();
  v4[22] = static MainActor.shared.getter();

  return MEMORY[0x1EEE6DFA0](EnvironmentResource.init(named:in:), 0, 0);
}

uint64_t EnvironmentResource.init(named:in:)(__n128 a1)
{
  *(v1 + 184) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](EnvironmentResource.init(named:in:), v3, v2);
}

uint64_t EnvironmentResource.init(named:in:)()
{
  v1 = v0[13];
  v3 = v0[11];
  v2 = v0[12];

  v0[24] = static EnvironmentResource.loadAsyncPrivate(named:in:)(v3, v2, v1);

  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[25] = v5;
  v0[26] = v4;

  return MEMORY[0x1EEE6DFA0](EnvironmentResource.init(named:in:), v5, v4);
}

{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v0[8] = v0[24];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMd, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMR);
  v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<EnvironmentResource> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMd, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMR, protocol conformance descriptor for LoadRequest<A>);
  MEMORY[0x1C68F2ED0](v4, v5);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[27] = static MainActor.shared.getter();
  v6 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type AsyncThrowingPublisher<LoadRequest<EnvironmentResource>>.Iterator and conformance AsyncThrowingPublisher<A>.Iterator, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF19EnvironmentResourceCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF19EnvironmentResourceCG_GMR, MEMORY[0x1E695BFC8]);
  v7 = swift_task_alloc();
  v0[28] = v7;
  *v7 = v0;
  v7[1] = EnvironmentResource.init(named:in:);
  v8 = v0[18];

  return MEMORY[0x1EEE6D8C8](v0 + 9, v8, v6);
}

{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 216);
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

    v7 = EnvironmentResource.init(named:in:);
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

    v7 = EnvironmentResource.init(named:in:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

{

  v0[30] = v0[9];
  v1 = v0[25];
  v2 = v0[26];

  return MEMORY[0x1EEE6DFA0](EnvironmentResource.init(named:in:), v1, v2);
}

{
  v1 = v0[30];

  if (v1)
  {
    v2 = v0[30];
    v3 = *(v2 + 16);
    swift_beginAccess();
    v4 = *(v2 + 24);
    type metadata accessor for EnvironmentResource();
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 16) = v3;
    swift_beginAccess();
    *(v5 + 24) = v4;
    if (v3)
    {
      RERetain();
      REAssetSetSwiftObject();
    }

    if (v4)
    {
      RERetain();
      REAssetSetSwiftObject();
    }

    v7 = v0[19];
    v6 = v0[20];
    v8 = v0[18];
    v9 = v0[13];

    (*(v7 + 8))(v6, v8);

    v10 = v0[1];

    return v10(v5);
  }

  else
  {
    v12 = v0[13];
    (*(v0[19] + 8))(v0[20], v0[18]);
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

{
  v0[10] = v0[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();

  v1 = v0[25];
  v2 = v0[26];

  return MEMORY[0x1EEE6DFA0](EnvironmentResource.init(named:in:), v1, v2);
}

{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[13];

  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t EnvironmentResource.skybox.getter()
{
  if (!*(v0 + 16) || (SkyboxTexture = REIBLAssetGetSkyboxTexture()) == 0)
  {
    v4 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v4 + 120, v6);
    v3 = closure #1 in static TextureResource.builtinTexture(named:)(v6, 0xD000000000000014, 0x80000001C18E97E0);
    __swift_destroy_boxed_opaque_existential_1(v6);
    return v3;
  }

  v2 = SkyboxTexture;
  if (!REAssetGetSwiftObject())
  {
    goto LABEL_6;
  }

  type metadata accessor for TextureResource();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_6:
    type metadata accessor for TextureResource();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
  }

  return v3;
}

uint64_t EnvironmentResource.addToLoadRequest(_:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    REAssetLoadRequestAddAsset();
  }

  result = swift_beginAccess();
  if (*(v1 + 24))
  {
    return REAssetLoadRequestAddAsset();
  }

  return result;
}

uint64_t EnvironmentResource.init(cube:options:)(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *a2;
  specialized static EnvironmentResource.validate(cubeTexture:)(a1);
  if (v2)
  {
  }

  else
  {
    v16.value = 0;
    v16.is_nil = 1;
    v5 = EnvironmentResource.CreateOptions.toCoreImageBasedLightCompilationOptions(skyboxCubeDimension:)(v16);
    v6 = TextureResource.Compression.toCoreASTCOptions()();
    v7 = *(a1 + 16);
    RERetain();
    v9 = specialized static EnvironmentResource.generateIBLAssetInternal(cubeMap:compilationOptions:compressOptions:)(v7, v5, v6);

    v11 = (v9)(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v13 = type metadata accessor for EnvironmentResource();
    *(inited + 32) = v11;
    *(inited + 56) = v13;
    *(inited + 64) = &protocol witness table for EnvironmentResource;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);

    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    v14 = *(v11 + 16);
    swift_beginAccess();
    v15 = *(v11 + 24);
    v4 = swift_allocObject();
    *(v4 + 24) = 0;
    *(v4 + 16) = v14;
    swift_beginAccess();
    *(v4 + 24) = v15;
    if (v14)
    {
      RERetain();
      REAssetSetSwiftObject();
    }

    if (v15)
    {
      RERetain();
      REAssetSetSwiftObject();
    }
  }

  return v4;
}

uint64_t EnvironmentResource.init(equirectangular:withName:)(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();

  v7 = RETextureImportOperationCreateWithCGImage();
  RETextureImportOperationSetSemantic();
  RETextureImportOperationSetMipmapMode();
  if (a3)
  {
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  if (!RETextureImportOperationCreateAssetData())
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x1C68F3410](0xD00000000000002FLL, 0x80000001C18DF9F0);
    v16 = MEMORY[0x1C68F4250](v7);
    MEMORY[0x1C68F3410](v16);

    MEMORY[0x1C68F3410](0xD00000000000001ALL, 0x80000001C18DFA20);
    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v22 = 0;
    *(v22 + 8) = 0xE000000000000000;
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    *(v22 + 32) = 6;
    swift_willThrow();
    RERelease();

    goto LABEL_14;
  }

  v29 = a1;
  v36 = 0;
  swift_beginAccess();
  result = outlined init with copy of __RenderService?(v6 + 40, &v30);
  if (v31)
  {
    outlined init with take of ForceEffectBase(&v30, &v32);
    v9 = v34;
    v10 = v35;
    __swift_project_boxed_opaque_existential_1(&v32, v34);
    (*(v10 + 24))(v9, v10);
    v11 = RECreateCubeTextureDataFromLatLong();
    __swift_destroy_boxed_opaque_existential_1(&v32);
    if (v11)
    {
      swift_beginAccess();
      outlined init with copy of __REAssetService(v6 + 120, &v32);
      v13 = v34;
      v12 = v35;
      __swift_project_boxed_opaque_existential_1(&v32, v34);
      (*(v12 + 32))(v13, v12);
      TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
      __swift_destroy_boxed_opaque_existential_1(&v32);
      RERelease();
      RERelease();
      RERelease();

      v15 = specialized static EnvironmentResource.generateIBLAssetInternal(cubeMap:compilationOptions:compressOptions:)(TextureAssetFromData, 0, 0);
      if (v3)
      {
      }

      else
      {
        v24 = v15();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C1887600;
        v26 = type metadata accessor for EnvironmentResource();
        *(inited + 32) = v24;
        *(inited + 56) = v26;
        *(inited + 64) = &protocol witness table for EnvironmentResource;

        specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);

        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_1((inited + 32));
        v27 = *(v24 + 16);
        swift_beginAccess();
        v28 = *(v24 + 24);
        a3 = swift_allocObject();
        *(a3 + 24) = 0;
        *(a3 + 16) = v27;
        swift_beginAccess();
        *(a3 + 24) = v28;
        if (v27)
        {
          RERetain();
          REAssetSetSwiftObject();
        }

        if (v28)
        {
          RERetain();
          REAssetSetSwiftObject();
        }
      }

      return a3;
    }

    v17 = v36;
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0xD000000000000022, 0x80000001C18DFA40);
    v18 = MEMORY[0x1C68F4250](v7);
    MEMORY[0x1C68F3410](v18);

    MEMORY[0x1C68F3410](0xD00000000000001ALL, 0x80000001C18DFA20);
    v19 = v33;
    if (v17)
    {
      v20 = v17;

      v19 = 0;
      v21 = 5;
    }

    else
    {
      v17 = v32;
      v21 = 6;
    }

    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v23 = v17;
    *(v23 + 8) = v19;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = v21;
    swift_willThrow();
    RERelease();
    RERelease();

LABEL_14:

    return a3;
  }

  __break(1u);
  return result;
}

uint64_t EnvironmentResource.init(equirectangular:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v6;
  v4[14] = v5;

  return MEMORY[0x1EEE6DFA0](EnvironmentResource.init(equirectangular:withName:), v6, v5);
}

uint64_t EnvironmentResource.init(equirectangular:withName:)()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v3;
  v5[5] = v2;
  v6 = v4;
  v7 = static EnvironmentResource.generateAsyncInternal(createCubeFunc:compilationOptions:compressOptions:)(closure #1 in static EnvironmentResource.generateAsync(fromLatLong:withName:)partial apply, v5, 0, 0);
  v0[15] = v7;

  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = EnvironmentResource.init(equirectangular:withName:);

  return _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v7);
}

{
  v1 = *(v0 + 136);

  v2 = *(v1 + 16);
  swift_beginAccess();
  v3 = *(v1 + 24);
  type metadata accessor for EnvironmentResource();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  if (v2)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  if (v3)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t EnvironmentResource.init(equirectangular:withName:)(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v4 = v3[13];
    v5 = v3[14];
    v6 = EnvironmentResource.init(equirectangular:withName:);
  }

  else
  {

    v4 = v3[13];
    v5 = v3[14];
    v6 = EnvironmentResource.init(equirectangular:withName:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t EnvironmentResource.init(cube:options:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 144) = *a2;
  *(v3 + 146) = *(a2 + 2);
  *(v3 + 80) = *(a2 + 8);
  *(v3 + 147) = *(a2 + 16);
  type metadata accessor for MainActor();
  *(v3 + 88) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 96) = v5;
  *(v3 + 104) = v4;

  return MEMORY[0x1EEE6DFA0](EnvironmentResource.init(cube:options:), v5, v4);
}

uint64_t EnvironmentResource.init(cube:options:)()
{
  specialized static EnvironmentResource.validate(cubeTexture:)(v0[8]);
  v1 = v0[8];
  v8.value = 0;
  v8.is_nil = 1;
  v2 = EnvironmentResource.CreateOptions.toCoreImageBasedLightCompilationOptions(skyboxCubeDimension:)(v8);
  v3 = TextureResource.Compression.toCoreASTCOptions()();

  v4 = static EnvironmentResource.generateAsyncInternal(createCubeFunc:compilationOptions:compressOptions:)(partial apply for closure #1 in EnvironmentResource.init(cube:options:), v1, v2, v3);
  v0[14] = v4;

  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = EnvironmentResource.init(cube:options:);

  return _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v4);
}

{
  v1 = *(v0 + 128);

  v2 = *(v1 + 16);
  swift_beginAccess();
  v3 = *(v1 + 24);
  type metadata accessor for EnvironmentResource();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  if (v2)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  if (v3)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t EnvironmentResource.init(cube:options:)(uint64_t a1)
{
  v3 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v4 = v3[12];
    v5 = v3[13];
    v6 = EnvironmentResource.init(cube:options:);
  }

  else
  {

    v4 = v3[12];
    v5 = v3[13];
    v6 = EnvironmentResource.init(cube:options:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

Swift::Int EnvironmentResource.CreateOptions.SamplingQuality.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t EnvironmentResource.CreateOptions.specularCubeDimension.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

void EnvironmentResource.CreateOptions.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 1);
  v4 = *(v0 + 16);
  if ((v1 >> 8) == 4)
  {
    v5 = 0;
  }

  else if ((v1 >> 8) == 5)
  {
    v5 = 1;
  }

  else
  {
    MEMORY[0x1C68F4C10](2);
    MEMORY[0x1C68F4C10](v1);
    v5 = v1 >> 8;
  }

  MEMORY[0x1C68F4C10](v5);
  MEMORY[0x1C68F4C10](v2);
  if (v4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v3);
  }
}

Swift::Int EnvironmentResource.CreateOptions.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 1);
  v4 = *(v0 + 16);
  Hasher.init(_seed:)();
  if ((v1 >> 8) == 4)
  {
    v5 = 0;
  }

  else if ((v1 >> 8) == 5)
  {
    v5 = 1;
  }

  else
  {
    MEMORY[0x1C68F4C10](2);
    MEMORY[0x1C68F4C10](v1);
    v5 = v1 >> 8;
  }

  MEMORY[0x1C68F4C10](v5);
  MEMORY[0x1C68F4C10](v2);
  if (v4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v3);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EnvironmentResource.CreateOptions()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 1);
  v4 = *(v0 + 16);
  Hasher.init(_seed:)();
  if ((v1 >> 8) == 4)
  {
    v5 = 0;
  }

  else if ((v1 >> 8) == 5)
  {
    v5 = 1;
  }

  else
  {
    MEMORY[0x1C68F4C10](2);
    MEMORY[0x1C68F4C10](v1);
    v5 = v1 >> 8;
  }

  MEMORY[0x1C68F4C10](v5);
  MEMORY[0x1C68F4C10](v2);
  if (v4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v3);
  }

  return Hasher._finalize()();
}

double __SkyboxMaterial.__parameterBlock.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;

  v6 = v5;

  return result;
}

void __SkyboxMaterial.__parameterBlock.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
}

void *specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSypG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB15VKXEfU_SS_ypTG5AHxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSypIsgnndzo_Tf1nc_n171_s10RealityKit19EnvironmentResourceC06importD8Internal33_55E864D8785BE4AB70755CF3CF8A6C5610contentsOf7optionsAC10Foundation3URLV_SDySSypGSgtKFZSbSS3key_yp5valuet_tXEfU0_Tf1nnc_nTm(v12, v7, v5, a3);
  result = MEMORY[0x1C6902A30](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSypG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB15VKXEfU_SS_ypTG5AHxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSypIsgnndzo_Tf1nc_n179_s10RealityKit15TextureResourceC0A10FoundationE13maybeCompress33_1038D445C766E7BDEA2B57AFBE26E92312textureAsset7optionsys13OpaquePointerV_SDySSypGztKFZSbSS3key_yp5valuet_tXEfU0_Tf1nnc_nTm(v12, v7, v5, a3);
  result = MEMORY[0x1C6902A30](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v24 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    outlined init with copy of Any(*(a3 + 56) + 32 * v14, v23);
    v21[0] = v16;
    v21[1] = v17;
    outlined init with copy of Any(v23, &v22);
    swift_bridgeObjectRetain_n();
    LOBYTE(v16) = specialized Sequence<>.starts<A>(with:)(0xD00000000000001BLL, 0x80000001C18E9920, v16, v17);
    outlined destroy of BodyTrackingComponent?(v21, &_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
    __swift_destroy_boxed_opaque_existential_1(v23);

    if ((v16 & 1) == 0)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_15:
        specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v24, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

{
  v24 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    outlined init with copy of Any(*(a3 + 56) + 32 * v14, v23);
    v21[0] = v16;
    v21[1] = v17;
    outlined init with copy of Any(v23, &v22);
    swift_bridgeObjectRetain_n();
    LOBYTE(v16) = specialized Sequence<>.starts<A>(with:)(0xD00000000000001BLL, 0x80000001C18E9920, v16, v17);
    outlined destroy of BodyTrackingComponent?(v21, &_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
    __swift_destroy_boxed_opaque_existential_1(v23);

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_15:
        specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v24, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSypG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB15VKXEfU_SS_ypTG5AHxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSypIsgnndzo_Tf1nc_n171_s10RealityKit19EnvironmentResourceC06importD8Internal33_55E864D8785BE4AB70755CF3CF8A6C56LL10contentsOf7optionsAC10Foundation3URLV_SDySSypGSgtKFZSbSS3key_yp5valuet_tXEfU0_Tf1nnc_nTm(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t specialized EnvironmentResource.__allocating_init(coreIBLAsset:coreSkyboxAsset:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentResource();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = a1;
  swift_beginAccess();
  *(v4 + 24) = a2;
  if (a1)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  if (a2)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  return v4;
}

uint64_t specialized static EnvironmentResource.CreateOptions.== infix(_:_:)(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 1);
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = v2 >> 8;
  if (v2 >> 8 == 4)
  {
    result = 0;
    if ((v6 & 0xFF00) != 0x400)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (v7 == 5)
  {
    result = 0;
    if ((v6 & 0xFF00) != 0x500)
    {
      return result;
    }

LABEL_13:
    if (((v3 ^ *(a2 + 2)) & 1) == 0)
    {
      if (v5)
      {
        if ((a2[8] & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v4 == *(a2 + 1))
        {
          v11 = *(a2 + 16);
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          return 0;
        }
      }

      return 1;
    }

    return result;
  }

  if ((v6 & 0xFE00) == 0x400)
  {
    return 0;
  }

  result = 0;
  v9 = (v6 ^ v2);
  if (v7 == v6 >> 8 && v9 == 0)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t specialized static EnvironmentResource.areEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  if (!v3)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v3 != v4)
  {
    return 0;
  }

LABEL_3:
  swift_beginAccess();
  v6 = *(a1 + 24);
  swift_beginAccess();
  v7 = *(a2 + 24);
  v8 = v7 == 0;
  if (v7)
  {
    v9 = v6 == v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if (v6)
  {
    return v10;
  }

  else
  {
    return v8;
  }
}

uint64_t specialized static EnvironmentResource.resolvedPath(forName:in:allowsREIbl:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = [objc_opt_self() mainBundle];
  }

  v13 = a3;
  v14 = MEMORY[0x1C68F3280](a1, a2);
  v15 = [v12 pathForResource:v14 ofType:0];

  if (a4)
  {
    if (v15)
    {
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v16;
    }

    v31 = MEMORY[0x1C68F3280](a1, a2);
    v32 = MEMORY[0x1C68F3280](0x6C62696572, 0xE500000000000000);
    v33 = [v12 pathForResource:v31 ofType:v32];

    if (!v33)
    {

      return 0;
    }

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_16:
    return v16;
  }

  v39 = v8;
  if (v15 || (v17 = MEMORY[0x1C68F3280](a1, a2), v18 = MEMORY[0x1C68F3280](0x786F62796B73, 0xE600000000000000), v15 = [v12 pathForResource:v17 ofType:v18], v17, v18, v15))
  {
    v19 = v9;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = v9;
    v16 = 0;
    v21 = 0;
  }

  v22 = MEMORY[0x1C68F3280](a1, a2);
  v23 = [v12 pathForResource:v22 ofType:0];

  if (!v23)
  {
    v24 = MEMORY[0x1C68F3280](a1, a2);
    v25 = MEMORY[0x1C68F3280](0x6C62696572, 0xE500000000000000);
    v23 = [v12 pathForResource:v24 ofType:v25];

    if (!v23)
    {
      if (v21)
      {
        goto LABEL_13;
      }

      v27 = 0;
      goto LABEL_25;
    }
  }

  v26 = v19;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = v39;
  if (v21)
  {
LABEL_13:

    goto LABEL_16;
  }

  if (!v29)
  {
LABEL_25:

    return v27;
  }

  Logger.init(subsystem:category:)();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1C1358000, v35, v36, "Using .reibl files is not supported publicly in RealityKit anymore. Please use EnvironmentResource.loadAllowREIbl to load .reibl files for internal useage.", v37, 2u);
    MEMORY[0x1C6902A30](v37, -1, -1);
  }

  (*(v26 + 8))(v11, v30);
  return v27;
}

uint64_t specialized static EnvironmentResource.loadCompiledResource(from:)()
{
  v54 = *MEMORY[0x1E69E9840];
  if (URL.pathExtension.getter() == 0x657974696C616572 && v1 == 0xEA0000000000766ELL)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      v11 = URL.pathExtension.getter();
      v16 = v15;
      lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
      swift_allocError();
      *v17 = v11;
      *(v17 + 8) = v16;
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *(v17 + 32) = 3;
      swift_willThrow();
      return v11;
    }
  }

  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, v49);
  memset(v43, 0, sizeof(v43));
  v42 = 0u;
  v41 = 0u;
  v39 = 0u;
  v40 = 0u;
  v44 = 1;
  v45 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  LOBYTE(v38) = 2;
  v4 = v50;
  v5 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  (*(v5 + 32))(v4, v5);
  ServiceLocatorForLegacyAPIWorkaround = _REAssetManagerGetServiceLocatorForLegacyAPIWorkaround();
  v37 = 0;
  v7 = v50;
  v8 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  (*(v8 + 32))(v7, v8);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = RERealityFileMountFileAtURL();

  if (!v12)
  {
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v37);
    if (!v0)
    {
      _StringGuts.grow(_:)(34);

      v22 = URL.path.getter();
      MEMORY[0x1C68F3410](v22);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      v11 = 0xD00000000000001FLL;
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v23 = 0xD00000000000001FLL;
      *(v23 + 8) = 0x80000001C18E1F00;
      *(v23 + 16) = 4;
      swift_willThrow();
    }

    goto LABEL_14;
  }

  static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v12, v49, ServiceLocatorForLegacyAPIWorkaround, &v38, &v52);
  if (v0)
  {
    v13 = v50;
    v14 = v51;
    v11 = __swift_project_boxed_opaque_existential_1(v49, v50);
    (*(v14 + 32))(v13, v14);
    RERealityFileUnmount();
LABEL_14:
    outlined destroy of __REAssetBundle.LoadOptions(&v38);
    __swift_destroy_boxed_opaque_existential_1(v49);
    return v11;
  }

  v18 = v50;
  v19 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  (*(v19 + 32))(v18, v19);
  RERealityFileUnmount();
  outlined destroy of __REAssetBundle.LoadOptions(&v38);
  __swift_destroy_boxed_opaque_existential_1(v49);
  v11 = v53;
  if (v53 >> 62)
  {
    v20 = __CocoaSet.count.getter();
    if (v20 < 2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20 < 2)
    {
LABEL_13:
      lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
      swift_allocError();
      *v21 = v20;
      *(v21 + 8) = 0;
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      *(v21 + 32) = 4;
      swift_willThrow();
      outlined destroy of __REAssetBundle(&v52);
      return v11;
    }
  }

  if ((v11 & 0xC000000000000001) == 0)
  {
    v25 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      if (v25 != 1)
      {
        v26 = *(v11 + 32);
        v27 = *(v11 + 40);

        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v26 = MEMORY[0x1C68F41F0](0, v11);
  v27 = MEMORY[0x1C68F41F0](1, v11);
LABEL_21:
  v28 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v28 + 120, &v38);
  v29 = v40;
  __swift_project_boxed_opaque_existential_1(&v38, v40);
  (*(*(&v29 + 1) + 32))(v29, *(&v29 + 1));
  v30 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of __RenderService?(v30 + 40, &v35);
  if (v36)
  {
    outlined init with take of ForceEffectBase(&v35, v49);
    v31 = v50;
    v32 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    (*(v32 + 24))(v31, v32);
    REAssetManagerPostLoadProcessImageBasedLightAsset();
    __swift_destroy_boxed_opaque_existential_1(v49);
    __swift_destroy_boxed_opaque_existential_1(&v38);
    v33 = *(v26 + 16);
    v34 = *(v27 + 16);
    type metadata accessor for EnvironmentResource();
    v11 = swift_allocObject();
    *(v11 + 24) = 0;
    *(v11 + 16) = v33;
    swift_beginAccess();
    *(v11 + 24) = v34;
    RERetain();
    REAssetSetSwiftObject();
    RERetain();
    REAssetSetSwiftObject();

    outlined destroy of __REAssetBundle(&v52);
    return v11;
  }

  __break(1u);
  return result;
}

void *specialized static EnvironmentResource.getCubeMapData(coreTexture:options:source:)(void *a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TextureType = RETextureAssetDataGetTextureType();
  if (TextureType != 2)
  {
    if (TextureType == 5)
    {
      v39 = v5;
      v9 = *MEMORY[0x1E6998DF8];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(a2 + 16))
      {
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
        v14 = v13;

        if (v14)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      v42 = 0u;
      v43 = 0u;
      outlined destroy of BodyTrackingComponent?(&v42, &_sypSgMd, &_sypSgMR);
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(a2 + 16))
      {
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v26);
        v28 = v27;

        if (v28)
        {
LABEL_14:
          outlined init with copy of Any(*(a2 + 56) + 32 * v12, &v42);
          outlined destroy of BodyTrackingComponent?(&v42, &_sypSgMd, &_sypSgMR);
          Logger.init(subsystem:category:)();
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            *v31 = 138412546;
            *(v31 + 4) = v9;
            *(v31 + 12) = 2112;
            v33 = v9;
            v34 = *MEMORY[0x1E6998E00];
            *(v31 + 14) = *MEMORY[0x1E6998E00];
            *v32 = v33;
            v32[1] = v34;
            v35 = v33;
            v36 = v34;
            _os_log_impl(&dword_1C1358000, v29, v30, "Options %@ and %@ only apply when creating a cube map from a 2D lat/long texture source. They are not applicable for cube map sources and will be ignored.", v31, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            swift_arrayDestroy();
            MEMORY[0x1C6902A30](v32, -1, -1);
            MEMORY[0x1C6902A30](v31, -1, -1);
          }

          (*(v39 + 8))(v7, v4);
          goto LABEL_19;
        }
      }

      else
      {
      }

      v42 = 0u;
      v43 = 0u;
      outlined destroy of BodyTrackingComponent?(&v42, &_sypSgMd, &_sypSgMR);
LABEL_19:
      RERetain();
      return a1;
    }

    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v24 = 0u;
    *(v24 + 16) = 0u;
    *(v24 + 32) = 7;
LABEL_22:
    swift_willThrow();
    return a1;
  }

  v15 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of __RenderService?(v15 + 40, &v40);
  if (v41)
  {
    outlined init with take of ForceEffectBase(&v40, &v42);
    v17 = *(&v43 + 1);
    v18 = v44;
    __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
    (*(v18 + 24))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1(&v42);
    *&v40 = 0;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    a1 = RECreateCubeTextureDataFromLatLong();

    if (a1)
    {
      return a1;
    }

    a1 = v40;
    *&v42 = 0;
    *(&v42 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0xD000000000000022, 0x80000001C18DFA40);
    type metadata accessor for URL();
    lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v20);

    MEMORY[0x1C68F3410](0xD00000000000001ALL, 0x80000001C18DFA20);
    v21 = *(&v42 + 1);
    if (a1)
    {
      v22 = a1;

      v21 = 0;
      v23 = 5;
    }

    else
    {
      a1 = v42;
      v23 = 6;
    }

    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v37 = a1;
    *(v37 + 8) = v21;
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    *(v37 + 32) = v23;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t (*specialized static EnvironmentResource.compressWithEngineQueueCompletion(coreIBLAsset:compressOptions:)(uint64_t a1, uint64_t a2))()
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = partial apply for closure #1 in static EnvironmentResource.compressWithEngineQueueCompletion(coreIBLAsset:compressOptions:);
  if (!a2)
  {
    return v6;
  }

  v7 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of __RenderService?(v7 + 40, &v27);
  if (v28)
  {
    outlined init with take of ForceEffectBase(&v27, v29);
    v9 = v30;
    v10 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    (*(v10 + 24))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v29);
    SkyboxTexture = REIBLAssetGetSkyboxTexture();
    if (SkyboxTexture)
    {
      v12 = SkyboxTexture;
      type metadata accessor for TextureResource();
      v13 = static TextureResource.compressTextureWithEngineQueueCompletion(coreTextureAsset:compressOptions:)(v12, a2);
      if (v2)
      {
        goto LABEL_10;
      }

      v15 = v13;
      v16 = v14;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    type metadata accessor for TextureResource();
    SpecularTexture = REIBLAssetGetSpecularTexture();
    v18 = static TextureResource.compressTextureWithEngineQueueCompletion(coreTextureAsset:compressOptions:)(SpecularTexture, a2);
    if (!v2)
    {
      v20 = v18;
      v21 = v19;
      DiffuseTexture = REIBLAssetGetDiffuseTexture();
      v23 = static TextureResource.compressTextureWithEngineQueueCompletion(coreTextureAsset:compressOptions:)(DiffuseTexture, a2);
      v25 = v24;
      v26 = swift_allocObject();
      v26[2] = v15;
      v26[3] = v16;
      v26[4] = v20;
      v26[5] = v21;
      v26[6] = v23;
      v26[7] = v25;
      v26[8] = partial apply for closure #1 in static EnvironmentResource.compressWithEngineQueueCompletion(coreIBLAsset:compressOptions:);
      v26[9] = v5;
      return partial apply for specialized closure #2 in static EnvironmentResource.compressWithEngineQueueCompletion(coreIBLAsset:compressOptions:);
    }

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v15, v16);
LABEL_10:

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t (*specialized static EnvironmentResource.generateIBLAssetInternal(cubeMap:compilationOptions:compressOptions:)(uint64_t a1, Class isa, uint64_t a3))()
{
  v4 = v3;
  v29 = *MEMORY[0x1E69E9840];
  v7 = specialized static __ServiceLocator.shared.getter();
  v28 = 0;
  swift_beginAccess();
  outlined init with copy of __REAssetService(v7 + 120, v25);
  v8 = v26;
  v9 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v10 = *(v9 + 32);

  v10(v8, v9);
  swift_beginAccess();
  outlined init with copy of __RenderService?(v7 + 40, &v20);
  if (!v21)
  {
    __break(1u);
  }

  outlined init with take of ForceEffectBase(&v20, v22);
  v11 = v23;
  v12 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v12 + 24))(v11, v12);
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v13 = REAssetManagerImageBasedLightCreateWithCubeMapNullableAsync();

  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  if (!v13)
  {
    v4 = v28;
    if (v28)
    {
      v15 = v28;
      v16 = 0;
      v17 = 5;
    }

    else
    {
      v16 = 0x80000001C18E98C0;
      v17 = 6;
      v4 = 0xD000000000000052;
    }

    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v18 = v4;
    *(v18 + 8) = v16;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = v17;
    swift_willThrow();
    goto LABEL_11;
  }

  v14 = specialized static EnvironmentResource.compressWithEngineQueueCompletion(coreIBLAsset:compressOptions:)(v13, a3);
  if (v3)
  {
LABEL_11:
    RERelease();

    return v4;
  }

  v4 = v14;
  RERelease();

  return v4;
}

unint64_t *specialized static EnvironmentResource.importResourceInternal(contentsOf:options:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v45 = *MEMORY[0x1E69E9840];
  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  RETextureImportOperationCreateWithURL();

  RETextureImportOperationSetSemantic();
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v37 = v8;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = &v37;
  specialized Dictionary._Variant.removeValue(forKey:)(v9, v11, &v43);

  if (v44)
  {
    outlined init with take of Any(&v43, &v40);
    outlined init with copy of Any(&v40, &v43);
    if (!swift_dynamicCast())
    {

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
      lazy protocol witness table accessor for type EnvironmentResource.OptionError and conformance EnvironmentResource.OptionError();
      swift_allocError();
      *v19 = v12;
      v19[1] = v18;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(&v40);
      goto LABEL_19;
    }

    v12 = v39;
    v13 = MEMORY[0x1C68F3280](v38, v39);

    RETextureImportOperationSetColorSpaceName();

    __swift_destroy_boxed_opaque_existential_1(&v40);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v43, &_sypSgMd, &_sypSgMR);
  }

  v38 = 0;
  AssetData = RETextureImportOperationCreateAssetData();
  if (!AssetData)
  {

    v20 = v38;
    if (v38)
    {
      type metadata accessor for CFErrorRef(0);
      v12 = v21;
      lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
      swift_allocError();
      *v22 = v20;
    }

    else
    {
      v12 = URL.absoluteString.getter();
      v30 = v29;
      lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
      swift_allocError();
      *v31 = v12;
      *(v31 + 8) = v30;
      *(v31 + 16) = 0;
      *(v31 + 24) = 0;
      *(v31 + 32) = 2;
    }

    swift_willThrow();
    goto LABEL_19;
  }

  v15 = AssetData;
  if (v38)
  {
  }

  v16 = v37;

  specialized static EnvironmentResource.getCubeMapData(coreTexture:options:source:)(v15, v16);
  if (v3)
  {
    swift_bridgeObjectRelease_n();
    RERelease();
LABEL_19:
    RERelease();
    return v12;
  }

  v23 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v23 + 120, &v40);
  v24 = v41;
  v25 = v42;
  __swift_project_boxed_opaque_existential_1(&v40, v41);
  (*(v25 + 32))(v24, v25);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
  v27 = specialized _NativeDictionary.filter(_:)(v16, specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));
  v28 = specialized _NativeDictionary.filter(_:)(v16, specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));

  v32 = specialized static EnvironmentResource.generateIBLAssetInternal(cubeMap:compilationOptions:compressOptions:)(TextureAssetFromData, v28, v27);

  v12 = (v32)(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v36 = type metadata accessor for EnvironmentResource();
  *(inited + 32) = v12;
  *(inited + 56) = v36;
  *(inited + 64) = &protocol witness table for EnvironmentResource;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  RERelease();
  RERelease();
  RERelease();
  return v12;
}

void *specialized static EnvironmentResource.loadPrivate(named:in:allowsREIbl:)(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v50 = a4;
  v52 = type metadata accessor for URL();
  v7 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v9 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49[-v11];
  v51 = v7;
  if (a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = [objc_opt_self() mainBundle];
  }

  v14 = a3;
  v15 = MEMORY[0x1C68F3280](a1, a2);
  v16 = a2;
  object = MEMORY[0x1C68F3280](0x657974696C616572, 0xEA0000000000766ELL);
  v18 = [v13 URLForResource:v15 withExtension:object];

  if (v18)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = v51;
    v20 = v52;
    (*(v51 + 32))(v12, v9, v52);
    if (URL.pathExtension.getter() == 0x657974696C616572 && v21 == 0xEA0000000000766ELL)
    {

      v24 = v61;
    }

    else
    {
      object = v21;
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v24 = v61;
      if ((v23 & 1) == 0)
      {
        object = v61;
        v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v26 = specialized static EnvironmentResource.importResourceInternal(contentsOf:options:)(v12, v25);
        if (!object)
        {
          object = v26;
        }

LABEL_28:
        (*(v19 + 8))(v12, v20);
        return object;
      }
    }

    v45 = specialized static EnvironmentResource.loadCompiledResource(from:)();
    if (!v24)
    {
      object = v45;
    }

    goto LABEL_28;
  }

  v27 = v13;
  specialized static EnvironmentResource.resolvedPath(forName:in:allowsREIbl:)(a1, v16, v13, v50 & 1);
  v29 = v28;

  if (!v29)
  {
    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v46 = a1;
    *(v46 + 8) = v16;
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    *(v46 + 32) = 0;
LABEL_24:
    swift_willThrow();

    return object;
  }

  v30 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v30 + 120, v58);
  v31 = v59;
  v32 = v60;
  __swift_project_boxed_opaque_existential_1(v58, v59);
  (*(v32 + 32))(v31, v32);
  v33 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of __RenderService?(v33 + 40, &v53);
  if (v54)
  {
    outlined init with take of ForceEffectBase(&v53, v55);
    v35 = v56;
    v36 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    (*(v36 + 24))(v35, v36);
    object = String.utf8CString.getter();

    v37 = REAssetManagerImageBasedLightMemoryAssetCreateFromReiblFileAsync();

    __swift_destroy_boxed_opaque_existential_1(v55);
    __swift_destroy_boxed_opaque_existential_1(v58);
    if (v37)
    {
      RERetain();
      RERelease();
      REAssetHandleLoadNow();
      if (REAssetHandleLoadFailed())
      {
        v38 = REAssetCopyDescription();
        v39 = String.init(_:)(v38);
        object = v39._object;
        FailedMessage = REAssetHandleCopyLoadFailedMessage();
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
        swift_allocError();
        *v44 = v39;
        *(v44 + 16) = v41;
        *(v44 + 24) = v43;
        *(v44 + 32) = 1;
        swift_willThrow();

        RERelease();
      }

      else
      {
        SkyboxTexture = REIBLAssetGetSkyboxTexture();
        type metadata accessor for EnvironmentResource();
        object = swift_allocObject();
        object[3] = 0;
        object[2] = v37;
        swift_beginAccess();
        object[3] = SkyboxTexture;
        RERetain();
        REAssetSetSwiftObject();
        if (SkyboxTexture)
        {
          RERetain();
          REAssetSetSwiftObject();
        }

        RERelease();
      }

      return object;
    }

    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v47 = a1;
    *(v47 + 8) = v16;
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    *(v47 + 32) = 2;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t specialized static EnvironmentResource.validate(cubeTexture:)(uint64_t a1)
{
  if (RETextureAssetGetSemantic() - 3 >= 2)
  {
    lazy protocol witness table accessor for type EnvironmentResource.OptionError and conformance EnvironmentResource.OptionError();
    swift_allocError();
    *v3 = 0;
    v3[1] = 0;
  }

  else
  {
    result = RETextureAssetGetTextureType();
    if (result == 5)
    {
      return result;
    }

    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v2 = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 7;
  }

  return swift_willThrow();
}

unint64_t *specialized static EnvironmentResource.exportCompiledResource(contentsOf:to:for:options:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, __n128 a5)
{
  v9 = *a3;
  v35 = *(a3 + 8);
  v77 = *(a3 + 16);
  v33 = *(a3 + 28);
  v10 = *(a3 + 24);
  if (URL.pathExtension.getter() == 0x657974696C616572 && v11 == 0xEA0000000000766ELL)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      v29 = URL.pathExtension.getter();
      v31 = v30;
      lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
      swift_allocError();
      *v32 = v29;
      *(v32 + 8) = v31;
      *(v32 + 16) = 0;
      *(v32 + 24) = 0;
      *(v32 + 32) = 3;
      return swift_willThrow();
    }
  }

  result = specialized static EnvironmentResource.importResourceInternal(contentsOf:options:)(a1, a4);
  if (!v5)
  {
    v14 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    result = swift_allocObject();
    *(result + 1) = xmmword_1C18BB5B0;
    v15 = v14[2];
    if (v15)
    {
      v16 = result;
      v17 = MEMORY[0x1E69E6B70];
      v56 = MEMORY[0x1E69E6B70];
      *&v54 = v15;
      outlined init with copy of Any(&v54, v36);
      swift_dynamicCast();
      v18 = v75[0];
      __swift_destroy_boxed_opaque_existential_1(&v54);
      RERetain();
      type metadata accessor for __REAsset();
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      v16[4] = v19;
      result = swift_beginAccess();
      v20 = v14[3];
      if (v20)
      {
        v21 = v10 | (v33 << 32);
        v76[3] = v17;
        v76[0] = v20;
        outlined init with copy of Any(v76, &v54);
        swift_dynamicCast();
        v22 = v36[0];
        __swift_destroy_boxed_opaque_existential_1(v76);
        RERetain();
        v23 = swift_allocObject();
        *(v23 + 16) = v22;
        v16[5] = v23;
        v24 = specialized static __ServiceLocator.shared.getter();
        swift_beginAccess();
        outlined init with copy of __REAssetService(v24 + 120, &v54);
        outlined init with copy of __REAssetService(&v54, v36);
        v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit9__REAssetC_0C10Foundation17RESceneDescriptorCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)(v16, v36, v25, 0, v75);
        __swift_destroy_boxed_opaque_existential_1(&v54);
        v74 = 0;
        v73 = 1;
        v72 = 1;
        v26 = v77;
        outlined copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v9, v35);
        outlined consume of __REAssetBundle.ExportOptions.DeploymentTarget?(0, 5uLL);
        v27 = v74;
        LOBYTE(v24) = v73;
        LOBYTE(v54) = 2;
        *(&v54 + 1) = 1;
        v55 = v74;
        v56 = 0;
        v57 = 1;
        v58 = 0;
        v59 = v73;
        v60 = v9;
        v61 = v35;
        v62 = v26;
        v28 = HIDWORD(v21);
        v64 = BYTE4(v21);
        v34 = v21;
        v63 = v21;
        LOBYTE(v21) = v72;
        v65 = 0;
        v66 = v72;
        v67 = 0;
        v68 = 0u;
        v69 = 0u;
        v70 = 1;
        v71 = 3;
        __REAssetBundle.writeWithCPlusPlus(to:with:)(a2, &v54);

        outlined destroy of __REAssetBundle(v75);
        LOBYTE(v36[0]) = 2;
        v36[1] = 1;
        v37 = v27;
        v38 = 0;
        v39 = 1;
        v40 = 0;
        v41 = v24;
        v42 = v9;
        v43 = v35;
        v44 = v26;
        v46 = v28;
        v45 = v34;
        v47 = 0;
        v48 = v21;
        v49 = 0;
        v50 = 0u;
        v51 = 0u;
        v52 = 1;
        v53 = 3;
        return outlined destroy of __REAssetBundle.ExportOptions(v36);
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

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for closure #1 in EnvironmentResource.init(cube:options:)()
{
  v1 = *(v0 + 16);
  RERetain();
  return v1;
}

unint64_t lazy protocol witness table accessor for type EnvironmentResource.CreateOptions.SamplingQuality and conformance EnvironmentResource.CreateOptions.SamplingQuality()
{
  result = lazy protocol witness table cache variable for type EnvironmentResource.CreateOptions.SamplingQuality and conformance EnvironmentResource.CreateOptions.SamplingQuality;
  if (!lazy protocol witness table cache variable for type EnvironmentResource.CreateOptions.SamplingQuality and conformance EnvironmentResource.CreateOptions.SamplingQuality)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnvironmentResource.CreateOptions.SamplingQuality, &type metadata for EnvironmentResource.CreateOptions.SamplingQuality, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentResource.CreateOptions.SamplingQuality and conformance EnvironmentResource.CreateOptions.SamplingQuality);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentResource.CreateOptions and conformance EnvironmentResource.CreateOptions()
{
  result = lazy protocol witness table cache variable for type EnvironmentResource.CreateOptions and conformance EnvironmentResource.CreateOptions;
  if (!lazy protocol witness table cache variable for type EnvironmentResource.CreateOptions and conformance EnvironmentResource.CreateOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnvironmentResource.CreateOptions, &type metadata for EnvironmentResource.CreateOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentResource.CreateOptions and conformance EnvironmentResource.CreateOptions);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnvironmentResource.CreateOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 2);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EnvironmentResource.CreateOptions(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 2) = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10RealityKit19EnvironmentResourceC9LoadError33_55E864D8785BE4AB70755CF3CF8A6C56LLO(uint64_t a1)
{
  if ((*(a1 + 32) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

uint64_t getEnumTagSinglePayload for EnvironmentResource.LoadError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 33))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 32);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for EnvironmentResource.LoadError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for EnvironmentResource.LoadError(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentResource.OptionError and conformance EnvironmentResource.OptionError()
{
  result = lazy protocol witness table cache variable for type EnvironmentResource.OptionError and conformance EnvironmentResource.OptionError;
  if (!lazy protocol witness table cache variable for type EnvironmentResource.OptionError and conformance EnvironmentResource.OptionError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnvironmentResource.OptionError, &unk_1F410EA68, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentResource.OptionError and conformance EnvironmentResource.OptionError);
  }

  return result;
}

double block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t partial apply for closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:)(a1, a2, v8, v2 + v6, v7);
}

void partial apply for doLoadEnvironmentAsync #1 () in closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  doLoadEnvironmentAsync #1 () in closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:)(v3, v0 + v2, v5, v6);
}

uint64_t objectdestroy_52Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t lazy protocol witness table accessor for type CancellationError and conformance CancellationError(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t getEnumTagSinglePayload for EnvironmentResource.OptionError(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EnvironmentResource.OptionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t static Reverb.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 10)
  {
    if (v3 == 10)
    {
      return 1;
    }
  }

  else if (v2 == v3)
  {
    return 1;
  }

  return 0;
}

void Reverb.Preset.init(core:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1 > 204)
  {
    if (a1 <= 206)
    {
      if (a1 == 205)
      {
        *a2 = 5;
      }

      else
      {
        *a2 = 6;
      }

      return;
    }

    switch(a1)
    {
      case 207:
        *a2 = 8;
        return;
      case 208:
        *a2 = 7;
        return;
      case 209:
        *a2 = 9;
        return;
    }
  }

  else
  {
    if (a1 > 201)
    {
      if (a1 == 202)
      {
        *a2 = 2;
      }

      else if (a1 == 203)
      {
        *a2 = 3;
      }

      else
      {
        *a2 = 4;
      }

      return;
    }

    if (a1 == 101)
    {
      *a2 = 0;
      return;
    }

    if (a1 == 201)
    {
      *a2 = 1;
      return;
    }
  }

  v13[9] = v2;
  v13[10] = v3;
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.audio);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    type metadata accessor for REAudioReverbPreset(0);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v13);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1C1358000, v6, v7, "Unknown REAudioReverbPreset case: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1C6902A30](v9, -1, -1);
    MEMORY[0x1C6902A30](v8, -1, -1);
  }

  *a2 = 10;
}

uint64_t Reverb.Preset.core.getter()
{
  v1 = *v0;
  if (v1 < 0xA)
  {
    return qword_1C18BBC58[v1];
  }

  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.audio);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C1358000, v4, v5, "Unknown reverb preset case: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1C6902A30](v7, -1, -1);
    MEMORY[0x1C6902A30](v6, -1, -1);
  }

  return 100;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Reverb.Kind(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 10)
  {
    return v3 == 10;
  }

  if (v3 == 10)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t Reverb.hash(into:)()
{
  v1 = *v0;
  if (v1 == 10)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x1C68F4C10](1);
  }

  return MEMORY[0x1C68F4C10](v1);
}

Swift::Int Reverb.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0;
  if (v1 != 10)
  {
    MEMORY[0x1C68F4C10](1);
    v2 = v1;
  }

  MEMORY[0x1C68F4C10](v2);
  return Hasher._finalize()();
}

Swift::Int Reverb.Preset.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type Reverb and conformance Reverb()
{
  result = lazy protocol witness table cache variable for type Reverb and conformance Reverb;
  if (!lazy protocol witness table cache variable for type Reverb and conformance Reverb)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Reverb, &type metadata for Reverb, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Reverb and conformance Reverb);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Reverb.Preset and conformance Reverb.Preset()
{
  result = lazy protocol witness table cache variable for type Reverb.Preset and conformance Reverb.Preset;
  if (!lazy protocol witness table cache variable for type Reverb.Preset and conformance Reverb.Preset)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Reverb.Preset, &type metadata for Reverb.Preset, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Reverb.Preset and conformance Reverb.Preset);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Reverb.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_20;
  }

  v2 = a2 + 10;
  if (a2 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 10;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 10;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 10;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 0xA;
  v9 = v7 - 10;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Reverb.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 10;
  if (a3 + 10 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF6)
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for Reverb.Kind(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0xA)
  {
    return v1 - 9;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for Reverb.Kind(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 9;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Reverb.Kind and conformance Reverb.Kind()
{
  result = lazy protocol witness table cache variable for type Reverb.Kind and conformance Reverb.Kind;
  if (!lazy protocol witness table cache variable for type Reverb.Kind and conformance Reverb.Kind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Reverb.Kind, &type metadata for Reverb.Kind, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Reverb.Kind and conformance Reverb.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Reverb.Preset.Kind and conformance Reverb.Preset.Kind()
{
  result = lazy protocol witness table cache variable for type Reverb.Preset.Kind and conformance Reverb.Preset.Kind;
  if (!lazy protocol witness table cache variable for type Reverb.Preset.Kind and conformance Reverb.Preset.Kind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Reverb.Preset.Kind, &type metadata for Reverb.Preset.Kind, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Reverb.Preset.Kind and conformance Reverb.Preset.Kind);
  }

  return result;
}

Swift::Void __swiftcall Entity.deleteCollisionComponents()()
{
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09CollisionD0V_TtB5(0, 0, 0, 0, v0);

  if (REEntityGetChildCount() < 1)
  {
LABEL_15:
  }

  else
  {
    v1 = 0;
    while (v1 < REEntityGetChildCount())
    {
      Child = REEntityGetChild();
      if (!Child)
      {
        goto LABEL_21;
      }

      v3 = Child;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        if (REEntityIsBeingDestroyed())
        {
          goto LABEL_20;
        }

        specialized static Entity.entityInfoType(_:)(v3);
        if (v4)
        {
          v5 = (*(v4 + 232))();
          v6 = *(v5 + 16);

          MEMORY[0x1C68F9740](v6, 0);
          *(v5 + 16) = v3;
          MEMORY[0x1C68F9740](v3, v5);
        }

        else
        {
          makeEntity(for:)(v3);
        }
      }

      if (v1 >= REEntityGetChildCount())
      {
        goto LABEL_19;
      }

      ++v1;
      Entity.deleteCollisionComponents()();

      if (v1 >= REEntityGetChildCount())
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

Swift::Void __swiftcall Entity.generateCollisionShapes(recursive:static:)(Swift::Bool recursive, Swift::Bool a2)
{
  REEntityGetComponent();

  Component = REEntityGetComponent();

  if ((Component || (, v5 = REEntityGetComponent(), , v5)) && (, v6 = REEntityGetComponent(), , !v6))
  {
    Entity.generateCollisionShape(isStatic:)(a2);
    if (!recursive)
    {
      return;
    }
  }

  else if (!recursive)
  {
    return;
  }

  if (REEntityGetChildCount() < 1)
  {
LABEL_18:
  }

  else
  {
    v7 = 0;
    while (v7 < REEntityGetChildCount())
    {
      Child = REEntityGetChild();
      if (!Child)
      {
        goto LABEL_26;
      }

      v9 = Child;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        if (REEntityIsBeingDestroyed())
        {
          goto LABEL_25;
        }

        specialized static Entity.entityInfoType(_:)(v9);
        if (v10)
        {
          v11 = (*(v10 + 232))();
          v12 = *(v11 + 16);

          MEMORY[0x1C68F9740](v12, 0);
          *(v11 + 16) = v9;
          MEMORY[0x1C68F9740](v9, v11);
        }

        else
        {
          makeEntity(for:)(v9);
        }
      }

      if (v7 >= REEntityGetChildCount())
      {
        goto LABEL_24;
      }

      ++v7;
      Entity.generateCollisionShapes(recursive:static:)(1, a2);

      if (v7 >= REEntityGetChildCount())
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

Swift::Void __swiftcall Entity.generateCollisionShape(isStatic:)(Swift::Bool isStatic)
{
  v2 = v1;
  _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v1, v1);
  REEntityComputeMeshBounds();
  if ((REAABBIsEmpty() & 1) == 0)
  {
    REAABBExtents();
    if (v6 < 0.0001 && v4 < 0.0001 && v5 < 0.0001)
    {
      v12 = specialized static ShapeResource.generateSphere(radius:)(0.0001);
    }

    else
    {
      specialized static ShapeResource.generateBox(size:)();
      v9 = REAABBCenter();
      v11 = v10;
      if (one-time initialization token for identity != -1)
      {
        v16 = v10;
        v9 = swift_once();
        v11 = v16;
      }

      v12 = ShapeResource.offsetBy(rotation:translation:)(v9, static simd_quatf.identity, v11);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C1898160;
    *(v13 + 32) = v12;
    v14 = one-time initialization token for default;

    if (v14 != -1)
    {
      swift_once();
    }

    if (isStatic)
    {
      v15 = 0x100000000;
    }

    else
    {
      v15 = 0;
    }

    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09CollisionD0V_TtB5(v13, v15, static CollisionFilter.default, 0, v2);
  }
}

uint64_t static Scene.fromCore(_:)(uint64_t a1)
{
  v2 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v2)
  {

    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    v4 = swift_allocObject();
    Scene.init(coreScene:)(a1);
    return v4;
  }
}

uint64_t one-time initialization function for pickingEmitter()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v8);
  v1 = v9;
  v2 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v2 + 32))(v1, v2);
  AssetHandle = REAssetManagerCreateAssetHandle();
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  if (AssetHandle)
  {
    v9 = MEMORY[0x1E69E6B70];
    v8[0] = AssetHandle;
    outlined init with copy of Any(v8, v7);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(v8);
    RERetain();
    type metadata accessor for __REAsset();
    v5 = swift_allocObject();
    *(v5 + 16) = v6;
    type metadata accessor for __RERenderGraphEmitter();
    result = swift_allocObject();
    *(result + 16) = v5;
    pickingEmitter = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double pickingEmitter.getter()
{
  if (one-time initialization token for pickingEmitter != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t Scene.name.getter()
{
  RESceneGetName();

  return String.init(cString:)();
}

uint64_t key path setter for Scene.__audioListener : Scene(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;

  return Scene.__audioListener.didset();
}

uint64_t Scene.__audioListener.didset()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  if (!v1)
  {
    Scene.internalActiveCamera.getter();
    v1 = v2;
  }

  v3 = *(v0 + 80);
  *(v0 + 80) = v1;

  Scene.internalAudioListener.didset(v3);
}

double Scene.__audioListener.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t Scene.__audioListener.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;

  v3 = *(v1 + 72);
  if (!v3)
  {
    Scene.internalActiveCamera.getter();
    v3 = v4;
  }

  v5 = *(v1 + 80);
  *(v1 + 80) = v3;

  Scene.internalAudioListener.didset(v5);
}

uint64_t (*Scene.__audioListener.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return Scene.__audioListener.modify;
}

uint64_t Scene.__audioListener.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    if (*(v5 + 72))
    {
      v6 = *(v5 + 72);
    }

    else
    {
      Scene.internalActiveCamera.getter();
      v6 = v7;
      v5 = *(a1 + 24);
    }

    v8 = *(v5 + 80);
    *(v5 + 80) = v6;

    Scene.internalAudioListener.didset(v8);
  }

  return result;
}

uint64_t Scene.internalAudioListener.didset(uint64_t result)
{
  v2 = *(v1 + 80);
  if (!result)
  {
    if (!v2)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v2 || *(result + 16) != *(v2 + 16))
  {

    REListenerComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      REListenerComponentSetSystemListener();
      REListenerComponentGetComponentType();
      REEntityRemoveComponentByClass();
    }

    if (*(v1 + 80))
    {
LABEL_10:

      REListenerComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      REListenerComponentSetSystemListener();
    }
  }

  return result;
}

AUAudioUnit_optional __swiftcall Scene.__addPostProcessingAudioEffect(_:)(AudioComponentDescription a1)
{
  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  REEngineGetServiceLocator();
  if (REServiceLocatorGetAudioService())
  {
    inserted = REAudioServiceInsertPostProcessingEffect();

    v2 = inserted;
  }

  else
  {
    v2 = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

uint64_t key path setter for Scene.defaultCamera : Scene(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 88) = v2;
}

uint64_t Scene.defaultCamera.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

double Scene.defaultCamera.getter()
{
  swift_beginAccess();

  return result;
}

double Scene.internalActiveCamera.getter()
{
  if (!swift_weakLoadStrong() && !closure #1 in Scene.internalActiveCamera.getter(54, v0) && !closure #1 in Scene.internalActiveCamera.getter(55, v0) && !closure #1 in Scene.internalActiveCamera.getter(56, v0))
  {
    swift_beginAccess();
    if (!v0[9])
    {
      swift_beginAccess();
      v2 = v0[10];
      v0[10] = v0[11];
      swift_retain_n();
      Scene.internalAudioListener.didset(v2);
    }

    swift_beginAccess();
  }

  return result;
}

uint64_t closure #1 in Scene.internalActiveCamera.getter(uint64_t a1, void *a2)
{
  ComponentsOfType = RESceneGetComponentsOfType();
  if (v4 < 0)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v5 = v4;
  if (!v4)
  {
    return 0;
  }

  v6 = ComponentsOfType;
  swift_beginAccess();
  while (1)
  {
    Entity = REComponentGetEntity();
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v8 = swift_dynamicCastClassUnconditional();
LABEL_45:
      v39 = v8;
      goto LABEL_46;
    }

    if (REEntityIsBeingDestroyed())
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (!*(static SceneManager.customComponentTypeObjectIdToHandles + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v9 & 1) == 0))
    {
      swift_endAccess();
      v10 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = static SceneManager.customComponentTypeObjectIdToHandles;
      v50 = static SceneManager.customComponentTypeObjectIdToHandles;
      static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
      v15 = *(v12 + 16);
      v16 = (v13 & 1) == 0;
      v17 = v15 + v16;
      if (__OFADD__(v15, v16))
      {
        goto LABEL_65;
      }

      v18 = v13;
      if (*(v12 + 24) < v17)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_69;
        }

        v14 = v19;
        v21 = v50;
        if ((v18 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_20:
        *(v21[7] + 8 * v14) = v10;
LABEL_21:
        static SceneManager.customComponentTypeObjectIdToHandles = v21;
        goto LABEL_22;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v21 = v50;
        if (v13)
        {
          goto LABEL_20;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v21 = v50;
        if (v18)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      v21[(v14 >> 6) + 8] |= 1 << v14;
      *(v21[6] + 8 * v14) = &type metadata for __EntityInfoComponent;
      *(v21[7] + 8 * v14) = v10;
      v22 = v21[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_66;
      }

      v21[2] = v24;
      goto LABEL_21;
    }

LABEL_22:
    swift_endAccess();
    if (!REEntityGetCustomComponent())
    {
      goto LABEL_44;
    }

    Object = RECustomComponentGetObject();
    if (!Object)
    {
      goto LABEL_44;
    }

    v26 = *Object;
    if (*(Object + 8))
    {
      v27 = 1;
    }

    else
    {
      v27 = v26 == 0;
    }

    if (v27)
    {
    }

    else
    {
      v28 = *v26;
      v29 = String.init(utf8String:)();
      if (v30)
      {
        v31 = v29;
      }

      else
      {
        v31 = 0;
      }

      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0xE000000000000000;
      }

      v26 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v28 == 42, v31, v32);

      type metadata accessor for IntrospectionDataCleanupHelper();
      *(swift_allocObject() + 16) = v26;
    }

    if (!v26)
    {
      goto LABEL_68;
    }

    v33 = String.init(utf8String:)();
    if (v34)
    {
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0xE000000000000000;
    }

    v36 = MEMORY[0x1C68F3280](v33, v35);

    v37 = NSClassFromString(v36);

    if (!v37 || (swift_getObjCClassMetadata(), type metadata accessor for Entity(), (v38 = swift_dynamicCastMetatype()) == 0))
    {
LABEL_44:
      v8 = makeEntity(for:)(Entity);
      goto LABEL_45;
    }

    v39 = (*(v38 + 232))();
    v40 = *(v39 + 16);

    MEMORY[0x1C68F9740](v40, 0);
    *(v39 + 16) = Entity;
    MEMORY[0x1C68F9740](Entity, v39);

LABEL_46:
    if ((REEntityIsActive() & 1) == 0)
    {
      goto LABEL_4;
    }

    v41 = a2[11];
    if (v41)
    {
      if (*(v39 + 16) == *(v41 + 16))
      {
        goto LABEL_4;
      }
    }

    if (!REEntityGetComponent())
    {
      break;
    }

    IsAuthoritative = RENetworkComponentIsAuthoritative();
    ShouldAlwaysMigrate = RENetworkComponentShouldAlwaysMigrate();
    v44 = RENetworkComponentGuid();
    IsOwnershipLocked = RENetworkComponentIsOwnershipLocked();
    v46 = 0x10000;
    if (!IsOwnershipLocked)
    {
      v46 = 0;
    }

    v47 = 256;
    if (!ShouldAlwaysMigrate)
    {
      v47 = 0;
    }

    outlined consume of SynchronizationComponent?(v44, v46 | v47 | IsAuthoritative, 0, 1, 0);
    if (IsAuthoritative)
    {
      goto LABEL_60;
    }

LABEL_4:

    v6 += 8;
    if (!--v5)
    {
      return 0;
    }
  }

  outlined consume of SynchronizationComponent?(0, 0, 0, 2, 0);
LABEL_60:
  swift_beginAccess();
  if (!a2[9])
  {
    v48 = a2[10];
    a2[10] = v39;

    Scene.internalAudioListener.didset(v48);
  }

  return v39;
}

double Scene.anchors.getter@<D0>(void *a1@<X8>)
{
  *a1 = v1;

  return result;
}

uint64_t Scene.anchors.setter(uint64_t a1)
{
  v2 = *(*a1 + 16);

  if (v2 != *(v1 + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t (*Scene.anchors.modify(void *a1))()
{
  *a1 = v1;

  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

uint64_t Scene.removeAnchor(_:)(uint64_t a1)
{

  specialized Scene.AnchorCollection.remove(_:)(a1, &v3);
}

uint64_t Scene.eventService.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  outlined init with copy of EventService?(v1 + 120, &v8);
  if (v9)
  {
    return outlined init with take of ForceEffectBase(&v8, a1);
  }

  outlined destroy of BodyTrackingComponent?(&v8, &_s17RealityFoundation12EventService_pSgMd, &_s17RealityFoundation12EventService_pSgMR);
  EventBus = RESceneGetEventBus();
  v5 = type metadata accessor for REEventBus();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC8];
  *(v6 + 16) = EventBus;
  *(v6 + 24) = v7;
  RERetain();
  REEventBusSetSwiftObject();
  a1[3] = v5;
  a1[4] = &protocol witness table for REEventBus;
  *a1 = v6;
  outlined init with copy of __REAssetService(a1, &v8);
  swift_beginAccess();
  outlined assign with take of Any?(&v8, v1 + 120, &_s17RealityFoundation12EventService_pSgMd, &_s17RealityFoundation12EventService_pSgMR);
  return swift_endAccess();
}

uint64_t Scene.engineEventService.getter@<X0>(uint64_t a1@<X8>)
{
  result = RESceneGetECSManagerNullable();
  if (result && (ServiceLocator = REECSManagerGetServiceLocator(), (result = MEMORY[0x1C68FE240](ServiceLocator)) != 0))
  {
    SwiftObject = REEngineGetSwiftObject();
    if (SwiftObject)
    {
      v6 = SwiftObject;

      result = swift_beginAccess();
      v7 = *(v6 + 40);
      if (v7)
      {
        v8 = *(v7 + 32);
        *(a1 + 24) = type metadata accessor for REEventBus();
        *(a1 + 32) = &protocol witness table for REEventBus;

        *a1 = v8;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      EventBus = REEngineGetEventBus();
      v10 = type metadata accessor for REEventBus();
      v11 = swift_allocObject();
      v12 = MEMORY[0x1E69E7CC8];
      *(v11 + 16) = EventBus;
      *(v11 + 24) = v12;
      RERetain();
      REEventBusSetSwiftObject();
      *(v1 + 160) = v11;

      *(a1 + 24) = v10;
      *(a1 + 32) = &protocol witness table for REEventBus;
      *a1 = v11;
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double static Scene.pixelCastRequests.getter()
{
  if (one-time initialization token for pixelCastRequests != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static Scene.pixelCastRequests.setter(void *a1)
{
  if (one-time initialization token for pixelCastRequests != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Scene.pixelCastRequests = a1;

  return result;
}

uint64_t (*static Scene.pixelCastRequests.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for pixelCastRequests != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static __RKSimulationSceneCoordinator.shared.modify;
}

double key path getter for static Scene.pixelCastRequests : Scene.Type@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for pixelCastRequests != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static Scene.pixelCastRequests;

  return result;
}

double key path setter for static Scene.pixelCastRequests : Scene.Type(void **a1)
{
  v1 = *a1;
  v2 = one-time initialization token for pixelCastRequests;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Scene.pixelCastRequests = v1;

  return result;
}

uint64_t Scene.__allocating_init(name:addSystemsCallback:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  String.utf8CString.getter();

  v4 = RESceneCreate();

  a3(v4);
  type metadata accessor for Scene();
  v5 = swift_allocObject();
  Scene.init(coreScene:)(v4);

  RERelease();
  MEMORY[0x1C68FE0C0](v4, 1);
  Scene.addDefaultCamera()();
  Scene.addAudioMixer()();
  swift_beginAccess();
  *(v5 + 72) = 0;

  v6 = *(v5 + 72);
  if (!v6)
  {
    Scene.internalActiveCamera.getter();
    v6 = v7;
  }

  v8 = *(v5 + 80);
  *(v5 + 80) = v6;

  Scene.internalAudioListener.didset(v8);

  return v5;
}

uint64_t Scene.applyReverbPreset(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 104) || (type metadata accessor for Entity(), v3 = swift_allocObject(), v4 = Entity.init()(v3), Entity.name.setter(0x526F696475415F5FLL, 0xED00006272657665), Entity.turnIntoNinja()(), REReverbComponentGetComponentType(), REEntityGetOrAddComponentByClass(), RESceneAddEntity(), REReverbComponentSetPriority(), *(v2 + 104) = v4, result = , *(v2 + 104)))
  {

    REReverbComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      REReverbComponentSetReverbPreset();
    }
  }

  return result;
}

Swift::Void __swiftcall Scene.setReverbPresetPriority(_:)(Swift::UInt16 a1)
{
  v2 = v1;
  if (*(v1 + 104) || (type metadata accessor for Entity(), v3 = swift_allocObject(), v4 = Entity.init()(v3), Entity.name.setter(0x526F696475415F5FLL, 0xED00006272657665), Entity.turnIntoNinja()(), REReverbComponentGetComponentType(), REEntityGetOrAddComponentByClass(), RESceneAddEntity(), REReverbComponentSetPriority(), *(v2 + 104) = v4, , *(v2 + 104)))
  {

    REReverbComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      REReverbComponentSetPriority();
    }
  }
}

Swift::Void __swiftcall Scene.addDefaultCamera()()
{
  v1 = v0;
  type metadata accessor for Entity();
  v2 = swift_allocObject();
  v3 = Entity.init()(v2);
  swift_beginAccess();
  *(v1 + 88) = v3;

  Entity.name.setter(0x6C75616665445F5FLL, 0xEF6172656D614374);

  v4 = *(v1 + 88);
  if (!v4)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v14);
  if ((v16 & 1) == 0)
  {
    v8 = v14[2];
    v7 = v14[3];
    v6 = v14[0];
    v5 = v14[1];
    *&v9 = v14[4];
    HIDWORD(v9) = v15;
    goto LABEL_6;
  }

  if (one-time initialization token for identity != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v5 = *(&static Transform.identity + 1);
    v6 = static Transform.identity;
    v7 = *(&xmmword_1EBEB2BB0 + 1);
    v8 = xmmword_1EBEB2BB0;
    v9 = xmmword_1EBEB2BC0;
LABEL_6:
    DWORD2(v9) = 2.0;
    v17[0] = v6;
    v17[1] = v5;
    v17[2] = v8;
    v17[3] = v7;
    v18 = v9;
    v19 = 0;

    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA9TransformV_Tt0g5(v17);
    v10 = *(v4 + 16);

    v11 = *(v4 + 16);

    if (v10 == v11)
    {
      break;
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

  v12 = *(v1 + 88);
  if (!v12)
  {
    goto LABEL_16;
  }

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA017PerspectiveCameraD0V_TtB5Tf4ndn_n(0x7F8000003C23D70ALL, 0x142700000, v12);

  if (!*(v1 + 88))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  RECameraViewDescriptorsComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RECameraViewDescriptorsComponentSetRenderOrder();
  if (!*(v1 + 88))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  REAnchorComponentGetComponentType();
  REEntityAddComponentByClass();
  if (!*(v1 + 88))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  Entity.turnIntoNinja()();

  if (*(v1 + 88))
  {

    Scene.AnchorCollection.appendNinja(_:)(v13);

    return;
  }

LABEL_20:
  __break(1u);
}

Swift::Void __swiftcall Scene.addAudioMixer()()
{
  if (!*(v0 + 96))
  {
    v1 = v0;
    type metadata accessor for Entity();
    v2 = swift_allocObject();
    v3 = Entity.init()(v2);
    Entity.name.setter(0x4D6F696475415F5FLL, 0xEC00000072657869);
    Entity.turnIntoNinja()();
    REAudioMixerComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    RESceneAddEntity();
    *(v1 + 96) = v3;
  }
}

Swift::Void __swiftcall Scene.addAudioReverb()()
{
  if (!*(v0 + 104))
  {
    v1 = v0;
    type metadata accessor for Entity();
    v2 = swift_allocObject();
    v3 = Entity.init()(v2);
    Entity.name.setter(0x526F696475415F5FLL, 0xED00006272657665);
    Entity.turnIntoNinja()();
    REReverbComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    RESceneAddEntity();
    REReverbComponentSetPriority();
    *(v1 + 104) = v3;
  }
}

uint64_t static Scene.__testInit(name:)(uint64_t a1, uint64_t a2)
{

  return specialized Scene.__allocating_init(name:)(a1, a2);
}

uint64_t Scene.init(coreScene:)(uint64_t a1)
{
  *(v1 + 56) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  swift_unknownObjectWeakInit();
  *(v1 + 104) = 0;
  *(v1 + 88) = 0u;
  *(v1 + 72) = 0u;
  swift_weakInit();
  *(v1 + 232) = 0;
  *(v1 + 216) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 120) = 0u;
  RERetain();
  *(v1 + 16) = a1;
  RESceneSetSwiftObject();
  return v1;
}

void *Scene.deinit()
{
  RESceneSetSwiftObject();
  RERelease();
  swift_beginAccess();
  if (v0[6])
  {
    outlined init with copy of __REAssetService((v0 + 3), v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  swift_beginAccess();
  if (v0[28])
  {
    v1 = v0[29];
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 56);
    swift_unknownObjectRetain();
    v3(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  outlined destroy of BodyTrackingComponent?((v0 + 3), &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of WeakSessionAR((v0 + 8));

  swift_weakDestroy();
  outlined destroy of BodyTrackingComponent?((v0 + 15), &_s17RealityFoundation12EventService_pSgMd, &_s17RealityFoundation12EventService_pSgMR);

  outlined destroy of BodyTrackingComponent?((v0 + 21), &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t Scene.__deallocating_deinit()
{
  Scene.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall Scene.enableCollisions(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGAF15CollisionEventsO5BeganVGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGAF15CollisionEventsO5BeganVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - v6;
  swift_beginAccess();
  if (*(v1 + 48))
  {
    outlined init with copy of __REAssetService(v1 + 24, v21);
    __swift_project_boxed_opaque_existential_1(v21, v22);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  if (a1)
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    v8 = swift_allocObject();
    swift_weakInit();
    Scene.eventService.getter(v21);
    v9 = v22;
    v10 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    type metadata accessor for RECollisionDidStartEventEx(0);
    EventService.publisher<A>(for:on:)(v11, v19, v9, v11, v10);
    v12 = v18[1];
    v13 = v18[2];
    v14 = v18[3];
    __swift_destroy_boxed_opaque_existential_1(v21);
    v21[0] = v12;
    v21[1] = v13;
    v21[2] = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<RECollisionDidStartEventEx> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGMR, protocol conformance descriptor for Scene.CorePublisher<A>);
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So26RECollisionDidStartEventExVGAH15CollisionEventsO5BeganVGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So26RECollisionDidStartEventExVGAH15CollisionEventsO5BeganVGGMR);
    v15 = swift_allocObject();
    (*(v5 + 32))(&v15[*(*v15 + *MEMORY[0x1E695BEE8] + 16)], v7, v4);
    v21[0] = v15;
    v16 = swift_allocObject();
    *(v16 + 16) = partial apply for closure #1 in Scene.enableCollisions(_:);
    *(v16 + 24) = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15CollisionEventsO5BeganVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15CollisionEventsO5BeganVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<CollisionEvents.Began> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15CollisionEventsO5BeganVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15CollisionEventsO5BeganVGMR, protocol conformance descriptor for Scene.Publisher<A>);
    v17 = Publisher<>.sink(receiveValue:)();

    v22 = type metadata accessor for AnyCancellable();
    v23 = MEMORY[0x1E695BF08];

    v21[0] = v17;
    outlined destroy of BodyTrackingComponent?(v19, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Any?(v21, v2 + 24, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    swift_endAccess();
  }
}

uint64_t closure #1 in Scene.enableCollisions(_:)(__int128 *a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v6 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v24 = a1[2];
  v25 = v9;
  v26 = a1[4];
  v10 = a1[1];
  v22 = *a1;
  v23 = v10;
  type metadata accessor for OS_dispatch_queue();
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = v25;
  *(v13 + 64) = v24;
  *(v13 + 80) = v14;
  *(v13 + 96) = v26;
  v15 = v23;
  *(v13 + 32) = v22;
  *(v13 + 48) = v15;
  aBlock[4] = partial apply for closure #1 in closure #1 in Scene.enableCollisions(_:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_29;
  v16 = _Block_copy(aBlock);
  outlined init with copy of CollisionEvents.Began(&v22, v20);

  static DispatchQoS.unspecified.getter();
  v20[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type __RKEntityInteractionSpecification and conformance __RKEntityInteractionSpecification(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v8, v5, v16);
  _Block_release(v16);

  (*(v19 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v18);
}

uint64_t closure #1 in closure #1 in Scene.enableCollisions(_:)(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Scene.__interactionService.getter();
    type metadata accessor for __RKEntityInteractionManager();
    if (swift_dynamicCastClass())
    {
      v7 = *a2;

      Entity.__interactionIdentifier.getter(v5);
      v8 = type metadata accessor for UUID();
      if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
      {
        swift_unknownObjectRelease();

        return outlined destroy of BodyTrackingComponent?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        outlined destroy of BodyTrackingComponent?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1C1898160;
        *(v9 + 32) = a2[1];

        v10 = Entity.__tags.getter();
        type metadata accessor for __RKEntityCollisionTrigger();
        v11 = swift_allocObject();
        *(v11 + 24) = 0;
        swift_beginAccess();
        *(v11 + 24) = v7;
        *(v11 + 32) = v9;
        *(v11 + 40) = v10;
        *(v11 + 16) = 0;
        *(v11 + 18) = 0;
        __RKEntityInteractionManager.__performInteractions(matching:on:)(v11, 0);

        swift_unknownObjectRelease();
      }
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t Scene.findEntity(named:)(uint64_t a1, uint64_t a2)
{
  String.utf8CString.getter();
  EntityByName = RESceneFindEntityByName();

  if (!EntityByName)
  {
    return 0;
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    result = REEntityIsBeingDestroyed();
    if (result)
    {
      __break(1u);
    }

    else
    {
      specialized static Entity.entityInfoType(_:)(EntityByName);
      if (v4)
      {
        v5 = (*(v4 + 232))();
        v6 = *(v5 + 16);

        MEMORY[0x1C68F9740](v6, 0);
        *(v5 + 16) = EntityByName;
        MEMORY[0x1C68F9740](EntityByName, v5);

        return v5;
      }

      else
      {
        return makeEntity(for:)(EntityByName);
      }
    }
  }

  return result;
}

uint64_t Scene.findEntity(id:)(uint64_t a1)
{
  result = RESceneFindEntity();
  if (result)
  {
    v2 = result;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      return swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
        __break(1u);
      }

      else
      {
        specialized static Entity.entityInfoType(_:)(v2);
        if (v3)
        {
          v4 = (*(v3 + 232))();
          v5 = *(v4 + 16);

          MEMORY[0x1C68F9740](v5, 0);
          *(v4 + 16) = v2;
          MEMORY[0x1C68F9740](v2, v4);

          return v4;
        }

        else
        {
          return makeEntity(for:)(v2);
        }
      }
    }
  }

  return result;
}

uint64_t Scene.__interactionService.getter()
{
  if (*(v0 + 208))
  {
    v1 = *(v0 + 208);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for __RKEntityInteractionManager();
    swift_allocObject();
    v3 = v0;
    v1 = __RKEntityInteractionManager.init(sceneRef:)(v2);
    *(v3 + 208) = v1;
    *(v3 + 216) = &protocol witness table for __RKEntityInteractionManager;

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t Scene.synchronizationService.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v3 + 224);
  v7 = *(v3 + 232);
  *(v3 + 224) = a1;
  *(v3 + 232) = a2;
  if (!v6)
  {
    swift_unknownObjectRetain();
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjectType = swift_getObjectType();
  v9 = *(v7 + 56);
  swift_unknownObjectRetain();
  v9(ObjectType, v7);
  if (*(v3 + 224))
  {
LABEL_3:
    v10 = *(v3 + 232);
    v11 = swift_getObjectType();
    v12 = *(v10 + 48);
    swift_unknownObjectRetain();
    v12(v11, v10);
    swift_unknownObjectRelease();
  }

LABEL_4:
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void (*Scene.synchronizationService.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + 224);
  swift_unknownObjectRetain();
  return Scene.synchronizationService.modify;
}

void Scene.synchronizationService.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = v2[4];
  if (a2)
  {
    v5 = swift_unknownObjectRetain();
    Scene.synchronizationService.setter(v5, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    Scene.synchronizationService.setter(v3, v2[4]);
  }

  free(v2);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Scene.containsChangeSceneActions()()
{
  v53 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v44 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v2 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for __RKEntityActionSpecification(0);
  v51 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Data.Deallocator();
  v6 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (static __RKEntityInteractionsComponent.registration)
  {
    closure #1 in Scene.entitiesWithInteractions()(v0, *(static __RKEntityInteractionsComponent.registration + 3));
    v10 = v9;
    if (v9 >> 62)
    {
      goto LABEL_38;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v12 = 0;
      v46 = type metadata accessor for Scene();
      v47 = v10 & 0xC000000000000001;
      v41 = v10 & 0xFFFFFFFFFFFFFF8;
      v40 = v10 + 32;
      v37 = *MEMORY[0x1E6969010];
      v36 = (v6 + 104);
      v35 = (v6 + 8);
      v45 = i;
      v42 = v10;
      v43 = v8;
      while (1)
      {
        if (v47)
        {
          v6 = MEMORY[0x1C68F41F0](v12, v10);
          v13 = __OFADD__(v12++, 1);
          if (v13)
          {
            break;
          }

          goto LABEL_11;
        }

        if (v12 >= *(v41 + 16))
        {
          goto LABEL_37;
        }

        v6 = *(v40 + 8 * v12);

        v13 = __OFADD__(v12++, 1);
        if (v13)
        {
          break;
        }

LABEL_11:
        v50 = v6;
        if (!static __RKEntityInteractionsComponent.registration)
        {
          goto LABEL_20;
        }

        if (!REEntityGetCustomComponent())
        {
          goto LABEL_20;
        }

        Object = RECustomComponentGetObject();
        if (!Object)
        {
          goto LABEL_20;
        }

        v15 = *(Object + 16);
        if (v15)
        {

          v16 = *(v15 + 16);
          if (v16)
          {
            goto LABEL_21;
          }

          goto LABEL_31;
        }

        v17 = *Object;
        if (*Object)
        {
          v49 = v12;
          v18 = strlen(v17);
          (*v36)(v8, v37, v38);
          Data.Deallocator._deallocator.getter();
          if (v18)
          {
            type metadata accessor for __DataStorage();
            swift_allocObject();

            v19 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
            v20 = __DataStorage._capacity.modify();
            *v21 |= 0x8000000000000000;
            v22.n128_f64[0] = v20(v52, 0);
            v18 = specialized Data._Representation.init(_:count:)(v19, v18, v22);
            v24 = v23;
          }

          else
          {
            v30 = Data.Deallocator._deallocator.getter();
            v30(v17, 0);

            v24 = 0xC000000000000000;
          }

          (*v35)(v8, v38);
          type metadata accessor for JSONDecoder();
          swift_allocObject();
          JSONDecoder.init()();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit34__RKEntityInteractionSpecificationVGMd, &_sSay10RealityKit34__RKEntityInteractionSpecificationVGMR);
          lazy protocol witness table accessor for type [__RKEntityInteractionSpecification] and conformance <A> [A]();
          v31 = v39;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          if (v31)
          {

            outlined consume of Data._Representation(v18, v24);

            v39 = 0;
            v15 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v39 = 0;

            outlined consume of Data._Representation(v18, v24);
            v15 = v52[0];
          }

          i = v45;
          v12 = v49;
          v16 = *(v15 + 16);
          if (v16)
          {
LABEL_21:
            v49 = v12;
            v52[0] = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
            v6 = v52[0];
            v25 = *(v44 + 80);
            v48 = v15;
            v26 = v15 + ((v25 + 32) & ~v25);
            v27 = *(v44 + 72);
            do
            {
              _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_1(v26, v2, type metadata accessor for __RKEntityInteractionSpecification);
              _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_1(&v2[*(v53 + 20)], v5, type metadata accessor for __RKEntityActionSpecification);
              _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_0(v2, type metadata accessor for __RKEntityInteractionSpecification);
              v52[0] = v6;
              v29 = *(v6 + 16);
              v28 = *(v6 + 24);
              if (v29 >= v28 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
                v6 = v52[0];
              }

              *(v6 + 16) = v29 + 1;
              outlined init with take of __RKEntityActionSpecification(v5, v6 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v29);
              v26 += v27;
              --v16;
            }

            while (v16);

            v10 = v42;
            v8 = v43;
            i = v45;
            v12 = v49;
            goto LABEL_32;
          }
        }

        else
        {
LABEL_20:
          v15 = MEMORY[0x1E69E7CC0];
          v16 = *(MEMORY[0x1E69E7CC0] + 16);
          if (v16)
          {
            goto LABEL_21;
          }
        }

LABEL_31:

        v6 = MEMORY[0x1E69E7CC0];
LABEL_32:
        LOBYTE(v0) = static Scene.containsChangeSceneActions(_:)(v6);

        if ((v0 & 1) != 0 || v12 == i)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      ;
    }

    LOBYTE(v0) = 0;
LABEL_40:
  }

  else
  {
    lazy protocol witness table accessor for type SerializationError and conformance SerializationError();
    swift_allocError();
    *v32 = xmmword_1C18BBCB0;
    *(v32 + 16) = 0;
    swift_willThrow();
  }

  return v0 & 1;
}

uint64_t static Scene.containsChangeSceneActions(_:)(uint64_t a1)
{
  v2 = type metadata accessor for __RKEntityActionSpecification(0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v8 = *(v3 + 72);
  while (1)
  {
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_1(v7, v5, type metadata accessor for __RKEntityActionSpecification);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 6)
    {
      break;
    }

    v9 = static Scene.containsChangeSceneActions(_:)(*(v5 + 1));

    if (v9)
    {
      return 1;
    }

LABEL_4:
    v7 += v8;
    if (!--v6)
    {
      return 0;
    }
  }

  if (EnumCaseMultiPayload != 1)
  {
    _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_0(v5, type metadata accessor for __RKEntityActionSpecification);
    goto LABEL_4;
  }

  _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_0(v5, type metadata accessor for __RKEntityActionSpecification);
  return 1;
}

void closure #1 in Scene.entitiesWithInteractions()(uint64_t a1, uint64_t a2)
{
  ComponentsOfCustomType = RESceneGetComponentsOfCustomType();
  if (v3 < 0)
  {
    goto LABEL_36;
  }

  v4 = ComponentsOfCustomType;
  v5 = v3;
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    do
    {
      Entity = REComponentGetEntity();
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
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          return;
        }

        if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (!*(static SceneManager.customComponentTypeObjectIdToHandles + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v7 & 1) == 0))
        {
          swift_endAccess();
          v8 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v25 = static SceneManager.customComponentTypeObjectIdToHandles;
          static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, &type metadata for __EntityInfoComponent, isUniquelyReferenced_nonNull_native);
          static SceneManager.customComponentTypeObjectIdToHandles = v25;
        }

        swift_endAccess();
        if (!REEntityGetCustomComponent())
        {
          goto LABEL_31;
        }

        Object = RECustomComponentGetObject();
        if (!Object)
        {
          goto LABEL_31;
        }

        v11 = *Object;
        if (*(Object + 8) || !v11)
        {
        }

        else
        {
          v12 = *v11;
          v13 = String.init(utf8String:)();
          if (v14)
          {
            v15 = v13;
          }

          else
          {
            v15 = 0;
          }

          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = 0xE000000000000000;
          }

          v11 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v12 == 42, v15, v16);

          type metadata accessor for IntrospectionDataCleanupHelper();
          *(swift_allocObject() + 16) = v11;
        }

        if (!v11)
        {
          goto LABEL_37;
        }

        v17 = String.init(utf8String:)();
        if (v18)
        {
          v19 = v18;
        }

        else
        {
          v17 = 0;
          v19 = 0xE000000000000000;
        }

        v20 = MEMORY[0x1C68F3280](v17, v19);

        v21 = NSClassFromString(v20);

        if (v21 && (swift_getObjCClassMetadata(), type metadata accessor for Entity(), (v22 = swift_dynamicCastMetatype()) != 0))
        {
          v23 = (*(v22 + 232))();
          v24 = *(v23 + 16);

          MEMORY[0x1C68F9740](v24, 0);
          *(v23 + 16) = Entity;
          MEMORY[0x1C68F9740](Entity, v23);
        }

        else
        {
LABEL_31:
          makeEntity(for:)(Entity);
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 8;
      --v5;
    }

    while (v5);
  }
}

uint64_t static Scene.__fromCore(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v2)
  {

    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    v4 = swift_allocObject();
    Scene.init(coreScene:)(v1);
    return v4;
  }
}

Swift::Int Scene.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(v0 + 16));
  return Hasher._finalize()();
}

uint64_t Scene.id.getter()
{
  result = *(v0 + 16);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

void protocol witness for Identifiable.id.getter in conformance Scene(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = v2;
  }
}

uint64_t specialized Scene.addAnchor(_:)(uint64_t a1, uint64_t a2)
{
  v4 = a2;

  specialized Scene.AnchorCollection.append(_:)(a1, &v4);
}

uint64_t specialized Scene.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  String.utf8CString.getter();

  v2 = RESceneCreate();

  RESceneAddDefaultSystems();
  type metadata accessor for Scene();
  v3 = swift_allocObject();
  Scene.init(coreScene:)(v2);

  RERelease();
  MEMORY[0x1C68FE0C0](v2, 1);
  Scene.addDefaultCamera()();
  Scene.addAudioMixer()();
  swift_beginAccess();
  *(v3 + 72) = 0;

  v4 = *(v3 + 72);
  if (!v4)
  {
    Scene.internalActiveCamera.getter();
    v4 = v5;
  }

  v6 = *(v3 + 80);
  *(v3 + 80) = v4;

  Scene.internalAudioListener.didset(v6);

  return v3;
}

uint64_t partial apply for specialized closure #3 in Scene.subscribe<A>(to:on:componentType:rootEntity:matching:_:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v7;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  return v2(v9);
}

uint64_t _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of __RKEntityActionSpecification(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for __RKEntityActionSpecification(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s10RealityKit34__RKEntityInteractionSpecificationVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t lazy protocol witness table accessor for type __RKEntityInteractionSpecification and conformance __RKEntityInteractionSpecification(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of EventService?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EventService_pSgMd, &_s17RealityFoundation12EventService_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AcousticModelComponent.mesh.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AcousticModelComponent.init(mesh:absorptionMaterials:scatteringMaterials:soundReductionMaterials:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void AcousticModelComponent.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
}

void static AcousticModelComponent.__fromCore(_:)(uint64_t *a2@<X8>)
{
  MeshAsset = REAcousticMeshComponentGetMeshAsset();
  if (MeshAsset)
  {
    v3 = MeshAsset;
    type metadata accessor for AcousticMeshResource();
    v4 = swift_allocObject();
    RERetain();
    v60 = v4;
    *(v4 + 16) = v3;
  }

  else
  {
    v60 = 0;
  }

  v57 = REAcousticMeshComponentCopyAllAbsorptionIdentifiers();
  v58 = REAcousticMeshComponentCopyAllAbsorptionFrequencies();
  v59 = REAcousticMeshComponentCopyAllAbsorptionCoefficients();
  v5 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySo7NSArrayCAGyA2IGG_yp_ypypts5NeverOTg503_s7b42STQzAASTQy_AASTQy0_AbcDIgnnnrrr_AB_AC_ADttn7_AcDts5g31OIegnrzr_STRzSTR_STR0_r1_lTRSo7f129C_A2HTG5091_s17RealityFoundation22AcousticModelComponentV10__fromCoreyAC0A3Kit02__E3RefVFZ4zip3L_ySay7a67Qz_AIQy_AIQy0_tGx_q_q0_ttu1_v1_w32_lFAJ_AkLtAJ_AK_ALttXEfU_So7C8C_Y14OTg5Tf3nnnpf_nTf1cn_n(v57, v58, v59);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v76 = MEMORY[0x1E69E7CC0];
    v8 = v5;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v9 = v8;
    v10 = 0;
    v11 = v76;
    v12 = v8 + 32;
    v62 = v6;
    v65 = v8;
    while (v10 < *(v9 + 16))
    {
      v13 = v11;
      outlined init with copy of [String : String](v12, v73, &_syp_ypyptMd, &_syp_ypyptMR);
      outlined init with copy of Any(v73, v72);
      swift_dynamicCast();
      v14 = v70;
      v15 = v71;
      outlined init with copy of Any(v74, v69);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
      swift_dynamicCast();
      v16 = toFloatArray #1 (_:) in static AcousticModelComponent.__fromCore(_:)(v68);

      outlined init with copy of Any(v75, v69);
      swift_dynamicCast();
      v17 = toFloatArray #1 (_:) in static AcousticModelComponent.__fromCore(_:)(v68);

      outlined destroy of BodyTrackingComponent?(v73, &_syp_ypyptMd, &_syp_ypyptMR);
      v11 = v13;
      v76 = v13;
      v18 = *(v13 + 16);
      v19 = *(v11 + 24);
      if (v18 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v18 + 1, 1);
        v11 = v76;
      }

      ++v10;
      *(v11 + 16) = v18 + 1;
      v20 = (v11 + 32 * v18);
      v20[4] = v14;
      v20[5] = v15;
      v20[6] = v16;
      v20[7] = v17;
      v12 += 96;
      v9 = v65;
      if (v62 == v10)
      {
        v56 = v11;

        v7 = MEMORY[0x1E69E7CC0];
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v56 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v21 = REAcousticMeshComponentCopyAllScatteringIdentifiers();
  v22 = REAcousticMeshComponentCopyAllScatteringCoefficients();
  v53 = REAcousticMeshComponentCopyAllScatteringFrequencies();
  v54 = v21;
  v55 = v22;
  v23 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySo7NSArrayCAGyA2IGG_yp_ypypts5NeverOTg503_s7b42STQzAASTQy_AASTQy0_AbcDIgnnnrrr_AB_AC_ADttn7_AcDts5g31OIegnrzr_STRzSTR_STR0_r1_lTRSo7f129C_A2HTG5091_s17RealityFoundation22AcousticModelComponentV10__fromCoreyAC0A3Kit02__E3RefVFZ4zip3L_ySay7a67Qz_AIQy_AIQy0_tGx_q_q0_ttu1_v1_w32_lFAJ_AkLtAJ_AK_ALttXEfU_So7C8C_Y14OTg5Tf3nnnpf_nTf1cn_n(v21, v53, v22);
  v24 = *(v23 + 16);
  if (v24)
  {
    v76 = v7;
    v25 = v23;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
    v26 = v25;
    v27 = 0;
    v28 = v76;
    v29 = v25 + 32;
    v63 = v24;
    v66 = v25;
    while (v27 < *(v26 + 16))
    {
      outlined init with copy of [String : String](v29, v73, &_syp_ypyptMd, &_syp_ypyptMR);
      outlined init with copy of Any(v73, v72);
      swift_dynamicCast();
      v31 = v70;
      v30 = v71;
      outlined init with copy of Any(v74, v69);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
      swift_dynamicCast();
      v32 = toFloatArray #1 (_:) in static AcousticModelComponent.__fromCore(_:)(v68);

      outlined init with copy of Any(v75, v69);
      swift_dynamicCast();
      v33 = toFloatArray #1 (_:) in static AcousticModelComponent.__fromCore(_:)(v68);

      outlined destroy of BodyTrackingComponent?(v73, &_syp_ypyptMd, &_syp_ypyptMR);
      v76 = v28;
      v34 = *(v28 + 16);
      v35 = *(v28 + 24);
      if (v34 >= v35 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v34 + 1, 1);
        v28 = v76;
      }

      ++v27;
      *(v28 + 16) = v34 + 1;
      v36 = (v28 + 32 * v34);
      v36[4] = v31;
      v36[5] = v30;
      v36[6] = v32;
      v36[7] = v33;
      v29 += 96;
      v26 = v66;
      if (v63 == v27)
      {

        v7 = MEMORY[0x1E69E7CC0];
        goto LABEL_20;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v37 = REAcousticMeshComponentCopyAllSoundReductionIdentifiers();
  v38 = REAcousticMeshComponentCopyAllSoundReductionIndices();
  v39 = REAcousticMeshComponentCopyAllSoundReductionFrequencies();
  v67 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySo7NSArrayCAGyA2IGG_yp_ypypts5NeverOTg503_s7b42STQzAASTQy_AASTQy0_AbcDIgnnnrrr_AB_AC_ADttn7_AcDts5g31OIegnrzr_STRzSTR_STR0_r1_lTRSo7f129C_A2HTG5091_s17RealityFoundation22AcousticModelComponentV10__fromCoreyAC0A3Kit02__E3RefVFZ4zip3L_ySay7a67Qz_AIQy_AIQy0_tGx_q_q0_ttu1_v1_w32_lFAJ_AkLtAJ_AK_ALttXEfU_So7C8C_Y14OTg5Tf3nnnpf_nTf1cn_n(v37, v39, v38);
  v40 = *(v67 + 16);
  if (v40)
  {
    v51 = v39;
    v52 = v38;
    v76 = v7;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40, 0);
    v41 = 0;
    v42 = v76;
    v43 = v67 + 32;
    v64 = v40;
    while (v41 < *(v67 + 16))
    {
      outlined init with copy of [String : String](v43, v73, &_syp_ypyptMd, &_syp_ypyptMR);
      outlined init with copy of Any(v73, v72);
      swift_dynamicCast();
      v44 = v70;
      v45 = v71;
      outlined init with copy of Any(v74, v69);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
      swift_dynamicCast();
      v46 = toFloatArray #1 (_:) in static AcousticModelComponent.__fromCore(_:)(v68);

      outlined init with copy of Any(v75, v69);
      swift_dynamicCast();
      v47 = toFloatArray #1 (_:) in static AcousticModelComponent.__fromCore(_:)(v68);

      outlined destroy of BodyTrackingComponent?(v73, &_syp_ypyptMd, &_syp_ypyptMR);
      v76 = v42;
      v49 = *(v42 + 16);
      v48 = *(v42 + 24);
      if (v49 >= v48 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
        v42 = v76;
      }

      ++v41;
      *(v42 + 16) = v49 + 1;
      v50 = (v42 + 32 * v49);
      v50[4] = v44;
      v50[5] = v45;
      v50[6] = v46;
      v50[7] = v47;
      v43 += 96;
      if (v64 == v41)
      {

        goto LABEL_28;
      }
    }

    goto LABEL_31;
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_28:
  *a2 = v60;
  a2[1] = v56;
  a2[2] = v28;
  a2[3] = v42;
}

uint64_t AcousticModelComponent.__toCore(_:)(void *a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  REAcousticMeshComponentSetMeshAsset();
  REAcousticMeshComponentClearAllMaterials();
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = v2 + 56;
    do
    {
      v7 = *(v6 - 24);
      v8 = *(v6 - 16);

      v9 = MEMORY[0x1C68F3280](v7, v8);
      REAcousticMeshComponentAddAbsorptionCoefficients();

      v6 += 32;
      --v5;
    }

    while (v5);
  }

  v10 = *(v3 + 16);
  if (v10)
  {
    v11 = v3 + 56;
    do
    {
      v12 = *(v11 - 24);
      v13 = *(v11 - 16);

      v14 = MEMORY[0x1C68F3280](v12, v13);
      REAcousticMeshComponentAddScatteringCoefficients();

      v11 += 32;
      --v10;
    }

    while (v10);
  }

  v15 = *(v4 + 16);
  if (v15)
  {
    v16 = v4 + 56;
    do
    {
      v17 = *(v16 - 24);
      v18 = *(v16 - 16);

      v19 = MEMORY[0x1C68F3280](v17, v18);
      REAcousticMeshComponentAddSoundReductionIndices();

      v16 += 32;
      --v15;
    }

    while (v15);
  }

  return RENetworkMarkComponentDirty();
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySo7NSArrayCAGyA2IGG_yp_ypypts5NeverOTg503_s7b42STQzAASTQy_AASTQy0_AbcDIgnnnrrr_AB_AC_ADttn7_AcDts5g31OIegnrzr_STRzSTR_STR0_r1_lTRSo7f129C_A2HTG5091_s17RealityFoundation22AcousticModelComponentV10__fromCoreyAC0A3Kit02__E3RefVFZ4zip3L_ySay7a67Qz_AIQy_AIQy0_tGx_q_q0_ttu1_v1_w32_lFAJ_AkLtAJ_AK_ALttXEfU_So7C8C_Y14OTg5Tf3nnnpf_nTf1cn_n(void *a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceV8IteratorVySo7NSArrayCAByA2FG_GMd, &_ss12Zip2SequenceV8IteratorVySo7NSArrayCAByA2FG_GMR);
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v41 - v8;
  v10 = [a1 count];
  v11 = [a2 count];
  v12 = a3;
  v13 = [a3 count];
  if (v13 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  if (v14 >= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  v75 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 & ~(v15 >> 63), 0);
  v16 = v75;
  NSArray.makeIterator()();
  v42 = v6;
  v17 = *(v6 + 52);
  v45 = v9;
  v18 = &v9[v17];
  v19 = a2;
  v20 = v12;
  NSArray.makeIterator()();

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceV8IteratorVySo7NSArrayCAF_GMd, &_ss12Zip2SequenceV8IteratorVySo7NSArrayCAF_GMR);
  v44 = *(v21 + 52);
  NSArray.makeIterator()();

  v22 = *(v21 + 56);
  v18[v22] = 0;
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    v41 = v22;
    v43 = v18;
    if (!v15)
    {
LABEL_16:
      type metadata accessor for NSFastEnumerationIterator();
      lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator();
      dispatch thunk of IteratorProtocol.next()();
      if (*(&v60 + 1))
      {
        while (1)
        {
          outlined init with take of Any(&v59, &v46);
          dispatch thunk of IteratorProtocol.next()();
          if (!v53)
          {
            v37 = &v52;
            goto LABEL_25;
          }

          outlined init with take of Any(&v52, v54);
          dispatch thunk of IteratorProtocol.next()();
          if (!v51)
          {
            break;
          }

          outlined init with take of Any(&v50, &v52);
          outlined init with take of Any(v54, &v55);
          outlined init with take of Any(&v52, &v57);
          v59 = v55;
          v60 = v56;
          v61 = v57;
          v62 = v58;
          outlined init with take of Any(&v46, &v63);
          v67 = v61;
          v68 = v62;
          v65 = v59;
          v66 = v60;
          v69 = v63;
          v70 = v64;
          v71 = v59;
          v72 = v60;
          v73 = v61;
          v74 = v62;
          outlined init with copy of Any(&v71, &v59);
          outlined init with copy of Any(&v73, &v61);
          outlined init with copy of Any(&v69, &v63);
          outlined init with copy of [String : String](&v59, &v55, &_syp_yptMd, &_syp_yptMR);
          outlined init with take of Any(&v55, &v65);
          v46 = v59;
          v47 = v60;
          v48 = v61;
          v49 = v62;
          outlined init with take of Any(&v48, &v67);
          __swift_destroy_boxed_opaque_existential_1(&v46);
          __swift_destroy_boxed_opaque_existential_1(&v57);
          outlined destroy of BodyTrackingComponent?(&v69, &_syp_yp_ypttMd, &_syp_yp_ypttMR);
          v75 = v16;
          v31 = *(v16 + 16);
          v30 = *(v16 + 24);
          if (v31 >= v30 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
            v16 = v75;
          }

          *(v16 + 16) = v31 + 1;
          v32 = (v16 + 96 * v31);
          v33 = v64;
          v32[2] = v63;
          v32[3] = v33;
          v34 = v65;
          v35 = v66;
          v36 = v68;
          v32[6] = v67;
          v32[7] = v36;
          v32[4] = v34;
          v32[5] = v35;
          dispatch thunk of IteratorProtocol.next()();
          v18 = v43;
          if (!*(&v60 + 1))
          {
            goto LABEL_22;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(v54);
        v37 = &v50;
LABEL_25:
        outlined destroy of BodyTrackingComponent?(v37, &_sypSgMd, &_sypSgMR);
        v18[v41] = 1;
        __swift_destroy_boxed_opaque_existential_1(&v46);
      }

      else
      {
LABEL_22:
        outlined destroy of BodyTrackingComponent?(&v59, &_sypSgMd, &_sypSgMR);
      }

      v38 = v45;
      v45[*(v42 + 56)] = 1;
      outlined destroy of BodyTrackingComponent?(v38, &_ss12Zip2SequenceV8IteratorVySo7NSArrayCAByA2FG_GMd, &_ss12Zip2SequenceV8IteratorVySo7NSArrayCAByA2FG_GMR);
      return v16;
    }

    type metadata accessor for NSFastEnumerationIterator();
    lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator();
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      if (!*(&v60 + 1))
      {
        break;
      }

      outlined init with take of Any(&v59, &v46);
      dispatch thunk of IteratorProtocol.next()();
      if (!v53)
      {
        goto LABEL_29;
      }

      outlined init with take of Any(&v52, v54);
      dispatch thunk of IteratorProtocol.next()();
      if (!v51)
      {
        __swift_destroy_boxed_opaque_existential_1(v54);
        v40 = &v50;
        goto LABEL_31;
      }

      outlined init with take of Any(&v50, &v52);
      outlined init with take of Any(v54, &v55);
      outlined init with take of Any(&v52, &v57);
      v59 = v55;
      v60 = v56;
      v61 = v57;
      v62 = v58;
      outlined init with take of Any(&v46, &v63);
      v65 = v59;
      v66 = v60;
      v67 = v61;
      v68 = v62;
      outlined init with copy of Any(&v65, &v59);
      outlined init with copy of Any(&v67, &v61);
      outlined init with copy of Any(&v63, &v69);
      outlined init with copy of [String : String](&v59, &v55, &_syp_yptMd, &_syp_yptMR);
      outlined init with take of Any(&v55, &v71);
      v46 = v59;
      v47 = v60;
      v48 = v61;
      v49 = v62;
      outlined init with take of Any(&v48, &v73);
      __swift_destroy_boxed_opaque_existential_1(&v46);
      __swift_destroy_boxed_opaque_existential_1(&v57);
      outlined destroy of BodyTrackingComponent?(&v63, &_syp_yp_ypttMd, &_syp_yp_ypttMR);
      v75 = v16;
      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v16 = v75;
      }

      *(v16 + 16) = v24 + 1;
      v25 = (v16 + 96 * v24);
      v26 = v70;
      v25[2] = v69;
      v25[3] = v26;
      v27 = v71;
      v28 = v72;
      v29 = v74;
      v25[6] = v73;
      v25[7] = v29;
      v25[4] = v27;
      v25[5] = v28;
      --v15;
      v18 = v43;
      if (!v15)
      {
        goto LABEL_16;
      }
    }
  }

  outlined destroy of BodyTrackingComponent?(&v59, &_sypSgMd, &_sypSgMR);
  __break(1u);
LABEL_29:
  v40 = &v52;
LABEL_31:
  outlined destroy of BodyTrackingComponent?(v40, &_sypSgMd, &_sypSgMR);
  result = __swift_destroy_boxed_opaque_existential_1(&v46);
  __break(1u);
  return result;
}

void *toFloatArray #1 (_:) in static AcousticModelComponent.__fromCore(_:)(void *a1)
{
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 count];
  v29 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
  v8 = v29;
  result = NSArray.makeIterator()();
  if (v7 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v23 = v3;
  v10 = MEMORY[0x1E69E7CA0];
  if (v7)
  {
    lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator();
    do
    {
      result = dispatch thunk of IteratorProtocol.next()();
      if (!v28)
      {
        goto LABEL_14;
      }

      outlined init with copy of Any(&v27, &v25);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      v11 = v10;
      swift_dynamicCast();
      v12 = v24;
      [v24 floatValue];
      v14 = v13;

      __swift_destroy_boxed_opaque_existential_1(&v27);
      v29 = v8;
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v8 = v29;
      }

      *(v8 + 16) = v16 + 1;
      *(v8 + 4 * v16 + 32) = v14;
      --v7;
      v10 = v11;
    }

    while (v7);
  }

  lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator();
  dispatch thunk of IteratorProtocol.next()();
  while (v26)
  {
    outlined init with take of Any(&v25, &v27);
    outlined init with copy of Any(&v27, &v25);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    swift_dynamicCast();
    v17 = v24;
    [v24 floatValue];
    v19 = v18;

    __swift_destroy_boxed_opaque_existential_1(&v27);
    v29 = v8;
    v21 = *(v8 + 16);
    v20 = *(v8 + 24);
    if (v21 >= v20 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
      v8 = v29;
    }

    *(v8 + 16) = v21 + 1;
    *(v8 + 4 * v21 + 32) = v19;
    dispatch thunk of IteratorProtocol.next()();
  }

  (*(v23 + 8))(v6, v2);
  outlined destroy of BodyTrackingComponent?(&v25, &_sypSgMd, &_sypSgMR);
  return v8;
}

uint64_t AcousticModelComponent.AbsorptionMaterial.init(frequencies:absorptionCoefficients:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  result = (*(v7 + 8))(v9, v6);
  *a3 = v10;
  a3[1] = v12;
  a3[2] = a1;
  a3[3] = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator()
{
  result = lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator;
  if (!lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator)
  {
    v3 = type metadata accessor for NSFastEnumerationIterator();
    result = swift_getWitnessTable(MEMORY[0x1E6968EB8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator);
  }

  return result;
}

uint64_t AudioMixGroupsComponent._proto_fadeMixGroup(named:to:duration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = specialized Dictionary.subscript.modify(v12, a1, a2);
  if (*(v6 + 48))
  {
    v8 = v6;
    v9 = Duration.components.getter();
    Duration.components.getter();
    *(v8 + 8) = a5;
    *(v8 + 16) = 0;
    *(v8 + 24) = v10 * 1.0e-18 + v9;
    *(v8 + 32) = 0;
  }

  return (v7)(v12, 0);
}

void (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = specialized Dictionary._Variant.subscript.modify(v6, a2, a3);
  return IKRig.JointCollection.subscript.modify;
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = specialized Dictionary._Variant.asNative.modify(v7);
  v7[9] = specialized _NativeDictionary.subscript.modify(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x200uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[61] = a3;
  v10[62] = v4;
  v10[60] = a2;
  v12 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  *(v11 + 73) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[63] = v13;
  if (v19)
  {
    memmove(v11 + 20, (*(*v5 + 56) + 80 * v13), 0x49uLL);
  }

  else
  {
    *(v11 + 217) = 0u;
    *(v11 + 12) = 0u;
    *(v11 + 13) = 0u;
    *(v11 + 10) = 0u;
    *(v11 + 11) = 0u;
  }

  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 240;
  v4 = *(*a1 + 208);
  *(v2 + 272) = *(*a1 + 192);
  *(v2 + 288) = v4;
  *(v3 + 57) = *(v2 + 217);
  v5 = *(v2 + 176);
  *(v2 + 240) = *(v2 + 160);
  *(v2 + 256) = v5;
  v6 = *(v2 + 288);
  if (a2)
  {
    if (v6)
    {
      v8 = *(v2 + 496);
      v7 = *(v2 + 504);
      if ((*(v2 + 73) & 1) == 0)
      {
        v9 = *(v2 + 480);
        v10 = *(v2 + 488);
        v11 = *v8;
        v12 = *(v2 + 208);
        *(v2 + 32) = *(v2 + 192);
        *(v2 + 48) = v12;
        *(v2 + 57) = *(v2 + 217);
        v13 = *(v2 + 176);
        *v2 = *(v2 + 160);
        *(v2 + 16) = v13;
        v14 = v10;
        v15 = v2;
LABEL_11:
        specialized _NativeDictionary._insert(at:key:value:)(v7, v9, v14, v15, v11);

        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else if (v6)
  {
    v8 = *(v2 + 496);
    v7 = *(v2 + 504);
    if ((*(v2 + 73) & 1) == 0)
    {
      v9 = *(v2 + 480);
      v18 = *(v2 + 488);
      v11 = *v8;
      v19 = *(v2 + 208);
      *(v2 + 112) = *(v2 + 192);
      *(v2 + 128) = v19;
      *(v2 + 137) = *(v2 + 217);
      v20 = *(v2 + 176);
      *(v2 + 80) = *(v2 + 160);
      *(v2 + 96) = v20;
      v15 = (v2 + 80);
      v14 = v18;
      goto LABEL_11;
    }

LABEL_7:
    memmove((*(*v8 + 56) + 80 * v7), (v2 + 160), 0x49uLL);
    goto LABEL_12;
  }

  if (*(v2 + 73))
  {
    v16 = *(v2 + 504);
    v17 = **(v2 + 496);
    outlined destroy of String(*(v17 + 48) + 16 * v16);
    specialized _NativeDictionary._delete(at:)(v16, v17);
  }

LABEL_12:
  v21 = *(v2 + 208);
  *(v2 + 352) = *(v2 + 192);
  *(v2 + 368) = v21;
  *(v2 + 377) = *(v2 + 217);
  v22 = *(v2 + 176);
  *(v2 + 320) = *(v2 + 160);
  *(v2 + 336) = v22;
  outlined init with copy of AudioMixGroup?(v3, v2 + 400);
  outlined destroy of AudioMixGroup?(v2 + 320);

  free(v2);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t outlined init with copy of AudioMixGroup?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13AudioMixGroupVSgMd, &_s17RealityFoundation13AudioMixGroupVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AudioMixGroup?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13AudioMixGroupVSgMd, &_s17RealityFoundation13AudioMixGroupVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double SPRect3D.init(_:)@<D0>(uint64_t a1@<X8>)
{
  REAABBCenter();
  v13 = vcvtq_f64_f32(v4);
  v14 = COERCE_UNSIGNED_INT64(v5);
  SPSize3DMakeWithVector(&v13, &v19);
  REAABBExtents();
  v13 = vcvtq_f64_f32(v7);
  v14 = COERCE_UNSIGNED_INT64(v6);
  SPSize3DMakeWithVector(&v13, &v18);
  SPRect3DMakeAtCenter(&v13, &v19, &v18);
  result = v13.n128_f64[0];
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v12 = v17;
  *a1 = v13;
  *(a1 + 16) = v9;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  *(a1 + 32) = v10;
  return result;
}

float64x2_t SPRect3DMakeAtCenter@<Q0>(uint64_t *__return_ptr a1@<X8>, SPPoint3D *a2@<X0>, SPSize3D *a3@<X1>)
{
  v4 = *&a3->width;
  v3 = *&a3->vector.f64[2];
  __asm { FMOV            V4.2D, #-0.5 }

  v10 = *&vaddq_f64(*&a2->vector.f64[2], vmulq_f64(v3, _Q4));
  result = vaddq_f64(*&a2->x, vmulq_f64(*&a3->width, _Q4));
  *a1 = result;
  a1[2] = v10;
  *(a1 + 2) = v4;
  a1[6] = *&v3.f64[0];
  return result;
}

__n128 BoundingBox.init(_:)(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v15.origin.z = a1[2];
  z = v15.origin.z;
  v15.origin.vector.f64[3] = v4;
  v15.origin.x = v1;
  v15.origin.y = v2;
  v15.size.depth = v7;
  v15.size.vector.f64[3] = v8;
  v15.size.width = v5;
  v15.size.height = v6;
  SPRect3DGetMinimum(&v13, &v15);
  *&v9 = vcvt_f32_f64(v13);
  *&v10 = v14;
  *(&v9 + 1) = v10;
  v12 = v9;
  v15.origin.z = z;
  v15.origin.vector.f64[3] = v4;
  v15.origin.x = v1;
  v15.origin.y = v2;
  v15.size.depth = v7;
  v15.size.vector.f64[3] = v8;
  v15.size.width = v5;
  v15.size.height = v6;
  SPRect3DGetMaximum(&v13, &v15);
  return v12;
}

float64x2_t SPRect3DGetMinimum@<Q0>(float64x2_t *__return_ptr a1@<X8>, SPRect3D *a2@<X0>)
{
  *&v2 = *&vaddq_f64(*&a2->origin.vector.f64[2], vminnmq_f64(*&a2->size.depth, 0));
  result = vaddq_f64(*&a2->origin.x, vminnmq_f64(*&a2->size.width, 0));
  *a1 = result;
  a1[1].f64[0] = v2;
  return result;
}

float64x2_t SPRect3DGetMaximum@<Q0>(float64x2_t *__return_ptr a1@<X8>, SPRect3D *a2@<X0>)
{
  *&v2 = *&vaddq_f64(*&a2->origin.vector.f64[2], vmaxnmq_f64(*&a2->size.depth, 0));
  result = vaddq_f64(*&a2->origin.x, vmaxnmq_f64(*&a2->size.width, 0));
  *a1 = result;
  a1[1].f64[0] = v2;
  return result;
}

uint64_t VFXParameterType.isMatching(type:)(uint64_t a1)
{
  v2 = *v1;
  if (swift_dynamicCastMetatype())
  {
    return v2 == 0;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v2 == 1;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v2 == 2;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v2 == 3;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v2 == 4;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v2 == 5;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v2 == 6;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v2 == 7;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v2 == 8;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v2 == 9;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v2 == 10;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v2 == 11;
  }

  else if (swift_dynamicCastMetatype())
  {
    return v2 == 12;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
    if (swift_dynamicCastMetatype())
    {
      return v2 == 13;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      if (swift_dynamicCastMetatype())
      {
        return v2 == 14;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
        if (swift_dynamicCastMetatype())
        {
          return v2 == 15;
        }

        else
        {
          type metadata accessor for simd_float3x3(0);
          if (swift_dynamicCastMetatype())
          {
            return v2 == 16;
          }

          else
          {
            type metadata accessor for simd_float4x4(0);
            if (swift_dynamicCastMetatype())
            {
              return v2 == 17;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySdGMd, &_ss5SIMD2VySdGMR);
              if (swift_dynamicCastMetatype())
              {
                return v2 == 18;
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySdGMd, &_ss5SIMD3VySdGMR);
                if (swift_dynamicCastMetatype())
                {
                  return v2 == 19;
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySdGMd, &_ss5SIMD4VySdGMR);
                  if (swift_dynamicCastMetatype())
                  {
                    return v2 == 20;
                  }

                  else
                  {
                    type metadata accessor for simd_double3x3(0);
                    if (swift_dynamicCastMetatype())
                    {
                      return v2 == 21;
                    }

                    else
                    {
                      type metadata accessor for simd_double4x4(0);
                      if (swift_dynamicCastMetatype())
                      {
                        return v2 == 22;
                      }

                      else
                      {
                        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAKeyframeAnimation, 0x1E6979390);
                        result = swift_dynamicCastMetatype();
                        if (!result)
                        {
                          return result;
                        }

                        return (v2 & 0xFE) == 24;
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

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      outlined init with copy of Any(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

RealityFoundation::VFXParameterSemantic_optional __swiftcall VFXParameterSemantic.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 12;
  if (rawValue < 0xC)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

RealityFoundation::VFXParameterType_optional __swiftcall VFXParameterType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 9;
  switch(rawValue)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v2 = 1;
      goto LABEL_23;
    case 2:
      v2 = 2;
      goto LABEL_23;
    case 3:
      v2 = 3;
      goto LABEL_23;
    case 4:
      v2 = 4;
      goto LABEL_23;
    case 5:
      v2 = 5;
      goto LABEL_23;
    case 6:
      v2 = 6;
      goto LABEL_23;
    case 7:
      v2 = 7;
      goto LABEL_23;
    case 8:
      v2 = 8;
LABEL_23:
      v3 = v2;
      goto LABEL_24;
    case 9:
LABEL_24:
      *v1 = v3;
      break;
    case 10:
      *v1 = 10;
      break;
    case 11:
      *v1 = 11;
      break;
    case 12:
      *v1 = 12;
      break;
    case 13:
      *v1 = 13;
      break;
    case 14:
      *v1 = 14;
      break;
    case 15:
      *v1 = 15;
      break;
    case 16:
      *v1 = 16;
      break;
    case 17:
      *v1 = 17;
      break;
    case 18:
      *v1 = 18;
      break;
    case 19:
      *v1 = 19;
      break;
    case 20:
      *v1 = 20;
      break;
    case 21:
      *v1 = 21;
      break;
    case 22:
      *v1 = 22;
      break;
    case 23:
      *v1 = 23;
      break;
    case 24:
      *v1 = 24;
      break;
    case 25:
      *v1 = 25;
      break;
    case 26:
      *v1 = 26;
      break;
    default:
      *v1 = 27;
      break;
  }

  return rawValue;
}

unint64_t VFXResource.LoadError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[4])
  {
    v4 = v0[2];
    v3 = v0[3];
    _StringGuts.grow(_:)(32);

    v8 = 0xD000000000000019;
    MEMORY[0x1C68F3410](v1, v2);
    MEMORY[0x1C68F3410](2112034, 0xE300000000000000);
    v5 = v4;
    v6 = v3;
  }

  else
  {
    _StringGuts.grow(_:)(48);

    v8 = 0xD000000000000023;
    MEMORY[0x1C68F3410](v1, v2);
    v5 = 0x6E7562206E692022;
    v6 = 0xEB00000000656C64;
  }

  MEMORY[0x1C68F3410](v5, v6);
  return v8;
}

id static VFXResource.systemNames.getter()
{
  result = REVFXAssetEnumerateBuiltInAssets();
  if (result)
  {
    v1 = result;
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static VFXResource.load(systemName:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - v11;
  v13 = MEMORY[0x1C68F3280](a1, a2, v10);
  v14 = REVFXGetLibraryURLForSystemName();

  if (v14)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 32))(v12, v8, v5);
    v15 = specialized static VFXResource.load(contentsOf:withName:)();
    if (!v2)
    {
      a2 = v15;
    }

    (*(v6 + 8))(v12, v5);
  }

  else
  {
    v16 = REVFXAssetGetBuiltInEffectsBundle();
    a2 = specialized static VFXResource.load(named:in:)(a1, a2, v16);
  }

  return a2;
}

uint64_t static VFXResource.loadAsync(systemName:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  v12 = MEMORY[0x1C68F3280](a1, a2, v9);
  v13 = REVFXGetLibraryURLForSystemName();

  if (v13)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v11, v7, v4);
    v14 = specialized static VFXResource.loadAsync(contentsOf:withName:)(v11);
    (*(v5 + 8))(v11, v4);
  }

  else
  {
    v15 = REVFXAssetGetBuiltInEffectsBundle();
    v14 = specialized static VFXResource.loadAsync(named:in:)(a1, a2, v15);
  }

  return v14;
}

void closure #1 in static VFXResource.loadAsync(named:in:)(void (*a1)(uint64_t *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_allocObject();
  v36 = a1;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  swift_beginAccess();
  outlined init with copy of __REAssetService(a3 + 120, &aBlock);
  v14 = v44;
  v13 = v45;
  __swift_project_boxed_opaque_existential_1(&aBlock, v44);
  v15 = *(v13 + 4);

  v16 = v13;
  v17 = a6;
  v15(v14, v16);
  v18 = MEMORY[0x1C68F3280](a5, a6);
  v19 = MEMORY[0x1C68F3280](7890550, 0xE300000000000000);
  v20 = REAssetManagerAssetHandleCreateWithBundleResource();

  v21 = v20;
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  if (v20)
  {
    outlined init with copy of __REAssetService(a3 + 120, &aBlock);
    outlined init with copy of __REAssetService(a3 + 120, v37);
    v22 = v38;
    v23 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    LOBYTE(v22) = (*(v23 + 7))(v22, v23);
    v24 = v44;
    v25 = v45;
    __swift_project_boxed_opaque_existential_1(&aBlock, v44);
    (*(v25 + 4))(v24, v25);
    AssetRequest = REAssetManagerCreateAssetRequest();
    Request = type metadata accessor for __AssetLoadRequest();
    v28 = swift_allocObject();
    *(v28 + 16) = AssetRequest;
    if (v22)
    {
      REAssetLoadRequestSetLoadAndWaitForResourceSharingClients();
    }

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v29 = swift_allocObject();
    v29[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
    v29[3] = v12;
    v29[4] = v21;
    v29[5] = a5;
    v29[6] = v17;
    v29[7] = v28;
    v45 = partial apply for specialized finishVFXResourceLoad #1 (_:) in closure #1 in static VFXResource.loadAsync(named:in:);
    v46 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v44 = &block_descriptor_81;
    v30 = _Block_copy(&aBlock);
    v31 = _Block_copy(v30);
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    v39 = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
    v40 = v32;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 1107296256;
    v37[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v38 = &block_descriptor_88_0;
    v33 = _Block_copy(v37);
    swift_retain_n();

    REAssetLoadRequestSetCompletionHandler();
    _Block_release(v33);
    _Block_release(v30);

    REAssetLoadRequestAddAsset();

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v44 = Request;
      aBlock = v28;

      LoadRequestDependencies.add(_:)(&aBlock);

      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {
    }

    RERelease();
  }

  else
  {

    lazy protocol witness table accessor for type VFXResource.LoadError and conformance VFXResource.LoadError();
    v34 = swift_allocError();
    *v35 = a5;
    *(v35 + 8) = a6;
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0;
    aBlock = v34;
    LOBYTE(v42) = 1;

    (v36)(&aBlock);
  }
}

void specialized finishVFXResourceLoad #1 (_:) in closure #1 in static VFXResource.loadAsync(named:in:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    type metadata accessor for VFXResource();
    v9 = swift_allocObject();
    *(v9 + 16) = a4;
    RERetain();
    REAssetSetSwiftObject();
    a2(v9, 0);
  }

  else
  {

    FailedMessage = REAssetHandleCopyLoadFailedMessage();
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    lazy protocol witness table accessor for type VFXResource.LoadError and conformance VFXResource.LoadError();
    v16 = swift_allocError();
    *v17 = a5;
    *(v17 + 8) = a6;
    *(v17 + 16) = v13;
    *(v17 + 24) = v15;
    *(v17 + 32) = 1;
    a2(v16, 1);
  }

  aBlock[4] = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_91;
  v18 = _Block_copy(aBlock);
  v19 = _Block_copy(v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v22[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v22[5] = v20;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v22[3] = &block_descriptor_98;
  v21 = _Block_copy(v22);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v21);
  _Block_release(v18);
}

void closure #1 in static VFXResource.loadAsync(contentsOf:withName:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v41 = type metadata accessor for URL();
  v9 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = v10;
  v40 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  Request = a1;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  swift_beginAccess();
  outlined init with copy of __REAssetService(a3 + 120, &aBlock);
  v12 = v52;
  v13 = v53;
  __swift_project_boxed_opaque_existential_1(&aBlock, v52);
  v14 = *(v13 + 4);

  v14(v12, v13);
  v43 = 0x6170656372756F73;
  v44 = 0xEB000000003A6874;
  v15 = URL.path.getter();
  MEMORY[0x1C68F3410](v15);

  String.utf8CString.getter();

  AssetHandle = REAssetManagerCreateAssetHandle();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  if (AssetHandle)
  {
    outlined init with copy of __REAssetService(a3 + 120, &aBlock);
    outlined init with copy of __REAssetService(a3 + 120, &v43);
    v17 = v46;
    v18 = v47;
    __swift_project_boxed_opaque_existential_1(&v43, v46);
    LOBYTE(v17) = (*(v18 + 7))(v17, v18);
    v19 = v52;
    v20 = v53;
    __swift_project_boxed_opaque_existential_1(&aBlock, v52);
    (*(v20 + 4))(v19, v20);
    AssetRequest = REAssetManagerCreateAssetRequest();
    Request = type metadata accessor for __AssetLoadRequest();
    v22 = swift_allocObject();
    *(v22 + 16) = AssetRequest;
    if (v17)
    {
      REAssetLoadRequestSetLoadAndWaitForResourceSharingClients();
    }

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    __swift_destroy_boxed_opaque_existential_1(&v43);
    v24 = v40;
    v23 = v41;
    (*(v9 + 16))(v40, a4, v41);
    v25 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v26 = (v39 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 2) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ();
    *(v27 + 3) = v11;
    *(v27 + 4) = AssetHandle;
    (*(v9 + 32))(&v27[v25], v24, v23);
    *&v27[v26] = v22;
    v53 = partial apply for specialized finishVFXResourceLoad #1 (_:) in closure #1 in static VFXResource.loadAsync(contentsOf:withName:);
    v54 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v52 = &block_descriptor_47;
    v28 = _Block_copy(&aBlock);
    v29 = _Block_copy(v28);
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    v47 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ();
    v48 = v30;
    v43 = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v46 = &block_descriptor_53;
    v31 = _Block_copy(&v43);
    swift_retain_n();

    REAssetLoadRequestSetCompletionHandler();
    _Block_release(v31);
    _Block_release(v28);

    REAssetLoadRequestAddAsset();

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v52 = Request;
      aBlock = v22;

      LoadRequestDependencies.add(_:)(&aBlock);

      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {
    }

    RERelease();
  }

  else
  {

    v32 = URL.path.getter();
    v34 = v33;
    lazy protocol witness table accessor for type VFXResource.LoadError and conformance VFXResource.LoadError();
    v35 = swift_allocError();
    *v36 = v32;
    *(v36 + 8) = v34;
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0;
    aBlock = v35;
    LOBYTE(v50) = 1;
    Request(&aBlock);
  }
}

void specialized finishVFXResourceLoad #1 (_:) in closure #1 in static VFXResource.loadAsync(contentsOf:withName:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    type metadata accessor for VFXResource();
    v8 = swift_allocObject();
    *(v8 + 16) = a4;
    RERetain();
    REAssetSetSwiftObject();
    a2(v8, 0);
  }

  else
  {
    v9 = URL.path.getter();
    v11 = v10;
    FailedMessage = REAssetHandleCopyLoadFailedMessage();
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    lazy protocol witness table accessor for type VFXResource.LoadError and conformance VFXResource.LoadError();
    v16 = swift_allocError();
    *v17 = v9;
    *(v17 + 8) = v11;
    *(v17 + 16) = v13;
    *(v17 + 24) = v15;
    *(v17 + 32) = 1;
    a2(v16, 1);
  }

  aBlock[4] = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_56;
  v18 = _Block_copy(aBlock);
  v19 = _Block_copy(v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v22[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v22[5] = v20;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v22[3] = &block_descriptor_63;
  v21 = _Block_copy(v22);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v21);
  _Block_release(v18);
}

uint64_t protocol witness for VFXParameter.bindingName.getter in conformance VFXResource.VFXParameterImpl()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t protocol witness for VFXParameter.userManual.getter in conformance VFXResource.VFXParameterImpl()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t protocol witness for VFXParameter.enumName.getter in conformance VFXResource.VFXParameterImpl()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t VFXResource.parameters.getter()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v9 = partial apply for closure #1 in VFXResource.parameters.getter;
  v10 = v0;
  v5 = MEMORY[0x1E69E9820];
  v6 = 1107296256;
  v7 = thunk for @escaping @callee_guaranteed (@guaranteed String, @guaranteed String, @guaranteed String, @unowned Int, @unowned Int, @unowned Double, @unowned Double, @guaranteed String, @guaranteed String, @guaranteed [Any]) -> ();
  v8 = &block_descriptor_30;
  v1 = _Block_copy(&v5);

  REVFXAssetEnumerateParameterInfosWithEnum();
  _Block_release(v1);
  v9 = partial apply for closure #2 in VFXResource.parameters.getter;
  v10 = v0;
  v5 = MEMORY[0x1E69E9820];
  v6 = 1107296256;
  v7 = thunk for @escaping @callee_guaranteed (@guaranteed String) -> ();
  v8 = &block_descriptor_3;
  v2 = _Block_copy(&v5);

  REVFXAssetEnumerateClientTextures();
  _Block_release(v2);
  swift_beginAccess();
  v3 = *(v0 + 16);

  return v3;
}

void closure #1 in VFXResource.parameters.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _UNKNOWN **a5, unint64_t a6, Swift::Int rawValue, Swift::Int a8, double a9, double a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  VFXParameterType.init(rawValue:)(rawValue);
  v21 = v47;
  if (v47 == 27 || (VFXParameterSemantic.init(rawValue:)(a8), v47 == 12))
  {
    v22 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    log = static OS_os_log.default.getter();
    if (os_log_type_enabled(log, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v47 = v24;
      *v23 = 136315650;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v47);
      *(v23 + 12) = 2080;
      *(v23 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, &v47);
      *(v23 + 22) = 2048;
      *(v23 + 24) = rawValue;
      _os_log_impl(&dword_1C1358000, log, v22, "[VFX] Parameter %s.%s with unknown type %ld", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v24, -1, -1);
      MEMORY[0x1C6902A30](v23, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v32 = v47;
    v33 = specialized _arrayConditionalCast<A, B>(_:)(a14);
    swift_beginAccess();
    v25 = *(a15 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a15 + 16) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25[2] + 1, 1, v25);
      *(a15 + 16) = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v25);
      *(a15 + 16) = v25;
    }

    *&v40 = a1;
    *(&v40 + 1) = a2;
    *&v41 = a3;
    *(&v41 + 1) = a4;
    *&v42 = a5;
    *(&v42 + 1) = a6;
    LOBYTE(v43) = v21;
    BYTE1(v43) = v32;
    *(&v43 + 1) = a9;
    *&v44 = a10;
    *(&v44 + 1) = a11;
    v45 = a12;
    *&v46 = a13;
    *(&v46 + 1) = v33;
    v49 = &type metadata for VFXResource.VFXParameterImpl;
    v50 = &protocol witness table for VFXResource.VFXParameterImpl;
    v29 = swift_allocObject();
    *&v47 = v29;
    v29[5] = v44;
    v29[6] = a12;
    v29[7] = v46;
    v30 = v41;
    v29[1] = v40;
    v29[2] = v30;
    v31 = v43;
    v29[3] = v42;
    v29[4] = v31;
    v25[2] = v28 + 1;
    outlined init with take of ForceEffectBase(&v47, &v25[5 * v28 + 4]);
    *&v47 = a1;
    *(&v47 + 1) = a2;
    v48 = a3;
    v49 = a4;
    v50 = a5;
    v51 = a6;
    v52 = v21;
    v53 = v32;
    v54 = v62;
    v55 = v63;
    v56 = a9;
    v57 = a10;
    v58 = a11;
    v59 = a12;
    v60 = a13;
    v61 = v33;
    outlined init with copy of VFXResource.VFXParameterImpl(&v40, v39);
    *(a15 + 16) = v25;
    swift_endAccess();
    outlined destroy of VFXResource.VFXParameterImpl(&v47);
  }
}

double thunk for @escaping @callee_guaranteed (@guaranteed String, @guaranteed String, @guaranteed String, @unowned Int, @unowned Int, @unowned Double, @unowned Double, @guaranteed String, @guaranteed String, @guaranteed [Any]) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11)
{
  v30 = *(a1 + 32);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30(v13, v15, v29, v17, v28, v19, a5, a6, a9, a10, v20, v22, v23, v25, v26);

  return result;
}

uint64_t closure #2 in VFXResource.parameters.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    *(a3 + 16) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v13 = &type metadata for VFXResource.VFXParameterImpl;
  v14 = &protocol witness table for VFXResource.VFXParameterImpl;
  v10 = swift_allocObject();
  *&v12 = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = 0;
  *(v10 + 56) = 0xE000000000000000;
  *(v10 + 64) = 1818;
  *(v10 + 72) = 0;
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0xE000000000000000;
  *(v10 + 112) = 0;
  *(v10 + 120) = 0;
  *(v10 + 104) = 0;
  v6[2] = v9 + 1;
  outlined init with take of ForceEffectBase(&v12, &v6[5 * v9 + 4]);
  *(a3 + 16) = v6;
  return swift_endAccess();
}

double thunk for @escaping @callee_guaranteed (@guaranteed String) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v2(v3, v5);

  return result;
}

uint64_t VFXResource.parameter(named:owner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0;
  if (a4)
  {
    a4 = MEMORY[0x1C68F3280](a3, a4);
  }

  v11 = MEMORY[0x1C68F3280](a1, a2);
  v14[4] = partial apply for closure #1 in VFXResource.parameter(named:owner:);
  v14[5] = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed (@guaranteed String, @guaranteed String, @guaranteed String, @unowned Int, @unowned Int, @unowned Double, @unowned Double, @guaranteed String, @guaranteed String, @guaranteed [Any]) -> ();
  v14[3] = &block_descriptor_9_0;
  v12 = _Block_copy(v14);

  REVFXAssetFindParameterInfoWithEnum();
  _Block_release(v12);

  swift_beginAccess();
  outlined init with copy of VFXParameter?(v10 + 16, a5);
}

void closure #1 in VFXResource.parameter(named:owner:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, Swift::Int rawValue, Swift::Int a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  VFXParameterType.init(rawValue:)(rawValue);
  v22 = v34[0];
  if (LOBYTE(v34[0]) == 27 || (VFXParameterSemantic.init(rawValue:)(a8), v23 = v34[0], LOBYTE(v34[0]) == 12))
  {
    v24 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    log = static OS_os_log.default.getter();
    if (os_log_type_enabled(log, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34[0] = v26;
      *v25 = 136315650;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v34);
      *(v25 + 12) = 2080;
      *(v25 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, v34);
      *(v25 + 22) = 2048;
      *(v25 + 24) = rawValue;
      _os_log_impl(&dword_1C1358000, log, v24, "[VFX] Parameter %s.%s with unknown type %ld", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v26, -1, -1);
      MEMORY[0x1C6902A30](v25, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v27 = specialized _arrayConditionalCast<A, B>(_:)(a15);
    v34[3] = &type metadata for VFXResource.VFXParameterImpl;
    v34[4] = &protocol witness table for VFXResource.VFXParameterImpl;
    v28 = swift_allocObject();
    v34[0] = v28;
    *(v28 + 16) = a1;
    *(v28 + 24) = a2;
    *(v28 + 32) = a3;
    *(v28 + 40) = a4;
    *(v28 + 48) = a5;
    *(v28 + 56) = a6;
    *(v28 + 64) = v22;
    *(v28 + 65) = v23;
    *(v28 + 72) = a9;
    *(v28 + 80) = a10;
    *(v28 + 88) = a11;
    *(v28 + 96) = a12;
    *(v28 + 104) = a13;
    *(v28 + 112) = a14;
    *(v28 + 120) = v27;
    swift_beginAccess();

    outlined assign with take of VFXParameter?(v34, a16 + 16);
  }
}

uint64_t VFXResource.deinit()
{
  REAssetSetSwiftObject();
  RERelease();
  return v0;
}

uint64_t VFXResource.__deallocating_deinit()
{
  REAssetSetSwiftObject();
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t specialized static VFXResource.load(contentsOf:withName:)()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v11);
  v1 = v12;
  v2 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v3 = *(v2 + 32);

  v3(v1, v2);
  v4 = URL.path.getter();
  MEMORY[0x1C68F3410](v4);

  String.utf8CString.getter();

  AssetHandle = REAssetManagerCreateAssetHandle();

  __swift_destroy_boxed_opaque_existential_1(v11);
  if (AssetHandle)
  {
    REAssetHandleLoadNow();
    type metadata accessor for VFXResource();
    v6 = swift_allocObject();
    *(v6 + 16) = AssetHandle;
    RERetain();
    REAssetSetSwiftObject();
    RERelease();
  }

  else
  {
    v7 = URL.path.getter();
    v6 = v8;
    lazy protocol witness table accessor for type VFXResource.LoadError and conformance VFXResource.LoadError();
    swift_allocError();
    *v9 = v7;
    *(v9 + 8) = v6;
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    swift_willThrow();
  }

  return v6;
}

void *specialized static VFXResource.load(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v49 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v46 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  if (a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = [objc_opt_self() mainBundle];
  }

  v14 = a3;
  v53 = v13;
  v15 = [v13 bundleURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = URL.pathExtension.getter();
  v18 = v17;
  v19 = *(v6 + 8);
  v19(v12, v5);
  if (v16 == 0x617262696C786676 && v18 == 0xEA00000000007972)
  {

    v22 = a1;
    v23 = v49;
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v22 = a1;
    v23 = v49;
    if ((v21 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v24 = MEMORY[0x1C68F3280](v22, v23);
  v25 = MEMORY[0x1C68F3280](7890550, 0xE300000000000000);
  v26 = [v53 URLForResource:v24 withExtension:v25];

  if (v26)
  {
    v27 = v46;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = v47;
    (*(v6 + 32))(v47, v27, v5);
    v29 = v48;
    v30 = specialized static VFXResource.load(contentsOf:withName:)();
    if (!v29)
    {
      v27 = v30;
    }

    v19(v28, v5);

    return v27;
  }

LABEL_15:
  v31 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v31 + 120, v50);
  v32 = v51;
  v33 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v34 = *(v33 + 32);

  v34(v32, v33);
  v27 = MEMORY[0x1C68F3280](v22, v23);
  v35 = MEMORY[0x1C68F3280](7890550, 0xE300000000000000);
  v36 = v23;
  v37 = v53;
  v38 = REAssetManagerAssetHandleCreateWithBundleResource();

  __swift_destroy_boxed_opaque_existential_1(v50);
  if (v38)
  {
    REAssetHandleLoadNow();
    if (!REAssetHandleLoadFailed())
    {
      type metadata accessor for VFXResource();
      v27 = swift_allocObject();
      v27[2] = v38;
      RERetain();
      REAssetSetSwiftObject();
      RERelease();

      return v27;
    }

    v39 = v36;

    FailedMessage = REAssetHandleCopyLoadFailedMessage();
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    lazy protocol witness table accessor for type VFXResource.LoadError and conformance VFXResource.LoadError();
    swift_allocError();
    *v43 = v22;
    *(v43 + 8) = v39;
    *(v43 + 16) = v27;
    *(v43 + 24) = v42;
    *(v43 + 32) = 1;
    swift_willThrow();
    RERelease();
  }

  else
  {
    lazy protocol witness table accessor for type VFXResource.LoadError and conformance VFXResource.LoadError();
    swift_allocError();
    *v44 = v22;
    *(v44 + 8) = v36;
    *(v44 + 16) = 0;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0;
    swift_willThrow();
  }

  return v27;
}